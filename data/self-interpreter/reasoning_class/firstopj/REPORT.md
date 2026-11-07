# Firstopj — wave 5

**Closed under the stated global minimum hypothesis.** No globally minimum
full-law one-hole reader of weight at most45 and source-j depth1 has the form

    R = lambda s. s H T1 ... Tq,

where H contains j and is not a literal lambda. In particular, this closes
the assigned case where H has a beta-redex on its head path. The stronger
statement also uses the inherited beta-normal-reader exclusion and
firstop's already checked bare-j argument case.

Minimum means minimum over ALL full-law one-hole readers, ordered by
(weight, source lambda count, source-j depth), not minimum in this family.
The result is a **handwritten source/replay proof plus complete Python
inventories, with every normalizer exception individually kernel-refuted**.
It is not a monolithic Lean exhaustion theorem, an unconditional reader
floor46, or an unconditional162-bit interpreter lower bound.

## 1. Complete interpreters and positive controls

No complete interpreter was built. No splice, battery, or polish was run;
there is no new interpreter bit count or battery line.

`controls.py` checks the known162 reader at weight46 on zero and n=1..8.
It also checks this weight102 reader in the assigned source shape:

    lambda s. s
      ((lambda x. lambda b r. s I (lambda u. s (lambda q.c) (s s u)) x)
       (s K j (s s s))).

This is an exact all-n control by the known cell identities: its let
argument is j on zero and N on unary; the dummy b,r binders consume the
outer cell's two arguments; then the162 wrapper forwards j on zero and
erases its last argument on unary. It is not a new algorithm. The finite
control and source weights are in `controls.json`.

## 2. Exact identities and source prices

### 2.1 Selective restoration after duplicating the hole

Let R=C[(lambda x.D) A], where the marked redex has context depth1 and
A contains the unique source j at local depth0. Define

    m = occurrences of x in D,
    M = sum of those occurrences' depths inside D,
    a = raw wire(A),
    F = occ_s(A) + occ_c(A),
    G = occ_s(D) + occ_c(D),
    L_A = lambda count(A), L_D = lambda count(D).

Contract JUST this source redex. There are m source j leaves in its
contractum. On the zero run exactly one of those source leaves has a
residual surviving in r j. Choose it, and let d be the depth of its
originating x occurrence in D. Every other source j leaf is erased on
zero and on every unary run. Replace each of those other leaves by the
nearest bound variable at its source position. The outer stream binder
ensures such a variable exists. Call the resulting one-hole source U.

**Replay proof, handwritten.** Label the m source j leaves distinctly
and replay a finite reduction to the rigid required output. Exactly one
label occurs in the zero output, and no label occurs in any unary output.
Every other labelled leaf and all its residuals are erased. Replacing
those leaves by arbitrary terms in their local scopes replays the same
contractions: no contracted redex occurs inside an original rigid leaf,
and a contraction erasing its residual also erases its replacement.
Thus U obeys the zero law and EVERY unary law. The retained source label
is chosen from the one generic zero probe; it need not be chosen afresh
for a unary length. This is the same residual-replay principle as the
inherited let-bound-j copy lemma. It replaces only the j leaves, not whole
copies of A: those copies' s/c computations can remain needed.

The exact original-source weight change is

    w(U)-w(R) = S
      = (m-1)a + (F-1)M + 4d - 2 - 4m - G.             (S)

Proof by accounting: raw beta contraction costs
`(m-1)a + F M -4-2m-G`. The retained hole at total depth1+d has
weighted-minus-raw surcharge3d. The discarded holes at depths1+d_i
save `sum(d_i+2) = M-d+2(m-1)` upon replacement by two-bit variables.
Subtract and simplify. The lambda-count change is `(m-1)L_A-1`.

Consequently a global minimum satisfies S>=0, and S>=1 when m=1 or L_A=0.
For a necessary syntactic filter, use

    d <= dmax := min(L_D,M).

Replacing d by dmax only increases S. If even this relaxed value fails,
no choice of the surviving occurrence is possible. The inventories use
this conservative bound; they do not assume that the deepest occurrence
actually survives.

**Kernel boundary.** `Selective.lean` defines a concrete syntax relation
`Pruned`, proves its exact weight, hole-count and lambda-count identities,
and proves `selective_context_price` for arbitrary source contexts and
terms satisfying the displayed scope/count equations and a `Pruned`
witness. `FirstopJPrices.selective_price` checks the scalar calculation.
The existence of a law-preserving witness via replay remains handwritten;
`replay_price_nonnegative` explicitly assumes its reader laws. No semantic
premise is hidden inside an arithmetic theorem.

### 2.2 The inherited hoist price and its strict ties

Independently, contracting the marked redex and root-hoisting all j copies
has exact change

    H = (m-1)a + F M -3m -s_D +c_C +m*c_A.             (H)

This is firstop's kernel-checked contextual price. H>=0 in a minimum.
`FirstopJPrices.strict_hoist` strengthens it to H>=1 whenever m=1 OR
L_A=0: contraction followed by hoisting then preserves lambda count,
while equality would lower j's depth from1 to0. The extra third-coordinate
`DepthMinimum` hypothesis is explicit. The repository's
`LexMinimumReader` alone does not contain that coordinate.

The direct j-in-A cells use both (S) and (H). Internal j-bearing redexes
inside A or a pending operand use (S); not imposing their additional
contextual hoist constraints only enlarges the checked family.

### 2.3 Ordinary lets and rigid shields

Every j-free redex `(lambda x.B) A` in any component must have m>0 and

    Delta = (m-1)|A| + (freeLeaves(A)-1)occDepth_x(B)
            -4-2m-freeLeaves_other(B) >=0.

Equality with lambda-free A is forbidden by the lambda-count tie-break.
These are the inherited arbitrary-context source-price results. No
multiplicity2..5 assumption from j-free FIRST OPERANDS is reused here:
internal lets have arbitrary positive multiplicity. The generic j-free
recurrence conservatively retains equality for a linear let with lambdas
in A, even though such a tie is also forbidden; this cannot lose a reader.

If the sole source j is inside a syntactically c-headed spine, or is the
head of an application, no residual can become the bare j in r j. A rigid
head cannot lose one of its arguments by beta reduction. Erasing that
spine loses all its j residuals instead. These elementary zero-law shields
are the only rigid-leaf exclusions in the j-bearing operand grammar.

### 2.4 Whole-source budgets and head exhaustion

Every ancestor of j below the stream lambda is an application. Thus the
first operand cannot hide its j inside a literal-lambda body. Flatten H's
left application spine. A rigid c/j head fails the zero law. The remaining
source heads give exactly these alternatives:

1. `H=((lambda x.D) A) P1...Pp`, j inside A. D, all P_i and all T_i are
   j-free. If A=j, use firstop's inherited closure. Otherwise a>=8.
2. The same head let, but j is in one of P1...Pp. Then p>=1, A and D
   are j-free; j cannot be in D because that would give source depth>=2.
3. `H=s P1...Pp`, p>=1, with j among the P_i.

Let `t=p+q` and `v=sum|P_i|+sum|T_i|`, using raw wire costs, including
four bits for the one j at depth1. The exact source prices are

    cases1/2: w = 10+a+|D|+2t+v,
    case3:   w = 8+2t+v.

In case1, v>=2t, a>=8, |D|>=2 and |D|+2>=4m, so t<=6 and m<=7.
`FirstopJPrices.direct_ceilings` checks these safe ceilings. In case2,
v>=2t+2 and a,|D|>=2 give t<=7. In case3, v>=2t+2 gives t<=8.
All larger arity cells are therefore impossible by source accounting.

For case1 with p=0 and D a literal lambda, sinking the let below that
lambda has change `F+4+occ_b(B)-m`. Negative values violate minimality;
equality is retained, because the hole becomes deeper. This is the
j-bearing version of firstop's exact sink identity, not an invalid use
of the strict j-free-handler inequality.

A beta-normal source is excluded by the inherited result. For case3 we
therefore keep only sources containing at least one source beta-redex.
This is a test of literal syntax. We never normalize a reader source,
assume it has a normal form, or transfer a normal-form lower bound through
a sharing contraction.

The inherited reification surcharge `18+2F_Q+6 occ_j(Q)` is consistent
with this accounting but supplies no free domination: a j-bearing Q
pays24+2F_Q before contractions. The stream case is counted at its original
price instead. Likewise, the zcore one-site/closed-anchor constraints
remain valid, but the inventories need no additional site pruning; they
include sources those constraints could further exclude. No duplicated
handler call is presumed to be a distinct source dispatch site.

## 3. Complete finite exclusions and kernel certificates

### 3.1 Exhaustion argument

The mathematical completeness argument is constructor induction:

- A variable has its actual de Bruijn index price. A lambda adds two and
  extends the lexical frame. An application adds two and considers every
  ordered cost split.
- The j-free state stores lambda count, every outward variable's
  multiplicity and depth sum, the syntactic head, and a literal root
  lambda's parameter profile. These determine the ordinary local redex
  charge exactly. A/D/T pieces are not required to be beta-normal.
- The j-bearing state has exactly one j at local depth0, so it is j itself
  or an application with j in exactly one child. Its other child is any
  admissible j-free term. Lambda nodes cannot enclose j. Each j-bearing
  root redex uses the conservative selective filter from section2.1.
- Every pending list considers all ordered costs, continuation counts, and
  positions of j. In the pending and stream families j is restricted only
  to one of the inner P operands, as required by H containing it.
- The head alternatives in section2.4 exhaust H. Source c must occur in
  some component; otherwise the unary law cannot produce c.
- Each generated feature block has its cardinality checked against the
  independently memoized count. Every emitted original source has its
  full price recomputed. Exact source-tree equality deduplicates within
  the cell; in these runs there were no duplicates.

For the stream family, `normal_count.py` computes the exact syntactically
beta-normal subset of the same grammar. The total relaxed pool contains
7,278,165 layouts; it was counted, never generated or evaluated. Boolean
constructor recurrences generate only the107,782 sources containing a
redex, using total minus normal counts at every state. This is the source
case split normal/redex-present, not a normal-form argument. The inherited
beta-normal exclusion covers the omitted sources.

`validate.py` independently enumerates all21,855 ordinary terms through
20 bits in frames of size2 and3, checks local admissibility by ACTUAL beta
contraction, and matches all8,902 admitted terms to the count recurrence.
It separately enumerates1,681 depth-zero j-bearing terms through20 bits,
matching all178 admitted terms. For every applicable marked redex it
contracts the syntax, explicitly replaces each alternative set of j
copies, and compares the weight/lambda changes to (S):95 exact price
checks pass. This validates the implementation; constructor induction and
the replay argument supply the large-domain completeness proof.

### 3.2 Every source cell

All counts below are distinct original sources. Each row is one check;
no row exceeds100,000. At t=0 the direct j-argument family is split by the
genuine linear/nonlinear source alternatives. Other rows group all
inner/outer pending-operand splits of one total arity.

| Source family / cell | Sources | Wrong zero NF | Wrong n=1 NF | Lean-refuted exceptions |
|---|---:|---:|---:|---:|
| j in nontrivial A, t=0, linear | 31,517 | 31,406 | 111 | 0 |
| j in nontrivial A, t=0, nonlinear | 76,787 | 76,779 | 6 | 2 |
| j in nontrivial A, t=1 | 68,906 | 68,857 | 45 | 4 |
| j in nontrivial A, t=2 | 22,845 | 22,845 | 0 | 0 |
| j in nontrivial A, t=3 | 3,756 | 3,756 | 0 | 0 |
| j in nontrivial A, t=4 | 230 | 230 | 0 | 0 |
| j in pending P, t=1 | 53,819 | 52,861 | 2 | 956 |
| j in pending P, t=2 | 43,146 | 41,981 | 1 | 1,164 |
| j in pending P, t=3 | 13,950 | 13,368 | 0 | 582 |
| j in pending P, t=4 | 1,640 | 1,510 | 0 | 130 |
| stream-headed H, t=1 | 27,630 | 27,473 | 3 | 154 |
| stream-headed H, t=2 | 50,160 | 49,595 | 4 | 561 |
| stream-headed H, t=3 | 25,752 | 25,169 | 0 | 583 |
| stream-headed H, t=4 | 4,240 | 4,039 | 0 | 201 |
| total | **424,378** | **419,869** | **172** | **4,337** |

All further admissible arities through the safe ceilings are empty:
t=5,6 for nontrivial A; t=5,6,7 for j in P; t=5,6,7,8 for the stream
family after the source-redex restriction. The count scripts visit those
cells and record zeros. The A=j direct family is the inherited4,188-source
kernel-refuted firstop result; it is not recounted in this table.

There are **zero surviving candidates and zero unresolved exceptions**.
Distinct beta-normal forms of a required probe refute the law by
confluence. The table reports which probe first caused the evaluator to
stop; exception certificates can instead refute the other probe.

### 3.3 Every exception is individually checked in Lean

`certificates.json` maps all4,337 original source/probe entries to actual
Lean theorems `not Reader r_i`. `modules.json` lists the eleven files.
The certificate kinds are:

| Certificate | Sources |
|---|---:|
| Positive weak-head cycle, possibly accumulating arguments | 2,525 |
| Wrong persistent rigid head or arity | 1,532 |
| Required free constant absent after finite reduction | 257 |
| One weak-head step plus arbitrary beta reductions back to the head | 20 |
| Inherited carryRight, carryLeft, towerC divergence families | 3 |

The last three original sources are instantiated in `Residual.lean`.
They use firstop's existing, general `carryRight_nocount`,
`carryLeft_nocount`, and `towerC_nocount`, with the new original sources'
finite reduction paths checked by `decide`. No eta conversion is used.
All4,337 final theorem axiom lists are exactly `[propext, Quot.sound]`.
No `sorryAx`, `native_decide`, or unchecked resource cutoff occurs in a
final checked theorem. The general price modules additionally use
`Classical.choice` through ordinary Lean imports.

### 3.4 Resources and reproduction

The largest source check has76,787 terms. The slowest took5.395s; peak RSS
over all source checks was70,057,984 bytes. All use one compute thread and
one watchdog, with110s/900MB stops. The largest Lean file took13.409s and
959,168,512 bytes; every file uses `lean -j2` with110s/1.8GB stops, below
the authorized120s/2GB limits. `verification.json` records each resource
measurement, certificate coverage, final axiom audits, and SHA-256 hashes.

Reproduce from the repository root, with `PYTHONDONTWRITEBYTECODE=1`:

1. `python3 tmp/round4/firstopj/count.py`; run `check.py` separately with
   `linear0`, `shared0`, `1`, `2`, `3`, `4`.
2. Run `other_count.py`; run `other_check.py` separately for1,2,3,4.
3. Run `stream_count.py` and `normal_count.py`; run `stream_check.py`
   separately for1,2,3,4.
4. Run `audit.py`, `supplement.py`, then `export.py`. The exporter assigns
   the three residual family certificates and leaves no audit entry open.
5. Through `run_limited.py`, compile `FirstopJPrices.lean`, `Selective.lean`,
   and every file in `modules.json`. The runner reads the already checked
   helper oleans from firstop/handlerlet and the repository Lean library.
6. Run `validate.py`, `controls.py`, then `verify.py`.

The generic j-free admissible recurrence is imported read-only from
`firstop/jbare_count.py`; normalizer syntax/substitution is imported from
`jn/dbn.py`; exact exception certificate discovery reuses the handlerlet
and firstop helpers. Every newly written file is inside this lane. No
external consult, subagent, commit, engine change, or census was performed.

## 4. Remaining boundary and next proof step

The assigned branch has no remaining arity, multiplicity or j-location
cell. Combining this result with the supplied firstop, handlerlet and
beta-normal exclusions removes the whole depth-one literal s-spine branch
from a global minimum below46.

This does not remove the other source-head branches: a let directly in
the stream-lambda body, and root lets. The selected-copy technique is
promising there because it prices the unique j leaf separately from the
rest of a shared argument. Formula(S) already applies in ANY source
context of depth1, so the body-let j-in-A branch can use it immediately;
its full source budget and head/operand decomposition must still be
worked out. For root lets the corresponding absolute depth changes need
separate accounting. Do not simply reuse the depth1 constant term.

The next proof task is to formalize the residual-replay existence lemma
for `Pruned`, then a proof-producing finite enumeration if a completely
kernel-checked family theorem is desired. The present closure has the
same evidence structure as handlerlet: handwritten semantic/source
reduction and completeness, exact finite checks, and kernel certificates
for every incomplete normalizer run. Nothing here needs a reader's full
normal form or an upper bound on normalization growth.
