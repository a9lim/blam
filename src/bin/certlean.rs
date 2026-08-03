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
//! lines certify divergence of a spine argument and need the
//! rigid-head bridge (future lane).
//!
//! Usage: certlean [kills_file] [lean_out_dir]
//! Defaults: tools/cert/ratchet_kills.txt lean

use blam::cert::{
    head_step, spine, strip_lams, tower_index, verify, verify_htr, verify_selector,
    HeadTowerRatchet, PTerm, Ratchet, SelectorRatchet, Step,
};
use blam::parse::parse_all;
use blam::term::Term;
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
    (c[start..pos].iter().collect::<String>().parse().unwrap(), pos)
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

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let kills = args
        .get(1)
        .map(String::as_str)
        .unwrap_or("tools/cert/ratchet_kills.txt");
    let out_dir = args.get(2).map(String::as_str).unwrap_or("lean");

    let text = std::fs::read_to_string(kills).expect("kills file");
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
            // the certified term IS the term the theorem name's bits
            // encode (Codex round eight).
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
        "/-\nGenerated by `cargo run --release --bin certlean` from\n\
         tools/cert/ratchet_kills.txt — DO NOT EDIT. Each module carries\n\
         the kernel-checked ¬HasNormalForm theorems for one term size;\n\
         the emitter is untrusted (see src/bin/certlean.rs).\n-/\n",
    );
    for (size, blocks) in &by_size {
        let mut f = String::new();
        let _ = writeln!(
            f,
            "/-\nGenerated by certlean — DO NOT EDIT. {} RATCHET kill(s) at n={size}.\n\
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
}
