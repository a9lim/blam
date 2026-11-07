# lean146: unconditional separated-class 146-bit bound kernel-checked

The follow-up closes both coverage gaps. `Final146.lean` proves reader
weight at least 30 and the separated-class bound of 146 bits, using only
the existing two-probe Reader contract. The new follow-up section below
gives the complete result and reproduction instructions.

## Initial delivery (superseded by the completed follow-up below)

The full unconditional reader-weight-30 / separated-class-146 theorem was
not completed. The requested fallback is completed, with additional source
classification and an unconditional improvement of the Lean class bound
from 138 to **140 bits**. All results below use the existing **two-probe
`SelfintClass.Reader`**: zero and unary length one suffice. They consequently
apply to `FullReader` via `FullReader.probes`; no all-length premise is needed.

No complete interpreter was constructed, no interpreter battery was run,
and no new term search was performed. All deliverable files are in this lane.

## Kernel-checked results

`Minimum.lean`, namespace `Blc.Lean146`:

- `exists_minimum`: from any Reader R with `occ 1 R = 1`, obtain a Reader M
  with one hole, globally minimum weight, then minimum lambda count among
  equal-weight readers, and `weight M <= weight R`.
- `Erase` is exactly an erasing beta contraction closed under lambdas and
  both application contexts. `Erase.weight_lt` proves strict decrease of
  `cost + 4*depth`; `Erase.reader_single_hole` proves that the reduct remains
  a Reader with one hole. No argument about the hole surviving is assumed:
  the proof combines occurrence nonincrease with the zero law's required j.
- `Minimum.no_erasing`: `Minimum R -> forall U, not (Erase R U)`.
- `counterexample_minimum`: for every bound, a counterexample yields a
  minimum counterexample with no erasing redex. This is reusable at 30 or 46.

`Live.lean`, namespace `Blc.Lean146Live`:

- `reader_two_live`: `Reader R -> 2 <= live R`, for arbitrary source syntax
  and arbitrary j multiplicity. No minimality or normality is assumed.
- `flat_pair_algebra` proves the handwritten paired-head algebra by
  structural induction for every term whose binders are vacuous. The
  functional values are the paired streams or paired constant functions;
  rigid heads are paired c/c, j/j, r/N. `no_flat_reader` derives the
  incompatible target heads. `weakStep_one_live` extends this obstruction
  from literal abstractions to arbitrary reader syntax by induction on
  source node count.
- `reader_leaf_charge`:
  `occ 0 R + occ 1 R + 3 <= leafCount R` for every Reader R.
- `lambda_count_rows` proves exactly the five rows from reader30.md for
  every lambda-rooted one-hole reader of weight below 30. In all rows f=1:

  | d | L | V | maximum X |
  |---|---|---|---|
  | 1 | 2 | 5 | 5 |
  | 1 | 2 | 6 | 1 |
  | 1 | 3 | 5 | 3 |
  | 1 | 4 | 5 | 1 |
  | 2 | 2 | 5 | 1 |

- `sub30_lambda_normal` proves every such reader beta-normal. Its two
  components are `two_lambda_reader_normal` and `five_leaf_reader_normal`.
  The latter uses `beta_one_live`, which treats arbitrary beta steps under
  lambdas, not only weak-head contractions.
- `normal_reader_stream_head` proves that a normal lambda reader's body is
  headed by its stream variable. `sub30_lambda_shape` packages normality,
  stream head, two live binders, a nonlinear binder, and the five count rows.
- `depth_five_weight_46`: a one-hole Reader at depth at least five has
  weight at least 46. This statement is independent of finite coverage.
- **`reader_weight_24`** proves `24 <= cost R + 4 * depth R` unconditionally
  for every one-hole Reader. **`class_bound_140`** combines it with the
  existing kernel-checked NEXT and knot theorem. The hypotheses are exactly
  the existing class: scoped fixed-point context T, Reader R with one hole,
  and `SelfintClassNext.Next Q`. No coverage premise is used.

## Recorded finite refutations

`regenerate.py` executes the existing `reader29_lean.py` generator with its
output write intercepted into this lane, reads the recorded `reader29.json`,
and splits the generated proof text into 14 files (`ReaderChecks00.lean`
through `ReaderChecks13.lean`). It does not copy ReaderChecks.lean and does
not enumerate any new terms. Each of the **3,484** original non-joinability
proofs additionally gets a theorem `reader29_reader_reject_i : not Reader R`
for its literal source. All are kernel-checked and individually axiom-audited.
These are still individual refutations, not a universal coverage theorem.

## Exact remaining boundary

Two universal propositions are still unproved:

1. **`MinimumLambdaCoverage`**: a minimum one-hole Reader below weight 30
   has a lambda root. The unformalized part of reader30.md section 2 remains:
   the three-live-binder result for a non-lambda minimum, nonlinear-head
   binder provenance, the linear-head weight/tie-break argument, and the
   rigid `c j` / `j c` barrier. Erasing-redex elimination itself is now proved.
2. **`FiveRowExclusion`**: the normal, stream-headed, two-live/nonlinear,
   one-hole sources with the five displayed count rows are covered by the
   3,484 recorded refutations. The source hypotheses are now formally
   derived; the recursive generator's exhaustive membership theorem is not.

`All.lean` combines the two standalone modules without local olean files.
Its integration tail names precisely these two propositions as explicit
hypotheses. `reader_weight_30_of_coverage` and
`class_bound_146_of_coverage` discharge the remaining minimum/assembly
reasoning **conditional on both propositions**. They must not be reported as
an unconditional proof of 30 or 146. There are no axiom declarations or
placeholder proofs for either proposition.

The next work should address those two propositions directly. The lambda
side no longer needs a handwritten live-binder, counting, or source-normality
argument. For the non-lambda side, track the origin of the surviving live
lambda after a nonlinear first head contraction; its unchanged closed-over-
c/j source subterm is the key missing provenance invariant.

## Reproduction and axiom audit

From the repository root:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/lean146/verify.py
```

Individual hand-written modules compile from `lean/` with:

```sh
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean lean -j2 /Users/a9lim/Work/blam/tmp/round4/lean146/Minimum.lean
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean lean -j2 /Users/a9lim/Work/blam/tmp/round4/lean146/Live.lean
```

The verifier regenerates certificates and All.lean, then serially checks
all 17 Lean files. The final run passed in **35.36 seconds**, with the
longest child **2.66 seconds** and **3,520 theorem axiom audits**. Every child has a 110-second timeout; every Lean command
uses `-j2` and no `-o`. Exact commands, hashes, times, and audit counts are in
`verification.json`; individual compiler outputs are in the lane's logs.

All theorem dependencies are within `propext`, `Classical.choice`, and
`Quot.sound`. The paired algebra, `reader_two_live`, erasing-step lemmas,
`reader_weight_24`, `class_bound_140`, and all 3,484 individual refutations
use only `propext` and `Quot.sound`. There is no `sorryAx`, native-decide trust
axiom, or project-specific axiom. Classical.choice occurs in minimum choice
and some disjunctive arithmetic classifications.

## Follow-up: both coverage hypotheses closed

**Verified result:** `Final146.lean` is a standalone, fully kernel-checked
proof of the requested weight-30 theorem and class-146 corollary. It imports
only the existing `Blc.SelfintClass` and `Blc.SelfintInert` modules; all new
proofs and generated evidence are included in its source, with no local
olean dependencies. There are no residual coverage or minimality premises.

The final statements are in namespace `Blc.Lean146Final`:

```lean
theorem reader_weight_30 {R : Term}
    (hr : SelfintClass.Reader R) (hj : occ 1 R = 1) :
    30 ≤ SelfintClass.cost R + 4 * SelfintClass.depth R

theorem class_bound_146 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hr : SelfintClass.Reader R) (hj : occ 1 R = 1)
    (hq : SelfintClassNext.Next Q) :
    146 ≤ SelfintWireCost.wire (SelfintClass.assemble T R Q)
```

These use **two probes only**, zero and unary length one. No all-length
reader premise is needed. `FullReader` therefore inherits the result through
its existing `probes` theorem. The class theorem retains the existing knot
and `Next` contract, including NEXT normality/two-arm use; it does not claim
a 146-bit lower bound for arbitrary self-interpreters or prove 162 optimal.

### Minimum non-lambda sources

`NonLambda.lean` / `NonLambdaTail.txt` prove:

```lean
minimum_nonlam_three_live : Minimum R → ¬ IsLam R → 3 ≤ live R
```

This result has no weight restriction. Its new invariant is `Skeleton D`:
a term built from c/j, applications, vacuous lambdas, and unchanged copies
of one fixed globally scoped live source abstraction D. A one-live source
has this form. When a non-erasing weak-head contraction starts with at most
two live binders, either the live count drops below the reader minimum or
the reduct has this skeleton form. The latter cannot be a reader: the
skeleton is preserved by weak-head steps, and every lambda reached is
one-live or vacuous. The zero-law normalization theorem supplies finite
head termination, so no termination assumption is hidden in this argument.

`Accounting.lean` / `AccountingTail.txt` then prove the remaining elimination:

- `minimum_nonlam_sub30_counts`: a non-lambda minimum below weight 30 has
  depth 0, one c, six leaves, and either L=3/X≤3 or L=4/X≤1.
- `weighted_beta_delta`: an exact integer identity for weighted source cost
  under the first head contraction, including copied holes and index shifts.
  The spine/wire accounting adapts `close46/SourceCost.lean`; all needed
  identities are independently included and checked here.
- `minimum_head_linear`: the first head binder must be linear. Consuming the
  sole nonlinear binder would leave an affine reader, contradicting the
  existing nonlinear-reader theorem.
- `minimum_linear_charge`: minimal weight plus the lambda-count tie-break
  makes that linear contraction strictly increase weighted cost. If its
  body is b and argument a, the necessary charge is
  `7 + occ 1 b + 4*occ 2 b ≤ (occ 0 a + 4*occ 1 a - 1)*occDepth 0 b`.
- The count bounds force a to be exactly `c j` or `j c`, with the sole hole
  confined to a. `trapped_cj` applies `SelfintInert.replace_inert` to replace
  this rigid normal argument by c while preserving the zero result. The
  source then has no j although the result requires one, a contradiction.
- `Blc.Lean146Accounting.minimumLambdaCoverage` discharges the first exposed
  proposition unconditionally.

### Complete finite coverage

`Enum.lean` defines a structurally bounded normal-source enumerator
`layouts`. It tracks L/V/X, ambient binder depth, c/j multiplicities, and
the relative sum of hole depths. Its fuel bounds source L+V, not evaluation
steps. `layouts_complete` proves membership for every scoped beta-normal
source with at most one hole, at arbitrary counts. Pruning inequalities
are themselves proved necessary in `valid_source`.

`EnumBridge.lean` / `EnumBridgeTail.txt` prove `row_complete`: a source
satisfying a count row, normality, stream-head, and live/nonlinear bounds
belongs to that row's enumerator output. This is exact equality/membership
of de Bruijn terms, so no external alpha-equivalence assumption is used.

`coverage_generate.py` sorts only the archived layouts from `reader29.json`
into the Lean enumerator's order. `compact_generate.py` encodes the archived
normalization certificate for every layout. The five output equalities and
all certificate validations are proved with `decide +kernel`:

| L | V | maximum X | d | exact output size |
|---|---|---|---|---|
| 2 | 5 | 5 | 1 | 364 |
| 2 | 6 | 1 | 1 | 1,762 |
| 3 | 5 | 3 | 1 | 1,070 |
| 4 | 5 | 1 | 1 | 230 |
| 2 | 5 | 1 | 2 | 58 |
| | | | **Total** | **3,484** |

`Certificate.sound` proves that an accepted certificate supplies a distinct
normal form for the recorded zero/one probe and therefore contradicts
`Reader`. Normalization fuel is used only to replay a successful recorded
reduction; completeness does not depend on a bounded evaluator failing.
The Python sorting, serialization, and archived data are untrusted: Lean
checks the complete output equality and every reduction certificate.

`Blc.Lean146Enum.fiveRowExclusion` discharges the second exposed proposition.
Combining it with `minimumLambdaCoverage` gives the final two theorems.
`lambda_reader_weight_30` is also available independently of minimum
non-lambda elimination.

### Reproduction, timing, and trust boundary

From the repository root:

```sh
PYTHONDONTWRITEBYTECODE=1 python tmp/round4/lean146/verify_followup.py
```

The generator executes the original `reader29_lean.py` with writes redirected
into this lane, regenerates the recorded proof fragments and row manifest,
and assembles the complete standalone source. The verifier runs:

```sh
cd /Users/a9lim/Work/blam/lean
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean lean -j2 /Users/a9lim/Work/blam/tmp/round4/lean146/Final146.lean
```

Every child has a 110-second watchdog. No `-o`, compiled native decision
procedure, new term search, consult, or subagent is used. The ordinary
aggregate `decide` attempts reached that watchdog; `decide +kernel` avoids
redundant elaborator reduction and checks the entire proof within the limit.
The final reproducible run checked the complete Lean file in **65.95 seconds**
(**66.64 seconds** including regeneration), with **44 axiom audits**.
Source hashes, row counts, and exact theorem audits are recorded in
`verification-followup.json`; its compiler output is `Final146.lean.log`.

The final theorem dependency sets are exactly:

```text
Blc.Lean146Final.reader_weight_30: [propext, Classical.choice, Quot.sound]
Blc.Lean146Final.class_bound_146: [propext, Classical.choice, Quot.sound]
```

There is no `sorryAx`, project-specific axiom, or native-decide trust axiom.
The unrestricted non-lambda three-live theorem uses only `propext` and
`Quot.sound`. The five literal output equalities use only `propext`.

All writes remain under `tmp/round4/lean146/`; no tracked repository file
was changed. No complete interpreter was built. The weight-46 question
remains open: this proof's reusable minimum/source-accounting lemmas are
unbounded where stated, but its finite exclusion closes only weight <30.
