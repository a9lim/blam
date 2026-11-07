# shared lane report (round 4, wave 5): readers with no deletable dispatch site

(Saved by the coordinator from the lane's returned report; the harness
refused the lane's own write. Running record: NOTES.md §§0–6. The lane was
redirected midway, when the syntactic closures excluded every λ-rooted
minimum reader below 46.)

No sub-162. Neither closed result assumes minimality, so both bound the
λ-rooted images of root lets.

## 1. Interpreters built
None. cert.py controls: the 162's reader and the 47-reader pass all three
laws; the 40-bit near miss `λs. s I (s (λq.c) (s s s)) j` fails unary.

## 2. Exact identities
**Lift identity** (handwritten). For a root reader `R = (λg. λs. B) H` with
no pending argument and H's free variables among c, j, let
`R' = λs. (λg. B~) H` (B~ = B with the two binders swapped, H shifted under
λs). Then `R s =β R' s` for every s (both reduce to B[H/g]), so R' is a
reader iff R is, and exactly
`w(R') = w(R) + u_s(B) − u_g(B) + f_c(H) + 4·occ_j(H)`.

**Self-feeding lemma SF** (handwritten). Let S be closed under application,
every element a spine X0 X1..Xm with each Xi ∈ S and X0 from a base set of
λs. If for every base X0 and every Z ∈ S, `X0 Z →h+ X' Z' …` with X', Z' ∈ S,
then every `X Y R⃗` with X, Y ∈ S has no head normal form. Instances:
`H = λy. y A_y W_y`, any W, A one of `λz. y z V`, `λz. z (y z)`,
`λz. y (y z)`, `λz. s (y z)`: `H H R⃗` has no hnf for every filling and every
stream. Y-family: `H = λy. y y (λz. z y)`, `Y0 = λz. H`,
`Y(k+1) = λw. w Yk`; `Yk Yk →h+ H`, `H Y C →h+ H (λw. w Y) C`.

## 3. Impossibility results
Laws tested at Z, U1, U2; untabled types/narrow.py, fuel 300, every
cut-off certified afterwards.

**3.0 Cut-off certification** (soundness handwritten; application
computer-checked). Erasure: open holes become opaque constants; every
β-step lifts to every filling while the head is not a hole. C1 (no hnf):
`S →+ S e⃗` with at least one head step (internal steps allowed, low-water
stack refinement), giving an infinite head reduction by postponement. C2
(mismatch): an hnf whose λ count, head or arity differs from the target's.

**3.1 P1 — `λs. (λg. B) (λy. y A W)`, any B, A, W, redexes allowed, j
anywhere: no reader with w ≤ 45** (computer-checked, all cut-offs
certified). 13,481 states, 0 solutions, 90 cut-offs (p1.json): 86 by
cert.py, 4 (`λs. H H` with SF dispatchers) by Lemma SF. Covers zcore's FC1,
FC2 and the shapes of R93, R99, with no minimality assumption.
Root-let consequence (handwritten, Lift + P1): every root reader
`(λg. λs. B) (λy. y A W)` has
`w ≥ 46 − u_s(B) + u_g(B) − f_c(H) − 4·occ_j(H)`, so w ≥ 46 whenever
`u_g ≥ u_s + f_c(H) + 4·occ_j(H)`.

**3.2 P4 — `λs. (λg. B) (λy. y A W) C`: no reader with w ≤ 45, provided
four closed combinators are unsolvable.** 47,591 states, 0 solutions, 239
cut-offs (p4.json, p4cert.txt): 223 by cert.py, 4 SF with trailing C, 4
refuted by narrow.py at fuel 3000 (p4r_*.json), 4 by the Y-family; 4 open
(#103, #116, #207, #233), each `λs. T C` with `T = Hk Hk` closed, Hk one of
`λy. y (λz w. w (z w)) y`, `λy. y I (λz. z (y z))`,
`λy. y (λz w. z (w z)) y`, `λy. y (y (λz. y)) (λz. z y)`. Evidence for #103
only a simulation (cl103.py: 20,000 head steps, stack above C grows ~0.39
per step, C never needed).

**3.3 Tabling with redexes** (handwritten + differential). The
needed-occurrence argument never uses β-normality; an orphan hole never
influences any law's future and can be a 2-bit filler; fuel results mark a
subtree unclean, never tabled. So narrow2's tabling is sound for joint law
sets with redexes. Differential on P4 at B = 42: 6,686 tabled vs 9,113
untabled states, identical solutions and cut-offs (~27% saving).

**3.4** With j at M-depth 0, any let `(λg. B) H` inside M is j-free.

Not closed (over the 100k cap): `λs. (λg. _) _`, `λs. (λg. _) (λy. _) _`
(also at depth 1), `λs. (λg. _) _ j`, `λs. (λg. _) (λy. _) j`, `λs. _ j`.

## 4. Read
The skeletons behind every known shared-dispatcher witness are closed at
w ≤ 45 without minimality (P1); one trailing operand closes except four
combinators (P4). For root lets: when the argument is a two-arm dispatcher
and `u_g ≥ u_s + f_c(H)`, P1 closes it directly; otherwise lift and pay
`u_s − u_g + f_c(H)`. The four open combinators need an SF-style invariant.

Compute: largest run 47,591 states, 82 s, 63 MB, one thread; one certifier
run went over 2 minutes and was killed at ~130 s, output unused.
