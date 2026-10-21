# Lane "lean-floor": kernel-checked unconditional floor raised 18 → 27

Result: `Blc.OvernightFloor.selfintSizeBound_27 : SelfintSizeBound 27` is proved
in Lean with no `sorry`; `#print axioms` gives `[propext, Classical.choice,
Quot.sound]`. Every self-interpreter (the repository's exact closed-source
beta-join contract `IsSelfInterpreter`) has at least 27 bits. The previous
kernel-checked floor was 18 (`selfintSizeBound_eighteen`); the handwritten
floor is 34.

Six new untracked modules under `lean/Blc/`; no tracked file touched, nothing
committed.

| module | lines | content |
|---|---|---|
| `OvernightFloorCount.lean` | 211 | live-binder counting, `SelfintSizeBound 25` |
| `OvernightFloorArg.lean` | 259 | new beta-invariant `ArgOne` (wide arguments) |
| `OvernightFloorEmerge.lean` | 228 | stream consumption, `AppBodies`, non-application bodies |
| `OvernightFloorLiteral.lean` | 122 | literal interface `λc s. B` costs ≥ 31 |
| `OvernightFloorLambda.lean` | 295 | abstraction-rooted interpreters: ≥ 4 abstractions, ≥ 27 bits; application-rooted ones are redex-headed |
| `OvernightFloorApp.lean` | 710 | minimal application-rooted interpreters ≥ 27; `SelfintSizeBound 27` |

Build (from `lean/`):

    lake build Blc.OvernightFloorApp      # builds all six; 1.7 s wall from clean
    lake env lean Blc/OvernightFloorApp.lean   # per-file check, < 1 s each

Axioms were audited with scratch files importing the modules (`#print axioms`).

## 1. Theorems (exact statements, namespace `Blc.OvernightFloor`)

All fully proved, no `sorry`; axioms `[propext, Classical.choice, Quot.sound]`
unless stated. `wire t = (blcCode t).length` (from `SelfintWireCost`).

### Final bounds

    selfintSizeBound_27 : SelfintSizeBound 27
    selfintSizeBound_25 : SelfintSizeBound 25
    minimal_bound : MinimalInterpreter E → 27 ≤ wire E
    lam_rooted_bound : IsSelfInterpreter (lam B) → 27 ≤ wire (lam B)
    app_rooted_min_bound : MinimalInterpreter (app f a) → 27 ≤ wire (app f a)
    literal_interface_bound : IsSelfInterpreter (lam (lam B)) → 31 ≤ wire (lam (lam B))

`selfintSizeBound_27` is strong induction on the wire: an interpreter below
27 bits yields a minimal one (`MinimalInterpreter` of `SelfintWireCost`),
which is abstraction-rooted (≥ 27 by `lam_rooted_bound`) or
application-rooted (≥ 27 by `app_rooted_min_bound`).

### Counting layer (`OvernightFloorCount`)

    live : Term → Nat                      -- binders whose own variable occurs
    count_wire_bound : 4·nonlinear t + 6·live t + 4·freeLeaves 0 t + indexSum t ≤ wire t + 2
    not_chain_capture_live : ¬Chain t → HasLiveCapture d t → 3 ≤ live t + outerLive d t
    selfInterpreter_three_live : IsSelfInterpreter E → 3 ≤ live E

`outerLive d t` counts the enclosing locals (indices below `d`) that occur;
it lets the induction carry a captured variable whose binder is above the
current subterm. Two incomparable nonlinear binders
(`selfInterpreter_not_chain`) and a live capture
(`selfinterpreter_has_live_capture`) give three live binders; with
`indexSum ≥ 1` (`selfinterpreter_indexSum_pos`) this is `25 ≤ wire`.

### New beta-invariant: wide arguments (`OvernightFloorArg`)

    NoTwo t := ∀ i j, 0 < occ i t → 0 < occ j t → i = j
    ArgOne : Term → Prop          -- every application argument satisfies NoTwo
    argOne_beta : Beta t u → ArgOne t → ArgOne u
    selfInterpreter_not_argOne : IsSelfInterpreter E → ¬ ArgOne E
    selfInterpreter_hasWideArg : IsSelfInterpreter E → HasWideArg E
       -- some application argument mentions two distinct free variables

A contracted argument is itself an argument, so substituting it for a
variable never widens another argument's support; K, F, Scott cells and
`E C stream` satisfy `ArgOne` when `E` does; the normal output for the
source `S = λf g x. f x (g x)` has the argument `g x`. This is the only
width-type statement that survives beta without Statman's theorem. It adds no
bit here (the 25-bit count witnesses already have a wide argument); it is
reported as structure.

### Stream consumption and non-application bodies (`OvernightFloorEmerge`)

    selfInterpreter_stream_consumed : IsSelfInterpreter E →
        ∃ k f', headSteps k (app E (var 0)) = some f' ∧ IsLam f'
    AppBodies : Term → Prop        -- every abstraction body is an application
    appBodies_not_selfInterpreter : AppBodies E → ¬ IsSelfInterpreter E
    selfInterpreter_hasNonAppBody : IsSelfInterpreter E → HasNonAppBody E
       -- some abstraction body is an abstraction or a variable

Head factorization lands `E C ⌜I⌝N` on a head-normal form that reduces to
`C (λz.I) N`; that form is not an abstraction, so every step is a weak-head
step on an application root; if `E C` never became an abstraction the landing
would be `R Q` with `R` rigid and the Scott cell `Q` would reduce to the
variable `N`. Weak-head steps preserve `AppBodies ∧ IsApp` (contracting
`(λx.B) A` leaves `B`'s application root), so no abstraction can emerge.

### Abstraction-rooted interpreters (`OvernightFloorLambda`)

    wire_identity : wire t + 2 = 2·lamCount t + 4·leafCount t + indexSum t
    leaves_bound : nonlinear t + live t + freeLeaves 0 t ≤ leafCount t
    not_chain_nonAppBody_three_lams : ¬Chain t → HasNonAppBody t → 3 ≤ lamCount t
    identity_not_selfInterpreter : ¬ IsSelfInterpreter (lam (var 0))   -- axioms [propext, Quot.sound]
    lam_rooted_four_lams : IsSelfInterpreter (lam B) → 4 ≤ lamCount (lam B)
    selfInterpreter_headsToLam : IsSelfInterpreter E → ∃ k f', headSteps k E = some f' ∧ IsLam f'
    app_rooted_head_redex : IsSelfInterpreter (app f a) → ∃ B', spineHead (app f a) = lam B'

For `E = λy. B` with `B` an application the non-application body lies in `B`;
two incomparable nonlinear binders cannot both sit on one nested pair
`λx.λy.…`, and a variable-bodied binder is affine, so `B` has three
abstractions and `E` four: `2·4 + 4·5 − 2 + 1 = 27`.

### Literal interface (`OvernightFloorLiteral`)

    literal_public_occ : IsSelfInterpreter (lam (lam B)) → 1 ≤ occ 0 B ∧ 1 ≤ occ 1 B
    literal_interface_bound : IsSelfInterpreter (lam (lam B)) → 31 ≤ wire (lam (lam B))

Both public variables occur: the output mentions `C` and `N`, reduction cannot
introduce an absent variable, and the output is normal so the join is a
directed reduction. With `selfInterpreter_body_not_chain`: `L ≥ 4`, `V ≥ 6`,
`X ≥ 1`. Complements `headForm_fifty_five` (55 bits for the displayed form
`λc s. c A B`).

### Minimal application-rooted interpreters (`OvernightFloorApp`)

    minimal_head_nonlinear : MinimalInterpreter (app (lam B') A) → Closed A → 2 ≤ occ 0 B'
    single_lam_shape : lamCount t = 1 → FreeUnder 1 t → AppBodies t ∨ indexSum t = 0 ∨ live t = 0
    three_leaf_enum : the six abstraction-free trees over {q, r, r}
    refute_cycle, refute_one_arg, refute_three_args_a, refute_three_args_b,
    refute_normal_first, refute_redex_first : ¬ IsSelfInterpreter (cand B) for those six B
    app_rooted_min_bound : MinimalInterpreter (app f a) → 27 ≤ wire (app f a)

At ≤ 26 bits the identity forces `L = 3, V = 5` (the proof uses nothing about
`X` beyond `X ≥ 1`). The head redex has a closed argument, so its binder is
nonlinear by `minimal_linear_free_count`. Two spine arguments: all leaves
have index 0, contradiction. One argument with abstraction-free body: the body
is `x x`, the argument is closed with two abstractions and three leaves; if it
is `λr. (application)`, `single_lam_shape` gives `AppBodies`, index sum 0, or
a vacuous binder, each contradictory; if it is `λr. λq. B_q` with one `r`, two
head steps reach `λq. B_q[r := A]`, an abstraction-rooted interpreter with
three abstractions, contradicting `lam_rooted_four_lams`; with two `r`s the
six trees are refuted by finite head reduction certified with `decide`: one
head-reduction 2-cycle (divergence against the normal output), one rigid
landing with one argument, two with three arguments, one whose first argument
is normal and differs from `λλ.0`, one whose first argument is a redex whose
only reduct is an abstraction with rigid body. One abstraction in the body and
one in the argument: `AppBodies`, index sum 0, or descent to a
three-abstraction abstraction-rooted interpreter.

## 2. Witnesses for the counts (not interpreters)

- 25 bits, `(L,V,X) = (3,5,1)`: `λr.(λp.pp)(λq.q q r)` and
  `λr.(λp.p(pr))(λq.qq)` satisfy every beta-invariant above (incomparable
  pair, capture, wide argument, non-application body). Killed by `AppBodies`
  and by minimality (an affine head redex with a closed argument shrinks).
- 26 bits: `(λx.xx)(λr.λq.B)` with `B` over `{r,r,q}`: the six refuted terms.
- 27 bits, `(L,V,X) = (4,5,1)`: shapes with exactly one vacuous binder, e.g.
  `λy.(λp.pp)(λq.(λv.q) q y)`. Nothing general here excludes them (this one
  happens to have an erasing redex, so it is not minimal).

So 27 is the exact limit of the present general lemmas plus the 26-bit
finite analysis; 28 needs the `(4,5,1)` shapes.

## 3. What remains between 27 and 34

1. **28–30 by the same method: no new idea, costly case analysis.** A minimal
   interpreter of wire 27 has `(L,V,X) = (4,5,1)`: one vacuous binder, two
   nonlinear binders with two leaves each, one affine live binder, one index
   unit. Abstraction-rooted: `E = λy.(λp.B'')A⃗` with `p` nonlinear (the body's
   spine head must be a lambda or `E C` is rigid; an affine head redex would
   shrink since the only free leaf is `y`). Application-rooted:
   `E = (λx.B')A⃗`, `x` nonlinear. The vacuous binder's position (argument,
   body of a nested lambda, K-like `λv.z`) multiplies the cases; on paper each
   dies by `AppBodies`, a count, minimality, descent to a reduct with
   `lamCount < 4` or `live < 3`, or finite head reduction, but the
   abstraction-rooted branch alone has dozens of concrete terminal terms
   (e.g. `λy.(λp.B''(p,p,y))(λq.T(q,λv.q))` over all trees `B''`, `T`). I
   estimate 400+ Lean lines per bit; deriving shapes from counts is the cost,
   the kills are routine. `app_rooted_min_bound`'s classification uses only
   `L = 3, V = 5`, so it already covers `(3,5,X)` for every `X`.

2. **33 needs Statman's width theorem** (closed `P =β S` has a subterm with
   three distinct free variables). It is the only known route to
   `L ≥ 4, V ≥ 6, X ≥ 3` globally. I tested and rejected every syntactic
   beta-invariant I could find as a substitute (NOTES.md): bounded capture
   multiplicity, capture chains, nonlinear antichains, chains of captures,
   Chain with rigid-head or redex exemptions, "nonlinear captures", maximum
   index bounds. None is beta-preserved; the counterexamples are the
   width-growth mechanism `λfg.(λp.λx.px)(fg) → λfgx.fgx`. `Width2 ∧ ArgOne`
   is preserved but is weaker than `¬ArgOne`, which is already forced. The
   published proof is on pages 408–409 of Statman (ICTCS 2005), not in the
   available two-page preview (`tmp/overnight/global/statman-preview.txt`
   has only the HOT setup). Reconstruction attempt: the obstruction is that a
   HOT carrier of `(a,b)` reaches the head with a fixed head variable, while
   `a c (b c)` needs `a` exposed with `c` as first argument and `b` exposed
   separately; but the Scott bits `K`/`F` are rank-1 erasers that split
   carriers (`λr.λq. r q (q q)` with `r := F` yields `Δ`), so the invariant
   must be stated on lambda terms, not on HOT rewriting. Not done.

3. **34 (the equality exclusion)** reuses the handwritten `capture-width.md`
   argument, which needs the head decomposition `λc s. c A B` / `λc s. s A⃗`.
   Pieces now in Lean that it would use: `selfInterpreter_headsToLam`,
   `selfInterpreter_stream_consumed`, `app_rooted_head_redex`,
   `minimal_head_nonlinear`, `lam_rooted_four_lams`, and the refutation tools
   `landing_shape`, `no_one_arg`, `no_three_args`, `two_args_first`,
   `cycle_diverges`. Missing: the hnf arity classification (needs "head
   normalization reflects from `U V` to `U`" and the var-substitution
   commutation for head steps; sketched in head-decomposition.md), and
   Statman.

## 4. Method notes

- Every invariant was checked on paper against the 165
  (`(λx.xx)(λx.(λintL λcont.B)(xx))`: its `¬Chain` witness is the root redex,
  its non-application bodies are `λintL.λcont` and `λnext.λlist`), the
  584/742 two-nonlinear interpreters (closed nonlinear binders; captures by
  affine binders) and the beta-normal `λc s. s H c`.
- No enumeration: the six 26-bit refutations are the residue of a structural
  classification, each a `decide` on ≤ 7 head steps of a ~100-bit term plus a
  shape lemma.
- Descent ("reducts are interpreters", via `selfInterpreter_beta`) is the
  sharpest cheap tool: it turns the abstraction-rooted bound `lamCount ≥ 4`
  into kills of application-rooted shapes whose head steps lose abstractions.

## 5. Files

- `/Users/a9lim/Work/blam/lean/Blc/OvernightFloorCount.lean`
- `/Users/a9lim/Work/blam/lean/Blc/OvernightFloorArg.lean`
- `/Users/a9lim/Work/blam/lean/Blc/OvernightFloorEmerge.lean`
- `/Users/a9lim/Work/blam/lean/Blc/OvernightFloorLiteral.lean`
- `/Users/a9lim/Work/blam/lean/Blc/OvernightFloorLambda.lean`
- `/Users/a9lim/Work/blam/lean/Blc/OvernightFloorApp.lean`
- `/Users/a9lim/Work/blam/tmp/overnight/lean-floor/NOTES.md` (rejected invariants, witnesses, plan for 28)
- `/Users/a9lim/Work/blam/tmp/overnight/lean-floor/REPORT.md` (this file)
