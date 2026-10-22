# bodylin — linear body lets with a nested head redex

**Result: the assigned branch is closed.** No globally minimum full-law
one-hole reader, ordered by `(weight, source lambda count, hole depth)`, of
weight at most 45 has

    R = λs. ((λx. B) A) C1 … Ck

with exactly one x in B, its unique source j at depth one inside A, a lambda
in A, and a nested head redex at B's head.

Exact local minimality conditions leave **569 sources in three complete
cells**. They have just **eleven distinct bodies B**. Every one of those
bodies has a strictly cheaper beta-equivalent replacement, kernel-checked
for arbitrary A and arbitrary pending operands. Independently, all 569
original sources have individual kernel-checked zero-law refutations.
There are **no survivors and no normalizer exceptions**.

Evidence boundary: the source reductions and constructor-grammar
completeness argument are handwritten; the inventory is computer-checked;
the price identities, strengthened linear-hoist tie rule, eleven generic
body exclusions and all 569 exact-source refutations are kernel-checked.
There is no Lean theorem proving that the enumerator covers every source.

## 1. Complete interpreters built

None. No candidate passed the zero law, so no splice, battery or polish
run was called for. No new interpreter bit count or battery line is claimed.

Positive controls were the known weight-46 reader, the weight-59 reader
with a nonlinear identity handler, the weight-62 reader containing source
Ω, and the weight-84 reader sharing j. Both independent normalizers accept
all four on zero and unary lengths 1 through 8. These are reader controls,
not new interpreter battery results (`validation.json`).

## 2. Exact identities and proofs

### Source price and the two linear charges

Let a price A in frame `[s,c]` with its one j priced zero; let b be B's
ordinary wire cost in `[x,s,c]`; and put p = Σ(2 + cost(Ci)). Write
q = s_A + c_A, D for the depth of B's unique x, G = s_B + c_B, and c_C
for the number of c leaves in the pending forest. Exactly

    w(R) = 10 + a + b + p,
    Δbeta = (q + 3)D − 6 − G,
    Δhoist = qD − 3 − s_B + c_A + c_C.

Δbeta is the weight change on contracting the first let. The substitution
puts A under D binders; each free s/c pays D, j pays 4D, the replaced x
already paid D, and deleting the binder saves G. Contraction removes one
source lambda, so lexicographic minimality requires

    (q + 3)D ≥ 7 + G.

Δhoist is the change on contracting and then hoisting j to a new root
let. This preserves the source lambda count and lowers the hole depth
from one to zero. Hence it too must be strictly positive:

    qD + c_A + c_C ≥ 4 + s_B.

The source identity and general local-hoist identity are copied from
bodylet's checked `Prices.lean`, with attribution retained by namespace.
The direct linear charge is the library's
`SelfintLocalCost.minimum_linear_source_charge`.
**New kernel check:** `LinearPrices.linear_hoist_strict` proves the second
strict inequality at any local hole-bearing linear redex at depth one.
Its `DepthMinimumReader` states all three minimum coordinates explicitly.
It assumes scope, one hole, total hole depth one, one occurrence of the
let variable, and j in its argument; it assumes no normal form.

### Local conditions at every redex

For a j-free `(λy.D0) E`, with u uses at total depth M, e = wire(E), F free
leaves of E and T outward D0 leaves other than y, contraction changes
weight by

    (u−1)e + (F−1)M − 4 − 2u − T.

It must be nonnegative, and equality is disallowed when
`(u−1)L_E−1 < 0`. An erasing redex is impossible in a minimum.

For a j-containing local redex on the depth-one hole path, the exact
contract/hoist change is

    (u−1)e + (s_E+c_E)M + u − 4 − s_D0 + u c_E + c_out.

It is nonnegative, and strictly positive if `(u−1)L_E=0`, because then
lambda count is unchanged while hole depth falls. `c_out` counts c leaves
outside that redex. These are the bodylet local identities; the new linear
tie theorem above checks their most consequential specialization here.

Finally, sinking a let through an application child containing all its
uses saves exactly the sibling's outward leaves. A positive saving is
forbidden. Sinking stops at lambdas. The identity is
`Prices.local_sink_price`, inherited from bodylet and recompiled here.

### A cheaper body excludes arbitrary arguments and pending lists

**New kernel-checked theorem:** `BodyReplacement.cheaper_body_not_minimum`
states that if B →β* B', both bodies have no j in frame `[x,s,c,j]`, and
`wire(B') < wire(B)`, then for every A and every list C⃗,

    ¬ MinimumReader (λs. ((λx.B) A) C⃗).

Proof: lift the finite reduction through the body context. It preserves
all reader laws. Both sources retain exactly the same j occurrences in
A and C⃗, while their weight difference is precisely the body-cost
difference. This contradicts weight minimality alone. **B' may copy x**:
A still occurs exactly once in the source, outside λx.

Here are the eleven instances. Let Δ = λy.y y and P = λu v.x. Costs are
ordinary wire costs in B's frame; each row is an exact finite beta identity.

| B | B' | Cost | Sources covered |
|---|---|---:|---:|
| Δ P | λv.x | 18 → 5 | 431 |
| Δ (λu v w.x) | λv w.x | 21 → 8 | 16 |
| (λy.y (λz.y)) P | λv.x | 21 → 5 | 14 |
| Δ (λu v.v x) | λv.v x | 22 → 9 | 14 |
| Δ (λu v.x v) | λv.x v | 22 → 9 | 14 |
| Δ (λu.u (λv.x)) | x | 22 → 2 | 14 |
| (λy.y (y y)) P | λv.x | 22 → 5 | 14 |
| (λy.y y y) P | x | 22 → 2 | 14 |
| (λy z.y y) P | λz v.x | 22 → 8 | 14 |
| Δ (λu v.u x) | λv w.x x | 23 → 14 | 12 |
| Δ (λu v.x u) | λv.x (λu w.x u) | 23 → 21 | 12 |

`Bodies.lean` proves each finite reduction, the strict cost inequality,
and the resulting exclusion for arbitrary A,C⃗. No normalization claim
about a whole reader or an arbitrary term is involved. In particular, the
proof does not normalize the first outer let and assume its reduct is a
minimum or still has one source hole.

## 3. Completeness, checks and resource limits

### Why the finite domain is complete

The assigned hypotheses give a ≥ 6: A contains a lambda away from its
depth-zero j, so even I applied to j costs six. B contains x, so b ≥ 2.
The exact source price gives a+b+p ≤ 35. Thus the complete component
budget is

    6 ≤ a ≤ 33,       2 ≤ b ≤ 35−a,       0 ≤ p ≤ 35−a−b.

`minimum.py` recursively counts every variable, lambda and application
constructor at those costs. Its component features record free-variable
occurrences and their depths, lambda count, syntactic head, local sinking
charges, and the external c count needed by local hole-hoist inequalities.
It permits arbitrary internal redexes and no lambda above j in A. The
pending forest uses every finite list and its exact application costs.

Filters impose exactly the local conditions in §2, one x in B, a lambda
in A, a nested head redex in B, and necessary source occurrences of s and
c. An induction over constructors establishes coverage of all terms that
satisfy these conditions. A source's first c region, ordered A then B then
C⃗, uniquely assigns it to a cell; later regions may also contain c.

`check.py` reconstructs every counted product, asserts its exact count,
price and lack of duplicates, then tests rigid laws. `export.py` independently
reconstructs the same products and checks their digests before emitting
the exact-source Lean statements. The final recurrence **does not use**
Theorem S, the closed-transport/literal-j-parent exclusions, the β-normal
reader bound, selective pruning, or a normality hypothesis. Nor does it
assume the nested redex is independent of x.

| First c region | Sources | Wrong zero | Exceptions | Survivors |
|---|---:|---:|---:|---:|
| A | 559 | 559 | 0 | 0 |
| B | 0 | 0 | 0 | 0 |
| C⃗ | 10 | 10 | 0 | 0 |
| **Total** | **569** | **569** | **0** | **0** |

These 569 sources use 401 distinct A's and exactly the eleven B's above.
`shape-summary.json` records the count profiles; `body-manifest.json`
records the eleven body replacements. No large source JSON dump is needed.

### Kernel and independent checks

- `Cases.lean` contains **569 individual theorems `¬ Reader r`**, each
  replaying a zero-probe reduction against the repository's normalizer and
  soundness theorem. Thus even the ordinary successful Python refutations
  receive kernel checks; there are no exceptional unresolved runs.
- `manifest.json` maps the cell/index and source SHA-256 to its theorem.
  `audit.py` checks the source encodings, bijection, successful printed
  theorem dependencies, final counts, digests and resource records.
- All eleven generic body exclusions and all 569 source refutations use
  only `{propext, Quot.sound}`. The general hoist price/tie lemmas also use
  `Classical.choice`. No `sorry`, new axiom or unchecked native decision
  is used.
- An independent named normalizer rejects every one of the 569 sources
  on zero, with no cutoff. All 569 direct and hoist price changes agree
  with independently computed syntax costs. Independent unfiltered
  generation through component cost 14 checks 1,265 components, with all
  829 admissible ones matching the feature recurrence. This small audit
  supports the implementation; it does not replace the completeness
  argument above.
- Largest source cell: 559 terms. Final source runs take at most 1.63 s
  and 108 MB RSS. Validation takes 1.76 s and 109 MB. The largest Lean
  compile, `Cases.lean`, takes 6.18 s and 585 MB; the other four files
  each take under a second. Each run stays below its 100,000-term,
  120-second, 1-GB check / 2-GB Lean and two-thread cap. Watchdogs have
  stricter 110-second and 900-MB / 1.9-GB limits.

For replay from the repository root, use `PYTHONDONTWRITEBYTECODE=1 python`
on the following lane scripts, sequentially:

    minimum.py 1
    check.py 1:redex:A:A
    check.py 1:redex:A:B
    check.py 1:redex:A:C
    export.py
    export_bodies.py
    run_limited.py Prices.lean
    run_limited.py LinearPrices.lean
    run_limited.py BodyReplacement.lean
    run_limited.py Bodies.lean
    run_limited.py Cases.lean
    validate.py
    audit.py

All files and outputs are under `tmp/round4/bodylin/`. Only that directory
was written. No other agents or consults were called; no commit was made.

## 4. Remaining boundary and next step

Combined with the live bodyredex and bodylet reductions, this removes the
last stream-body-let branch for a minimum reader below 46. With the
existing s-spine exclusion, **only the root-let branch of the current
source-head classification remains**. This does not establish the full
46-bit reader bound or 162-bit optimality.

The useful technique is short **local multistep compression**. A nested
redex can pass every one-step price test while its argument subsequently
erases the code it duplicated. Keeping the outer hole-bearing let intact
allows that compression to preserve one source j even when the cheaper
body duplicates the outer variable. A root-let lane can price the same
kind of local replacement without assuming its complete reader has a
normal form.
