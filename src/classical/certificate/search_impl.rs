//! Untrusted discovery — nothing here is a proof; only the checkers in
//! the parent module accept a kill.
//!
//! Discovery runs bounded concrete head traces, guesses `(A, W, C0)`
//! triples off recurring milestones, and assembles candidate v2/v3
//! certificates from them. Every policy choice here is heuristic and
//! every output is a *candidate*: garbage in yields no certificate,
//! never a wrong one.

use super::*;
use crate::blc::Term;
use std::collections::HashMap;
use std::rc::Rc;

/// Which certificate class killed a term, with the trusted checker's own
/// report. Only a `verify*` return builds one of these.
#[derive(Clone, Debug, PartialEq, Eq)]
pub enum Kill {
    V1(Ratchet, CertReport),
    Htr(HeadTowerRatchet, HtrReport),
    Selector(SelectorRatchet, SelReport),
}

impl Kill {
    /// Class tag, as the sweep and the battery name it.
    pub fn class(&self) -> &'static str {
        match self {
            Kill::V1(..) => "v1",
            Kill::Htr(..) => "htr",
            Kill::Selector(..) => "selector",
        }
    }
}

/// The three-rung sweep, and the only one: streaming discovery offers each
/// candidate triple to v1 `verify`, then the HeadTowerRatchet driver, then
/// the SelectorRatchet driver, and the first acceptance wins. A rejection
/// retires only that milestone family, so later families still get their
/// shot — stopping at the first candidate would mask valid later ones.
///
/// Untrusted throughout: every returned `Kill` carries a report a trusted
/// checker produced, so a bad candidate can only fail to certify.
pub fn try_kill(t: &Term, b: &CertBudgets) -> Option<Kill> {
    let mut found: Option<Kill> = None;
    discover_stream(t, b.steps, b.nodes, &mut |cand: &Ratchet| {
        if let Ok(rep) = verify(t, cand, b) {
            found = Some(Kill::V1(cand.clone(), rep));
            return true;
        }
        // v2: same discovered triple, HeadTowerRatchet obligations.
        if let Some((htr, rep)) = try_htr(t, cand, b) {
            found = Some(Kill::Htr(htr, rep));
            return true;
        }
        // v3: same triple, SelectorRatchet obligations.
        if let Some((sel, rep)) = try_selector(t, cand, b) {
            found = Some(Kill::Selector(sel, rep));
            return true;
        }
        false
    });
    found
}

/// Collect closed (Meta-free, variable-closed) subterms of `t` with at
/// most `max_nodes` nodes into `out` (discovery aid, unordered).
pub(crate) fn closed_subterms(t: &PTerm, max_nodes: u64, out: &mut Vec<PTerm>) {
    if !t.contains_meta() && t.max_free(0) == 0 && t.nodes() <= max_nodes {
        out.push(t.clone());
    }
    match t {
        PTerm::Lam(b) => closed_subterms(b, max_nodes, out),
        PTerm::App(f, a) => {
            closed_subterms(f, max_nodes, out);
            closed_subterms(a, max_nodes, out);
        }
        _ => {}
    }
}

/// Replace every occurrence of `needle` in `hay` by `Meta` (discovery
/// aid — untrusted; also used by the `blam cert diag` instrument).
pub fn generalize(hay: &PTerm, needle: &PTerm) -> PTerm {
    if hay == needle {
        return PTerm::Meta(0);
    }
    match hay {
        PTerm::Var(n) => PTerm::Var(*n),
        PTerm::Meta(i) => PTerm::Meta(*i),
        PTerm::Lam(b) => plam(generalize(b, needle)),
        PTerm::App(f, a) => papp(generalize(f, needle), generalize(a, needle)),
    }
}

/// Untrusted certificate discovery: run a bounded concrete head trace,
/// look for a recurring abstraction head with strictly growing arguments,
/// and extract `(A, W, C0)` by expressing each milestone argument as a
/// context around its predecessor. The caller must `verify`.
///
/// Returns the FIRST consistent candidate. Callers that can reject a
/// candidate (checker says no) should prefer `discover_stream`, which
/// keeps scanning across families instead of stopping at the first.
pub fn discover(t: &Term, max_steps: u32, max_nodes: u64) -> Option<Ratchet> {
    discover_stream(t, max_steps, max_nodes, &mut |_| true)
}

/// Streaming discovery: every consistent candidate triple is offered to
/// `accept`; the scan stops at the first candidate `accept` takes (that
/// triple is returned) or when the trace budget ends. Each milestone
/// family proposes at most once — after a rejection the family is
/// retired (consecutive windows of one family yield near-identical
/// triples whose rejection cause persists; distinct families are the
/// completeness win). Family count is capped: spine ratchets push a
/// fresh arity almost every state (observed arity up to 8,228), and
/// each would otherwise hold a milestone window alive. All policy here is
/// untrusted — the
/// checkers alone decide soundness.
pub fn discover_stream(
    t: &Term,
    max_steps: u32,
    max_nodes: u64,
    accept: &mut impl FnMut(&Ratchet) -> bool,
) -> Option<Ratchet> {
    let mut cur = PTerm::from_term(t);
    let mut size = cur.nodes() as i64;
    // milestone family (head pattern, spine arity) -> first spine
    // arguments in trace order (None = family retired after a rejected
    // proposal). Keying on arity too keeps distinct roles of the same
    // head apart — the deep family passes through both `A Xₙ` (the
    // milestones) and `A I Xₘ Xₙ` (rank-step interiors); merged into
    // one stream, the interiors' small constant first argument destroys
    // the growing-window invariant.
    const MAX_FAMILIES: usize = 4096;
    let mut milestones: HashMap<(Rc<PTerm>, usize), Option<Vec<PTerm>>> = HashMap::new();

    for _ in 0..max_steps {
        // Milestones may live under leading binders (verify's closedness
        // gates reject any candidate that captures ambient variables).
        // The tower rides the FIRST spine argument; trailing args are
        // carried by lifting (see verify's INIT note) and ignored here.
        let (_, body) = strip_lams(&cur);
        if let Some((h, spine_args)) = spine(body) {
            let x = spine_args[0];
            // Head-size guard: hashing the head is O(|H|) per state, and
            // certificate heads are small; skip pathological giants.
            if matches!(**h, PTerm::Lam(_))
                && h.nodes() <= 4096
                && (milestones.len() < MAX_FAMILIES
                    || milestones.contains_key(&(h.clone(), spine_args.len())))
            {
                let entry = milestones
                    .entry((h.clone(), spine_args.len()))
                    .or_insert_with(|| Some(Vec::new()));
                if let Some(args) = entry {
                    // Only the last three milestones are ever inspected;
                    // dropping older ones releases their subtree graphs
                    // (keeping them alive was half the memory bomb).
                    if args.len() == 3 {
                        args.remove(0);
                    }
                    args.push((**x).clone());
                    if args.len() >= 3 {
                        // Sliding window: a term may have a pre-ratchet
                        // prelude; any later tower point works as C0 (BASE
                        // is a concrete check, it just runs longer).
                        let k = args.len();
                        let (x1, x2, x3) = (&args[k - 3], &args[k - 2], &args[k - 1]);
                        if x1.nodes() < x2.nodes() && x2.nodes() < x3.nodes() {
                            let w = generalize(x2, x1);
                            // real growth (at least one occurrence replaced,
                            // wrapper is not the bare hole) and one
                            // consistency probe before offering upward
                            if w != PTerm::Meta(0) && w.contains_meta() && plug(&w, x2) == *x3 {
                                if let (Some(a), Some(c0)) = (h.to_term(), x1.to_term()) {
                                    let cand = Ratchet { a, w, c0 };
                                    if accept(&cand) {
                                        return Some(cand);
                                    }
                                }
                                // rejected: retire this family
                                *entry = None;
                            }
                        }
                    }
                }
            }
        }
        if size > max_nodes as i64 {
            return None;
        }
        cur = match head_step(&cur, max_nodes) {
            Step::Did(next, d) => {
                size += d;
                next
            }
            _ => return None,
        };
    }
    None
}

/// Peel a witnessed tower argument down to the true bottom: what discovery
/// hands back is some `Wᵏ[C0ₜᵣᵤₑ]` — v1 may use it as-is (BASE just runs
/// longer), but the v2/v3 assembly theorems need the bottom. Untrusted:
/// the verifiers re-derive the tower from whatever this returns.
pub fn peel_to_bottom(w: &PTerm, c0: &PTerm) -> PTerm {
    let mut bottom = c0.clone();
    while let Some(inner) = match_wrapper(w, &bottom) {
        bottom = inner;
    }
    bottom
}

/// `try_htr`'s eraser candidate pool: the identity first, then small
/// closed subterms of `A` and `W`, deduplicated in discovery order. Pure
/// heuristic — exported so the `blam cert diag` instrument replays the same pool
/// instead of keeping a copy that can drift.
pub fn htr_eraser_candidates(cert: &Ratchet) -> Vec<Term> {
    let mut cands: Vec<Term> = vec![Term::Lam(Rc::new(Term::Var(1)))];
    let mut pool = Vec::new();
    closed_subterms(&PTerm::from_term(&cert.a), 9, &mut pool);
    closed_subterms(&cert.w, 9, &mut pool);
    for p in pool {
        if let Some(ct) = p.to_term() {
            if !cands.contains(&ct) {
                cands.push(ct);
            }
        }
    }
    cands
}

/// Untrusted HeadTowerRatchet driver: reuse a discovered `(A, W, C0)`
/// triple, peel the observed base to the true tower bottom (a witnessed
/// milestone argument is `Wᵏ[C0ₜᵣᵤₑ]` — v1 may use it directly, the
/// assembly theorem needs the bottom), then try small closed candidate
/// erasers, the identity first. Garbage in ⇒ no certificate, never a
/// wrong one: `verify_htr` alone is trusted.
pub fn try_htr(t: &Term, cert: &Ratchet, b: &CertBudgets) -> Option<(HeadTowerRatchet, HtrReport)> {
    let c0 = peel_to_bottom(&cert.w, &PTerm::from_term(&cert.c0)).to_term()?;

    for i in htr_eraser_candidates(cert) {
        let htr = HeadTowerRatchet {
            a: cert.a.clone(),
            w: cert.w.clone(),
            c0: c0.clone(),
            i,
        };
        if let Ok(rep) = verify_htr(t, &htr, b) {
            return Some((htr, rep));
        }
    }
    None
}

/// Untrusted SelectorRatchet driver: reuse a discovered `(A, W, C0)`
/// triple — read `P` off the FAN trace's opaque-head endpoint
/// (`W[Z] Q →ₕ⁺ Q P[Z] Q`), peel the observed base to the tower
/// bottom, and hand everything to the trusted verifier. Garbage in ⇒
/// no certificate, never a wrong one.
pub fn try_selector(
    t: &Term,
    cand: &Ratchet,
    b: &CertBudgets,
) -> Option<(SelectorRatchet, SelReport)> {
    // FAN trace to the first opaque-head state.
    let mut cur = papp(cand.w.clone(), PTerm::Meta(1));
    let mut fuel = b.lemma_steps;
    loop {
        match head_step(&cur, b.nodes) {
            Step::Did(next, _) => {
                cur = next;
                if fuel == 0 {
                    return None;
                }
                fuel -= 1;
            }
            Step::MetaHead => break,
            _ => return None,
        }
    }
    // Endpoint must be Q P Q; extract P.
    let p = match &cur {
        PTerm::App(qp, q2) if **q2 == PTerm::Meta(1) => match &**qp {
            PTerm::App(q1, p) if **q1 == PTerm::Meta(1) => (**p).clone(),
            _ => return None,
        },
        _ => return None,
    };
    // Peel the discovered base to the tower bottom.
    let c0 = peel_to_bottom(&cand.w, &PTerm::from_term(&cand.c0)).to_term()?;
    let cert = SelectorRatchet {
        a: cand.a.clone(),
        w: cand.w.clone(),
        p,
        c0,
    };
    verify_selector(t, &cert, b).ok().map(|rep| (cert, rep))
}

#[cfg(test)]
mod tests {
    use super::super::tests::{loop32_cert, LOOP32};

    /// The unit tests' budgets: tight lemma bound, roomy INIT and nodes.
    const TB: CertBudgets = CertBudgets {
        steps: 4096,
        nodes: 1 << 20,
        lemma_steps: 64,
    };
    use super::*;
    use crate::blc::wire::parse_all;

    /// The 35-bit SelectorRatchet forcing exemplar:
    /// A = C0 = λx. x W[x], W[Z] = λq. q P[Z] q, P[Z] = λa.λb.Z.
    /// v1 rejects it (OPEN endpoint is `Z W[Z]`), HTR rejects it
    /// (SPREAD endpoint is `Q P[Z] Q`, not `Q I Z Q`); the selector
    /// obligations certify it with the measured counts
    /// OPEN 1 / FAN 1 / SELECT 3 / BASE 0 — milestone gaps 4n+1.
    const SEL35: &str = "01000110100001100001011000001111010";

    /// The 35-bit deep-family forcing term: v1 aborts, the HTR
    /// obligations certify it (see `forcing_term_certifies_via_htr`).
    const HTR35: &str = "01000110100001100001010110001011010";

    #[test]
    fn try_kill_routes_each_class_to_its_own_rung() {
        // One exemplar per rung, each rejected by the rungs before it, so
        // this pins the ladder ORDER as well as its verdicts.
        let cases = [
            (LOOP32, Some("v1")),
            (HTR35, Some("htr")),
            (SEL35, Some("selector")),
            // (λx. x x) (λx. x) halts — no rung may fire.
            ("01000110100010", None),
        ];
        for (bits, want) in cases {
            let t = parse_all(bits).unwrap();
            let got = try_kill(&t, &CertBudgets::SWEEP);
            assert_eq!(got.as_ref().map(Kill::class), want, "on {bits}");
        }
    }

    #[test]
    fn selector_exemplar_certifies() {
        let t = parse_all(SEL35).unwrap();
        let mut found = None;
        discover_stream(&t, 1000, 100_000, &mut |cand: &Ratchet| {
            assert!(
                verify(
                    &t,
                    cand,
                    &CertBudgets {
                        steps: 1000,
                        nodes: 100_000,
                        lemma_steps: 1000
                    }
                )
                .is_err(),
                "v1 must reject the selector exemplar"
            );
            let sb = CertBudgets {
                steps: 1000,
                nodes: 100_000,
                lemma_steps: 1000,
            };
            if let Some(pair) = try_selector(&t, cand, &sb) {
                found = Some(pair);
                return true;
            }
            false
        });
        let (cert, rep) = found.expect("selector certificate expected");
        assert_eq!(rep.obligation_steps, [1, 1, 3, 0]);
        assert_eq!(cert.a, cert.c0, "the forcing family has A = C0");
    }

    /// Selector soundness spot-check: the certificate data must not
    /// verify against a HALTING self-application of the same shape
    /// family (the battery covers this exhaustively; this is the
    /// in-file canary).
    #[test]
    fn selector_rejects_halter() {
        // (λx. x x) (λx. x) — halts.
        let t = parse_all("01000110100010").unwrap();
        let mut fired = false;
        discover_stream(&t, 1000, 100_000, &mut |cand: &Ratchet| {
            let sb = CertBudgets {
                steps: 1000,
                nodes: 100_000,
                lemma_steps: 1000,
            };
            if try_selector(&t, cand, &sb).is_some() {
                fired = true;
                return true;
            }
            false
        });
        assert!(!fired);
    }

    #[test]
    fn loop32_discovers_and_verifies_end_to_end() {
        let t = parse_all(LOOP32).unwrap();
        let cert = discover(&t, 4096, 1 << 20).expect("discovery");
        assert_eq!(cert.a, loop32_cert().a);
        verify(&t, &cert, &TB).expect("verify");
    }

    #[test]
    fn under_binder_ratchet_certifies() {
        // λ_. loop32: the milestones live under a leading binder. The
        // classifier found 1,320 frontier terms presenting this way;
        // discovery and INIT must strip binders (and the closed-triple
        // gates keep it sound).
        let t = Term::Lam(Rc::new(parse_all(LOOP32).unwrap()));
        let cert = discover(&t, 4096, 1 << 20).expect("discovery under binder");
        assert_eq!(cert.a, loop32_cert().a);
        verify(&t, &cert, &TB).expect("verify under binder");
    }

    #[test]
    fn trailing_arg_ratchet_certifies() {
        // Frontier near-miss (n=36): milestones are A Wⁿ[C0] y with
        // loop32's exact engine and one fixed trailing spine argument
        // (which happens to be A itself). v1.1 was blind to the shape;
        // v1.2's spine matching certifies it, soundly by lifting.
        let t = parse_all("010001011000110100001011010000110110").unwrap();
        let cert = discover(&t, 4096, 1 << 20).expect("discovery with trailing arg");
        assert_eq!(cert.a, loop32_cert().a);
        let rep = verify(&t, &cert, &TB).expect("verify with trailing arg");
        assert_eq!(rep.init_trail, 1);
    }

    #[test]
    fn two_trailing_args_certify() {
        // Frontier near-miss (n=36): A Wⁿ[C0] y₁ y₂ — two trailing
        // spine arguments after a one-step prelude.
        let t = parse_all("010001100110001100001011010000110110").unwrap();
        let cert = discover(&t, 4096, 1 << 20).expect("discovery with two trailing args");
        assert_eq!(cert.a, loop32_cert().a);
        let rep = verify(&t, &cert, &TB).expect("verify with two trailing args");
        assert_eq!(rep.init_trail, 2);
    }

    #[test]
    fn forcing_term_certifies_via_htr() {
        // The 35-bit deep-family forcing term: wrapper perfectly
        // consistent, but OPEN ends Z W[Z] — the tower takes head
        // position, so v1's opacity must abort. The HeadTowerRatchet
        // certifies it with obligation lengths
        // (BASE 0 because C0 = A; then 1,1,3,3,7) and I = λ.1.
        let t = parse_all(HTR35).unwrap();
        let cert = discover(&t, 4096, 1 << 20).expect("discovery finds the triple");
        assert!(
            verify(&t, &cert, &TB).is_err(),
            "v1 must NOT certify the deep family"
        );
        let (htr, rep) = try_htr(&t, &cert, &TB).expect("htr certifies");
        assert_eq!(htr.i, parse_all("0010").unwrap()); // λ.1
        assert_eq!(htr.c0, htr.a); // C0 = A for this family
        assert_eq!(rep.obligation_steps, [0, 1, 1, 3, 3, 7]);
    }

    #[test]
    fn htr_rejects_wrong_eraser() {
        let t = parse_all(HTR35).unwrap();
        let cert = discover(&t, 4096, 1 << 20).unwrap();
        let bottom = peel_to_bottom(&cert.w, &PTerm::from_term(&cert.c0));
        let htr = HeadTowerRatchet {
            a: cert.a.clone(),
            w: cert.w.clone(),
            c0: bottom.to_term().unwrap(),
            i: cert.a.clone(), // wrong: the head is not an eraser
        };
        assert!(verify_htr(&t, &htr, &TB).is_err());
    }

    #[test]
    fn loop32_does_not_htr_certify() {
        // Complementarity: loop32's OPEN ends (Z Z) W[Z], not Z W[Z].
        // The v1 ratchet certifies it; the HeadTowerRatchet must not.
        let t = parse_all(LOOP32).unwrap();
        let cert = discover(&t, 4096, 1 << 20).unwrap();
        assert!(verify(&t, &cert, &TB).is_ok());
        assert!(try_htr(&t, &cert, &TB).is_none());
    }

    #[test]
    fn halting_lookalike_does_not_htr_certify() {
        // D(λx.xI) halts; neither discovery path may produce a cert.
        let t = parse_all("01000110100001100010").unwrap();
        if let Some(cert) = discover(&t, 4096, 1 << 20) {
            assert!(verify(&t, &cert, &TB).is_err());
            assert!(try_htr(&t, &cert, &TB).is_none());
        }
    }

    #[test]
    fn open_trailing_arg_certifies() {
        // λu. A C0 u — the trailing argument is OPEN in the stripped
        // body (it is the stripped binder's variable). Lifting never
        // substitutes into, shifts, or inspects y⃗, so openness is
        // harmless; this pins the exact claim the closed-trailing and
        // under-binder tests each cover only half of.
        let a = parse_all("0001011010000110110").unwrap();
        let c0 = parse_all("000001011010000110110").unwrap();
        let body = Term::App(
            Rc::new(Term::App(Rc::new(a.clone()), Rc::new(c0))),
            Rc::new(Term::Var(1)),
        );
        let t = Term::Lam(Rc::new(body));
        let cert = discover(&t, 4096, 1 << 20).expect("discovery with open trailing arg");
        assert_eq!(cert.a, a);
        let rep = verify(&t, &cert, &TB).expect("verify with open trailing arg");
        assert_eq!(rep.init_trail, 1);
    }

    #[test]
    fn omega_does_not_ratchet() {
        // (λx.x x)(λx.x x): exact recurrence, no growth — redloop's case,
        // not ours. Discovery must refuse (wrapper degenerates to bare Z).
        let t = parse_all("010001101000011010").unwrap();
        assert_eq!(discover(&t, 4096, 1 << 20), None);
    }
}
