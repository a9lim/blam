# audit1 notes

Started 2026-10-21. Order: widen, close46, probelean.

## 1. widen (Widen.lean, sha256 de3f49..., recompiled 3.4 s, exit 0, 31 axiom lines, std axioms only, no sorry)
Oleans of SelfintClass/Knot/162/Proof/WireCost/Capture/LowerBound newer than sources (not stale).
Definitions checked against class-bound.md + SelfintClass.lean:
- assemble T R Q = T[(λp c. R[Q/j])/h]: functional = lam(lam(substDec 1 Q R)); outer λ = p, inner = c; R frame c=0,j=1; Q frame c=0,p=1. Consistent.
- RigidNext = Next minus normal/twoArm: scope FreeUnder 2 + law Q (K|F) (var2) ⋈ nextTarget (var2); nextZero = p(λf. c Abs f), nextOne = p(λf.p(λg. c App)). K->ABS, F->APP matches contract.
- FullReader: unary n N = 1^n 0 ++ N (unary 0 = cons K N); law ∀n, R U_{n+1}(var2) ⋈ c U_n(var2) var2  == class law for all n>=1. zero law R Z(var3) ⋈ var3 j. Exactly the class's laws.
- Knot hyp FreeUnder 1 T ∧ T ⋈ h T: same hypothesis as SelfintClass.assembly_lower; opaque (h is a free variable). k = freeLeaves 0 T.
- cost = holeCost 1 (j priced 0, others n+2), depth = occDepth 1 (sum of λs above j occurrences; = depth with occ=1). wire = blcCode length. freeLeaves 0 Q = c+p occurrences.
- IsSelfInterpreter (SelfintProof): closed E, ∀ closed M (divergent included), E c (stream(code M) N) ⋈ c (λM) N. Full contract.
- materialized .blc == Lean string (233 chars) — checked by shell compare.
Headlines: all six statements match report. iff is exactly (∀ T R Q in widened class, 162 ≤ |E|) ↔ (∀ FullReader R, occ j=1, w ≥ 46).
unrestricted_next_assembly_lower/knot_multiplicity/localization take two-probe Reader (stronger than claimed). VERIFIED x6.
Caveat: FrontierPrice is a source-price hypothesis, not semantic; the iff is over the price-frontier class only (report says so).

## 2. close46 (ClosureBarrier/BoundaryAlgebra/BoundaryChecks + RoleAlgebra; hashes match verification.json)
Recompiled as one concatenated file Close46Combined.lean (no -o, no lane oleans): exit 0, 0.67 s, 19 axiom lines, only propext/Quot.sound (factory_selector_price none). Lean sanity: `decide` on 1=2 fails, so the fast compile is real.
Frame (Round3Role): N=suffix=var0, c=var1, j=var2, r=var3. zero = cons K r; unary n = streamOf (vbits n) N = U_n(N); zeroTarget = r j; output n = c U_(n-1)(N) N. Conclusion = negation of the class unary law at n. Correct.
Expr atoms: stream, bit(F), ident(I), param k (ANY var k, incl. N, c, j, r — more general than reader-legal), tower m (C_m, tower 0 = c), factory m (H_m). No K, no other λ. apps counts Expr app nodes only.
factories_cannot_read: ∀ e, e[Z/s] ⋈ r j → ∀ n ≥ apps+2, ¬ e[U_n/s] ⋈ output n. Exactly the report's claim. Body-level: covers readers R = λs.e, j any number of times.
Non-vacuity probe (Close46Probe.lean, kernel-checked): eNear = s I (s C_1) j satisfies the zero law (4 normal steps) and the theorem excludes it at n=7.
sharing_cannot_read: ONE let (λx.C[x]) A, C an application context over atoms with any number of holes, A any Expr; the n-bound is on the EXPANDED tree's apps (C.expand A).apps+2, not the source tree.
represented_reader_impossible: R arbitrary term (no scope hyp; close46 frame, not SelfintClass's c=0,j=1 frame), premises R Z ⋈ e[Z] and ∀n R U_{n+1} ⋈ e[U_{n+1}] are user-supplied; only n = apps+1 used. Transport lemma, not a classifier (report says so).
near_reader_not_reader (BoundaryChecks, SelfintClass frame): near_reader = λs. s I (s (λq.c)) (s Δ I (s s) j) — matches near_reader.txt; ¬Reader via n=1 normal form c U_0 (N j). near_long/near_zero in BoundaryAlgebra give zero law and all n≥2. weight 56 by decide. VERIFIED.
Side note: SourceCost.lean (follow-up, not in REPORT) currently FAILS to compile (omega failures, unknown constants Int.add_sub_cancel_right, Int.natCast_ofNat) — work in progress, nothing claimed from it.

## 3. probelean (Probe.lean)
NB: lean/ selects Lean 4.32.2 (lean-toolchain); outside lean/ the default is 4.35.0 — all my compiles ran from lean/.
Recompiled a copy (ProbeCopy.lean = Probe.lean + Audit1Probe examples): exit 0, ~0.5 s, 22 axiom lines, std only; no sorry/axiom/native_decide in source.
- headStep (Blc/Step.lean): head redex under leading λs; none iff λ⃗.x M⃗. HNF/Solvable = head reduction terminates = standard (Barendregt 8.3.14) solvability; solvable_iff_beta_hnf proves ↔ ∃ β-reduct in HNF. λe a.Ω unsolvable (has a whnf). Standard notion.
- v_W: canonical162_probe_return runs the real parser162 on code(λΩ)++R and returns K (absV(λB)) U, Den Ω B, U →* R; absV = Abs(f) = λargs arg. f (cons' arg args); canonical_probe_reduces absV(λB) →* λλ.Ω; unsolvable via head self-loop. Matches escape's v_W = value of λy.W (values are depth-independent closures).
- lemmaA: frame C=0, probe rest N=var1, conclusion x=var1,y=var2 fresh (kappa FreeUnder 1). Matches escape Lemma A exactly; v arbitrary (open allowed).
- lemmaA_after_two: hypothesis ¬Solvable (v C N) (the two rigid args are var0,var1 = C,N, not fresh) — weaker hypothesis, fine; escape's identity v_W A1 A2.. = W.. supplies it.
- classify_continuation: kont1 B = λa. C B (C=var1 under λ), kont2 B = λa b. C B b (C=var2, b=var0). Correct shapes.
- probe_two_argument_corollary: T frame kappa=0, C=1 (occ 1 T = 0 = H3), N=2; hrun on substDec 0 kappa T (C=0,N=1); H0 = FreeUnder 1 kappa; H1 = hprobe with rest literally N (a rest U →* N transfers by Betas); H2 = same kappa in hprobe/hrun. Conclusion headSteps k T = kappa A B ∧ B →* N. Exactly escape §3 corollary's conclusion.
- Non-vacuity (kernel-checked in ProbeCopy): kappa = λa b. C a b, v = probe, T = kappa I N satisfy all hypotheses; Codex's stream-capturing kappa = λv t. C v N is excluded only by FreeUnder 1 (decide).
Not formalized: escape's Consequences 1–4 beyond direct_return_remainder / nfree_direct_return_impossible / trailing_argument_impossible; the interface obligations H0–H3 for any concrete parser family (report §7 says so).
Verdicts: lemmaA, lemmaA_after_two, classify_continuation, probe_two_argument_corollary all VERIFIED.

## Final
All 14 headline theorems VERIFIED (none WEAKER/WRONG). REPORT.md write refused by harness; the verdict table is in the returned text.
