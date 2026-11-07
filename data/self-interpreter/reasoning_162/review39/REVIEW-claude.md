# Independent review of the 39-bit floor (Claude)

**Verdict: correct. I found no error, missing case, unsound certificate predicate, or mismatch between the Lean statements and the claimed terms.** The bound rises from the reviewed 38 to **39** as a handwritten numeric theorem with kernel-checked components, exactly as `proof39.md` scopes it.

| Part | Verdict | What I checked |
|---|---|---|
| (1) completeness of the 1,206 layouts | **Correct** | Every handwritten step re-derived; the inventory from `E = D N` onward re-derived by an independent brute-force enumeration (0.9 s). |
| (2) 1,143 finite certificate predicates | **Correct** | Each `Finite38Base` predicate read against the contract; identity-flag usage per kind checked; all 1,143 theorems matched to ledger IDs. |
| (3) 63 Lean exclusions | **Correct** | W/B grammar, the 723 pump and the five payload proofs read; all 1,206 `e{i}` wires re-encoded and matched; 15 modules rebuilt (18.3 s, exit 0, axioms `propext`, `Quot.sound`). |

## 1. Completeness (correct)

Dependencies used, all as stated: Statman's width consequence through the `capture-width.md` interface argument, `SelfintNonlinearChain.selfInterpreter_not_chain`, the reviewed floor 38, and the literal-interface bound.

**Lambda root.** `literal-interface.md` is right: for `E = λc.B`, `B[K/c] Q I =β S` forces a width-3 subterm; it cannot sit in an inserted `K` (width 1) nor in `Q`, `I`, so it descends from `U ⊆ B` with `FV(U) \ {c}` of size ≥ 3, all bound inside `B`; at most one of the incomparable nonlinear pair lies on that chain, so `B` has ≥ 4 live binders and ≥ 6 leaves; `c` is live (otherwise no rigid `C` in the output); `2·5 + 4·7 − 2 + 3 = 39`. Its only use at 38 is `39 > 38`.

**Count triples.** With exactly four live binders (five need seven leaves, 39 bits), `V ∈ {6,7}`, `X ≥ 3` from the witness indices `2,1,0`: `2L + X = 16` or `12` gives exactly `(4,6,8), (5,6,6), (6,6,4), (4,7,4)`.

**First contractor.** The head redex has no lambda above it, so its argument is closed; affine/vacuous contractors give `−D − 6 − g` resp. `−|A| − 4 − g` in the `SelfintWireCost` formula and shrink. A chain contractor is `a` (no lambda ancestor); `b, c` are in its body, so the closed argument's only live binder is `d` and its width is ≤ 1. Every width-3 subterm of `E` has its three free variables bound by pairwise-comparable live binders, and the only such triple is `{a,b,c}` (`d` is incomparable with `a`), so every witness mentions `a`; the reduct has width ≤ 2. This step is new at 38 in that three binders may be nonlinear (`(2,2,2,1)` at seven leaves); the argument never uses which chain binder is nonlinear, so it survives. With contractor `d`: a chain binder in its body would make all four live binders comparable; the three chain binders sit in one closed argument, and a second closed argument would need a live binder that does not exist. `E = D N`.

**Normality.** Redexes in `D` are vacuous. In `N`, a chain contractor's body contains the other two witness variables: four leaves give `k ≥ 2` impossible and `k = 1` at most `−6`; five leaves give `k = 2` with a variable argument `n − 6 − g < 0` (`n ≤ 1` from `X = 4`) and `k = 1` at most `(2−1)·2 − 6 = −4`. Verified by enumeration below for every non-normal operand pair in the slice (1,086 cases, all with a shrinking operand redex).

**Counts.** I recounted every row: six four-leaf families `12,12,60,12,60,60`; the 684 table (six normal contexts on `{a, b, λc-block}`, including `(a block) b`); `2·72` for the three-use `D`; one-vacuous insertions `12, 24, 24, 30 (= 12 + 12 + 6), 36, 120` in `N` and `72 + 60` in `D`; total `828 + 378 = 1,206`. The `(6,6,4)` exclusion is right: `X0 + f1 + f2 = 4` with `X0 ≥ 3` forces a zero-charge wrapper, the only closed subterms of `N0` and `D` are the whole operands, and each placement either makes the head contractor vacuous or is erased by the diagonal to a smaller interpreter.

**Independent enumeration** (scratchpad script, 0.9 s, one thread): all closed normal `D` of 8–17 bits whose only live binder is the root, times all closed `N` of `36 − |D|` bits, keeping `E = D N` with width ≥ 3 and an incomparable nonlinear pair (no live-count filter). Normal operands give exactly **1,602** terms: the ledger's **1,206** (every ledger wire present; `(4,7,4)`: 684 + 72 + 72, `(5,6,6)`: 246 + 72 + 60, by `D`) plus **396** `(6,6,4)` terms (312 with `δ`, 84 with `λd.d(λu.d)`), every one of which has a β-reduct below 38 bits within two steps. No term with a live-binder count other than four passes the filter. So sections 3–5 are complete and correctly counted; the only handwritten steps not covered by the enumeration are the ones re-derived above (four live binders, lambda root, `E = D N`).

Non-blocking remark: the 396 `(6,6,4)` layouts are excluded by minimality rather than listed; `inventory38.md` §3 says so, but anyone re-deriving the raw inventory should expect them.

## 2. The 1,143 finite certificates (correct)

Kinds and flags, from `Size38Finite.lean`: `chain` 613, `sourceHead` 201, `three` 188, `smaller` 6 (all `identity = false`, on source reducts), `identityHead` 59 (`identity = true`), `checkPayload` 72, `checkCycle` 4 (on the invocation). Every path is replayed by `replay` (`replay_sound : replay ps t = some u → Betas t u`). Implications:

- `smaller`: a β-reduct of a closed interpreter is a closed interpreter; `< 38` contradicts the floor.
- `chain`: the Boolean mirrors `SelfintNonlinearChain.Chain` clause for clause (`nonlinear f = 0 ∨ nonlinear a = 0` at each application); the reduct is an interpreter, so `selfInterpreter_not_chain` applies.
- `three`: `λλλ.M` applied to `C`, `S` stays a lambda (`lam_betas_shape`), never the application `C F R`.
- `sourceHead` on a closed hnf `λ^l.x_n a_1..a_k`: `l = 0` impossible; `l = 1` always an obstruction (arity forces `k = 1`, then the normal `stream(I,R) ≠ R`); `l ≥ 3` as above; `l = 2`, head `c`, `k ≠ 2` wrong arity (rigid head preserved); `l = 2`, head `s` correctly *not* certified.
- `identityHead`: `tag ≠ (2,1,2)` on the closed invocation; `l ≥ 2` always, head `R` or wrong arity, or ≥ 3 lambdas; hnf shape is invariant under reduction.
- `checkPayload`: landing shape `λλ.C p r` is enforced syntactically; `u` must satisfy `NFt` and differ from `churchFalse` (= `λz.I`) or `var 0` (= `R`); confluence plus uniqueness of normal forms.
- `checkCycle`: deterministic `headStep` cycle with `0 < q` on the invocation; `hasNormalForm_headTerminates`.

The implications are handwritten, as `proof39.md` states; none relies on a cap, and the Python `width_loss`/`internal_*` kinds do not appear in the Lean ledger.

## 3. The 63 Lean exclusions (correct)

- **W/B grammar** (`WGrammar38.lean`): `W_m`/`B_m` as described; `subst_preserves` sends marked substitution `W → W ∨ B`, `B → B`, and unmarked substitution `B → B`; `progress` gives a `headStep` from every `B empty` term to a `B empty` term; `no_normal_form` via `hasNormalForm_headTerminates`; `not_selfinterpreter` applies `B` to `e C (quoteI R)` (left-nested `Or.inl`) against `identity_has_normal_form`. The 57 memberships are `by decide` and each `residual{i}` is `¬ IsSelfInterpreter e{i}`.
- **723**: `core723 = (N C)(N C)`, `step723` a `weakStep`, `cycle723` two replay steps to `core723 (C x)` with `x` abstracted by `betas_subst` under `FreeUnder 2` scopes, `prefix723` seven replay steps from the invocation, `family_no_count` with `next = C ·`, `hasNormalForm_count`.
- **124, 129, 214, 224, 690**: `landing` replays to `C p r`, `payloadHead` replays `p` to `λ.rigid` or `λλ.rigid app`; `one_lam_false_mismatch`/`two_lam_false_mismatch` use `rigid_betas` and `lam_betas_shape`; `not_selfint_wrong_first` closes via `identity_reduces`, `same_normal_target`, `first_payload`.
- `initialResiduals` lists exactly the ledger's 63 residual IDs; the Lean `e{i}` definitions re-encode to the ledger wires for all 1,206 (0 mismatches); `check_lean.py` rebuilt all 15 modules (18.3 s wall, two threads); `axiomaudit-final.log` shows only `propext`, `Quot.sound`. Sanity head reductions of the invocations behave as claimed (W/B and 723 grow without hnf; the five payload cases reach `C p r` in 7–9 head steps).

## Boundary

Nothing here is a Lean proof of `SelfintSizeBound 39`: the classification, the width argument and the 1,143 predicate implications are handwritten; the 63 residual exclusions are full Lean theorems. The documents state this boundary accurately. No search was run; the enumeration above is a classified-slice check of ~100k closed terms, not a 38-bit census.
