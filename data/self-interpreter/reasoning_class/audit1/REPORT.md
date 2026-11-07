# audit1: statement audit of widen, close46 and probelean

(Saved by the coordinator from the lane's returned text; the lane's write
was refused by its harness. Working files: NOTES.md, Close46Combined.lean,
Close46Probe.lean, ProbeCopy.lean, *_compile.log, Sanity.lean.)

**Verdict: all 14 headline theorems VERIFIED** — no statement is wrong or
weaker than its report claims. Every file recompiled from lean/ (Lean
4.32.2, -j2, no -o), each under 4 s; axioms only propext, Classical.choice,
Quot.sound; no sorry, axiom, native_decide or implemented_by. Run Lean from
lean/ (its lean-toolchain pins 4.32.2; a shell elsewhere gets 4.35.0, which
cannot read the pinned .olean files).

## widen (Widen.lean, sha256 de3f49…)

Definitions match class-bound.md and SelfintClass.lean: `assemble` is
T[(λp c. R[Q/j])/h] (R frame c=0, j=1; Q frame c=0, p=1); `RigidNext` is
`Next` without normality/two-arm restrictions, laws unchanged (K → ABS,
F → APP); `FullReader` is R Z(r) ⋈ r j and R U_(n+1)(N) ⋈ c U_n(N) N for
all n >= 0 (= the class law for every n >= 1); knot hypothesis
FreeUnder 1 T ∧ T ⋈ h T as in SelfintClass.assembly_lower (opaque; holes
k = freeLeaves 0 T, all filled with the same H); cost = holeCost 1,
depth = occDepth 1, wire = BLC length, freeLeaves 0 Q = c/p leaves;
IsSelfInterpreter is the full contract (all closed M, divergent included).

| theorem | verdict | note |
|---|---|---|
| frontier_optimal_iff_reader_floor | VERIFIED | widened class has |E| >= 162 iff every one-j FullReader has w >= 46 |
| frontier_dominated_full | VERIFIED | old-class assembly (R, hoist R or reader162; all unary laws) no larger, every size |
| unrestricted_next_assembly_lower | VERIFIED | 47 + r + 2d and 67; needs only two-probe Reader (stronger than stated) |
| unrestricted_knot_multiplicity | VERIFIED | 18 + k(26+q), 18 + 49k |
| sub162_knot_localization | VERIFIED | below 162: k = 1, or k = 2 and q <= 45 |
| counterexample_is_interpreter | VERIFIED | full contract via β-expansion to intL162; deep_shared_233.blc byte-identical to materialized_source_code |

Caveats: the iff covers only the price-frontier class (FrontierPrice is
syntactic: q >= 92, q + 3F >= 104); with H2 fully removed only 67 /
47 + r + 2d remain. The 233-bit term only refutes the fixed-reader formula.

## close46 (hashes match verification.json)

Frame N=0, c=1, j=2, r=3; zero = cons K r; unary n = U_n(N);
zeroTarget = r j; output n = c U_(n−1)(N) N. Grammar atoms: s, F, I,
param k (any k, including N and r — more general than a reader), towers
C_m, factories H_m; no K, no other λ; apps counts Expr application nodes.

| theorem | verdict | note |
|---|---|---|
| factories_cannot_read | VERIFIED | e[Z/s] ⋈ r j ⇒ ¬ e[U_n/s] ⋈ c U_(n−1) N for every n >= apps+2; body-level, any number of j. Non-vacuity (kernel-checked): e = s I (s C₁) j meets the zero law, excluded at n = 7 |
| sharing_cannot_read | VERIFIED | one let (λx. C[x]) A, C any application context with any number of holes, A any Expr; n bound on the expanded tree's application count |
| represented_reader_impossible | VERIFIED | transport lemma only; R unscoped, close46 frame; caller supplies representation premises; classifies nothing (as reported) |
| near_reader_not_reader | VERIFIED | matches near_reader.txt; fails at n = 1 with c U₀ (N j); zero law and every n >= 2 hold; weight 56 |

Side note: close46's in-progress follow-up file SourceCost.lean does not
compile yet (omega failures at lines 67, 130, 174; unknown constants
Int.add_sub_cancel_right, Int.natCast_ofNat). Nothing is claimed from it.

## probelean (Probe.lean)

`Solvable` (head reduction terminates; headStep contracts the head redex
under leading λs) is the standard notion (Barendregt 8.3.14);
solvable_iff_beta_hnf proves it equivalent to β-reducing to an hnf. The
162's probe really is unsolvable: canonical162_probe_return runs parser162
on the code of λΩ ++ R and returns K (absV(λB)) U with Den Ω B, U →* R;
absV(λB) →* λλ.Ω.

| theorem | verdict | note |
|---|---|---|
| lemmaA | VERIFIED | C = var 0, rest literally N = var 1, fresh x = var 1, y = var 2; FreeUnder 1 kappa = only C free; any unsolvable v (open allowed); conclusion a real β-reduction to C A y |
| lemmaA_after_two | VERIFIED | assumes only ¬Solvable (v C N) (arguments C and N themselves; weaker premise, still valid) |
| classify_continuation | VERIFIED | kappa →β C, λa. C B, or λa b. C B b; indices correct, B arbitrary |
| probe_two_argument_corollary | VERIFIED | escape §3's H0–H3 map one-to-one (FreeUnder 1 kappa; hprobe; same kappa in hprobe/hrun; occ 1 T = 0); conclusion verbatim. Non-vacuity (kernel-checked): kappa = λa b. C a b, v = λλ.Ω, T = kappa I N |

Codex's stream-capturing kappa = λv t. C v N is excluded only by
FreeUnder 1, so H0 does real work. Not formalized: escape's consequences
beyond direct_return_remainder, nfree_direct_return_impossible,
trailing_argument_impossible; the H0–H3 obligations for concrete parser
families remain open (both lanes say so).
