# needbinder wave 5: a smaller opener boundary; R1' remains open

Neither endpoint was reached: no reader of weight <=45 was constructed,
and the general needed-binder R1' lower bound is not proved. The new result
is a source-level reduction for literal whole-cell openers. In a globally
minimum reader of weight <=45,

    R = lambda s. s (lambda b t. B) j

must have a nonlinear source head redex inside B, with multiplicity 2, 3,
or 4. All source-rigid B are excluded by one complete 92,534-source check;
lambda-headed B are strictly improvable; and linear source redexes anywhere
inside B cannot fit the budget. This is not a classification of every R1'
reader into the displayed shape.

## 1. Complete interpreters and candidates

None built. No interpreter splice, battery, or polish was run, and there
is no new passing battery line. No source search outside the pinned opener
domain was attempted. Every artifact is in `tmp/round4/needbinder/`.

## 2. Exact identities and transformations

### 2.1 Hoisting an absorber through a literal input-cell opener

**Handwritten semantic proof; kernel-checked scope, hole count and price.**
Consider

    R = lambda s. s (lambda b t u. D) j,

with D scoped in [u,t,b,s,c], and write m_v for its source occurrences of
v. For each genuine input cell, u receives rigid j. All source u leaves
are unary-dispensable for every n. On zero, at least one source u leaf has
a surviving residual; exactly one source origin can account for the sole
j in the normal form r j. Keep that occurrence and replace the other
m_u-1 u leaves by t, hygienically. All replaced leaves are dispensable on
both laws, so the reviewed simultaneous transfer lemma preserves them.
This replacement adds exactly m_u-1 bits.

Move the remaining u binder to the root:

    R' = (lambda u s. s (lambda b t. D*)) j.

D* has the corresponding binder permutation. On any cell cons B T, both
sources reduce to the same body with u=j, s=cons B T, b=B, t=T. This is a
cell-specific semantic identity; arbitrary rigid s is not asserted.

Before pruning, the exact hoisting price is

    w(outside D) - w(inside D)
      = 3 m_u - m_t - m_b - m_s - 4.

The u leaves gain three index bits; t/b/s leaves lose one; c is unchanged;
the source j moves from depth one to depth zero. Combining pruning and
hoisting gives

    w(R') - w(R) = -1 - m_t - m_b - m_s < 0,

with right-side counts from the original D. Thus a globally minimum reader
cannot have the displayed lambda-headed opener body, at any weight.
Minimality is over all full-law one-hole readers, not just R1 or depth one.

`OpenerHoist.lean` proves `outward_price`, `hoist_price`,
`hoist_single_strict`, both scope lemmas and both one-hole lemmas for
ARBITRARY source D with `FreeUnder 5 D`. It does not formalize the
residual-pruning or cell-commutation arguments. The compiled module has
only propext, Classical.choice and Quot.sound dependencies; no sorryAx or
native-decision trust axiom. See `OpenerHoist.log`.

### 2.2 Exact path charge for sinking a single-role let

**Handwritten, arbitrary source syntax.** In a j-free source let

    (lambda x. C[G]) A,

assume all source x occurrences lie in G. Let k count lambdas on C's path
to G, F count A's free leaves, m count G's x leaves, H count G's references
to those crossed binders, and T count outer references in C's fixed pieces
that point above the original x binder. Move the let to G, permute x past
those k binders, and shift A beneath them. The resulting source is
beta-equivalent, contains each piece once, and has exact price

    new - old = k(F-m) + H - T.

This follows leaf by leaf: A's free leaves gain k; each x leaf loses k;
each crossed-binder reference in G gains one; C's outer references lose
one. Other nodes are unchanged. For k=0 this is LetSink's -T; for one
lambda it is LambdaSink's F-m+H. In R1 the unique j is outside Y, so this
is also the reader weight difference.

Consequently, single-role needed binders cannot automatically be replaced
by cross-role sharing. A minimum can retain a single-role let whenever
this sinking comparison is nonnegative. The existing 29/31 linear example
has k=4,F=3,m=1,H=T=0: sinking costs8 and subsequent contraction saves6.
It is not a reader, but it prevents treating the unrestricted no-cost
sinking premise as already proved. A separate quantitative exclusion is
needed at the sub46 reader budget.

## 3. Lower bounds and excluded source families

All minimum statements below use the full reader laws for every n and the
global lexicographic order (weight, source lambda count, source-j depth).

### 3.1 Every source-rigid whole-cell body is excluded below46

**Complete Python check plus handwritten completeness proof.** Write

    R = lambda s. s (lambda b t. B) j.

The exact source price is w(R)=16+|B|, with B in frame [t,b,s,c]. Thus
w<=45 implies |B|<=29. Source c must occur in B.

If B is c-headed, zero stays c-headed. If B=t A1...Ak, zero becomes
r A1'...Ak' j, so k must be zero; B=t then fails unary n=1. The remaining
rigid heads are b and s:

    B = h A1...Ak, h in {b,s}.

All Ai are arbitrary source syntax, including redexes, nonlinear binders,
and repeated/shared roles. The head costs3 for b and4 for s; each spine
application costs2; each operand costs at least2. Therefore k<=6 and the
operand budgets are respectively 26-2k and25-2k. At least one operand
contains c. This produces exactly 92,534 sources:

| head | k=1 | k=2 | k=3 | k=4 | k=5 | k=6 |
|---|---:|---:|---:|---:|---:|---:|
| b | 25,900 | 21,517 | 10,018 | 2,684 | 270 | 0 |
| s | 13,900 | 11,560 | 5,278 | 1,312 | 95 | 0 |

`openers.py` recursively includes every variable of the exact index cost,
every lambda at cost2, and every application/operand cost split. Its
presence-of-c flag is an exact disjunction over children. These recursive
rules give a structural completeness argument and independent counting
recurrences; no source normalization is assumed.

Result: 87,428 fail zero by a concrete wrong beta-normal form; all 5,106
zero survivors fail n=1 by a concrete wrong beta-normal form. No n=2/3
probe was needed. There were NO fuel, size or recursion cutoffs and NO
cycle certificates. Confluence makes each wrong normal form a sound
refutation. This is computer-checked evidence, not a kernel-checked
inventory.

Final check: 44.343 s, 20,873,216-byte peak RSS, one thread. The earlier
bit-headed development subset checked 60,389 sources in 1.415 s, also with
no cutoffs. Both runs stayed within the hard caps. Evidence:
`openers.py`, `openers.log`, `openers.json`.

### 3.2 No linear source redex fits anywhere inside B

**Handwritten source bound, using the existing kernel-checked minimum
linear charge; arithmetic endpoint kernel-checked here.**

Take any linear redex (lambda x.D) A inside B. Let F be A's number of free
leaves and d the local depth of D's sole x leaf. The source j is absent.
`LocalCost.minimum_linear_source_charge` implies

    (F-1)d >= 7+T >= 7.

A costs at least 4F-2; D's d lambdas and x leaf cost at least 3d+2; the redex
adds 4. Some source c exists in B. If it is in A, its index is at least 3,
adding at least 3 beyond the free-leaf baseline. If it is in D, it is a
separate leaf from x with a joining application, adding at least 4. If it
is outside the redex, its leaf and joining application again add at least 4.
Therefore

    |B| >= 4F+3d+7 >= 31,

contradicting |B|<=29. For the last inequality, a value <=30 would force
F<=5; F=2,3,4,5 respectively force d>=7,4,3,2, each too costly. F<=1 is
incompatible with the critical charge. `critical_linear_cost` in
`OpenerHoist.lean` checks precisely this arithmetic inequality; the
source-tree bound is handwritten.

### 3.3 Exact remaining first-head alternative for this opener

Every B is lambda-headed, source-rigid, or has a literal first head redex.
Sections2.1 and3.1 eliminate the first two cases for a sub46 minimum.
Erasing redexes are excluded by the existing general minimum-source
lemma, and 3.2 excludes every linear redex. Hence

    B = ((lambda x.D) A) C1...Ck,
    2 <= uses_x(D) <= 4.

For the upper bound put m=uses_x(D). Counting x leaves, joining
applications and the contractor gives |B|>=|A|+4m+2. If c is in D or a
pending operand, its additional charge is at least 8 or 7, so m<=4. If c
is in A, |A|>=5 and m<=5. At m=5, A costs at most7; the only c-containing
term in [t,b,s,c] that cheap is c itself. The minimum redex costs 27, so no
pending operand fits. D has five x leaves at base cost 18 and at most two
bits to spare: no extra leaf or lambda fits. Thus D is a pure application
tree over x. Substituting c makes B c-headed, contradicting zero. This
removes m=5. No exclusion is claimed for m=2,3,4.

## 4. Honest boundary and next proof step

R1' remains open. The new opener reduction retains arbitrary source
redexes in operands and proves that cheap literal cell openers ultimately
need a nonlinear source head redex. It does not normalize arbitrary Y to
an opener, handle every partially applied/created opener, or identify the
unary-output source origin through every created redex. General needed
source lets and the terminal-cell-output variant remain unpriced.

The next concrete target in the displayed opener is the original source
B=((lambda x.D) A) C1...Ck with multiplicity2-4, at the original 29-bit
budget, using the actual delivered values b=K/F and t=r/U_(n-1). One
must retain the let-saving and binder-path charges; expanding the let and
charging two independent cores loses exactly the sharing under study.
For general R1', the additional single-role capture alternative in 2.2
must also be eliminated or retained explicitly. No further source sweep
is proposed.

Reproduction, from the repository root:

    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/needbinder/openers.py

For Lean, run from lean/ with the existing close46 dependencies:

    LEAN_PATH=../tmp/round4/close46:.lake/build/lib/lean lean -j2 ../tmp/round4/needbinder/OpenerHoist.lean

The handwritten proofs and intermediate derivations are in NOTES.md.

## 5. Nonlinear first-head target: complete exclusion through 29 bits

**Result.** The remaining target of Section 4 is now closed. There is no
full-law reader of the literal source form

    R = lambda s. s (lambda b t. B) j,
    B = ((lambda x. D) A) C1...Ck,
    2 <= uses_x(D) <= 4,  |B| <= 29.

This exclusion itself requires no minimality assumption. It is a complete
18,640-source Python check with a handwritten completeness argument and
kernel-checked refutations of all 24 sources that did not produce a normal
form. The full inventory and its other 18,616 refutations have not been
formalized in Lean. Combined with Sections 2.1 and 3, it excludes every
literal whole-cell opener as a **globally lexicographically minimum**
full-law one-hole reader of weight <=45. General R1' remains open.

### 5.1 Original source budget and the nine cases

Use the actual source frames A,Ci in [t,b,s,c] and D in [x,t,b,s,c]. Put
a=|A|, d=|D|, m=uses_x(D), L=lambda count(D), M=sum of the local depths
of D's x leaves, and P=sum_i(|Ci|+2). Then, before any contraction,

    |B| = 4 + a + d + P,
    d >= 4m - 2 + 2L + M.

The second bound counts m x leaves, at least m-1 applications joining
them, all source lambdas, and the actual index increases of those leaves.
If c occurs in D, a c leaf has index at least4 and adds at least8 bits
including its extra joining application. If c occurs in A, a>=5. If c
occurs in a pending operand, P>=7. Consequently:

| first component containing c | m=2 | m=3 | m=4 |
|---|---:|---:|---:|
| A | a<=19 | a<=15 | a<=11 |
| D, with no c in A | a<=11 | a<=7 | a<=3 |
| pending, with no c in A or D | a<=12 | a<=8 | a<=4 |

The priority A, then D, then pending makes these cases disjoint; it does
not ban additional c occurrences in later components. Every reader needs
c in its source, since beta reduction cannot create the free c of the
unary output. These are original-source charges: A is counted once, all
binder-depth costs remain, and no two-independent-cores lower bound is
imposed on the shared value. Single-role lets are included too. In
particular, no favorable let-saving or neededness filter is used.

### 5.2 Finite domain and completeness

`nonlinear_count.py` counts the domain before constructing or evaluating
any source. Its recurrence T(n,q,f,m,h) counts exact wire cost n at local
binder depth q with f free variables, x multiplicity m (tracked only for
f=5), and c-presence h. Its exhaustive constructors are:

- A variable i with 0<=i<q+f has cost i+2; it is x exactly when f=5 and
  i=q, and c exactly when i=q+f-1.
- A lambda consumes2 and recurses at depth q+1, with the same flags.
- An application consumes2 and uses every cost split, every split of m,
  and every pair of c flags whose disjunction is h.

The pending-list recurrence has the empty list at P=0, and every
nonempty list consists of an arbitrary term of cost a followed by a list
of cost P-2-a; its c flag is again the disjunction. Taking every
a,d,P with 4+a+d+P<=29, every m in {2,3,4}, and every nonempty combination
of c flags covers the target by structural induction. It includes all
internal redexes and all source lambda/application trees, without a
normal-form assumption. The first head-redex decomposition is unique.

`nonlinear_check.py` constructs this domain, asserts all source prices,
multiplicities and c flags, rejects duplicate B trees, and checks each row
against the separately memoized count. Enumeration shares the recurrence
specification with counting; these are not independent proof assistants.

| m | first c | sources | lambda A | wrong zero NF | wrong n=1 NF | Lean exceptions |
|---:|---|---:|---:|---:|---:|---:|
| 2 | A | 8,571 | 1,162 | 8,473 | 91 | 7 |
| 2 | D | 4,716 | 1,206 | 4,455 | 256 | 5 |
| 2 | pending | 1,795 | 449 | 1,678 | 107 | 10 |
| 3 | A | 1,788 | 198 | 1,783 | 5 | 0 |
| 3 | D | 964 | 200 | 936 | 28 | 0 |
| 3 | pending | 256 | 44 | 244 | 10 | 2 |
| 4 | A | 390 | 30 | 390 | 0 | 0 |
| 4 | D | 140 | 0 | 140 | 0 | 0 |
| 4 | pending | 20 | 5 | 20 | 0 | 0 |
| total | | 18,640 | 3,294 | 18,119 | 497 | 24 |

Each source is tested on the actual streams Z(r)=cons K r and
U1(N)=cons F (cons K N), with targets r j and c (cons K N) N.
Opening the handler delivers b=K,t=r or b=F,t=U0(N); all occurrences of
the original s are instantiated as that same whole input stream. Thus
the check retains the correlation between cell parts, stream reuse and
shared arguments. A distinct beta-normal form refutes the corresponding
full-law requirement by confluence. No n=2 or n=3 probe was needed.

The complete source check took 2.086509 seconds, peaked at 42,254,336
bytes RSS, and used one thread. It stayed below all BRIEF5 caps. Evidence:
`nonlinear_count.py`, `nonlinear_check.py`, `nonlinear_check.log`, and
`nonlinear_check.json`.

### 5.3 All normalizer exceptions are resolved in Lean

The normalizer recorded 17 cycles and 7 resource cutoffs, all on zero.
Neither a cutoff nor the JSON's empty survivor list is by itself an
exclusion. `exception_cert.py` translates every one of these 24 original
source trees into `NonlinearExceptions.lean`; each theorem `reject0`
through `reject23` proves `not Reader (reader bodyN)`.

For 20 sources, B contains neither free t nor free s. Four weak beta
steps of R Z eliminate the zero cell and its two handler binders, leaving
no free r. The proof checks that concrete absence with `decide` and uses
confluence plus `occ_betas_zero` to contradict the r in the required r j.
This covers all seven cutoffs without claiming that they diverge.

The remaining four sources reduce in four weak steps to

    Omega r c j,  Omega c r j,  Omega (r c) j,  Omega (c r) j,
    Omega = (lambda x. x x) (lambda x. x x).

Each has exactly one redex and its contraction leaves the entire term
unchanged. The generic `fixed_spine_no_nf` theorem uses the `Spine`
predicate and head-step completeness to prove that every beta reduct is
the same nonnormal term. Hence no normal form exists, contradicting zero.

Compilation succeeded with two Lean threads. All 24 printed axiom sets
are exactly `[propext, Quot.sound]`; there is no `sorryAx` or native
decision axiom. `nonlinear_audit.json` maps every exception to its proof;
`NonlinearExceptions.log` records the axiom checks. There are zero
unresolved sources after this audit.

### 5.4 The 162's absorber and the remaining boundary

The m=2, lambda-A slice has 2,817 sources and is entirely excluded. It
does not contain the 162's wrapper as literal source syntax. That wrapper
is

    Y = s I V,
    V = lambda u. s (lambda q. c) (s s u),
    R162 = lambda s. Y j.

Its u has one source occurrence, and its first handler is I rather than
a literal two-binder opener lambda b t.B. No equality case for the 162
has been identified in this nonlinear-head domain; the check is only
through weight45, not an equality classification at46.

The combined result retains the global minimum hypothesis of the earlier
lambda-headed and source-redex reductions. It does not show that every
literal opener, whether minimum or not, has weight at least46. It does
not cover arbitrary Y in R1', created openers, or single-role capture
through general lambda paths. For that last alternative the exact
Section2.2 price remains k(F-m)+H-T; its sign cannot be discarded. No
general R1' lower bound or sub46 reader is claimed. No complete
interpreter was built, spliced, battery-tested, or polished.

Reproduction from the repository root:

    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/needbinder/nonlinear_count.py
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/needbinder/nonlinear_check.py
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/needbinder/exception_cert.py

Then, from lean/ (so the project's toolchain is selected):

    LEAN_PATH=.lake/build/lib/lean lean -j2 -R ../tmp/round4/needbinder ../tmp/round4/needbinder/NonlinearExceptions.lean

This imports the promoted `Blc.SelfintNeededHead` dependencies. The new
`nonlinear_verification.json` records the final artifacts and trust
boundary; the original `verification.json` records the earlier report.

## 6. General R1': complete source split and nearby callback exclusions

**Result and boundary.** General R1' remains open. This follow-up gives a
complete source-head case map, closes the second-cell callback family
`s (lambda b.b H) (lambda u.D) j` below46, and proves that a globally
minimum sub46 reader `s A (lambda u.D) j` must have `|A|>=11, |D|<=18`.
A further 70-source check closes the exact small body `D=u(s s u)`.
Full-law reader witnesses show precisely why needed parameters and
single-role capture cannot be dismissed by a free-sinking argument.
No complete interpreter was built and no sub46 reader was found.

### 6.1 Complete source-head split for R1

Write `R=lambda s.Y j`, with Y j-free in [s,c]. Its exact source price is

    w(R)=8+|Y|,                 31<=|Y|<=37.

The inherited kernel theorem `SelfintSourceFront.reader_source_head`
classifies EVERY reader, without a normality or minimality hypothesis,
as an s-spine, a root head redex, or a first body head redex. The root
head-redex arm, whose multiplicity is at most7 below46, is absent from
literal R1: R already begins with lambda s. It can reappear as a
comparison reader, which is why the minimum hypotheses remain global.
For R1 the exhaustive specialization is:

| source Y | exact price / status |
|---|---|
| `lambda x.B` | Its final application to j is the literal depth1 j-let. Excluded from a global minimum by zerolam's reviewed pruning/hoisting theorem, even through weight48. |
| `s A1...Al`, l>=1 | `w=10+2l+sum |Ai|`; thus l<=8. Operands are arbitrary source trees. Refined below. |
| `((lambda x.B) A) C1...Ck` | `w=12+|B|+|A|+P`, P=sum(|Ci|+2), so `|B|+|A|+P<=33`. The final j is an additional pending operand; B, A and all Ci are j-free. |

A rigid c head fails zero, and bare s also fails. These facts, together
with ordinary source head decomposition, exhaust Y. For the third row,
`body_head_multiplicity` gives m=uses_x(B)<=6. Global minimality excludes
m=0, so 1<=m<=6. A linear source let is NOT automatically excluded.

The inherited `SelfintSourceBody` refinement leaves four first-redex
body heads: B is s-headed; B is x-headed and A contains a source lambda;
B is lambda-headed; or B has another head redex. A c head is impossible.
The lambda-headed row already has a pending operand, namely the final j.
These are source cases, not claims that x is above the unary-output
origin. That ancestry must still be established separately.

For the s-spine row, the following recursive split of its first operand
A1 is exhaustive. In this table l counts operands IN Y; the reader also
has its final j.

| first operand source | closed part and remaining part |
|---|---|
| `s` or a c-headed spine | Excluded by the rigid zero/unary head or arity. For literal s, only l=2 can pass zero, and then unary has head N. |
| a nontrivial s-headed spine | General stream-headed first operands remain open. |
| a first source head redex | General internal source lets remain open, subject to the exact source charges below. |
| `lambda b.lambda t.B` | l=1 is the whole-cell opener closed in Section5 for a global minimum. Additional operands require a separate argument. |
| `lambda b.b H1...Hp` | p=0 is I, closed for every operand shape. For p=1, l=1 fails unary immediately; p=1,l=2 with A2=lambda u.D is closed below. For p=2, l=1,2 are jn's closed families. Larger p or more trailing operands remain open. |
| `lambda b.s H1...Hp` | p=0 fails zero. General redispatch/doubler bodies remain open, apart from the recorded bounded subfamilies. |
| `lambda b.c H1...Hp` | Excluded by the rigid zero head c. |
| `lambda b.((lambda x.E) A) H1...Hp` | General internal source lets remain open. |

The existing K-selector theorem closes that literal operand everywhere
it occurs in the lambda-headed row. For l=1, jn additionally closes
`A1=lambda b.B` when |B|<=21, since its trailing operand is literally j;
the larger lambda-headed B are the whole-cell opener already closed here.
The reviewed dispensable-binder theorem is an OVERLAY on all these rows:
if every binder above the source unary-output node has only
unary-dispensable occurrences there, a global minimum has w>=46. It does
not turn the remaining source cases into a shorter exhaustive list.

### 6.2 First dispatch is a semantic split, not an additive price

The inherited jn argument substitutes the generic cell `s=cons b t` and
head-reduces. A generic divergent head run would be simulated on zero,
contradicting its terminating law. A lambda head, c head or j head cannot
become the required rigid zero head. The first generic dispatch therefore
has one of these forms:

    b P Q C1...Ck,
       P[K/b] C1[K/b]...Ck[K/b] =beta t j,
       Q[F/b] C1[F/b]...Ck[F/b] =beta c t N;

    t P,
       P[K/b] =beta j,
       P[F/b] b' t' =beta c (cons b' t') N.

In the second line (b',t') is (K,N) at unary length1, and
(F,U_(n-2)) at larger lengths. In the first line the unary t is U_(n-1).
At least two operands of b and exactly one operand of rigid t are forced
by zero. This split applies to every source row in6.1 after reduction.
It does NOT price P,Q,Ci as disjoint sources: substitution may copy a
definition or distribute its residuals among those positions. The 164
already refutes that additive inference.

### 6.3 Start at the 162: the outer absorber is never needed

In the exact source `s I (lambda u.D) j`, unary dispatch is

    s I (lambda u.D) j ->* (lambda u.D) j.

Thus u receives rigid j. Every residual of a source u leaf that is
examined on the normal-order unary run would survive as rigid j, while
the output contains no j. All those leaves are unary-dispensable. There
can still be needed binders INSIDE D, but the existing I-selector bound
already covers arbitrary D, including those binders. This whole source
family has w>=46 without a minimum hypothesis; the 162 attains46.
The phrase "needed u in the 162's wrapper" therefore does not describe
an open case. Needed outer u requires a different dispatcher A.

### 6.4 A complete second-cell callback bound

**Handwritten reduction and complete Python check.** Consider arbitrary
source H in [b,s,c] and D in [u,s,c]:

    R=lambda s.s (lambda b.b H) (lambda u.D) j.

On unary input, F erases H exactly:

    R U_n ->* U_(n-1) (lambda u.D[U_n/s]) j.

No source in H contributes to this run. Therefore c must occur in D.
Before any reduction, `|lambda b.b H|=6+|H|>=8`, and

    w=16+|lambda b.b H|+|D|.

Consequently w<=45 forces |D|<=21. `callbacks.py` enumerates exactly the
6,113 c-containing sources of cost<=21 in [u,s,c], with no restriction on
normality, multiplicity or internal lets. At local depth q, every variable
i<q+3 has cost i+2; lambdas cost2 and increase q; applications cost2 and
use every cost split. The c flag is i=q+2 at a leaf and disjunction at an
application. This constructor recurrence proves completeness by structural
induction; its separate count recurrence is checked against every cost
row and duplicate trees are forbidden.

Every body fails at n=1 by a concrete wrong beta-normal form. There are
no cycles, fuel/size/recursion cutoffs or survivors. Confluence therefore
refutes the unary law for every candidate, independently of H. This proves
w>=46 for the entire displayed family, with NO minimality assumption.

Run: 0.342141 seconds, 23,805,952-byte peak RSS, one thread.
Evidence: `callbacks.py`, `callbacks.json`, `callbacks.log`. This finite
inventory and its normalization results are not kernel formalizations.

### 6.5 Every first dispatcher through ten bits is now closed

For the broader source `R=lambda s.s A (lambda u.D) j`,

    w=16+|A|+|D|,                 |A|+|D|<=29 below46.

**Minimum-reader corollary, handwritten plus the small source inventory.**
There are exactly41 sources A of cost<=10 in [s,c]:33 normal and8
nonnormal. Every source redex that cheap is an identity or erasing redex:
a nonlinear redex already costs at least12, and a sole bound use below
another lambda cannot fit the remaining body budget. Contracting one of
these redexes strictly lowers A's original wire cost and preserves every
reader law and the one source j. A global minimum therefore uses one of
the33 normal A.

The complete inventory in `r1_followup.json` gives the zero and unary-one
results with the callback V left rigid. Except for these five A, each
case has a permanently wrong rigid head/arity, a lambda zero result, or
zero result V itself (V is lambda-shaped):

| A | exclusion |
|---|---|
| I | Existing unconditional selector bound. |
| `lambda b t.s` | On cells, s A V j =beta s V j; removing A lowers w by10. |
| `lambda b t v.v` | On cells, s A V j =beta V j; removing the dispatch lowers w by14. |
| `lambda b.b s` | Section6.4 with H=s. |
| `lambda b.b I` | Section6.4 with H=I. |

Thus every globally minimum sub46 reader of this shape has

    |A|>=11,                    |D|<=18.

The independent all-source cost recurrence counts2,611,273 pairs in the
unrestricted original |A|+|D|<=29 domain; it was not enumerated or tested.
This is why a wholesale sweep is not a permissible next step.

### 6.6 Needed u is real, and a small D can import an expensive value

**New full-law witnesses, kernel-checked.** These are witnesses to the
remaining semantic cases, not minimum readers or new interpreter records.

    R66=lambda s.s (lambda b t v.b t(v t))
                       (lambda u k.c u(u u k)) j.

Zero selects t=r and returns r j. Unary gives `c t(t t j)=c t N`, for
t=U_(n-1), including U0. The outer u receives t and is needed both in
the output tail and its N extractor. Here |A|=24, |D|=26, so w=66.

A more pointed obstruction to applying a standalone core bound to D is

    R75=lambda s.s (lambda b t v k.b(t k)(v(c t)))
                       (lambda u.u(s s u)) j.

Here D=u(s s u) has only16 bits and no c. On unary, A first absorbs j and
passes c t to u; then `u(s s u)=c t N`. The outer application in D is the
unary-output origin, so this is genuinely a needed binder above that
origin. Its second u occurrence, passed to s s, is dispensable. The
original source argument of this created use of u is not a literal
adjacent let definition in Y. Pricing it requires the dispatcher too:
|A|=43, |lambda u.D|=18 and w=14+43+18=75.

For this EXACT D, a sub46 reader would have |A|<=13. Since D contains no
c, A must contain c. `r1_followup.py` constructs all70 such A sources,
including redexes:66 fail zero and4 fail unary-one by wrong normal forms;
none is unresolved. Thus this fixed small-D family also has w>=46 without
minimality. This does not close all D of cost<=18.

`R1Followup.lean` proves `needed_full` and `thin_full` for EVERY unary
length using a symbolic-tail trace and `skip_self`, and checks both exact
weights. The Python n<=8 probes are validation, not the all-n argument.

### 6.7 Single-role capture: exact charges and actual reader obstructions

For any j-free source let in Y, write a=|A|, m=uses_x(B), F=freeLeaves(A),
M=sum of the x leaves' depths in B, and T_beta=the other outward leaves
of B. The exact contraction price is

    S=(m-1)a+(F-1)M-4-2m-T_beta.

For a global minimum, S>=0; if m=1, the decrease in lambda count also
excludes S=0, giving `(F-1)M>=7+T_beta`. For a single-role let whose uses
all lie inside G, Section2.2's exact sinking price remains

    delta=k(F-m)+H-T_path.

Here k is the crossed lambda count, H counts G's references to those
binders, and T_path counts the fixed context's references above x. There
is no general sign implication from single-role neededness.

The small full-law witness is

    R53=lambda s.s I ((lambda x u.s(lambda q.c)(x u))(s s)) j.

All x uses lie in the unary-output subterm and x is needed. Its only
role is the N extractor. Sinking through u costs2, since k=1,F=2,m=1,
H=1,T_path=0; the resulting reader weighs55. Both source lets contract
to the162 reader, so this witness is nonminimal. Lean checks their
all-n laws and weights (`capture_full`, `sunk_full`, `prices`).

Even both local moves can be dearer in a correct reader. Inside the162's
u arm replace its body by

    (lambda x a b d e f.s(lambda q.c)x)(s s u) I I I I I.

The resulting R109 is a full reader. Its displayed linear let has
F=3,m=1,M=5,T_beta=2, so contraction costs2, giving R111. Sinking it
across the five lambdas has H=T_path=0 and costs10, giving R119. All
three reduce to reader162; their all-n laws and prices are kernel-checked.
The five erasing lambdas make R109 nonminimal. These examples refute a
free local transformation on arbitrary readers; they do NOT refute the
desired small-budget minimum theorem.

There is a useful necessary budget restriction for the open critical
LINEAR case. Let d be its sole x leaf's local depth. The original source
costs obey

    |A|>=4F-2,   |B|>=3d+2,
    |Y|>=4F+3d+5.

The last line adds the contractor's4 bits and at least1 for the required
source c, wherever it occurs. Together with `(F-1)d>=7+T_beta` and
|Y|<=37, this leaves only:

| F | possible d |
|---:|---|
| 2 | 7,8 |
| 3 | 4,5,6 |
| 4 | 3,4,5 |
| 5 | 2,3,4 |
| 6 | 2 |

`critical_profiles` kernel-checks this arithmetic implication. The
source-tree estimate is handwritten. These twelve profiles are necessary
conditions, not twelve proved reader families or a finite source check.

### 6.8 Remaining first-body lets and the exact unfinished task

For Y's first head let, the original budget and occurrence count give

    w >= |A|+4m+10+2 L_B+M+P,
    |A| <= 35-4m,                m=1,...,6,

before charging additional c/s leaves or productive roles. The argument
ceilings are respectively31,27,23,19,15,11. The source contraction charge
above applies to every such j-free let and every internal one.

- For s-headed B, the previously closed shared-I/shared-K and small
  general-dispatcher families remain closed; arbitrary source sharing
  across more operands is not covered by their bounds.
- For x-headed B, the kernel result requires a lambda-containing A and
  at least one extra x use in a minimum. At the first body redex there
  are one to five extra uses. It says that forgetting them breaks a law;
  it does not locate those uses relative to the unary-output origin.
- For lambda-headed B=lambda y.E, sinking the first let one level has
  exact price F(A)+uses_y(E)-uses_x(E). Minimality forces this to be
  nonnegative; the full path charge in6.7 is still required farther in.
- For nested head redexes, `SelfintNestedLets` supplies the exact display
  and independent-let exchange prices. A dependent inner definition, or
  a nonnegative exchange price, remains an alternative; neither gives a
  source-disjoint sum of the core minima.

Thus the live closest branch is an actual source `s A(lambda u.D)j`
with |A|>=11 and |D|<=18, outside the second-cell callback and fixed-D
families above, or a source head let satisfying these capture/sharing
conditions. The missing theorem must charge the value delivered to a
needed binder against its ORIGINAL defining source, allowing it to carry
part of c, the tail and N computation. R75 explains why the ordinary
20-bit standalone-core lower bound cannot simply be applied to D.
The single-role alternative additionally needs a small-budget semantic
exclusion of the critical profiles, rather than assuming sinking is free.

Verification and reproduction:

    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/needbinder/callbacks.py
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/needbinder/r1_followup.py

Then from lean/:

    LEAN_PATH=.lake/build/lib/lean lean -j2 -R ../tmp/round4/needbinder ../tmp/round4/needbinder/R1Followup.lean

The final small-inventory/70-source/witness script took0.082380 seconds,
22,134,784-byte peak RSS, one thread. The Lean file compiles with two
threads, no sorryAx or native-decision axiom. Full-law witnesses use
propext and Quot.sound; the arithmetic profile lemma additionally uses
Classical.choice; literal price checks use no axioms. The source
classification is inherited, the new all-n witnesses and arithmetic are
kernel-checked, and the source inventories and their completeness remain
Python/handwritten evidence. `r1_verification.json` records the artifacts.
