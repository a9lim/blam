# Global lane report

**New handwritten bounds: 37 bits globally for self-interpreters; 24 bits
globally for exact remainder extractors; 70 bits for self-interpreters
whose literal source is continuation-headed.** No sub-165 interpreter was
found or claimed. The complete optimality problem remains open.

All files written by this lane are in `tmp/overnight/global/`.

## 1. Complete interpreters built

Only one complete control construction was instantiated; its construction
was already described in the repository:

| Artifact | Bits | Exact battery line | Idea |
|---|---:|---|---|
| `control366.lam`, `control366.blc` | 366 | `366 bits  ok=667 skip=1 fail=0` | `lambda c s.c (E K s) (E F s)`, with the literal 165 in both E positions. |

Its all-source correctness follows directly from the existing E contract:
the two payloads beta-join `lambda z.M` and the unchanged suffix,
respectively, including for divergent M. This is an attaining control for
the **shape** of the projection theorem, not its numeric bound: its actual
payloads cost 178 and 177. `projection-control.json` records the check.

I also rechecked the seven requested correct references: 165, the exact
Lean-pinned 168, the existing 170 inlined-NEXT variant, 204 beta-normal,
584 two-nonlinear, 672 typed-normal, and 742 two-nonlinear-normal. All seven
returned `ok=667 skip=1 fail=0`; exact lines are in `batteries.txt`.
The upstream named `ref/AIT/ait/int.lam` is a 220-bit pre-optimization
source, so the final 168 check uses `Selfint.lean`'s exact `intLWire`.

The relevant structural invariants were checked on each reference:

| Bits | Lambdas | Leaves | Index sum | Width | Nonlinear binders | Beta-normal |
|---:|---:|---:|---:|---:|---:|---|
| 165 | 17 | 26 | 29 | 4 | 7 | no |
| 168 | 16 | 27 | 30 | 4 | 7 | no |
| 170 | 16 | 25 | 40 | 4 | 7 | no |
| 204 | 21 | 30 | 44 | 4 | 9 | yes |
| 584 | 69 | 68 | 176 | 7 | 2 | no |
| 672 | 29 | 85 | 276 | 6 | 10 | yes |
| 742 | 64 | 62 | 368 | 10 | 2 | yes |

All have incomparable nonlinear binders. No candidate invariant assumes
a syntactic beta redex, untypability, more than two nonlinear binders,
or several distinct original binders for the output's different roles.

## 2. Strongest global result: 37 bits

Full proof: **`PROOF37.md`**.

The proof retains the established 34-bit bound as a dependency and closes
34, 35, and 36 analytically. It uses the exact closed-source contract,
Statman's width obstruction, the kernel-checked incomparable-binder
theorem, the head decomposition, internal-interface necessities, and
minimum-source beta wire accounting.

The key reduction is small and explicit. A minimum interpreter below 37
would have exactly four live binders, six leaves, and at most one vacuous
binder. The width witness uses three live binders on a chain, while the
fourth nonlinear binder is closed in isolation. If the first head redex
contracts one of the width-chain binders, its closed width-one argument
removes the necessary third variable from every subterm; the reduct has
width at most two and cannot be an interpreter. Thus the source must be
a small diagonal `D N` or `lambda y.D A(y)`.

The four-leaf argument is normal by minimum-source wire accounting. Its
six possible binder/duplicate placements reduce the remaining cases to
12 layouts at 34 bits, 60 at 35 bits, and two families of 18 boxed layouts
at 36 bits. Head arity or exact identity-source payloads refute 100 of
the 108 layouts by finite observations; two more have exact repeated head
states. The six remaining growing layouts have explicit head-pumping or
advancing-wrapper invariants, proved for arbitrary iteration length in
the proof file. Capped exploratory traces are not used as exclusions.

The remaining placements of the vacuous binder are excluded uniformly:
they erase the continuation, retain an extra leading lambda, lose the
required internal width/nonlinearity, or reduce to a shorter purported
interpreter.

**Evidence level:** handwritten global theorem, with **144** supporting
finite reduction clauses checked by Lean. This does not change the
repository's fully formalized global numerical theorem by itself. The
classification, use of Statman, and six parametric infinite invariants are
not formalized here. Independent review should precede promoting this
handwritten bound to the canonical documentation.

## 3. Semantic lower bounds and a partial decomposition

Full proofs: **`PROJECTIONS.md`**.

**Exact remainder extractor: at least 24 bits, unconditionally.** The
hypotheses need only closed-source, closed-suffix beta-join correctness.
The existing two-nonlinear and interior-two-nonlinear theorems rule out
a leading lambda in any minimum extractor below 24. Source minimality
then forces an application of two closed one-live-binder terms. The
entire small inventory is Delta, a ternary diagonal, or Delta with one or
two vacuous boxes. Each either reduces to a term with one nonlinear
binder, head-diverges before consuming its input, returns Omega for all
inputs, or exposes a lambda when the exact suffix is Omega. This is a
handwritten theorem; eight fixed reduction clauses are additionally
kernel-checked.

The syntax lower bound is not an upper bound: the natural 24-bit near miss
`lambda s.s Delta Delta` returns `K Delta` on source I with suffix I.
The known correct remainder extractor remains 70 bits.

**Literal continuation-headed interpreter: at least 70 bits.** If the
source itself is `lambda c s.c A B`, the value payload A must contain an
internal width-three witness and two incomparable nonlinear binders.
Therefore it has at least four live internal binders, six internally
bound leaves, one additional stream occurrence, and three index units:
`|A|>=37`. The exact remainder theorem already gives `|B|>=22` for this
open body. The displayed interface costs 11, so `|H|>=11+37+22=70`.

This is a genuine disjoint-subterm decomposition at the displayed source
form. It permits arbitrary redexes, whole-stream access, and continuation
occurrences in either payload. It does not price a smaller source that
expands into that form, and it does not apply to the 165's stream-headed
reader. In particular I do not add 24 for a separately closed remainder
extractor while also charging the shared public stream binder.

## 4. New exact identities

The six divergence invariants are new exact identities for the forced
small layouts. Their definitions, substitution-safe derivations, and
iteration proofs are in `PROOF37.md` sections 3a, 4a, and 4b:

1. An append-wrapper word around the 34-bit generator advances to a longer
   word and leaves its old labels as pending arguments.
2. The 34-bit pair generator has `L ->^4 L C`.
3. The closed 36-bit forward generator has
   `N F^k(N) P ->* N F^(k+1)(N) (K^k P)`.
4. The closed 36-bit reverse generator has `Y P ->^5 Y (K (K P))`.
5. The open 36-bit append generator has
   `A J^k(A) ->^(k+1) A J^(k+1)(A) T ... T`, with k pending copies of T.
6. The open 36-bit pair generator has `L ->^3 L T T`.

These are identities of the written lambda terms; the divergence
conclusions additionally use the stated invariant that the active
recursive argument remains ahead of all pending data arguments.

The remainder proof's small identities include
`Delta deltaK ->* deltaK`, `deltaK Delta ->* Delta`, and
`Delta (K (K Delta)) ->* K Delta`, with literal boxes and
`deltaK=lambda x.x (K x)`. They are part of the eight extra Lean clauses.

## 5. What a comprehensive proof still needs

I do not have an unconditional source decomposition near 165. The new
37-bit proof exhausts a very constrained inventory. At seven leaves,
an off-chain nonlinear binder can capture an ancestor whose other use
lies in the width witness; the closed width-one operand argument then
fails. Counting the reader's expanding residual copies as separate code
would be unsound, and the correct 584/742 witnesses still forbid a larger
unconditional nonlinear-binder count.

The semantic directions in the prompt are useful but not independently
additive. Unary skip can use `s s s`; a normal or typed interpreter can
have its knot activated by the quotation; output roles can share a single
original binder; and the 165 really fuses reading, variable return, and
skip. The existing remainder-growth theorem establishes persistent code
growth, but does not assign a source bit cost to the shared machinery
that creates it.

A plausible next proof tool is a **proof-producing demand-driven search
with shared open terms**, rather than a flat term census. Its missing
theorems would have to support all of the following:

* exact residual-origin/binding provenance while the same original code
  serves both remainder traversal and value reconstruction;
* compositional lower bounds for completing a partially exposed handler,
  preserving actual input/selector/suffix correlations;
* minimum-source pruning with the exact wire delta, including index
  movement under binders (plain affine normalization is not size-safe);
* certified loop/pumping exclusions and rigid-context distinctions,
  retaining all resource-capped branches as unresolved;
* a compact proof that every smaller source lies in a covered search
  region, including source terms whose head forms are much larger.

There are exactly

```
28,884,801,049,237,501,100,398,528,001,139,900,247,359,718
```

closed terms below 165 bits, about **2.89e43**. This run computed the count
by the syntax recurrence in `count_search_space.py` in 0.036 seconds; it
generated no terms. The existing interpreter document reports a prior
prototype demand-driven tree estimate around `1e34` nodes from scratch,
or `1e12` with the old frame fixed. Those are repository-reported estimates,
not reproduced measurements here. Thus current structural pruning alone
does not supply a feasible global certificate; a quantitative theorem
about **shared semantic roles in original syntax** is the missing step.

For construction, the still-live region is the one the 165 itself
demonstrated: another shared computation whose result is right for two
roles, especially quotation-activated recursion/control. None of the
new lower bounds excludes a sub-165 in that region.

## 6. Verification and files

* `PROOF37.md`: complete handwritten 37-bit proof and all case splits.
* `PROJECTIONS.md`: complete 24-bit remainder and 70-bit literal-head proofs.
* `verify.py`, `verified.json`: 108 forced layouts, macro identities,
  near misses, and seven reference structural checks; no census search.
* `FiniteChecks.lean`, `lean-check.log`: **152** finite head-step clauses,
  Lean 4.32.2 exit 0, **1.218 seconds** on the final run. Two sample
  axiom audits report only `propext`. The entire theorem is not claimed
  as kernel-checked.
* `batteries.txt`: the seven reference batteries, run with two workers in
  15.949 seconds, plus the separate 366-bit control.
* `projection_control.py`, `projection-control.json`, `control366.*`:
  complete literal-head control and its passing battery.
* `count_search_space.py`, `search-count.json`: exact grammar counts.
* `statman-preview.pdf`, `statman-preview.txt`: inspected primary-source
  preview containing the width theorem on printed page 406.

Reproduction from the repository root:

```
python3 -B tmp/overnight/global/verify.py --battery
python3 -B tmp/overnight/global/projection_control.py
python3 -B tmp/overnight/global/count_search_space.py
```

For the Lean file, from `lean/`, set `LEAN_PATH` to that directory's
`.lake/build/lib/lean`, then run the installed `lean -j 1` on the absolute
path to `tmp/overnight/global/FiniteChecks.lean`. The exact command is in
`lean-check.log`. No existing Lean module or tracked repository file was
edited, and no consult was made from this lane.
