//! The certificate tools: `search` (untrusted discovery), `lean` (emit
//! the kills as Lean 4 modules for kernel checking), and `diag` (where
//! the discovery pipeline drops a term).
//!
//! Each is a private module holding the tool verbatim; only the
//! dispatcher below is shared. `search` and `diag` reach into
//! `classical::certificate::search`, the untrusted surface behind the
//! `lab` feature; `lean` uses only the trusted checkers and is always
//! available.

use crate::args::R;

const USAGE: &str = "\
blam cert — divergence certificates

usage: blam cert <subcommand> [args]

  search    discover ratchet certificates over a terms file  (lab feature)
  lean      emit the kills as Lean 4 modules for kernel checking
  diag      report where the discovery pipeline drops each term
                                                             (lab feature)";

pub fn run(argv: &[String]) -> R<()> {
    let Some(sub) = argv.first() else {
        println!("{USAGE}");
        return Ok(());
    };
    let rest = &argv[1..];
    match sub.as_str() {
        "--help" | "-h" | "help" => {
            println!("{USAGE}");
            Ok(())
        }
        "lean" => lean::run(rest),
        #[cfg(feature = "lab")]
        "search" => search::run(rest),
        #[cfg(not(feature = "lab"))]
        "search" => Err(crate::no_lab("cert search")),
        #[cfg(feature = "lab")]
        "diag" => diag::run(rest),
        #[cfg(not(feature = "lab"))]
        "diag" => Err(crate::no_lab("cert diag")),
        other => Err(format!(
            "blam cert: unknown subcommand `{other}`\ntry `blam cert --help`"
        )),
    }
}

#[cfg(feature = "lab")]
mod search {
    //! Ratchet-certificate sweep over a terms file (default: the live
    //! unknown frontier). Spec: `docs/classical/certificates/specification.md`.
    //! Discovery is untrusted;
    //! every reported RATCHET line has passed the trusted `verify`.
    //!
    //! Sound hnf descent (`--no-descend` disables): if the bounded head
    //! reduction of a term reaches head normal form `λ…λ. v a₁ … aₖ`, the
    //! term's normal form requires every `aᵢ` to normalize — so a *closed*
    //! `aᵢ` with a ratchet certificate kills the whole term. Open arguments
    //! are skipped (the v1 machinery assumes closed metavariables).

    use crate::args::{self, Args, R};
    use blam::blc::term::Term;
    use blam::blc::wire::parse_all;
    use blam::classical::certificate::search::{discover_stream, try_htr, try_selector};
    use blam::classical::certificate::{
        head_step, verify, HeadTowerRatchet, PTerm, Ratchet, SelectorRatchet, Step,
    };
    use rayon::prelude::*;
    use std::io::Write;
    use std::sync::atomic::{AtomicU64, Ordering};

    struct Cfg {
        steps: u32,
        nodes: u64,
        lemma_steps: u32,
        descend_depth: u32,
        threads: usize,
    }

    /// Where a certificate bit: at the top term or inside an hnf argument,
    /// and which certificate class fired (v1 Ratchet or v2 HeadTowerRatchet).
    enum Kill {
        Top(Ratchet),
        Arg {
            path: String,
            cert: Ratchet,
        },
        Top2(HeadTowerRatchet),
        Arg2 {
            path: String,
            cert: HeadTowerRatchet,
        },
        Top3(SelectorRatchet),
        Arg3 {
            path: String,
            cert: SelectorRatchet,
        },
    }

    /// Bounded head reduction to hnf. Some(hnf) if reached, None otherwise.
    fn head_normalize(t: &PTerm, steps: u32, nodes: u64) -> Option<PTerm> {
        let mut cur = t.clone();
        let mut size = cur.nodes() as i64;
        for _ in 0..steps {
            if size > nodes as i64 {
                return None;
            }
            cur = match head_step(&cur, nodes) {
                Step::Did(next, d) => {
                    size += d;
                    next
                }
                Step::Nf => return Some(cur),
                Step::MetaHead | Step::TooBig => return None,
            };
        }
        None
    }

    /// Strip leading lambdas, then split the spine: (depth, head var, args).
    fn spine(t: &PTerm) -> (u32, &PTerm, Vec<&PTerm>) {
        let mut depth = 0;
        let mut cur = t;
        while let PTerm::Lam(b) = cur {
            depth += 1;
            cur = b;
        }
        let mut args = Vec::new();
        while let PTerm::App(f, a) = cur {
            args.push(&**a);
            cur = f;
        }
        args.reverse();
        (depth, cur, args)
    }

    fn try_kill(t: &Term, cfg: &Cfg, depth: u32, path: &str) -> Option<Kill> {
        // Streaming discovery: each candidate triple is tried against BOTH
        // trusted checkers; a rejection retires only that milestone family,
        // so later families still get their shot. Stopping at the first
        // candidate would mask later valid families.
        let mut found: Option<Kill> = None;
        discover_stream(t, cfg.steps, cfg.nodes, &mut |cand: &Ratchet| {
            if verify(t, cand, cfg.lemma_steps, cfg.steps, cfg.nodes).is_ok() {
                found = Some(if path.is_empty() {
                    Kill::Top(cand.clone())
                } else {
                    Kill::Arg {
                        path: path.to_string(),
                        cert: cand.clone(),
                    }
                });
                return true;
            }
            // v2: same discovered triple, HeadTowerRatchet obligations
            if let Some((htr, _)) = try_htr(t, cand, cfg.lemma_steps, cfg.steps, cfg.nodes) {
                found = Some(if path.is_empty() {
                    Kill::Top2(htr)
                } else {
                    Kill::Arg2 {
                        path: path.to_string(),
                        cert: htr,
                    }
                });
                return true;
            }
            // v3: same triple, SelectorRatchet obligations.
            if let Some((sel, _)) = try_selector(t, cand, cfg.lemma_steps, cfg.steps, cfg.nodes) {
                found = Some(if path.is_empty() {
                    Kill::Top3(sel)
                } else {
                    Kill::Arg3 {
                        path: path.to_string(),
                        cert: sel,
                    }
                });
                return true;
            }
            false
        });
        if found.is_some() {
            return found;
        }
        if depth >= cfg.descend_depth {
            return None;
        }
        // hnf descent: recurse into closed spine arguments
        let hnf = head_normalize(&PTerm::from_term(t), cfg.steps, cfg.nodes)?;
        let (_, _, args) = spine(&hnf);
        for (i, arg) in args.iter().enumerate() {
            // closed relative to nothing: v1 needs genuinely closed subterms
            if arg.max_free(0) == 0 {
                if let Some(at) = arg.to_term() {
                    let sub_path = if path.is_empty() {
                        format!("{i}")
                    } else {
                        format!("{path}.{i}")
                    };
                    if let Some(kill) = try_kill(&at, cfg, depth + 1, &sub_path) {
                        return Some(kill);
                    }
                }
            }
        }
        None
    }

    const USAGE: &str = "\
blam cert search — divergence-certificate discovery over a terms file

usage: blam cert search [flags]

  --term BITS      adjudicate a single term instead of a file
  --file FILE      terms file (default data/classical/unknowns.txt)
  --steps N        head-reduction step budget (default 1000)
  --nodes N        node ceiling (default 100000)
  --lemma-steps N  obligation step budget (default 4096)
  --no-descend     do not descend into closed hnf spine arguments
  --threads N      rayon threads (0 = ambient, the default)
  --work-mult N    BLC_WORK_MULT for this run (default 16)
  --probe-fuel N   BLC_PROBE_FUEL for this run (default 4096)";

    pub fn run(argv: &[String]) -> R<()> {
        if args::wants_help(argv) {
            println!("{USAGE}");
            return Ok(());
        }
        // Default budgets: 1000/100k is measured kill-equivalent to
        // 2000/200k over a full frontier sweep (byte-identical
        // certificates) at ~4× less wall. Raise via flags for thorough
        // runs; fuel controls run at 8000/800k.
        let mut cfg = Cfg {
            steps: 1000,
            nodes: 100_000,
            lemma_steps: 4096,
            descend_depth: 8,
            threads: 0, // 0 = rayon default (all cores)
        };
        let mut term_arg: Option<String> = None;
        let mut file_arg: Option<String> = None;
        let mut work_mult: Option<u64> = None;
        let mut probe_fuel: Option<u64> = None;

        let mut p = Args::new("cert search", argv);
        while let Some(tok) = p.next() {
            match tok {
                "--steps" => cfg.steps = p.num(tok)?,
                "--nodes" => cfg.nodes = p.num(tok)?,
                "--lemma-steps" => cfg.lemma_steps = p.num(tok)?,
                "--threads" => cfg.threads = p.num(tok)?,
                "--work-mult" => work_mult = Some(p.num(tok)?),
                "--probe-fuel" => probe_fuel = Some(p.num(tok)?),
                "--term" => term_arg = Some(p.value(tok)?.to_string()),
                "--file" => file_arg = Some(p.value(tok)?.to_string()),
                "--no-descend" => {
                    p.flag(tok)?;
                    cfg.descend_depth = 0;
                }
                _ => return Err(p.unknown(tok)),
            }
        }
        if term_arg.is_some() && file_arg.is_some() {
            return Err(format!(
                "blam cert search: --term and --file are alternatives, not both\n{}",
                args::hint("cert search")
            ));
        }
        // Phase 3: becomes explicit library config.
        args::apply_engine_env(work_mult, probe_fuel);

        let lines: Vec<String> = if let Some(bits) = term_arg {
            vec![bits]
        } else {
            let path = file_arg.unwrap_or_else(|| "data/classical/unknowns.txt".to_string());
            args::read_terms_file(&path)?
        };

        args::build_pool_plain(cfg.threads)?;

        // Per-term parallel; each worker builds and drops its own Rc trees.
        // Output is streamed one self-describing line at a time (unordered —
        // kills lose nothing, per the ops ledger), counters are atomic.
        let (kills_top, kills_arg, kills_htr, kills_sel, none) = (
            AtomicU64::new(0),
            AtomicU64::new(0),
            AtomicU64::new(0),
            AtomicU64::new(0),
            AtomicU64::new(0),
        );
        lines.par_iter().for_each(|bits| {
            let t = match parse_all(bits) {
                Ok(t) => t,
                Err(e) => {
                    eprintln!("parse error on {bits}: {e:?}");
                    return;
                }
            };
            let line = match try_kill(&t, &cfg, 0, "") {
                Some(Kill::Top(cert)) => {
                    kills_top.fetch_add(1, Ordering::Relaxed);
                    format!(
                        "RATCHET\t{bits}\thead={}\tw={}\tc0={}",
                        cert.a.to_bits(),
                        cert.w,
                        cert.c0.to_bits()
                    )
                }
                Some(Kill::Arg { path, cert }) => {
                    kills_arg.fetch_add(1, Ordering::Relaxed);
                    format!(
                        "RATCHET-ARG\t{bits}\tat={path}\thead={}\tw={}\tc0={}",
                        cert.a.to_bits(),
                        cert.w,
                        cert.c0.to_bits()
                    )
                }
                Some(Kill::Top2(cert)) => {
                    kills_htr.fetch_add(1, Ordering::Relaxed);
                    format!(
                        "RATCHET2\t{bits}\thead={}\tw={}\tc0={}\ti={}",
                        cert.a.to_bits(),
                        cert.w,
                        cert.c0.to_bits(),
                        cert.i.to_bits()
                    )
                }
                Some(Kill::Arg2 { path, cert }) => {
                    kills_htr.fetch_add(1, Ordering::Relaxed);
                    format!(
                        "RATCHET2-ARG\t{bits}\tat={path}\thead={}\tw={}\tc0={}\ti={}",
                        cert.a.to_bits(),
                        cert.w,
                        cert.c0.to_bits(),
                        cert.i.to_bits()
                    )
                }
                Some(Kill::Top3(cert)) => {
                    kills_sel.fetch_add(1, Ordering::Relaxed);
                    format!(
                        "SELECTOR\t{bits}\thead={}\tw={}\tp={}\tc0={}",
                        cert.a.to_bits(),
                        cert.w,
                        cert.p,
                        cert.c0.to_bits()
                    )
                }
                Some(Kill::Arg3 { path, cert }) => {
                    kills_sel.fetch_add(1, Ordering::Relaxed);
                    format!(
                        "SELECTOR-ARG\t{bits}\tat={path}\thead={}\tw={}\tp={}\tc0={}",
                        cert.a.to_bits(),
                        cert.w,
                        cert.p,
                        cert.c0.to_bits()
                    )
                }
                None => {
                    none.fetch_add(1, Ordering::Relaxed);
                    format!("none\t{bits}")
                }
            };
            let stdout = std::io::stdout();
            let mut lock = stdout.lock();
            writeln!(lock, "{line}").unwrap();
        });
        eprintln!(
        "certsearch: {} terms; ratchet {} top + {} arg, htr {}, selector {}; total {}; unresolved {}",
        lines.len(),
        kills_top.load(Ordering::Relaxed),
        kills_arg.load(Ordering::Relaxed),
        kills_htr.load(Ordering::Relaxed),
        kills_sel.load(Ordering::Relaxed),
        kills_top.load(Ordering::Relaxed)
            + kills_arg.load(Ordering::Relaxed)
            + kills_htr.load(Ordering::Relaxed)
            + kills_sel.load(Ordering::Relaxed),
        none.load(Ordering::Relaxed)
    );
        Ok(())
    }
}

mod lean {
    //! certlean: emit Lean 4 certificate modules from ratchet_kills.txt.
    //!
    //! UNTRUSTED by design — the Lean kernel replays every obligation
    //! (`RatchetCert.check`, one `decide` per certificate) against the
    //! generic assembly in lean/Blc/Ratchet.lean; this tool only
    //! reconstructs the data the proofs quantify over: the triple from the
    //! kills line, the obligation step counts from a re-run of the trusted
    //! Rust verifier, and the INIT landing state (binders / tower height /
    //! trailing vector) from a concrete head-trace replay.
    //!
    //! Scope: `RATCHET` lines through the v1.2 assembly (lean/Blc/
    //! Ratchet.lean) and `RATCHET2` lines through the HeadTowerRatchet
    //! assembly (lean/Blc/HeadTower.lean) and `SELECTOR` lines through
    //! the SelectorRatchet assembly (lean/Blc/Selector.lean). `*-ARG`
    //! lines certify divergence of a spine argument through the rigid-head
    //! bridge in `lean/Blc/Rigid.lean`.
    //!
    //! Usage: `certlean [kills_file] [lean_out_dir]`
    //! Defaults: data/certificates/ratchet_kills.tsv lean

    use crate::args::{self, Args, R};
    use blam::blc::term::Term;
    use blam::blc::wire::parse_all;
    use blam::classical::certificate::{
        head_step, spine, strip_lams, tower_index, verify, verify_htr, verify_selector,
        HeadTowerRatchet, PTerm, Ratchet, SelectorRatchet, Step,
    };
    use std::collections::BTreeMap;
    use std::fmt::Write as _;

    const LEMMA_STEPS: u32 = 2000;
    const INIT_STEPS: u32 = 2000;
    const MAX_NODES: u64 = 200_000;

    /// Parse the kills-file wrapper syntax (PTerm's Display): `\` lambda
    /// whose body extends to the group end, digits = 1-indexed de Bruijn,
    /// `Z`/`Q`/`?i` metavariables, juxtaposition = left-assoc application,
    /// parens group.
    fn parse_pterm(s: &str) -> PTerm {
        let chars: Vec<char> = s.chars().collect();
        let (t, pos) = parse_expr(&chars, 0);
        assert_eq!(pos, chars.len(), "trailing junk in wrapper `{s}`");
        t
    }

    fn parse_expr(c: &[char], mut pos: usize) -> (PTerm, usize) {
        let mut acc: Option<PTerm> = None;
        while pos < c.len() && c[pos] != ')' {
            if c[pos] == ' ' {
                pos += 1;
                continue;
            }
            let (atom, next) = parse_atom(c, pos);
            pos = next;
            acc = Some(match acc {
                None => atom,
                Some(f) => PTerm::App(f.into(), atom.into()),
            });
        }
        (acc.expect("empty wrapper expression"), pos)
    }

    fn parse_atom(c: &[char], pos: usize) -> (PTerm, usize) {
        match c[pos] {
            '(' => {
                let (t, next) = parse_expr(c, pos + 1);
                assert_eq!(c[next], ')', "unclosed paren");
                (t, next + 1)
            }
            '\\' => {
                let (b, next) = parse_expr(c, pos + 1);
                (PTerm::Lam(b.into()), next)
            }
            'Z' => (PTerm::Meta(0), pos + 1),
            'Q' => (PTerm::Meta(1), pos + 1),
            '?' => {
                let (n, next) = parse_num(c, pos + 1);
                (PTerm::Meta(n), next)
            }
            d if d.is_ascii_digit() => {
                let (n, next) = parse_num(c, pos);
                (PTerm::Var(n), next)
            }
            other => panic!("unexpected `{other}` in wrapper"),
        }
    }

    fn parse_num(c: &[char], mut pos: usize) -> (u32, usize) {
        let start = pos;
        while pos < c.len() && c[pos].is_ascii_digit() {
            pos += 1;
        }
        (
            c[start..pos].iter().collect::<String>().parse().unwrap(),
            pos,
        )
    }

    /// Lean literal for a concrete term — 0-indexed (`Var(n)` → `.var (n-1)`).
    fn lean_term(t: &Term, out: &mut String) {
        match t {
            Term::Var(n) => {
                let _ = write!(out, "(.var {})", n - 1);
            }
            Term::Lam(b) => {
                out.push_str("(.lam ");
                lean_term(b, out);
                out.push(')');
            }
            Term::App(f, a) => {
                out.push_str("(.app ");
                lean_term(f, out);
                out.push(' ');
                lean_term(a, out);
                out.push(')');
            }
        }
    }

    /// Lean literal for the wrapper: every hole becomes `.mvar 0` (the
    /// verifier gate `wrapper_holes_are_meta0` licenses the collapse).
    fn lean_pterm(t: &PTerm, out: &mut String) {
        match t {
            PTerm::Var(n) => {
                let _ = write!(out, "(.var {})", n - 1);
            }
            PTerm::Meta(_) => out.push_str("(.mvar 0)"),
            PTerm::Lam(b) => {
                out.push_str("(.lam ");
                lean_pterm(b, out);
                out.push(')');
            }
            PTerm::App(f, a) => {
                out.push_str("(.app ");
                lean_pterm(f, out);
                out.push(' ');
                lean_pterm(a, out);
                out.push(')');
            }
        }
    }

    const USAGE: &str = "\
blam cert lean — emit the certificate kills as Lean 4 modules

usage: blam cert lean [KILLS] [OUTDIR]

  KILLS    kills file (default data/certificates/ratchet_kills.tsv)
  OUTDIR   Lean output root (default lean)

Writes OUTDIR/Certs/Size<n>.lean plus OUTDIR/Certs.lean. The emitter is
untrusted: the Lean kernel replays every obligation.";

    pub fn run(argv: &[String]) -> R<()> {
        if args::wants_help(argv) {
            println!("{USAGE}");
            return Ok(());
        }
        let mut p = Args::new("cert lean", argv);
        while let Some(tok) = p.next() {
            match tok {
                _ if tok.starts_with('-') => return Err(p.unknown(tok)),
                _ => p.push(tok),
            }
        }
        p.at_most(2)?;
        let pos = p.positional();
        let kills = pos
            .first()
            .copied()
            .unwrap_or("data/certificates/ratchet_kills.tsv");
        let out_dir = pos.get(1).copied().unwrap_or("lean");

        let text =
            std::fs::read_to_string(kills).map_err(|e| format!("blam cert lean: {kills}: {e}"))?;
        let mut by_size: BTreeMap<usize, Vec<String>> = BTreeMap::new();
        let mut emitted = 0usize;
        let mut skipped = 0usize;

        for line in text.lines() {
            let mut cols = line.split('\t');
            let raw_tag = cols.next().unwrap_or("");
            let (tag, is_arg) = match raw_tag.strip_suffix("-ARG") {
                Some(base) => (base, true),
                None => (raw_tag, false),
            };
            if tag != "RATCHET" && tag != "RATCHET2" && tag != "SELECTOR" {
                skipped += 1;
                continue;
            }
            let bits = cols.next().expect("term bits");
            let mut head = "";
            let mut w = "";
            let mut c0 = "";
            let mut eraser = "";
            let mut selp = "";
            let mut at_path = "";
            for col in cols {
                if let Some(v) = col.strip_prefix("head=") {
                    head = v;
                } else if let Some(v) = col.strip_prefix("w=") {
                    w = v;
                } else if let Some(v) = col.strip_prefix("c0=") {
                    c0 = v;
                } else if let Some(v) = col.strip_prefix("i=") {
                    eraser = v;
                } else if let Some(v) = col.strip_prefix("p=") {
                    selp = v;
                } else if let Some(v) = col.strip_prefix("at=") {
                    at_path = v;
                }
            }
            let outer = parse_all(bits).expect("target parse");

            // `-ARG` kills: the certificate applies to a closed spine
            // argument of the outer term's head normal form. Replay the
            // head normalization (counting exact steps for the Lean-side
            // `headSteps` obligation), extract the argument, and run the
            // ordinary pipeline against it; the bridge theorem `argKill`
            // (Blc/Rigid.lean) then lifts its ¬HasNormalForm to the outer
            // term.
            let (t, arg_data) = if is_arg {
                let mut hnf = PTerm::from_term(&outer);
                let mut k_h: u32 = 0;
                loop {
                    match head_step(&hnf, MAX_NODES) {
                        Step::Did(next, _) => {
                            hnf = next;
                            k_h += 1;
                            assert!(k_h < 1_000_000, "hnf replay runaway on {bits}");
                        }
                        Step::Nf => break,
                        other => panic!("hnf replay stalled on {bits}: {other:?}"),
                    }
                }
                let idx: usize = at_path
                    .parse()
                    .expect("only single-level ARG paths are emitted");
                let (_, body) = strip_lams(&hnf);
                let (_, sargs) = spine(body).expect("hnf is not an application");
                let a_term = sargs[idx].to_term().expect("ARG must be concrete");
                let hnf_term = hnf.to_term().expect("hnf must be concrete");
                (a_term, Some((k_h, hnf_term)))
            } else {
                (outer.clone(), None)
            };
            let a = parse_all(head).expect("head parse");
            let c0t = parse_all(c0).expect("c0 parse");
            let wp = parse_pterm(w);

            // Re-verify with the matching trusted checker; collect the
            // obligation counts and the INIT step count.
            let (kind, counts, init_steps): (&str, Vec<(&str, u32)>, u32) = if tag == "RATCHET" {
                let cert = Ratchet {
                    a: a.clone(),
                    w: wp.clone(),
                    c0: c0t.clone(),
                };
                let rep = verify(&t, &cert, LEMMA_STEPS, INIT_STEPS, MAX_NODES)
                    .unwrap_or_else(|e| panic!("re-verify failed on {bits}: {e:?}"));
                (
                    "RatchetCert",
                    vec![
                        ("kO", rep.open_steps),
                        ("kD", rep.desc_steps),
                        ("kB", rep.base_steps),
                    ],
                    rep.init_steps,
                )
            } else if tag == "SELECTOR" {
                let sel = SelectorRatchet {
                    a: a.clone(),
                    w: wp.clone(),
                    p: parse_pterm(selp),
                    c0: c0t.clone(),
                };
                let rep = verify_selector(&t, &sel, LEMMA_STEPS, INIT_STEPS, MAX_NODES)
                    .unwrap_or_else(|e| panic!("selector re-verify failed on {bits}: {e:?}"));
                let [ko, kf, ksel, kb] = rep.obligation_steps;
                (
                    "SelCert",
                    vec![("kO", ko), ("kF", kf), ("kSel", ksel), ("kB", kb)],
                    rep.init_steps,
                )
            } else {
                let htr = HeadTowerRatchet {
                    a: a.clone(),
                    w: wp.clone(),
                    c0: c0t.clone(),
                    i: parse_all(eraser).expect("eraser parse"),
                };
                let rep = verify_htr(&t, &htr, LEMMA_STEPS, INIT_STEPS, MAX_NODES)
                    .unwrap_or_else(|e| panic!("htr re-verify failed on {bits}: {e:?}"));
                let [kb, ko, ks, kp, kn, ke] = rep.obligation_steps;
                (
                    "HTRCert",
                    vec![
                        ("kB", kb),
                        ("kO", ko),
                        ("kS", ks),
                        ("kP", kp),
                        ("kBounce", kn),
                        ("kE", ke),
                    ],
                    rep.init_steps,
                )
            };

            // Replay INIT to the landing state and read off the v1.1/v1.2 data.
            let ap = PTerm::from_term(&a);
            let c0p = PTerm::from_term(&c0t);
            let mut cur = PTerm::from_term(&t);
            for i in 0..init_steps {
                match head_step(&cur, MAX_NODES) {
                    Step::Did(next, _) => cur = next,
                    other => panic!("INIT replay stalled on {bits} at {i}: {other:?}"),
                }
            }
            let (binders, body) = strip_lams(&cur);
            let (h, spine_args) = spine(body).expect("landing not an application");
            assert_eq!(**h, ap, "landing head mismatch on {bits}");
            let n0 = tower_index(&wp, &c0p, spine_args[0]).expect("landing tower");
            let trail: Vec<Term> = spine_args[1..]
                .iter()
                .map(|p| p.to_term().expect("trail must be concrete"))
                .collect();

            // Emit the certificate block.
            let mut blk = String::new();
            let _ = writeln!(blk, "/-- `{bits}` ({} bits, {raw_tag}). -/", bits.len());
            let _ = writeln!(blk, "def cert_{bits} : {kind} where");
            blk.push_str("  A := ");
            lean_term(&a, &mut blk);
            blk.push_str("\n  W := ");
            lean_pterm(&wp, &mut blk);
            blk.push_str("\n  C0 := ");
            lean_term(&c0t, &mut blk);
            if kind == "HTRCert" {
                blk.push_str("\n  E := ");
                lean_term(&parse_all(eraser).unwrap(), &mut blk);
            }
            if kind == "SelCert" {
                blk.push_str("\n  P := ");
                lean_pterm(&parse_pterm(selp), &mut blk);
            }
            blk.push('\n');
            for (name, val) in &counts {
                let _ = writeln!(blk, "  {name} := {val}");
            }
            blk.push_str("  T := ");
            lean_term(&t, &mut blk);
            let _ = writeln!(
                blk,
                "\n  kI := {init_steps}\n  binders := {binders}\n  n0 := {n0}"
            );
            blk.push_str("  trail := [");
            for (i, y) in trail.iter().enumerate() {
                if i > 0 {
                    blk.push_str(", ");
                }
                lean_term(y, &mut blk);
            }
            blk.push_str("]\n\n");
            let wire: Vec<&str> = bits
                .chars()
                .map(|c| if c == '1' { "true" } else { "false" })
                .collect();
            if let Some((k_h, hnf_term)) = &arg_data {
                // The bridge: outer term → (headSteps, decided) its hnf →
                // (hnfArgB, decided) the certified argument on the rigid
                // spine → argKill concludes for the outer term.
                blk.push_str("def target_");
                blk.push_str(bits);
                blk.push_str(" : Term := ");
                lean_term(&outer, &mut blk);
                blk.push_str("\n\n");
                let _ = writeln!(
                    blk,
                    "theorem kill_{bits} : ¬ HasNormalForm target_{bits} :=\n  \
                 argKill (k := {k_h}) (s := "
                );
                blk.truncate(blk.len() - 1); // drop the newline writeln added
                lean_term(hnf_term, &mut blk);
                let _ = writeln!(
                    blk,
                    ") (a := (cert_{bits}).T)\n    \
                 (by decide) (by decide) (by decide)\n    \
                 ((cert_{bits}).noNormalForm ({kind}.valid_of_check (by decide)))\n"
                );
                let _ = writeln!(
                    blk,
                    "theorem wire_{bits} :\n    blcCode target_{bits} = [{}] := by decide\n",
                    wire.join(", ")
                );
            } else {
                let _ = writeln!(
                    blk,
                    "theorem kill_{bits} : ¬ HasNormalForm (cert_{bits}).T :=\n  \
                 (cert_{bits}).noNormalForm ({kind}.valid_of_check (by decide))\n"
                );
                // Wire identity: the kernel, not this emitter, vouches that
                // the certified term IS the term the theorem name's bits encode.
                let _ = writeln!(
                    blk,
                    "theorem wire_{bits} :\n    blcCode (cert_{bits}).T = [{}] := by decide\n",
                    wire.join(", ")
                );
            }
            by_size.entry(bits.len()).or_default().push(blk);
            emitted += 1;
        }

        std::fs::create_dir_all(format!("{out_dir}/Certs")).expect("mkdir");
        let mut root = String::from(
            "/-\nGenerated by `blam cert lean` from\n\
         data/certificates/ratchet_kills.tsv — DO NOT EDIT. Each module carries\n\
         the kernel-checked ¬HasNormalForm theorems for one term size;\n\
         the emitter is untrusted (see src/cli/cert.rs).\n-/\n",
        );
        for (size, blocks) in &by_size {
            let mut f = String::new();
            let _ = writeln!(
            f,
            "/-\nGenerated by `blam cert lean` — DO NOT EDIT. {} RATCHET kill(s) at n={size}.\n\
             Every obligation is replayed by the Lean kernel (`by decide`),\n\
             and each `wire_*` theorem pins the certified term to its named bits.\n-/\n\
             import Blc.Ratchet\nimport Blc.HeadTower\nimport Blc.Selector\nimport Blc.Rigid\nimport Blc.Wire\n\nnamespace Blc.Certs\n",
            blocks.len()
        );
            for b in blocks {
                f.push_str(b);
            }
            f.push_str("end Blc.Certs\n");
            let path = format!("{out_dir}/Certs/Size{size}.lean");
            std::fs::write(&path, f).expect("write module");
            let _ = writeln!(root, "import Certs.Size{size}");
            println!("wrote {path} ({} certs)", blocks.len());
        }
        std::fs::write(format!("{out_dir}/Certs.lean"), root).expect("write root");
        println!(
        "emitted {emitted} certificates across {} size modules ({skipped} non-RATCHET lines skipped)",
        by_size.len()
    );
        Ok(())
    }
}

#[cfg(feature = "lab")]
mod diag {
    //! certdiag: instrument the ratchet discovery pipeline over a term
    //! list and report, per term, exactly where the pipeline drops it.
    //! Pure diagnostics — nothing here is trusted, nothing is a kill.
    //!
    //! Stages (last one reached wins):
    //!   no-family     no lam-headed application state ever seen
    //!   family        families exist, none collected 3 milestones
    //!   window        3-windows exist, none strictly growing
    //!   growth        growing window, but x1 never occurs in x2
    //!   occur         wrapper extracted, but plug(w, x2) != x3
    //!   plug          consistent candidate offered; verify failed (stage says which)
    //!   KILL          verify accepted (would be a certsearch regression)
    //!
    //! Extra columns: milestone count of the best family, arity spread of
    //! the most-recurrent head (spine-growth evidence for the v3 lane),
    //! whether the window base is closed, and wrapper drift
    //! (generalize(x3,x2) vs generalize(x2,x1) — a level-dependent W).
    //!
    //! Usage: `blam cert diag FILE [--steps N] [--nodes N] [--threads N]`

    use crate::args::{self, Args, R};
    use blam::blc::term::Term;
    use blam::blc::wire::parse_all;
    use blam::classical::certificate::search::generalize;
    use blam::classical::certificate::{
        check_reduces, check_reduces_star, head_step, match_wrapper, plug, spine, strip_lams,
        verify, verify_htr, CertFail, CheckFail, HeadTowerRatchet, HtrFail, PTerm, Ratchet, Step,
    };
    use rayon::prelude::*;
    use std::collections::HashMap;
    use std::rc::Rc;

    #[derive(Default)]
    struct Diag {
        stage: &'static str,
        best_milestones: usize,
        head_arities: usize,
        max_arity: usize,
        x1_closed: bool,
        drift: &'static str,
        verify_fail: String,
        sel: String,
        pdiag: String,
    }

    /// Rename metavariable ids: SELECT needs `W[Q]` alongside `P[Z]`.
    fn rename_meta(t: &PTerm, from: u32, to: u32) -> PTerm {
        match t {
            PTerm::Meta(i) if *i == from => PTerm::Meta(to),
            PTerm::Meta(i) => PTerm::Meta(*i),
            PTerm::Var(n) => PTerm::Var(*n),
            PTerm::Lam(b) => PTerm::Lam(rename_meta(b, from, to).into()),
            PTerm::App(f, a) => PTerm::App(
                rename_meta(f, from, to).into(),
                rename_meta(a, from, to).into(),
            ),
        }
    }

    /// Pattern hygiene: scoped (no free vars) and only `Meta(0)` holes.
    fn good_pattern(p: &PTerm) -> bool {
        fn only_meta0(t: &PTerm) -> bool {
            match t {
                PTerm::Meta(i) => *i == 0,
                PTerm::Var(_) => true,
                PTerm::Lam(b) => only_meta0(b),
                PTerm::App(f, a) => only_meta0(f) && only_meta0(a),
            }
        }
        p.max_free(0) == 0 && only_meta0(p)
    }

    /// Trace symbolically until the head goes opaque; return that state.
    fn trace_to_metahead(start: &PTerm, max_steps: u32, max_nodes: u64) -> Option<PTerm> {
        let mut cur = start.clone();
        for _ in 0..max_steps {
            match head_step(&cur, max_nodes) {
                Step::Did(next, _) => cur = next,
                Step::MetaHead => return Some(cur),
                _ => return None,
            }
        }
        None
    }

    /// SelectorRatchet probe: BASE `C0 Z →* A Z`,
    /// OPEN `A Z →⁺ Z W[Z]`, FAN `W[Z] Q →⁺ Q P[Z] Q` (P extracted),
    /// SELECT `W[Q] P[Z] →⁺ Z`. Returns "ok:kO:kF:kSel" or the failing
    /// obligation.
    fn selector_probe(cand: &Ratchet, max_nodes: u64) -> String {
        const K: u32 = 400;
        let ap = PTerm::from_term(&cand.a);
        let c0p = PTerm::from_term(&cand.c0);
        let m0 = PTerm::Meta(0);
        let m1 = PTerm::Meta(1);
        let open_end = PTerm::App(m0.clone().into(), cand.w.clone().into());
        let Ok(ko) = check_reduces(
            &PTerm::App(ap.clone().into(), m0.clone().into()),
            &open_end,
            K,
            max_nodes,
        ) else {
            return "open".into();
        };
        // FAN: find the opaque-head endpoint of W[Z] Q and match `Q P Q`.
        let fan_start = PTerm::App(cand.w.clone().into(), m1.clone().into());
        let Some(fan_end) = trace_to_metahead(&fan_start, K, max_nodes) else {
            return "fan-trace".into();
        };
        let p = match &fan_end {
            PTerm::App(qp, q2) if **q2 == m1 => match &**qp {
                PTerm::App(q1, p) if **q1 == m1 && good_pattern(p) => (**p).clone(),
                _ => return "fan-shape".into(),
            },
            _ => return "fan-shape".into(),
        };
        let Ok(kf) = check_reduces(&fan_start, &fan_end, K, max_nodes) else {
            return "fan-lift".into();
        };
        // SELECT: W[Q] P[Z] →⁺ Z
        let wq = rename_meta(&cand.w, 0, 1);
        let Ok(ksel) = check_reduces(&PTerm::App(wq.into(), p.into()), &m0, K, max_nodes) else {
            return "select".into();
        };
        // BASE: C0 Z →* A Z
        if check_reduces_star(
            &PTerm::App(c0p.into(), m0.clone().into()),
            &PTerm::App(ap.into(), m0.into()),
            K,
            max_nodes,
        )
        .is_err()
        {
            return "base".into();
        }
        format!("ok:{ko}:{kf}:{ksel}")
    }

    /// PassengerDiagonalRatchet probe: OPEN
    /// `A Z →⁺ Z (Z P[Z]) W[Z]` (P and W extracted from the endpoint),
    /// UNWRAP `W[Z] Q →⁺ Q Z`, DROP `P[Z] Q →⁺ Z`, SEED `C0 Q →⁺ A`.
    fn pdiag_probe(cand: &Ratchet, max_nodes: u64) -> String {
        const K: u32 = 400;
        let ap = PTerm::from_term(&cand.a);
        let c0p = PTerm::from_term(&cand.c0);
        let m0 = PTerm::Meta(0);
        let m1 = PTerm::Meta(1);
        let open_start = PTerm::App(ap.clone().into(), m0.clone().into());
        let Some(open_end) = trace_to_metahead(&open_start, K, max_nodes) else {
            return "open-trace".into();
        };
        // endpoint spine must be Z · (Z P) · W
        let Some((h, args)) = spine(&open_end) else {
            return "open-shape".into();
        };
        if **h != m0 || args.len() != 2 {
            return "open-shape".into();
        }
        let (p, w) = match (&*args[0].clone(), &*args[1].clone()) {
            (PTerm::App(z1, p), w) if **z1 == m0 && good_pattern(p) && good_pattern(w) => {
                ((**p).clone(), (*w).clone())
            }
            _ => return "open-shape".into(),
        };
        if check_reduces(&open_start, &open_end, K, max_nodes).is_err() {
            return "open-lift".into();
        }
        // UNWRAP: W[Z] Q →⁺ Q Z
        if check_reduces(
            &PTerm::App(w.into(), m1.clone().into()),
            &PTerm::App(m1.clone().into(), m0.clone().into()),
            K,
            max_nodes,
        )
        .is_err()
        {
            return "unwrap".into();
        }
        // DROP: P[Z] Q →⁺ Z
        if check_reduces(&PTerm::App(p.into(), m1.clone().into()), &m0, K, max_nodes).is_err() {
            return "drop".into();
        }
        // SEED: C0 Q →⁺ A
        if check_reduces(&PTerm::App(c0p.into(), m1.into()), &ap, K, max_nodes).is_err() {
            return "seed".into();
        }
        "ok".into()
    }

    /// Decode a verify failure into `Obligation:Kind[@step][:spine=...]`.
    /// For a MetaHead abort, replay the symbolic trace to the abort state
    /// and fingerprint its spine: which certificate objects the opaque
    /// head is applied to (`Z`, `W[Z]`, `C0`, `A`, or a size).
    fn describe_fail(e: &CertFail, cand: &Ratchet, max_nodes: u64) -> String {
        let (tag, check, start) = match e {
            CertFail::Open(c) => (
                "Open",
                c,
                Some(PTerm::App(
                    PTerm::from_term(&cand.a).into(),
                    PTerm::Meta(0).into(),
                )),
            ),
            CertFail::Desc(c) => (
                "Desc",
                c,
                Some(PTerm::App(cand.w.clone().into(), cand.w.clone().into())),
            ),
            CertFail::Base(c) => ("Base", c, None),
            CertFail::Init => return "Init".into(),
            CertFail::Shape(s) => return format!("Shape:{s}"),
        };
        match check {
            CheckFail::MetaHead(s) => {
                let mut out = format!("{tag}:MetaHead@{s}");
                if let Some(mut cur) = start {
                    for _ in 0..*s {
                        match head_step(&cur, max_nodes) {
                            Step::Did(next, _) => cur = next,
                            _ => break,
                        }
                    }
                    let (lams, body) = strip_lams(&cur);
                    let a = PTerm::from_term(&cand.a);
                    let c0 = PTerm::from_term(&cand.c0);
                    let name = |p: &PTerm| -> String {
                        if *p == PTerm::Meta(0) {
                            "Z".into()
                        } else if *p == cand.w {
                            "W[Z]".into()
                        } else if *p == a {
                            "A".into()
                        } else if *p == c0 {
                            "C0".into()
                        } else {
                            format!("s{}", p.nodes())
                        }
                    };
                    match spine(body) {
                        Some((h, args)) if **h == PTerm::Meta(0) => {
                            let fp: Vec<String> = args.iter().take(4).map(|p| name(p)).collect();
                            out.push_str(&format!(
                                ":lam{lams}:Z·{}{}",
                                fp.join("·"),
                                if args.len() > 4 { "·…" } else { "" }
                            ));
                        }
                        _ => out.push_str(":odd"),
                    }
                }
                out
            }
            CheckFail::ReachedNf(s) => format!("{tag}:Nf@{s}"),
            CheckFail::BadIntermediate(s) => format!("{tag}:BadSrc@{s}"),
            CheckFail::Budget => format!("{tag}:Budget"),
            CheckFail::TooBig(s) => format!("{tag}:TooBig@{s}"),
            CheckFail::Shape(s) => format!("{tag}:Shape:{s}"),
        }
    }

    /// Local copy of try_htr's candidate pool (closed_subterms is private
    /// to cert.rs — this is a diagnostic, keep the trusted surface small).
    fn closed_subterms_local(t: &PTerm, max_nodes: u64, out: &mut Vec<PTerm>) {
        if !t.contains_meta() && t.max_free(0) == 0 && t.nodes() <= max_nodes {
            out.push(t.clone());
        }
        match t {
            PTerm::Lam(b) => closed_subterms_local(b, max_nodes, out),
            PTerm::App(f, a) => {
                closed_subterms_local(f, max_nodes, out);
                closed_subterms_local(a, max_nodes, out);
            }
            _ => {}
        }
    }

    /// Replay try_htr's eraser loop, recording the DEEPEST obligation any
    /// eraser reaches before failing (Base=0 … Erase=5, Init=6) and that
    /// failure's kind. `HTR-KILL` would be a certsearch regression.
    fn htr_probe(t: &Term, cand: &Ratchet, max_nodes: u64) -> String {
        let mut bottom = PTerm::from_term(&cand.c0);
        while let Some(inner) = match_wrapper(&cand.w, &bottom) {
            bottom = inner;
        }
        let Some(c0) = bottom.to_term() else {
            return "htr:no-bottom".into();
        };
        let mut cands: Vec<Term> = vec![Term::Lam(std::rc::Rc::new(Term::Var(1)))];
        let mut pool = Vec::new();
        closed_subterms_local(&PTerm::from_term(&cand.a), 9, &mut pool);
        closed_subterms_local(&cand.w, 9, &mut pool);
        for p in pool {
            if let Some(ct) = p.to_term() {
                if !cands.contains(&ct) {
                    cands.push(ct);
                }
            }
        }
        let n_erasers = cands.len();
        let mut best: (i32, String) = (-1, "htr:none".into());
        for i in cands {
            let htr = HeadTowerRatchet {
                a: cand.a.clone(),
                w: cand.w.clone(),
                c0: c0.clone(),
                i,
            };
            let (depth, desc) = match verify_htr(t, &htr, 2000, 2000, max_nodes) {
                Ok(_) => return "HTR-KILL".into(),
                Err(HtrFail::Base(c)) => (0, format!("Base:{c:?}")),
                Err(HtrFail::Open(c)) => (1, format!("Open:{c:?}")),
                Err(HtrFail::Spread(c)) => (2, format!("Spread:{c:?}")),
                Err(HtrFail::Peel(c)) => (3, format!("Peel:{c:?}")),
                Err(HtrFail::Bounce(c)) => (4, format!("Bounce:{c:?}")),
                Err(HtrFail::Erase(c)) => (5, format!("Erase:{c:?}")),
                Err(HtrFail::Init) => (6, "Init".into()),
                Err(HtrFail::Shape(s)) => (-1, format!("Shape:{s}")),
            };
            if depth > best.0 {
                best = (depth, desc);
            }
        }
        format!("htr[{n_erasers}]:{}", best.1.replace([',', ' '], ";"))
    }

    fn diagnose(t: &Term, max_steps: u32, max_nodes: u64) -> Diag {
        let mut d = Diag {
            stage: "no-family",
            drift: "",
            ..Default::default()
        };
        let mut cur = PTerm::from_term(t);
        let mut size = cur.nodes() as i64;
        // Some(_) = collecting; None = retired after one verify rejection
        // (mirrors discover_stream — re-verifying every window of a family
        // is what made the first cut of this instrument grind).
        let mut families: HashMap<(Rc<PTerm>, usize), Option<Vec<PTerm>>> = HashMap::new();
        // arity spread per head (ignoring arity in the key)
        let mut arities: HashMap<Rc<PTerm>, Vec<usize>> = HashMap::new();

        let rank = |s: &str| match s {
            "no-family" => 0,
            "family" => 1,
            "window" => 2,
            "growth" => 3,
            "occur" => 4,
            "plug" => 5,
            _ => 6,
        };
        macro_rules! bump {
            ($s:expr) => {
                if rank($s) > rank(d.stage) {
                    d.stage = $s;
                }
            };
        }

        for _ in 0..max_steps {
            let (_, body) = strip_lams(&cur);
            if let Some((h, spine_args)) = spine(body) {
                if matches!(**h, PTerm::Lam(_)) && h.nodes() <= 4096 {
                    let x = spine_args[0];
                    let ar = arities.entry(h.clone()).or_default();
                    if !ar.contains(&spine_args.len()) {
                        ar.push(spine_args.len());
                    }
                    bump!("family");
                    let key = (h.clone(), spine_args.len());
                    let mut retire = false;
                    let entry = families
                        .entry(key.clone())
                        .or_insert_with(|| Some(Vec::new()));
                    let Some(args) = entry else {
                        // family retired
                        if size > max_nodes as i64 {
                            break;
                        }
                        cur = match head_step(&cur, max_nodes) {
                            Step::Did(next, delta) => {
                                size += delta;
                                next
                            }
                            _ => break,
                        };
                        continue;
                    };
                    if args.len() == 3 {
                        args.remove(0);
                    }
                    args.push((**x).clone());
                    let k = args.len();
                    if k > d.best_milestones {
                        d.best_milestones = k;
                    }
                    if k >= 3 {
                        bump!("window");
                        let (x1, x2, x3) = (&args[k - 3], &args[k - 2], &args[k - 1]);
                        if x1.nodes() < x2.nodes() && x2.nodes() < x3.nodes() {
                            bump!("growth");
                            d.x1_closed = x1.max_free(0) == 0 && !x1.contains_meta();
                            let w = generalize(x2, x1);
                            if w != PTerm::Meta(0) && w.contains_meta() {
                                bump!("occur");
                                if plug(&w, x2) == *x3 {
                                    bump!("plug");
                                    if let (Some(a), Some(c0)) = (h.to_term(), x1.to_term()) {
                                        let cand = Ratchet {
                                            a,
                                            w: w.clone(),
                                            c0,
                                        };
                                        match verify(t, &cand, 2000, 2000, max_nodes) {
                                            Ok(_) => {
                                                d.stage = "KILL";
                                                return d;
                                            }
                                            Err(e) => {
                                                if d.verify_fail.is_empty() {
                                                    d.verify_fail = format!(
                                                        "{}|{}",
                                                        describe_fail(&e, &cand, max_nodes),
                                                        htr_probe(t, &cand, max_nodes)
                                                    );
                                                    d.sel = selector_probe(&cand, max_nodes);
                                                    d.pdiag = pdiag_probe(&cand, max_nodes);
                                                }
                                                retire = true;
                                            }
                                        }
                                    }
                                } else {
                                    // wrapper drift probe: does the NEXT level use
                                    // a different wrapper around x2?
                                    let w2 = generalize(x3, x2);
                                    d.drift = if w2 != PTerm::Meta(0) && w2.contains_meta() {
                                        if w2 == w {
                                            "consistent"
                                        } else {
                                            "drift"
                                        }
                                    } else {
                                        "no-nest"
                                    };
                                }
                            }
                        }
                    }
                    if retire {
                        families.insert(key, None);
                    }
                }
            }
            if size > max_nodes as i64 {
                break;
            }
            cur = match head_step(&cur, max_nodes) {
                Step::Did(next, delta) => {
                    size += delta;
                    next
                }
                _ => break,
            };
        }
        for (_, ar) in arities {
            if ar.len() > d.head_arities {
                d.head_arities = ar.len();
            }
            let m = ar.into_iter().max().unwrap_or(0);
            if m > d.max_arity {
                d.max_arity = m;
            }
        }
        d
    }

    const USAGE: &str = "\
blam cert diag FILE — where the discovery pipeline drops each term

usage: blam cert diag FILE [--steps N] [--nodes N] [--threads N]

  --steps N    head-reduction step budget (default 1000)
  --nodes N    node ceiling (default 100000)
  --threads N  rayon threads (0 = ambient, the default)

Pure diagnostics: nothing here is trusted and nothing is a kill. Writes
one CSV row per term to stdout.";

    pub fn run(argv: &[String]) -> R<()> {
        if args::wants_help(argv) {
            println!("{USAGE}");
            return Ok(());
        }
        let mut steps: u32 = 1000;
        let mut nodes: u64 = 100_000;
        let mut threads = 0usize;
        let mut p = Args::new("cert diag", argv);
        while let Some(tok) = p.next() {
            match tok {
                "--steps" => steps = p.num(tok)?,
                "--nodes" => nodes = p.num(tok)?,
                "--threads" => threads = p.num(tok)?,
                _ if tok.starts_with('-') => return Err(p.unknown(tok)),
                _ => p.push(tok),
            }
        }
        p.at_most(1)?;
        let Some(path) = p.positional().first().copied() else {
            return Err(format!(
                "blam cert diag: missing FILE\n{}",
                args::hint("cert diag")
            ));
        };
        args::build_pool_plain(threads)?;
        let owned = args::read_terms_file(path)?;
        let terms: Vec<&str> = owned.iter().map(String::as_str).collect();

        println!(
        "bits,n,stage,best_milestones,head_arities,max_arity,x1_closed,drift,verify_fail,sel,pdiag"
    );
        let rows: Vec<String> = terms
            .par_iter()
            .map(|bits| {
                let t = parse_all(bits).expect("parse");
                let d = diagnose(&t, steps, nodes);
                format!(
                    "{bits},{},{},{},{},{},{},{},{},{},{}",
                    bits.len(),
                    d.stage,
                    d.best_milestones,
                    d.head_arities,
                    d.max_arity,
                    d.x1_closed as u8,
                    d.drift,
                    d.verify_fail,
                    d.sel,
                    d.pdiag
                )
            })
            .collect();
        for r in rows {
            println!("{r}");
        }
        Ok(())
    }
}
