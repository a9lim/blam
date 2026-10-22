# pending — priced pending-operand moves and a literal-body-prefix closure

**Partial closure. No sub-162 reader or interpreter was found.** Under the
current established minimum-source invariants, **no minimum reader of weight
at most 45 has `(λx. B) A C₁…C_t` with `t≥1` and B a literal λ**. This closes
the pending-operand extension of the stream-λ-headed root bodies left open by
rootnarrow. It does not close x-headed or nested-redex-headed hand-offs.

The principal new identity exchanges a consumed pending operand with an
earlier definition, retaining both once and charging only the difference
between their binder-use counts. Unlike stream-λ exposure, this exchange
preserves hole depth exactly. The other new result is the exact price,
lambda count, hole count and hole depth of substituting a consumed pending
operand while retaining the root sharing let.

Labels: **[L]** kernel-checked; **[C]** complete finite source check;
**[H]** handwritten proof or synthesis. A **minimum** is global among
all-unary-length, one-source-j readers, ordered by weight, source λ count,
then j depth. No finite-probe notion of minimum is used.

## 1. Complete interpreters built

None. No splice, battery or polish was needed; there is no new interpreter
size or battery line. The checker controls accept the existing 162/165
readers and another correct hoisted reader on zero and unary lengths 1–8,
and reject the 40-weight near miss on unary (`controls.json`). These are
controls, not new all-n claims.

## 2. Exact identities and proofs

All terms below permit arbitrary internal redexes and divergence. Pending
spines are preserved in order. Primes denote hygienic shifts or binder
permutations. At the root put `F(C)=#c(C)+4#j(C)`. For unscoped or contextual
versions the formal definition is `capture d C=freeLeaves 0 C+3 occ_(d+1) C`.
Extended weight counts every j, so the syntax equations remain valid even
when a substitution would duplicate the hole.

### 2.1 Push and pull a pending prefix [L]

For any prefix C⃗ and remaining suffix D⃗,

```
((λx. B) A) C⃗ D⃗ =β (λx. B C⃗↑) A D⃗.
```

The push changes `(weight, λ count, sum of j depths)` by

```
(+ΣF(C_i), 0, +Σ#j(C_i)).
```

Thus pushing itself never strictly descends. It is important that it is a
**prefix**: moving an arbitrary later operand across earlier operands is not
this identity. The inverse pull saves exactly ΣF, with no duplication of A.
It applies to an independent suffix of B's spine, represented in Lean by
explicit shifts, with arbitrary old pending operands still outside.

`Moves.lean::{pull_laws,pull_holes,pull_lambdas,pull_depth,
minimum_pull_capture}` proves all-n law transport, one-hole transport and
the minimum exclusion. The price wraps the existing
`SelfintNestedLets.push_price` / `RootLow.pull_price`. At root depth, an
independent body suffix containing j saves exactly `4+#c(suffix)`, recovering
and extending root's Lemma P.

If all pushed operands have F=0, all three coordinates tie.
`Boundary.closed_push_minimum` proves that the pushed term is itself a
three-coordinate global minimum. In particular, **a full-chain hand-off
with only closed pending operands reduces to rootnarrow's t=0 full-chain
family** [H assembly using the earlier closure]. This is a valid tie
transport; exposing the stream λ has a different third-coordinate price.

### 2.2 Exchange a pending definition without crossing captures [L]

```
R = (λx y. D) A C E⃗
S = (λy x. Dswap) C A E⃗.
```

Write `k=occ_x(D)`, `m=occ_y(D)`. Then

```
w(S)-w(R)=m-k;       L(S)=L(R);       depth_j(S)=depth_j(R).
```

Both definitions remain present exactly once, even when either contains j.
There is **no F(A) or F(C) term**: the final source leaves both operands at
their original ambient depth. Only the indices of x/y leaves in D change.

Proof: push C under x, interchange the independent adjacent lets with the
existing checked `order_join`, then pull A back out. The two capture costs
cancel. `Prices.lean` proves the beta join, scope, every external occurrence
count and depth, exact price and all-n law transport.
`minimum_prefix_uses` gives `k≤m` in every weight minimum.

`PrefixExchange.lean` generalizes this to **any adjacent pair in a saturated
literal binder prefix**, with arbitrarily many earlier operands. Its proof
pushes the remaining operand spine beneath the first binder, applies
induction there and pulls it out again. `minimum_adjacent_prefix` therefore
forces the consumed prefix's multiplicities to be **nondecreasing from the
outermost binder inward**. No closedness assumption on the operands and no
normality assumption on the body is used.

### 2.3 Consume a literal body λ while retaining A once [L]

```
R = (λx y. D) A C E⃗
S = (λx. D[C↑/y]) A E⃗.
```

Let m be the uses of y, q their total λ depth within D, and
`G=occ_x(D)+#c(D)+4#j(D)` for the external captures of D other than y.
Then the exact weight price is

```
Δ = (m-1)w(C) + m F(C) + (F(C)-1)q - 2m - 4 - G.
```

The other source coordinates are

```
ΔL = (m-1)L(C)-1,
Δ#j = (m-1)#j(C),
Δdepthsum_j = (m-1)depthsum_j(C) + #j(C)(m+q) - #j(D).
```

Proof: push C beneath x (price F(C)), then apply the exact contextual
weighted-beta balance at depth one. The substituted argument has weight
`w(C)+F(C)`, and its capture count remains F(C). The equations follow by
substitution occurrence/depth accounting. See
`Prices.{consume_join,consume_laws,consume_price,consume_lambdas,
consume_occ,consume_one_hole,consume_depth}`.

The endpoint has one source j whenever **C is j-free or m=1**. There is no
claim of one-hole preservation for a j-carrying nonlinear C.
`Moves.consume_lex_exclusion` checks the complete descending criterion:
Δ<0, or Δ=0 and ΔL<0, or Δ=ΔL=0 and Δdepth<0. Its premises contain full
ReaderLaws and the one-hole safety condition, not sampled laws.

Some exact operand prices, useful before generating any source:

| C | w(C), F(C), L(C) | Δweight | Δλ |
|---|---|---|---|
| c | 2, 1, 0 | m−6−G | −1 |
| I=λz.z | 4, 0, 1 | 2m−8−q−G | m−2 |
| K=λu v.u | 7, 0, 2 | 5m−11−q−G | 2m−3 |
| F=λu v.v | 6, 0, 2 | 4m−10−q−G | 2m−3 |
| λz.z z | 8, 0, 1 | 6m−12−q−G | m−2 |
| c c | 6, 2, 0 | 6m−10+q−G | −1 |

The rows are substitutions into the checked formula [H arithmetic]. In
particular the c row has the separately checked consequence
`m≥7+G` (`minimum_consume_c`): equality of weight still removes a λ.
For the root profiles G≥k; this is much stronger than merely m≥k.

### 2.4 Why a pending operand cannot simply be specialized into A [L]

A superficially attractive replacement is

```
(λx. x x) A C D⃗  ↦  (λx. x x) (A C) D⃗.
```

It is not a beta identity. `Boundary.into_A_counterexample` proves that
with A=K, C=I, D⃗=[j], the left term reduces to `λv.j` and the right to j,
two distinct normal forms. Both sources have weight 25 and exactly one j
(`counterexample_prices`). These sources are not readers; the example
refutes the unconditional rewrite, not a hypothetical theorem restricted
to minimum readers. A valid specialization of every shared call needs an
additional call-argument invariant. The independent-payload theorems of
simplify remain applicable under their stated hypotheses.

## 3. Exclusion and completeness boundary

### 3.1 Exact finite residue after the price filters [H,C]

The checked family is the whole literal-body-prefix pending family:

```
(λx. λy₁…y_h. M) A C₁…C_t,
t≥1, h≥1, 2≤uses(x)≤4, j depth d∈{0,1}, uses(x)+d≤4, w≤45.
```

No beta-normality, closed-helper or fixed-operand-shape restriction is made.
The source coefficient grammar is the existing `rootnl/grammar.py`:
exact binder-use histograms, outer-use moments, c/j counts, index tax,
literal prefix multiplicities and source-head information. Its completeness
argument and prior filters are inherited, **not newly formalized here**.
They include the established no-erasure, local weighted-beta/eta/let-sink
charges, source ownership, root-flat argument reduction, selective j repair,
and the earlier minimal-leaf exclusion. The current depth/direct-hole
closures are also hypotheses of the assembled result.

New filters in `boundary.py` are exactly:

1. Consumed prefix multiplicities are nondecreasing, from §2.2.
2. First-pending substitution is not a strict lexicographic descent, using
   §2.3, only when C₁ is j-free or its binder is linear.
3. The established depth-0 direct-hole-chain exclusion rejects a literal j
   consumed by the prefix. This is an inherited closure, not a new price.

Each coefficient constructor partitions the recorded statistics exactly.
`pending_forest` counts the first-operand cut and the surviving tail without
constructing sources. Only after that count is under the cap does
`check_prefix.py` construct the sources; it checks each coefficient's emitted
count, uniqueness and the total against the independently saved count.
This is a handwritten completeness proof plus a computer-checked inventory,
not a Lean-certified enumerator.

Before probing, the exact residual shapes are:

- k=2,d=0: t=2, h=1, uses(y₁)∈{2,3}, j in the pending forest; **4,304** sources.
- k=2,d=1: t∈{1,2}, h=1, uses(y₁)∈{2,3} (only 2 when t=2), j in A or
  the pending forest; **9,185** sources.
- k=3,d=0; k=3,d=1; k=4,d=0: **zero** coefficients after these filters.

The JSON coefficient profile records show the exact operand-leading-λ
subcells. The two nonempty (k,d) families are checked whole; they are not
pieces carved from an over-cap probe run.

### 3.2 Every residual source fails [C,L]

| k,d | Sources | Definite zero-law failures | Lean-refuted exceptions | Passes |
|---|---:|---:|---:|---:|
| 2,0 | 4,304 | 4,287 | 17 | 0 |
| 2,1 | 9,185 | 9,182 | 3 | 0 |
| Total | **13,489** | **13,469** | **20** | **0** |

The handlerlet comparator was configured for zero and unary lengths 1–3;
every source fails already on zero. A finite zero-law mismatch refutes an
all-n reader. No fuel/size/cycle result is accepted as a verdict: all twenty
exceptions have individual original-source theorems `¬Reader r` in
`Exceptions0.lean` and `Exceptions1.lean`, replaying weak-head prefix cycles.
`manifest.json` binds each theorem to its source hash. Their only axioms
are propext and Quot.sound.

**Assembled result [H+C+L]: under the current established structural and
minimum-source filters, no minimum reader below 46 has a literal λ-headed B
with t≥1 pending operands.** This includes the stream-λ-headed bodies with
pending operands other than j left open in rootnarrow. It is a result about
minima; nonminimum readers of the same source shape are not excluded.

## 4. Exact open shape and next step

After this closure and the current source-head classification, a pending
minimum can only have

```
(λx. x P₁…P_q) A C₁…C_t                    (q≥1), or
(λx. ((λy.D) E) P₁…P_q) A C₁…C_t           (q≥0),
```

with t≥1, k∈{2,3,4}, d∈{0,1}, k+d≤4, A containing a λ, and all the prior
minimum-source filters. In the first shape every x-independent suffix of
P⃗ has zero weighted outer capture; otherwise §2.1 strictly lowers weight.
Thus if j occurs in a body operand, x occurs in that operand or a later one.
Any all-closed pending prefix can be pushed under the let with exact
three-coordinate minimum transport. In particular the all-closed full-chain
case reduces to the already closed t=0 family. For an open pending operand,
plain push has positive price; for a short-chain hand-off, even a zero-price
push need not reach an already closed family.

This is the syntactic residual boundary, **not a new count or closure of
the x/nested-headed inventories**. This lane neither probes nor subdivides
the existing over-cap cells in those families. Their counts in simplify
remain applicable only with that lane's own filters; none is silently
promoted to a checked exclusion here.

My read: exchanging literal consumed binders is a strong source-level cut,
but the unresolved sharing occurs precisely before such a binder is
syntactically exposed. The next needed fact is a source-preserving,
call-sensitive specialization for an x-headed hand-off: determine when the
head invocation and the other uses receive the same pending parameter,
then price a shared specialized definition. The checked counterexample
shows why beta reassociation alone cannot provide it. No bound on expanded
head-normal-form size, and no equal-weight stream exposure, closes this gap.
The 46-reader bound and 162 optimality remain open.

## 5. Resources and reproduction

All writes are in `tmp/round4/pending/`. No cargo build, remote operation,
commit, delegation or consult-back was performed. No broad source sweep ran.
The largest source check was 9,185 terms; the largest check RSS was
691,929,088 bytes; longest check 7.67 s. Each coefficient/source-check run had one computation
thread and one watchdog, a 110-second watchdog and a 900 MB RSS cutoff.
Coefficient-only runs took at most 7.31 s and 688 MB. The final six Lean
files compiled individually at -j2/-M1800 in 0.24–0.41 s, maximum
475,742,208 bytes RSS. `verification.json` records source hashes, timings,
RSS and axiom audits. No sorry, axiom declaration or external proof oracle
is used. Early compile errors were corrected before the final pass.

From repository root:

```
python tmp/round4/pending/boundary.py 2 0
python tmp/round4/pending/boundary.py 2 1
python tmp/round4/pending/boundary.py 3 0
python tmp/round4/pending/boundary.py 3 1
python tmp/round4/pending/boundary.py 4 0
python tmp/round4/pending/check_prefix.py 2 0
python tmp/round4/pending/check_prefix.py 2 1
python tmp/round4/pending/certify.py check_2_0.json
python tmp/round4/pending/certify.py check_2_1.json
python tmp/round4/pending/export.py
python tmp/round4/pending/controls.py
python tmp/round4/pending/verify.py
```

Imports reuse existing rootlow/rootnl/handlerlet modules without editing
them. The pinned Lean toolchain is selected from `lean/`. The small
`prefix_2_0.json` file records an earlier coefficient-only exchange cut and
is not part of the final source-exclusion claim.
