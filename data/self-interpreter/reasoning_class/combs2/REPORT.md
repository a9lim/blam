# combs2: the three engine-only root-let sources are unsolvable (kernel-checked)

The three rootcert sources that only had engine evidence (MAIN_ENGINE_ONLY.tsv, lane ids
115 / 119 / 127, rootlet exception indices 7594 / 7640 / 7725; A = λu v. v (u v) c):

    S1 = (λx. x x (x (x x))) A j      S2 = (λx. x (x x) (x x)) A j      S3 = (λx. x x (x x) x) A j

**Each source S_i itself has no head normal form**, so S_i Z has none and S_i Z =β r j is
impossible. Since S_i X is unsolvable for every X, the unary law fails as well; the zero law is
all the Reader refutation uses.

## Lean (kernel-checked): `Rootlet3.lean`, namespace `Blc.Combs2`

- `reject115 : ¬ Reader r115`, `reject119 : ¬ Reader r119`, `reject127 : ¬ Reader r127`.
  `Reader` is `Blc.SelfintClass.Reader`, the same predicate as rootcert's `reject*` theorems,
  and `r115 / r119 / r127` are the literal sources (c = var 0, j = var 1).
- `r115_unsolvable`, `r119_unsolvable`, `r127_unsolvable : ¬ Solvable r_i`. `Solvable` is
  `Blc.SelfintProbe.Solvable`: head reduction, including under leading λs, reaches an HNF.
- `zero_probes_unsolvable`: `¬ Solvable (r_i Z)` for all three, which is the engine's DIVERGE
  verdict proved in Lean.
- Axioms: `propext` and `Quot.sound` only. No `sorryAx`, and no `Classical.choice`.
- Compile: from `lean/`, `LEAN_PATH=lean/.lake/build/lib/lean lean -j2 Rootlet3.lean` takes
  0.29 s wall, 436 MB max RSS (`Rootlet3.log`). Imports only `Blc.SelfintClass` and
  `Blc.SelfintProbe`.
- Negative control: a false base step (`headSteps 1 r115 = some (X 1 [j])`) is rejected by
  `decide`.

## The invariant (one family serves all three)

Let a_0 = A and a_{n+1} = A a_n (`a`). Let `X m rs = A a_m a_{m+2} rs`, a spine with arbitrary
trailing arguments `rs`.

- `A_rule` (any u, v, rs; no closedness needed): A u v rs →h² v (u v) c rs. This is two head
  β-steps, with `substDec_shift` undoing the binder shift of u.
- `count_down` (handwritten, then Lean): fix the second argument b = a_{m+2} = A a_{m+1}.
  - For k ≥ 1: A a_k b σ →h² A a_{m+1} (a_k b) c σ →h² (a_k b) (a_{m+1}(a_k b)) c c σ. Since
    a_k b = A a_{k-1} b, this is A a_{k-1} b σ', four steps per count.
  - At k = 0: A a_0 b σ →h² b (A b) c σ = A a_{m+1} a_{m+3} (c :: σ), which is X (m+1).
- `advance`: X m rs →h^(4m+2) X (m+1) rs'. `Fam t := ∃ m rs, t = X m rs` advances by at least
  one head step forever, so `unsolvable_of_advance` applies.
- Entry, by `decide` on the literal terms:
  - S1 →h¹ X 0 [j]
  - S2 →h⁷ X 0 [c, A (a_1 a_1), c, c, j]
  - S3 →h³ X 0 [c, A, j]

The generic lemmas `ap`, `step_ap`, `beta_ap`, `hs_comp`, `unsolvable_of_advance` and
`solvable_step` are copied from tmp/round4/combs/Combs.lean (combs lane). `solvable_steps` is
new. `reject_unsolvable` goes through `solvable_backwards` on `Reader.zero_red`; zeroOut = r j
is an HNF.

## Mechanical checks (computer-checked, pure Python)

- `check.py`, using the combs lane's 1-indexed head reducer `lam.py` (copied), runs on the full
  λ-terms with c, j, r bound by outer λs. It confirms each base reduction at the predicted step
  count (1 / 7 / 3).
- It then runs 3000 head steps from each S_i Z. There is no HNF, and the family members
  m = 0..38 appear consecutively at gaps exactly 4m+2. Runtime 5.3 s.
- `comb.py` and `show2.py` hold the combinator-level traces (A u v → v (u v) c) used to find
  the invariant.
- The literal sources were checked by decoding the rootcert `zero_bits` wires (λc λj λr. S Z):
  same bodies, same A, same j.

Observed growth: the head is a single growing counter, and the trailing stack grows. After 3000
head steps: m = 38, stack about 2230 arguments, about 517k term nodes. Advance costs 4m+2, so
m grows like √(steps/2). The trailing j and Z are never reached, which is why the engine saw
"diverge".

Consequence for rootcert §3.1: the cell k=5, d=0 engine-only column becomes 0. All 580
supplied sources now have direct Lean refutations, with the zero law alone and no minimality
assumption.

Files (all in this directory): Rootlet3.lean, Rootlet3.log, check.py, lam.py, comb.py,
show2.py, REPORT.md. No tracked file was modified, nothing was committed, and no processes
remain.
