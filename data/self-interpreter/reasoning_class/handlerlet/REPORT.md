# Handlerlet — nonlinear lets inside a literal first handler

**Closed under the stated global minimum hypothesis.** No globally minimum
full-law one-hole reader of weight at most 45 has the source form

    R = λs. s (λb. B) T1 … Tq,

with j outside B and a source beta-redex anywhere inside B. This covers
all q, arbitrary surrounding source contexts and trailing operands, and
any depth of j in its trailing operand. Combining this with loop §6's
absence of erasing/linear/high-multiplicity redexes and d1open's existing
redex-free closure eliminates the entire literal-lambda-first-handler
branch of a global minimum below 46.

The minimum is over **all full-law one-hole readers**, ordered by
(weight, source lambda count, source-j depth). The new exclusion uses the
first two components; it does not restrict minimization to the displayed
family. This is **handwritten source reduction plus complete Python
inventories, with every normalizer exception kernel-refuted**. It is not
a fully Lean-formalized inventory/exhaustion theorem, nor an unconditional
reader floor of 46 or an unconditional 162-bit interpreter lower bound.

## 1. Complete interpreters and positive controls

No complete interpreter was built; no splice, battery or polish was run.
There is no sub-162 construction or new interpreter battery line.

The checker accepts the known 162 reader (w = 46) on zero and n=1..8. It also
accepts the w = 59 source obtained by replacing its I handler with

    λb. (λx. x x) (λx. b).

This handler beta-reduces to I, so this is an exact all-n semantic control,
not a new algorithm. Its only displayed sharing let contracts to a lighter
source and therefore does not pass the minimum-source filter. These two
controls check that the probe engine and weight convention accept actual
readers; neither is counted as a discovered interpreter.

## 2. Exact identities and the source budget

### 2.1 Whole-source price

Let the local price of Ti charge an ordinary variable at index+2 and its
unique possible j at 4 times its lambda depth inside Ti. Write p for the
sum of these local prices. Since the reader has exactly one j and it is
outside the handler,

    w(R) = 12 + 2q + |B| + p,
    p ≥ 2(q−1),
    |B| + p ≤ 33−2q.

The source j pays 4 for the stream lambda separately in the 12. Every
non-hole operand has cost at least 2. The identity allows j under further
operand binders; it is not a depth-one-only check.

`Prices.reader_price` kernel-checks the equivalent repository identity

    weight 0 (λs. s (λb.B) T⃗)
      = 8 + wire B + spineWeight 1 T⃗,

for arbitrary B and operand lists with `occ 3 B = 0`. `spineWeight`
already includes the 2q applications and the 4 outer hole charge.

Mark any source redex, at any position:

    B = C[(λx.D) A].

Let ell be its depth inside B, k the cost of C outside its hole, a=|A|,
d=|D|, m the occurrences of x in D, L_D its lambda count, and M the sum
of the local depths of those occurrences. The actual source frames are
A in [ell context binders,b,s,c], D in [x,ell context binders,b,s,c]. Then

    |B| = k + 4 + a + d,
    d + 2 ≥ 4m + 2L_D + M,
    a + k + p + 2L_D + M ≤ 31−2q−4m.

The D bound is the existing kernel theorem `body_occ_price`; it counts
source leaves, their joining applications and their actual index taxes.
A is counted once. No independently priced copies of A or disjoint
semantic-role assumption are introduced.

### 2.2 Arity and c-location bounds

A nonlinear redex costs at least 12 (`Prices.nonlinear_twelve`), so

    w ≥ 22 + 4q,

and q≤5 (`Prices.arity_five`). The adv5 arity table correctly forces
operand counts for the particular semantic handler values it lists;
it does not classify arbitrary nonlinear handlers. This proof retains
every q=1..5 and therefore needs no such classification.

A reader needs a source c. Partition markings by the **first** component
containing c, in priority order A, D, C, trailing list. Later components
may also contain c. The extra original-source charges are:

- c in A: a≥ell+4;
- c in D: its leaf and joining application add at least ell+7 beyond
  `4m−2+2L_D+M`;
- c in C: k≥2ell+6;
- c only in the trailing list: p≥5 for q=1, and p≥2q−1 for q≥2.

For reference, after reserving the smallest other components, these give

| First c | Upper bound on a |
|---|---|
| A | 33−4q−4m−2ell |
| D | 26−4q−4m−3ell |
| C | 27−4q−4m−2ell |
| trailing, q=1 | 24−4m−2ell |
| trailing, q≥2 | 32−4q−4m−2ell |

The checker uses the exact joint costs, rather than replacing them with
these relaxed ceilings.

There is also a short analytic closure of q=5. Its handler body has at
most 15 bits. A redex with m≥3 already costs at least 16. At m=2 its
argument has a≤5, hence at most one free leaf. The contraction charge in
§2.3 is then at most a−8≤−3, impossible in a minimum. The count-only
recurrence independently returns zero q=5 markings.

### 2.3 The decisive minimum-only filter

For the marked redex, let F be the number of A's free leaves and T the
number of D's outward leaves other than x. The exact weight change under
contraction is

    Δ = (m−1)a + (F−1)M − 4 − 2m − T.

This is `Prices.charge`, obtained from the repository's
`weighted_beta_at`; the source hole is absent from the entire redex.
Contracting it preserves every reader law, its one-hole count and the
hole depth. Consequently a global minimum must have Δ≥0.

At Δ=0 the lambda-count change is

    (m−1)L(A) − 1.

Thus **Δ=0 with L(A)=0 is also forbidden**: contraction removes one
lambda at the same weight. `Prices.minimum_lamfree_strict` proves this
for arbitrary source contexts and multiplicities. We do not incorrectly
exclude all zero-charge nonlinear lets: duplicating lambdas in A can
increase the lambda count. The exact retained condition is

    Δ>0, or Δ=0 and L(A)>0.

All the pricing/filter theorems compile with axiom lists
`[propext, Quot.sound]`.

## 3. Complete finite exclusion and certified exceptions

### 3.1 Domain and completeness

Loop §6 supplies m∈{2,3,4,5} for every source redex in B of a global
minimum below 46. `count.py` counts, and `check.py` constructs, every
marked source satisfying the joint budget, one j in the trailing list,
a source c, and the minimum filter in §2.3.

The constructor recurrence is exhaustive:

1. A variable has its exact index price. An abstraction consumes 2 and
   extends the lexical frame. An application consumes 2 and considers
   every cost/feature split.
2. For A, features are outward-leaf count, lambda count and c presence.
   For D, they are x multiplicity, x-depth sum, other outward-leaf count
   and c presence. These are exactly the quantities in Δ.
3. C is either the marked hole, a lambda around a context, or an
   application with the context in either child and any source term in
   the other. The hole has exact depth ell. This includes redexes inside
   arguments, inside lambda bodies, and inside other redexes.
4. The trailing list includes every operand cost split, every position of
   the one j and every c-presence split. A j under d local binders has
   leaf price 4d. No beta-normality or affine restriction is imposed.
5. Every generated block is checked against its independently memoized
   cardinality. Every marked source asserts its full source weight,
   multiplicity and actual contraction-price difference.

Marking several redexes can produce the same reader. Exact syntax-tree
equality removes these duplicates before evaluation; there is no
hash-collision assumption. Overcounting markings is harmless for
completeness. A separate unfiltered small generator checks 1,384 source
terms against the feature-count recurrence. The mathematical completeness
argument is structural induction on these constructors. It is handwritten;
Python's inventory has not been proved complete inside Lean.

### 3.2 Every cell, including empty ones

Counts below are marked original sources; a dash is zero.

| q | m | c first in A | c first in D | c first in C | c first in trailing list |
|---:|---:|---:|---:|---:|---:|
| 1 | 2 | 44,161 | 4,038 | 6,504 | 12,752 |
| 1 | 3 | 9,208 | 1,660 | 1,444 | 3,064 |
| 1 | 4 | 1,602 | 280 | 120 | 340 |
| 1 | 5 | 564 | — | — | 28 |
| 2 | 2 | 9,072 | 396 | 568 | 12,726 |
| 2 | 3 | 1,432 | 120 | 104 | 3,060 |
| 2 | 4 | 120 | — | — | 340 |
| 2 | 5 | 56 | — | — | 28 |
| 3 | 2 | 825 | — | — | 1,935 |
| 3 | 3 | 84 | — | — | 360 |
| 3 | 4 | — | — | — | 30 |
| 3 | 5 | — | — | — | — |
| 4 | 2 | 8 | — | — | 60 |
| 4 | 3–5 | — | — | — | — |
| 5 | 2–5 | — | — | — | — |

Each whole-q domain fits under 100,000; no cell is over the cap.

| q | Markings | Unique sources | Wrong zero NF | Wrong n=1 NF | Lean-refuted exceptions | Survivors |
|---:|---:|---:|---:|---:|---:|---:|
| 1 | 85,765 | 85,735 | 82,869 | 1,795 | 1,071 | 0 |
| 2 | 28,022 | 28,022 | 26,381 | 994 | 647 | 0 |
| 3 | 3,234 | 3,234 | 3,080 | 16 | 138 | 0 |
| 4 | 68 | 68 | 55 | 1 | 12 | 0 |
| 5 | 0 | 0 | 0 | 0 | 0 | 0 |
| Total across separate checks | 117,089 | 117,059 | 112,385 | 2,806 | 1,868 | 0 |

Each necessary probe uses the actual input stream, including all copies
of s in A, D, C and the trailing operands. Targets are r j and
c U0(N) N. A distinct beta-normal form is a definitive refutation by
confluence. No n=2 or n=3 probe was needed. Passing finitely many probes
would not establish a positive all-n law.

### 3.3 Every normalizer exception is refuted in Lean

The checker reports 1,358 repeated-state exceptions and 510 resource
cutoffs. They are not considered refutations by themselves. All 1,868
original sources have a concrete theorem `¬ SelfintClass.Reader r` in
`Exceptions1.lean` through `Exceptions4.lean`; that Reader requires only
the zero and n=1 laws. There are no unresolved sources.

| Kernel certificate | Sources |
|---|---:|
| Required free variable absent after finite reduction | 410 |
| Wrong persistent rigid head or arity | 224 |
| Finite weak-head cycle back to an earlier head, possibly with extra operands | 1,205 |
| One genuine weak-head step, then finite arbitrary beta reductions back to an earlier head | 29 |

`Certificates.lean` proves these rules for arbitrary terms and pending
operands. For the cycle rules it uses the repository's checked weak-head
clock: a normal form implies a finite clock, a head contraction strictly
decreases it, arbitrary beta reduction cannot increase it, and applying
extra operands cannot shorten the clock needed to expose the old head.
Thus a positive cycle back to that head is impossible. This correctly
allows growing pending-argument stacks and does not infer divergence
from a beta cycle in an irrelevant argument. No eta conversion is used.

`loop_audit.py` and `mixed_audit.py` find the finite certificates;
`export_certificates.py` emits their original-source Lean statements.
The mixed audit expanded only 668 reduct states, taking 0.022 s and 34 MB.
`certificates_manifest.json` maps every exception index to its theorem.
All 1,868 printed axiom lists are exactly `[propext, Quot.sound]`:
no `sorryAx`, `native_decide` axiom, or unchecked cutoff remains.

### 3.4 Resource limits and reproducibility

All source checks use one compute thread plus one watchdog thread; all
Lean checks use `-j2`. Every check is below 120 s and 1 GB. The largest source
domain is 85,765 markings. Lean's largest module is q=1: 12.68 s and 851 MB;
q=2 uses 7.66 s / 697 MB, q=3 uses 2.04 s / 481 MB, q=4 uses 0.43 s / 434 MB.
Final source checks took 30.57 s / 120 MB (q=1), 16.76 s / 55 MB
(q=2), 2.34 s / 34 MB (q=3), and 0.006 s / 23 MB (q=4).
Exact measurements and artifact hashes are in `verification.json`; the
per-run logs and resource JSON files are retained.

From the repository root, run each q as a separate capped check:

    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/handlerlet/count.py 1
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/handlerlet/check.py 1

Repeat those commands with q=2,3,4 (q=5 is count-only/analytic). Then:

    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/handlerlet/loop_audit.py
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/handlerlet/mixed_audit.py
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/handlerlet/export_certificates.py
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/handlerlet/run_limited.py Certificates.lean
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/handlerlet/run_limited.py Prices.lean
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/handlerlet/run_limited.py Exceptions1.lean

Run the last command for Exceptions2,3,4 too, then run `validate.py`.
The wrapper selects the existing lean/ toolchain, writes only here, and
kills its exact child process group before the time/RSS caps.

## 4. Remaining boundary and next step

This lane's assigned literal-handler nonlinear-let branch has no open
(q,m,c-location) cell. Its main addition is the exact local minimum filter,
which shrinks the original-source inventory enough to close every position
of a nonlinear let, rather than only the first source head redex.

A sub-162 reader can still hide in the other source forms left in
class-bound §3: a first operand which is itself a redex, an s-headed first
operand reaching such a redex before entering a literal handler, a redex
under the stream lambda, or an application-rooted reader. The needed-binder
and zero-lambda-parent reductions also retain their stated broader gaps.
This result does not automatically transport a created handler to a
literal source handler: the source capture charges still matter.

The next useful extension is to apply the same exact non-improvement
filter to those first-operand and stream-body redexes while preserving
their hole placement. Where j lies in the shared argument, contraction
can duplicate the hole; the hole-restoring hoist has to be priced exactly.
The present proof's simpler filter is valid precisely because j is absent
from the entire literal handler body.
