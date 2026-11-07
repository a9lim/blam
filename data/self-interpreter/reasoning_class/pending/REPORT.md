# pending — priced pending-operand moves and a literal-body-prefix closure

**Partial closure. No sub-162 reader or interpreter was found.** Under the
current established minimum-source invariants, **no minimum reader of weight
at most 45 has `(λx. B) A C₁…C_t` with `t≥1` and B a literal λ**. This closes
the pending-operand extension of the stream-λ-headed root bodies left open by
rootnarrow. The nested-redex-headed extension is closed in §6.3; one full x-headed
cell is closed in §6.4, while the general x-headed hand-off remains open.

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

## 6. Follow-up: common call arguments and complete nested-head closure

**The nested-redex-headed root branch is closed under the inherited
minimum-source filters. The x-headed branch remains open.** This supersedes
§4's nested-head boundary. No new reader or interpreter was found; neither
the 46-reader bound nor 162 optimality is proved.

### 6.1 What NeededHead supplies, and the stronger useful invariant [L]

`SelfintNeededHead.minimum_forget_fails` says that replacing **all** non-head
uses of x together by the nearest outer variable must break some full
reader law in a minimum. Its quantifier is joint. It does not say each use
is individually necessary, that each use is already applied at its source
position, or that different uses receive equal arguments. In particular,
`B=x x` contains a bare non-head use; a dynamic invocation of that value is
not a source occurrence `x P` with a known independent P.

There is a strict descent once a common source argument is established.
Let D be a scoped template with k uses of a fresh shared variable z, and
let P be a root-scoped argument independent of x. Replace **every** z leaf
of D hygienically by `x P`. Arbitrary lambdas and internal redexes in D and
P are permitted. Then

```
R = (λx. D[x P/z]) A C⃗
S = (λz. D) (A P) C⃗,
R =β S.
```

Put `q=sum of the lambda depths of z in D` and `F(P)=#c(P)+4#j(P)`.
The exact saving is

```
w(R)-w(S) = (k-1)(w(P)+2) + F(P)(k+q),
L(R)-L(S) = (k-1)L(P).
```

The k source copies of P become one; A remains once. If R has one source
j and k≥2, P necessarily has no j, so S still has one source j. The source
scope and both laws at every unary length transfer, and the weight saving
is strictly positive. `Uniform.lean::{uniform_contract,uniform_join,
uniform_price,uniform_occ,uniform_lambdas,uniform_laws,
uniform_no_minimum}` kernel-check the statements. Scope premises are
explicit: D is in frame `[z,c,j]`, P in `[c,j]`.

For example, `(λx.(x I)(x I)) A C⃗` specializes to
`(λz.z z)(A I) C⃗`, saving six weight units. This is a source factoring
identity, not the invalid pending-operand reassociation of §2.4.

The exact syntactic obstruction to this particular move is now explicit:
at least one source use is bare, the first arguments differ, or a first
argument depends on x or on a local binder that cannot be extracted as the
same root-scoped P. Even a common *dynamic* argument would require a
separate proof that these source replacements are valid. NeededHead does
not supply that proof. Simplify's dependent-payload reconstruction also
cannot fill the gap: its kernel-checked uniform overhead is positive.
No numerical cut for the new Uniform theorem is claimed on an over-cap
inventory.

### 6.2 Flattening independent nested definitions [L]

Write a nested-head source as

```
R = (λx. ((λy.D) E) P⃗) A C⃗,
```

and suppose x is absent from E. Let `kD=uses_x(D)`,
`kP=uses_x(P⃗)`, `m=uses_y(D)`, and let FE/FP count the weighted external
c/j leaves of E/P⃗, excluding x. A prime means hygienic binder adjustment.
Two endpoints have literal-lambda-headed root bodies:

```
Fxy = (λx y. D P⃗′) A E↓ C⃗,
Fyx = (λy x. (D P⃗′)swap) E↓ A C⃗.
```

Their exact coordinate differences from R are

```
Δw_xy = kP + FP - FE,
Δw_yx = m - kD + FP - FE,
ΔL_xy = ΔL_yx = 0,
Δdepth_j_xy = Δdepth_j_yx = #j(P⃗)-#j(E).
```

Every source occurrence of j is preserved. `Nested.lean` checks both beta
joins, scope, all-length law transport, the prices, lambda counts and hole
depths. Combining either endpoint with the previous literal-prefix floor
works precisely when its weight decreases, or its weight ties and
`#j(P⃗)≤#j(E)`. In the latter case all three coordinates are nonincreasing,
so a global minimum transports. The `LiteralPrefixFloor` premise is
explicit; the earlier handwritten/computer inventory closure has not been
turned into an axiom or represented as a Lean-certified enumerator.

Consequently, if P⃗ is empty, every independent E is covered, including a
closed E at an exact three-coordinate tie. More generally the cut is

```
min(kP,m-kD)+FP-FE < 0,
or equality and #j(P⃗)≤#j(E).
```

This is not a universal free interchange. If x occurs in E, the downward
shift E↓ is unavailable. Displaying the inner redex beneath x does not
remove this dependency. If E is independent but the displayed price is
positive, or it ties and deepens j, these two moves do not transport the
minimum. The complete finite checks below handle both kinds of residual;
no unproved claim that every nested source can be flattened cheaply is used.

### 6.3 Complete residual nested-head checks [H,C,L]

The coefficient recurrence `nested_count.py` refines the inherited rootnl
syntax grammar along the body's application spine. It records
`(uses_x(E),m,kD,kP,FE,FP,#j(E),#j(P⃗),depthsum_y(D),length(P⃗))`, and checks
that summing the new tags recovers every old coefficient exactly. It builds
no source terms. Every whole (k,d) nested-head family was under 100,000
**before** the new price cut, so none is a shard of an over-cap check.
The pending outer spine C⃗ may be empty.

| k,d | Before | Price cut | Residual checked | Finite mismatches | Lean exceptions | Open |
|---|---:|---:|---:|---:|---:|---:|
| 2,0 | 53,867 | 1,174 | 52,693 | 51,099 | 1,594 | 0 |
| 2,1 | 18,683 | 543 | 18,140 | 18,008 | 132 | 0 |
| 3,0 | 48,583 | 110 | 48,473 | 47,146 | 1,327 | 0 |
| 3,1 | 14,970 | 96 | 14,874 | 14,680 | 194 | 0 |
| 4,0 | 12,011 | 0 | 12,011 | 11,681 | 330 | 0 |
| Total | **148,114** | **1,923** | **146,191** | **142,614** | **3,577** | **0** |

All finite mismatches are at zero except one at unary length one. Every
cycle, cutoff or recursion exception has an individual original-source
`¬Reader r` theorem in `NestedExceptions00` through `NestedExceptions11`.
The certificates comprise 3,372 head-prefix loops, 156 missing rigid leaves,
four lark instances, one template instance, 36 mixed cycles and eight owl
application trees. The last eight reuse rootnl's generic owl theorem with
explicit original-source beta replays. `nested_manifest.json` binds every
exception index and source hash to its checked theorem.

Before those probes, the uncheap independent-E counts were respectively
1,313, 48, 576, 22 and 28; every other residual had x in E. Thus the
closure does not depend on overlooking dependent nested definitions.

**Assembled statement [H+C+L]: no minimum reader with weight≤45, two to
four root uses, j depth≤1 and k+d≤4 has a nested-redex-headed root body,
with or without pending operands, under the current inherited structural
and source-minimality filters.** Completeness remains the inherited grammar
argument plus coefficient/generator agreement, not a theorem about an
exhaustive Lean enumerator. The k=4 nested subfamily also overlaps an earlier
rootnl closure; it is not new mass to add to that lane's totals.

### 6.4 The newly under-cap x cell and exact over-cap boundary

Simplify's already-proved cuts bring the natural cell
`(k,d,location,t,h)=(2,0,Cs,3,1)` from 113,874 to **98,442** sources.
`x_check.py` applies those cuts to coefficient blocks first, verifies the
98,442 count, and only then generates the whole surviving cell. It does not
construct the larger pre-cut family. The complete check has **86,081** finite
zero mismatches, **12,361** normalizer exceptions and no finite-probe survivor.

**This cell is closed under its existing coverage and minimum-source
filters.** Its normalizer exceptions comprise 12,310 original-source
refutations in the archived modules and 51 unbounded symbolic exclusions
in `lean/Blc/SelfintRootLet*.lean`.

The first group comprises 10,233 short prefix loops, 33 missing-leaf proofs,
150 longer head/strict-argument certificates, three replicator instances,
1,104 mixed cycles, and 787 flow annotations (775 after a weak-head prefix,
12 after internal beta developments). `x_manifest.json` records that
source/theorem correspondence.

The other sources have twelve literal let cores, all with `B=x x`.
`X_REMAINING.tsv` and `X_REMAINING.json` retain their exact sources, exception
indices and hashes; their filenames identify the fixed archive, not current
open status. `Blc/SelfintRootLetPending.lean` contains every literal AST,
its exact equality to a symbolic theorem instance, and an aggregate
non-reader theorem. The companion
`tools/self-interpreter/theory/rootlet_pending.py --check` verifies the
archive hash, each AST hash, the complete index set, and deterministic
regeneration. It generates no candidates and supplies no semantic verdict.

The symbolic families use diagonal-power collapse, finite-clock orbit
invariants, positive-head self-embedding, advancing cycles, identity
peeling and duplication, hereditary forcing, and a binary helper orbit.
They permit unbounded reduction and arbitrary stated pending operands.
Their proofs supply the exclusions; none relies on an exhausted cap.
The complete cell exclusion still uses the recorded finite coverage and
minimum-source filters above, not a newly verified Lean enumerator.

The remaining over-cap x cells after simplify's explicit coefficient rules
are exactly:

| k,d | j location | t | A's leading λ count h | Residue |
|---|---|---:|---:|---:|
| 2,0 | Cs | 2 | 1 | 361,096 |
| 2,0 | Cs | 1 | 1 | 681,409 |
| 2,0 | Cs | 2 | 2 | 153,588 |
| 2,0 | Cs | 1 | 2 | 216,772 |
| 2,1 | A | 0 | 1 | 183,197 |
| 2,1 | B | 0 | 1 | 112,402 |
| 3,0 | Cs | 2 | 1 | 120,590 |
| 3,0 | Cs | 1 | 1 | 273,802 |
| Total | | | | **2,102,856** |

`x_overcap.json` records these exact rule-relative counts. They are not an
exact count after every imaginable specialization, and the Uniform theorem
has not been coefficient-counted there. No source from these cells was
constructed or probed. Other previously untested under-cap x cells are not
silently closed by this report; this follow-up's x check is the one newly
licensed natural cell above. The general x-headed minimum remains open,
including both differing call arguments and bare shared uses.

### 6.5 Verification, reproduction and evidence boundary

The archived finite check used no engine verdict as proof. The symbolic
correspondence and exclusion modules are in the main Lean library. `Flow.lean` is an
exact local copy of rootcert2's proved flow checker, recompiled here so the
annotation proofs can import it; it is not a new flow theorem.

`followup_verification.json` audits source hashes, source-to-theorem coverage,
all compiler statuses, resource measurements and the inherited input hashes.
The largest whole source check is 98,442 terms, 57.33 seconds and 732.3 MB
RSS. Nested checks use at most 52,693 residual sources, 9.47 seconds and
703.8 MB. Each computation uses one worker plus one watchdog; no source
check exceeded the hard caps.

All final Lean modules passed at `-j2 -M1800`, with a maximum of **5.77 s**
and **1,761,214,464 bytes RSS** per file. An initial combined flow-proof file
hit Lean's configured memory limit at 1.91 GB and was rejected; the twelve
new development proofs were then emitted separately and all passed. This
is proof-artifact partitioning after the same fixed source check. Generated
refutations use only `propext` and `Quot.sound`; generic minimum transport
also uses `Classical.choice`. No sorry, new axiom or external proof oracle
is accepted. `Closed.lean` additionally checks a generic closed-instance
cycle transport; it discharged none of the final open cases.

The original positive controls already exercise the same handlerlet
comparator at zero and lengths 1–8, including the weight-40 unary near miss.
All generated exception proofs use the weaker zero/one `Reader` predicate;
refuting it refutes the full all-length laws. Proof-file partitioning occurs
after a compliant whole source check and is not source-inventory sharding.

Reproduction, from the repository root, using one (k,d) pair at a time:

```
python tmp/round4/pending/nested_count.py K D
python tmp/round4/pending/nested_check.py K D
python tmp/round4/pending/certify.py check_nested_K_D.json
python tmp/round4/pending/nested_families.py cert_nested_2_0.json
python tmp/round4/pending/nested_families.py cert_nested_3_0.json
python tmp/round4/pending/nested_mixed.py family_nested_2_0.json
python tmp/round4/pending/nested_mixed.py family_nested_3_0.json
python tmp/round4/pending/nested_owl.py mixed_nested_2_0.json
python tmp/round4/pending/nested_owl.py mixed_nested_3_0.json
python tmp/round4/pending/export_nested.py
python tmp/round4/pending/compile_one.py MODULE
python tmp/round4/pending/verify_followup.py
```

K,D range over `(2,0),(2,1),(3,0),(3,1),(4,0)`; MODULE ranges over Nested,
Uniform and `nested_modules.json`. The x-cell scripts and manifests retain
its complete checked inventory and certificate chain separately. The
remaining proof obligation is an exhaustive economical interface for
nonuniform shared calls. Neither NeededHead's joint necessity nor the
positive-cost dependent reconstruction supplies that implication.
