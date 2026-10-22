# Review of the 40-bit floor (Claude, independent of the Codex review)

**Verdict: correct in all three parts. I found no error and no gap.** The
claim stands as stated: a handwritten numeric theorem (classification and
the implications of the finite predicates) with kernel-checked components
(4,672 source definitions, 4,505 predicate replays, 167 full
`¬ IsSelfInterpreter` theorems, two uniform literal lemmas). Everything
below was done in a scratchpad with my own term library (encoder/decoder,
width, nonlinear-pair, β-reducts), never through the lane's Python.

## What I checked by machine

1. **Lean.** Rebuilt all 25 lane modules into a scratchpad (same toolchain,
   `LEAN_NUM_THREADS=2`, outputs outside the lane): 25/25 exit 0 in 57.8 s.
   Axiom audit of the collected theorems: only `propext`, `Quot.sound`
   (three helpers `propext` alone); no `sorryAx`, no `native_decide`.
2. **Sources.** Parsed every `def eN : Term := …` in the three
   `Sources39*.lean` files with my own parser and re-encoded: 4,672
   definitions, 0 wire mismatches against `size39-ledger.json`; each has
   its `_closed` and `_size = 39` theorem. All 4,672 wires are distinct,
   closed, 39 bits, width ≥ 3, with an incomparable nonlinear pair, with
   the stated live-binder counts (4/5) and root types, and the stated
   `(L,V,X)` triples (literal 1,008 at (5,7,3); four: 1,036/324/804/84 at
   (4,7,5)/(5,6,7)/(6,6,5)/(5,7,3); five 1,416 at (5,7,3)).
3. **Theorem tally** (from the generated files, not the JSON): predicates
   `smaller` 439, `sourceHead` 828, `chain` 2,058, `three` 841,
   `identityHead` 227, `checkPayload` 112 = **4,505**; full theorems
   `WGrammar38.not_selfinterpreter` 147 (4+77+66), `not_selfint_w_identity`
   2, `not_selfint_cycle` 9 (2+7), plus the 9 residuals in `Residuals39`
   = **167**. Partition 4,505 + 167 = 4,672 with no overlap.
4. **Brute force (disclosure: goes beyond re-instantiating templates).**
   A 200-line standalone Rust enumerator generated *every* closed term at
   the six triples (4,6,9), (4,7,5), (5,6,7), (5,7,3), (6,6,5), (7,6,3):
   35.4 M terms, 28 s, one thread. Filter = necessary conditions only:
   width ≥ 3; two incomparable nonlinear binders; no β-reduct within two
   steps below 39 bits; every one-step reduct keeps width ≥ 3 and an
   incomparable pair. Result:
   - (4,6,9): 0 survivors (matches "no case").
   - Application-rooted survivors in all six slices: **exactly the 3,664
     ledger rows that pass the same filter**; no application-rooted term
     outside the inventory survives. So the five-live classification
     (36+252+936+192) and the vacuous-wrapper counts (324, 804, 84, and
     the empty (7,6,3)) are complete without assuming the first-contractor
     lemma or the `D N` shape.
   - λ-rooted survivors outside the 1,008: 2,292 + 1,356 with vacuous `c`;
     2,064 with no width-3 witness bound inside `B` (c is one of the three
     variables); 120 + 1,804 with fewer than four internal live binders;
     1,680 + 144 with `c` used twice (all of these also have < 4 internal
     live binders); and 132 of the form `λc.c P`, each with `|P| = 33`.
     The first four groups are exactly what `global-floor.md` §6 excludes
     (reviewed twice); the last is `literal_constant_not_selfint`. No
     `λc.P c` survives: its root-body redex always shrinks by 6+g bits, so
     `selfint_of_literal_eta` is a second, independent exclusion.
   - 808 ledger rows (576 literal, 232 five-live) fail the filter, i.e.
     they are over-included (a shrinking or width-losing reduct exists).
     Harmless: the ledger excludes them anyway.
5. **`D N` re-derivation (Python).** From the lemma `E = D N` alone (closed
   `D` with one live binder, closed `N` with three live binders, any
   normality, L_D ≤ 4, L_N ≤ 6), the same filter yields exactly the 2,248
   four-live wires: 0 extra, 0 missing. This confirms every insertion count
   in `inventory39.md` §3 independently of the per-family arithmetic.

## (1) Completeness of the inventories — correct

Every handwritten step re-derived by hand and confirmed by 4–5 above.

*Literal `λc.B` at 39* (`literal40.md`). §6 gives five live binders, seven
leaves, X ≥ 3, so equality forces L=5, V=7, X=3: no vacuous binder, `c`
once at index 0 (the unique index-2/1 leaves are the witness `a`,`b`),
four internal binders all live, exactly two nonlinear (2+2+1+1 = 6).
Components: `c` is not under any internal λ, so the maximal λ-rooted
subtrees of the application context are closed; each needs a live binder;
the chain `a ⊃ b ⊃ c'` sits in one; hence ≤ 2 components. One component:
`c P` or `P c` (two Lean lemmas; the second with the 33-bit contradiction).
Two components: the off-chain component has one binder used twice, no
spare λ, so it is `Δ`; `N` has 3 chain binders, 4 leaves, X=3, and every
redex in it shrinks (k=2 needs 5 leaves; k=1 gives (f−1)d₁−6−g ≤ −6), so
`N` is normal: the 12+12+60 = 84 X=3 shapes of `inventory38.md` §3. Twelve
contexts × 84 = 1,008, with no normality assumed for the context. Correct.

*Application-rooted* (`inventory39.md`). Triples: 2L+4V+X = 41 with L≥4,
V≥6, X≥3 gives exactly the six listed; six live binders cost 45. First
contractor nonlinear (closed argument, affine/vacuous shrinks). Four live:
the 38 argument is unchanged (a chain contractor leaves every subterm of
the reduct with ≤ 2 free variables; d's body cannot contain a chain binder
without putting all four on one chain), so `E = D N`. Five live
(5,7,3): the index-2 and index-1 leaves are unique; a chain contractor `a`
leaves max index 1 in the reduct, so width ≤ 2 — correct and genuinely
new. The off-chain binder `e` cannot sit between `a,b,c` or capture a
chain variable (indices would exceed 2,1,0), so `e`'s subterm is `I` or
`Δ` when it contains no chain binder; the four cases A–D are disjoint and
exhaustive by binder location (chain in body ⇒ `e` in the argument is the
other nonlinear binder ⇒ `Δ`; `e` in body ⇒ affine ⇒ `I`). I checked the
normality claims used in B, C: a k=2 chain redex in a five-leaf `N` has a
one-leaf argument of ≤ 4 bits (change ≤ −4), a k=1 one has f ≤ 2, d₁ ≤ 3
(change ≤ −3); `S` or `I` in function position shrinks. Row counts: 3·12,
3·84, 6·12, 12·8·2, 84, 84·7, 2·84+2·12 all re-derived. Vacuous wrappers:
charge 2+freeLeaves(U); zero-charge wrappers enclose a whole operand (no
proper closed chain subterm; none in `D`), excluded as vacuous first
contractor or by the two-step reduct `D (λw.N1) →² λu⃗.N1`; the one
retained exception `(λd.d d d)(λu.N0) → N0 (λu.N0)` is correctly kept
(79 then 50 bits, not smaller). Site counts for (5,6,7) and (6,6,5)
(multisets of charge-1 sites, 96+96+612) agree with 4–5 above.

## (2) The 4,505 finite predicates — correct

`Finite39Base.check` replays an explicit path (`replay_sound` makes it a
real `Betas`) on the source or on the open invocation
`e C (quoteI R)` with C = var 1, R = var 0, matching
`identity_contract he (.var 1) (.var 0)`; `check = true` entails a
successful replay. Implications, each valid for a 39-bit interpreter:
- `smaller`: a closed β-reduct below 39 bits contradicts floor 39.
- `chain`: Boolean `chain` is literally `SelfintNonlinearChain.Chain`
  (same three clauses, same `nonlinear`); the reduct is an interpreter.
- `three`: a reduct with ≥ 3 leading λ's cannot β-reduce to a rigid
  application (hnf shape is β-invariant).
- `sourceHead` `(l ≠ 2 ∨ (n = 1 ∧ k ≠ 2))` on an hnf reduct of `E`: l=0
  cannot occur closed; l=1 forces head `c`, giving C k+1 arguments or the
  whole stream (an abstraction) where the variable R must appear; l ≥ 3 as
  above; l=2 with head `c` needs exactly two arguments. A stream head is
  correctly *not* certified.
- `identityHead` `≠ (0,1,2)`: the target `C churchFalse R` has tag (0,1,2)
  and hnf shape is β-invariant.
- `checkPayload`: landing `C p r`, a positively normalized `u` from `p`
  (or `r`) with `u ≠ churchFalse` (or `≠ R`); by confluence `p →* churchFalse`,
  uniqueness of normal forms. `λz.I = λλ.0 = churchFalse` is right.
No cap, growth or missing-normal-form verdict is used anywhere.

## (3) The 167 Lean exclusions — correct, statements as claimed

- 147 `WGrammar38.not_selfinterpreter membershipN` (B empty eN, decided)
  and 2 `not_selfint_w_identity` on checked identity reducts: `B` closes
  under application to anything, `B empty` terms head-step forever.
- 9 `not_selfint_cycle prefix cycle (0<q)`: `headSteps p (invocation e) =
  some u`, `headSteps q u = some u`, via `SelfintFloor.cycle_diverges`.
- `Shapes39.literal_constant_not_selfint (p) (Closed p) : ¬ IsSelfInterpreter
  (λ. 0 p)` and `selfint_of_literal_eta (p) (Closed p) :
  IsSelfInterpreter (λ. p 0) → IsSelfInterpreter p` state exactly the two
  one-component cases (closed `p` needs no shift under the λ).
- `Pair39`: `n = λx.x(λy.x y C)` with C = var 3 under two binders = the
  invocation's var 1; `j x = λy.(shift x) y C`; `n_step`, `j_step` are the
  two selected weak-head steps; `no_count` is strong induction with
  `head_decreases` and `count_app_left` (strips the trailing C);
  `not_selfint_prefix` closes via `hasNormalForm_count`. The checked
  4-step prefix lands on `tApps (n n) [quoteI R]`, and I confirmed by hand
  that e180 = `λc.Δ((λa b.b(λc'.b c' a)) c)` gives `N C = n`.
- Six pumps: `not_selfint_pump` needs `weakStep t = some u`,
  `Betas u (tApps t extra)`, `Betas (invocation e) (tApps t tail)`; the
  contradiction uses `count_reduct` (weak-head clock is non-increasing
  under arbitrary β) and `count_unique`, so the zero-extra cases (five:312,
  five:553) are covered. Prefix/pump lengths and extra-argument counts in
  `proof40.md`'s table match the generated theorems (4/3+2, 1/4+2, 8/3+1,
  4/6+1, 5/10+0, 3/6+0).
- four:0: `three_or_more_not_identity` applied to a rigid `C a₁…a₄` with
  three further arguments (seven total). four:80: `two_lam_false_mismatch`
  on `λλ.(1 X) Y` with `not_selfint_wrong_first` (confluence to the
  first payload). Both sound without normalizing the growing arguments.
- `initialResiduals_excluded` lists exactly the nine `eN` whose
  definitions match the ledger wires (`literal:180,276`, `four:0,80,376,
  399,1000`, `five:312,553`).

## Minor remarks (none affects the result)

- Over-inclusion: 576 literal and 232 five-live rows have a shrinking or
  width-losing reduct within two steps and could have been pruned
  uniformly; keeping them is harmless but the docs could say so.
- `inventory39.md` §2 bounds the local depth by d₁ ≤ 3; 2 suffices for the
  (4,7,5) case, 3 is only needed with the one vacuous binder. Fine as a
  bound.
- The `λc.P c` lemma is not load-bearing: every such 39-bit source has a
  root-body redex shrinking by ≥ 6 bits. Two independent exclusions, no
  flaw.
- Everything the handwritten documents assume from outside this lane
  (floor 39, Statman width, incomparable pair, `c` live, hnf invariance,
  the three-λ obstruction) is the previously reviewed background; nothing
  new is assumed.
