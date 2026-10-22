# rootnl — stronger root prices, semantic cuts, and 658 priced four-use exceptions

**Partial result. The nonlinear root-let case is not closed, and 162 optimality
is not proved.** No reader of weight at most 45 was found. The four-use,
depth-zero branch is reduced to **658 explicitly listed sources**, over 93
literal helpers. Its complete checks refute 149,789 sources finitely and
**38,271 normalizer exceptions individually in Lean**. The remaining 658
exceptions are unresolved, not failures.

For the smaller multiplicities, new semantic cuts reduce the inherited
count-only envelopes from **7,959,195 to 4,126,214** sources in total, before
applying the four-use probe results. Ten natural cells still exceed 100,000;
none was constructed, probed, or split into artificial batches. The smaller-
multiplicity envelopes were counted only, including their under-cap cells.

Labels: **[L]** kernel-checked; **[H]** handwritten proof; **[C]** finite
computation. A minimum means a global minimum over the full, all-unary-length,
one-source-j reader laws, ordered by **(weight, source lambda count, hole
depth)**. No finite-probe minimum is substituted for that order.

## 1. Complete interpreters and controls

None built. No splice, interpreter battery, polish, or sub-162 claim.

`controls.json` records the actual checker accepting the existing 162 and
165 readers at weights 46 and 49 on zero and lengths 1–8. It also accepts
rootnf's copied-hole source at weight 52. The weight-40 near miss passes zero
and fails unary. These are implementation controls, not new all-n proofs.

## 2. Exact identities and semantic cuts

### 2.1 Unconditional Lift transfer [L]

For

    R = (lambda g s.B) A,
    R' = lambda s.(lambda g.B_swapped) A_shifted,

both laws and the one source hole are preserved, and

    w(R') - w(R) = uses_s(B) - uses_g(B) + c(A) + 4*j(A).

`Prices.lift_family_floor` proves: if an arbitrary family F has the
**unconditional** reader floor 46 and R' belongs to F, then

    w(R) >= 46 - uses_s(B) + uses_g(B) - c(A) - 4*j(A).

The family floor is an explicit theorem parameter. This uses the existing
checked Lift identity; it does not claim that every lambda-rooted reader has
an unconditional floor or that a weight-neutral lift is another minimum.

For a whole prefix `(lambda x y1...yt s.M) A C1...Ct`, rootlow's exact
exposure charge is used unchanged. When t is 0 or 1 and A is literally
`lambda y.y D W`, the exposed reader is in shared's P1/P4. Applying their
no-minimality floors closes **1,048 coefficient-counted sources** in the
(k,d)=(2,1) envelope. No site theorem is imposed on arbitrary hand-offs.

### 2.2 Stronger copied-hole repair [H semantic replay; L exact prices]

The firstopj repair extends to root readers and arbitrary exposed endpoints.
Colour every residual source j separately. The generic zero output has one
surviving colour; every other colour and all its residuals are erased on
zero and at every unary length. Keep that one source colour. Replace each
other source j by the nearest bound variable, or by c at depth zero.

Why this preserves all laws: replay the original finite beta reductions.
A rigid coloured leaf contains no contracted redex; contractions elsewhere
remain available after replacement, and the contraction erasing each residual
also erases its replacement. Replacement terms follow their original lexical
binders through substitution. The surviving colour is chosen once from zero,
not separately for different unary lengths. This is the inherited scoped
residual-replay argument, not a normalization assumption about the source.

Every replacement costs exactly 2. Thus a discarded hole at absolute depth h
saves **4h−2**, improving rootlow's c-replacement saving 3h−2. For an exposed
endpoint T and repaired one-hole endpoint U,

    w(U)-w(R) = total_beta_expansion - 4*sum(discarded_depths)
                                      + 2*number_discarded.

`Prices.Pruned`, `prune_price`, `prune_holes`, `prune_lambdas`, and
`endpoint_price` kernel-check the syntax relation and these identities.
They do not assert existence of a law-preserving repair: that remains [H].
For a beta-normal endpoint, repair stays normal, so the established normal
reader floor gives

    W(T) >= 46 + sum_discarded(4h-2).

This is still a **lower** bound on the endpoint. It does not bound what the
head reduction adds. Rootnf's 52-weight copied-hole witness repairs to the
canonical 46 reader using the absorber's variable; replacing by c gave 48.

For the source root redex `R=(lambda x.B) A Cvec` with its unique j in A,
let k=uses_x(B), M=sum of their depths, f=c(A), b=c(B), d=depth(j), and e the
depth of the retained x occurrence. The exact repaired contraction price is

    D_e = (k-1)*(W(A)-4d) + (f-1)*M + 4e - 6 - b.

`Prices.root_selective_price` proves this with explicit scope/count equations,
retained-copy depth equations, and a Pruned witness. The lambda-count change
is `(k-1)*L(A)-1`. A minimum needs D_e>=0; at a tie that lambda change cannot
be negative. The coefficient grammar conservatively substitutes
`e <= min(M,L(B))`. It never assumes that the deepest copy actually survives.
The same calculation is used locally, counting all ordinary outward captures
in f and b. Nonlinear hole-copying lets are not subjected to the ordinary
one-hole contraction rule.

### 2.3 Self-feeding helpers cannot hand off [L]

Let

    A = lambda z.z D Qvec,

where D is any nonempty application tree over z. Every nontrivial application
tree over A, with arbitrary pending arguments, has **no weak-head normal
form**. A and Qvec need not be closed or normal.

Proof: a call `A T` head-contracts to `T D[T/z] Qvec[T/z]`; T and D[T/z]
remain application trees over A. Strong induction on a supposed finite
weak-head clock, with structural descent through a function subtree, gives
an infinite decrease. `Replicator.no_count` and `no_nf` check this for arbitrary
D and Qvec. This specializes shared's self-feeding principle with an explicit
finite-clock proof.

The coefficient boundary recognizes a conservative syntactic subfamily,
including literal first self arguments and pieces known entirely to be pure
variable application trees. It excludes **173,314** sources without evaluating
a reader probe.

### 2.4 Strict contexts transport helper divergence [L]

A literal `G=lambda z.z Qvec` demands its argument's weak-head normalization:
one head beta step yields that argument at the head, with pending payloads.
Thus head divergence propagates through `G []` and through function-position
application. Finite beta replay preserves the obstruction backwards.

`Strict.Bad` combines those operations with a checked head step followed by a
finite beta return to the same head prefix. `bad_no_count` proves soundness;
`reject` applies it to an original reader's zero probe. This does **not** infer
divergence from a loop in an arbitrary irrelevant argument.

Five small helper self-application cycles then refute **145 original sources**
that the earlier head walks missed. All have individual Lean statements in
`StrictCases0/1.lean`. This check used 30 helpers, 25,862 rewrite states and
20,528 structural states, about 1.15 seconds.

### 2.5 Forced prefix uses and inherited closures [H/C, existing L prices]

If B has p literal leading lambdas, the first min(p,t) pending Ci are certainly
consumed by those binders. A vacuous binder makes its Ci dispensable, so a
minimum has Ci literally c; a Ci containing the only j cannot be erased.
At depth zero, literal j consumed by this B-prefix is excluded by the root
lane's head-chain result, at every multiplicity. That theorem is **not**
applied to a copied binder inside A.

For x-headed B, a vacuous binder in A's leading chain similarly forces its
corresponding source B operand to be the nearest, two-bit variable. The count
also uses the already closed full-chain and Delta-root h=2 families, source
eta, the L=3,V=k+5 exclusion, exact local contraction prices and local lambda
sinking. All inherited hypotheses remain global minimum hypotheses.

## 3. Counts, complete checks, and exact remaining boundary

### 3.1 Count grammar and completeness boundary

`grammar.py` extends rootlow's coefficient recurrence. It records exact binder
uses and depth moments, lambda-use histograms, c/j counts, index tax, leading
lambda chains, head/operand features, and local prices. Variable, lambda,
application, and pending-forest constructors partition the original source
syntax. No beta-normality or independent-role assumption is imposed.

`generate.py` constructs only positive feature blocks of a pre-counted natural
cell and asserts their cardinalities. Structural induction gives the [H]
completeness argument; the Python enumerator is **not certified complete in
Lean**. `audit_grammar.py` independently generates all 12,775 raw component
terms through cost 18 in the audit frames, comparing actual contracta and
explicit alternative hole repairs: exact equality of retained syntax sets.

The semantic boundary is counted without source construction:

| k | d | rootlow envelope | rootnl envelope before probes |
|---:|---:|---:|---:|
| 4 | 0 | 319,867 | 174,568 |
| 3 | 1 | 461,751 | 244,444 |
| 3 | 0 | 1,475,233 | 716,070 |
| 2 | 1 | 1,396,400 | 764,568 |
| 2 | 0 | 4,305,944 | 2,226,564 |

`boundary_K_D.json` contains every natural cell and its exact weight/lambda
count distribution. These are necessary envelopes, not numbers of readers.

### 3.2 Four-use branch: 658 literal unresolved sources

The complete checks deliberately retain the larger 188,718-source envelope
before the last self-feeding/full-chain count cuts. Its 31 natural cells are
indexed by j location, B head type, pending arity, and A's literal chain length.
The largest whole cell has 84,951 sources; none was split by an arbitrary
counter or weight interval.

| Result | Sources |
|---|---:|
| Definitive finite zero-law failure | 149,789 |
| Individual original-source Lean refutation | 38,271 |
| Explicit unresolved exception | 658 |
| Total | 188,718 |

All 24 cells with no unresolved source are closed under the inherited minimum
hypotheses. The seven open cells all have j in pending operands, B x-headed,
and A a literal lambda chain. In particular, in this four-use branch the
j-in-A and nested-head-B subfamilies are excluded; lambda-headed B has zero
retained coefficient count under the source cuts. Every unresolved source
has weight 42–45 and three to five source lambdas.

`SURVIVORS.tsv` and `SURVIVORS.json` list all 658 exact original sources, their
weights, helper prices, c counts, occurrence-depth moments, root contraction
prices, pending arities, and source/check references. `ARGUMENTS.tsv` groups
all 93 helpers by exact price. The source list is an over-envelope of genuine
remaining minima; it may still include inherited exclusions not applied to
this larger checked inventory.

No unresolved normalizer outcome is counted as a failure. Therefore this is
**not a complete four-use exclusion** and does not satisfy complete exception
closure for its seven remaining cells. It is a priced, reproducible remainder.

### 3.3 Explicit over-cap cells, counted only

Notation: location Cs = pending operands; h = A's leading-lambda count;
t = number of pending operands. Every row below retains arbitrary internal
redexes. The obstruction is source sharing in a short-chain hand-off; for the
lambda-headed B row, Lift's positive offset is still unpriced.

| k,d | j location | B head | t | h | Count |
|---|---|---|---:|---:|---:|
| 3,0 | Cs | x | 2 | 1 | 126,994 |
| 3,0 | Cs | x | 1 | 1 | 277,140 |
| 2,1 | A | x | 0 | 1 | 184,004 |
| 2,1 | B | x | 0 | 1 | 112,402 |
| 2,1 | A | lambda | 0 | 1 | 141,728 |
| 2,0 | Cs | x | 2 | 1 | 399,084 |
| 2,0 | Cs | x | 3 | 1 | 113,874 |
| 2,0 | Cs | x | 1 | 1 | 716,476 |
| 2,0 | Cs | x | 2 | 2 | 201,140 |
| 2,0 | Cs | x | 1 | 2 | 254,812 |

No lower-multiplicity source was constructed or probed. The other, under-cap
lower-multiplicity cells are also untested, rather than silently treated as
closed. Their exact counts are in the same boundary files.

### 3.4 Verification, limits, and reproduction

`verification.json` verifies the full finite/kernel/unresolved partition,
source hashes, all theorem-log entries, Lean module hashes and successful
resource results. **117 Lean files** pass; the largest takes **9.81 seconds**
and the largest sampled RSS is **803 MB**, at -j2. Axiom audits contain no
sorryAx or new axiom.

Every source check has at most 84,951 terms, at most **95.72 seconds** and
**87 MB**, one compute thread plus a watchdog. After the first eager-NF checks,
the checker compares weak heads recursively with the rigid target, rejecting
permanent head/arity/constructor mismatches early. Controls validate this
comparison. Count-only runs take at most **9.96 seconds / 687 MB**. Certificate
discovery has explicit state caps; reaching one retains the source as open.
No long sweep or engine build was performed. Some early Lean drafts failed;
only the corrected, successful final modules enter verification.

From the repository root, with PYTHONDONTWRITEBYTECODE=1:

    python3 tmp/round4/rootnl/grammar.py 4 0
    python3 tmp/round4/rootnl/run_cells.py 4 0
    python3 tmp/round4/rootnl/run_certs.py 4 0
    python3 tmp/round4/rootnl/export.py
    python3 tmp/round4/rootnl/run_proofs.py
    python3 tmp/round4/rootnl/run_families.py
    python3 tmp/round4/rootnl/run_prefix.py
    python3 tmp/round4/rootnl/run_mixed.py
    python3 tmp/round4/rootnl/strict.py
    python3 tmp/round4/rootnl/catalog.py
    python3 tmp/round4/rootnl/validate.py

`export_more.py`, `export_mixed.py`, `export_strict.py`, and `run_limited.py`
reproduce the subsequent proof sources/checks. Replay uses the saved finite
certificates; heuristic rediscovery is unnecessary. `PRE_STRICT.json` pins the
803-source input of the final semantic certificate pass. Run `boundary.py K D`
for each of the five count rows. All writes are in this lane; no tracked edit,
commit, consultation-back, delegation, cargo build, or engine run occurred.

## 4. Honest read and next proof step

The useful gains are semantic: stronger hole restoration, an unconditional
Lift bridge, self-feeding exclusion with arbitrary payloads, and strict-context
transport. They do not establish the missing upper bound on pre-stream
expansion. The normal-form floor still points in the wrong direction for
that inference, even after improving the repair savings.

The next concrete proof target is the 93-helper catalogue in ARGUMENTS.tsv.
Its unresolved sources are concentrated in shallow self-application helpers;
parameterized weak-head-clock invariants, and extending strict-context
transport beyond a literal bound-variable head, can close families once
instead of expanding each reader separately. For k=2 and k=3, price which
source binder eventually receives the stream and j, while retaining the
shared argument only once. The ten count-only cells above show exactly where
that theorem is still needed. Larger fuel or artificial cell slicing would
not supply it.
