# Firstop — wave 5

**Partial closure; the assigned whole branch remains open.** No reader
of weight at most45 and no sub162 interpreter was found. No use of H_nf
is made. The new results are:

1. In a global minimum reader below46, **every source beta-redex anywhere
   inside a j-free first operand has multiplicity2,3,4,or5**. This includes
   a redex-headed first operand and a stream-headed first operand reaching
   redexes deeper inside it. The linear part is a complete727-source
   inventory with all727 refutations kernel-checked; the high-multiplicity
   part is handwritten source accounting.
2. A lambda-headed body of a first-operand let satisfies a **strict**
   let-sinking inequality, using the inherited literal-handler exclusion.
3. A new **kernel-checked contextual contract-and-hoist price** handles
   nonlinear duplication of the sole j in a depth-one argument, including
   first-operand positions. It is a necessary minimum-source constraint,
   not an exhaustion theorem.
4. The adv5 cell-reification identity is valid, but its claimed automatic
   price advantage does not follow: the displayed literal-handler
   expansion costs18+2F MORE before contraction, for j-free Q. Any proposed
   cheaper literal handler still needs its contractions priced.

Here and below, minimum means minimum over all full-law one-hole readers
under (weight, source lambda count, source-j depth). It never means only
minimum inside the source family being examined.

## 1. Complete interpreters and controls

No complete interpreter was built; no splice, battery, or polish was run.
There is no new interpreter size or battery line to report.

Reader-level controls in controls.py accept the known162 reader at w=46
and adv5's stream-headed presentation at w=62, on zero and n=1..8:

    lambda s. s I (lambda u. s (lambda q.c) (s s u)) j
    lambda s. s (s (lambda b t. b K))
                  (lambda u. s (lambda q.c) (s s u)) j

The latter uses an existing all-n identity; it is not a new algorithm.
These finite controls are not a replacement for a complete interpreter
battery. Their source/weights are in controls.json.

## 2. Exact identities and prices

### 2.1 Cell reification: identity valid, price inference not automatic

For every cell s=cons b r, hygienic substitution gives

    s (s Q) Y...  ->* Q b r b r Y...
    s (lambda b t. Q b t b t) Y... ->* Q b r b r Y....

Thus the identity holds. It also holds when Q mentions s: that occurrence
still denotes the same cell. The two displayed binders must be fresh.

If Q is j-free and F is its number of free leaves at its source position,
then exact wire accounting gives

    |lambda b t. Q↑2 b t b t| = |Q| +22+2F,
    |s Q| = |Q|+4,
    difference =18+2F.

Prices.reify_price checks this for arbitrary repository Term Q. The22
is four lambda bits, eight application bits, and ten bits for the two b
and two t leaves. Shifting Q across the binders costs2F. The outer s and
all Y operands agree, so these are the whole-reader differences too when
j is outside Q.

For Q=I, the sources lambda s.s(s I)j and its displayed reification weigh
20 and38. Neither is a reader; this is a source-cost witness only. It
shows why the identity itself is not a domination argument. Adv5's
construction of a particular Q from a given H establishes one direction
of representation, not a lower bound for arbitrary Q. I do not claim that
this example refutes a separately proved domination theorem restricted to
reader-compatible Q; such a theorem has not been supplied here.

### 2.2 The source budget with a j-free first operand

Write

    R = lambda s. s H T1 ... Tq,
    H = C[(lambda x.D) A],

where H is j-free and the tails contain exactly one j. The tail's j may
have arbitrary depth. Use local weighted tail prices (zero at a bare j,
four per internal lambda above it), and let p be their sum. Let a=|A|,
d=|D|, and k be the raw cost of C outside its marked hole. Then

    w(R) =14+2q+a+d+k+p,     q>=1,     p>=2(q-1),
    |H|<=33.

Prices.reader_price is the equivalent repository identity

    weight0(R)=6+wire(H)+spineWeight1(Ts).

The latter already charges the outer four bits at the hole and all tail
applications. The local redex costs4+a+d. No expansion or independent
charge for copies of A is used.

### 2.3 Exact depth-one contraction followed by one-hole restoration

Let C be any source context with exactly one lambda on its hole path, and
let R=C[(lambda x.D)A] be scoped in [c,j]. Assume R has exactly one source
j, at total depth one, and that j lies in A. D and the rest of C therefore
have no j. No reader-law or minimality hypothesis is needed for the price.

Use the actual local frames A:[s,c,j], D:[x,s,c,j]. Put

- m=occ_x(D), M=sum of the depths of those occurrences inside D;
- sA,cA=the numbers of A's s,c leaves;
- sD=the number of D's s leaves;
- cC=the number of c leaves outside the marked redex;
- a=raw wire(A), including its four-bit j leaf.

If R' contracts the marked redex and hoist(R') binds all resulting j
copies once at the root, then

    w(hoist(R'))-w(R)
      =(m-1)a+(sA+cA)M-3m-sD+cC+m*cA.                 (H)

Prices.contextual_contract_hoist proves this for arbitrary Terms and
Contexts, with the scope, occurrence and depth hypotheses above. For any
global minimum, its right side is nonnegative
(Prices.minimum_contextual_charge).

Proof idea: at unique-hole depth one, source weight equals raw wire.
Wire beta contraction changes size by

    (m-1)a+(F_A-1)M-4-2m-G_D.

Root hoisting adds4+c(R')-m. Here F_A-1=sA+cA,
G_D=sD+cD, and c(R')=cC+cD+m*cA. The4 and cD terms cancel.
This is the local depth-one analogue of SourceCost.contract_hoist_price,
not an application of its root-redex statement at an invalid position.

### 2.4 A strict lambda-sink restriction

Consider the narrower first-operand source

    lambda s. s ((lambda x. lambda b.B) A) T1...Tq,

with A and B j-free and no pending operands inside the first operand.
Sinking the x let under b gives a literal first handler:

    lambda s. s (lambda b. (lambda x.B[swap x,b]) A↑) T1...Tq.

The move preserves beta meaning, lambda count and source-j depth, and
changes weight by

    F_A + occ_b(B) - occ_x(B).

The identity is kernel-checked as Prices.firstop_sink_price, using the
repository's sink_price/sink_join. Therefore the inherited handlerlet
exclusion upgrades the usual nonnegative minimum-price condition to

    occ_x(B) < F_A + occ_b(B).                         (S)

If the change were negative, the original would not be a minimum. If it
were zero, the new literal-handler reader would be a global minimum with
all three ordering coordinates equal, contrary to handlerlet. This last
use of handlerlet is a handwritten deduction from the supplied result.
The strictness is not asserted when A contains j: sinking then changes
its depth and adds its special capture charge.

## 3. New exclusions and exact evidence boundaries

### 3.1 No linear redex anywhere in a j-free first operand

For the marked source in section2.2, let ell be C's hole depth, F the
number of A's outward leaves, M the depth of D's unique x, and G the
number of D's other outward leaves. The exact minimum-linear filter is

    (F-1)M-6-G >=1.                                  (L)

A zero change would remove a source lambda at the same weight, so it is
also excluded. Prices.linear_filter checks (L) from the repository's
minimum_linear_source_charge for arbitrary source contexts. Since the
redex is j-free, there are no unaccounted hole charges.

The finite inventory retains arbitrary A,D,C and all tails within the
joint source budget. It is not restricted to beta-normal pieces or to
redexes on H's head path.

Completeness follows by induction on the exact constructors:

1. A variable uses its actual index price; a lambda costs2 and extends the
   lexical frame; an application costs2 and considers every cost split.
2. Argument features are its free-leaf count, lambda count and c presence.
   Body features are x count, x-depth sum, other outward leaves and c
   presence. These are precisely the data used in (L).
3. C is the marked hole, a lambda around a context, or an application with
   the context in either child and an arbitrary ordinary term in the
   other. Its marked hole has exact depth ell.
4. The tail-list recurrence considers every cost, c-presence and one-j
   split. Its j may be under any number of lambdas, at the exact weighted
   price.
5. Every emitted block has its independently counted cardinality checked;
   every concrete source checks the full source weight and actual beta
   price. Equal source trees are deduplicated exactly.

The finite loop ceilings are certified by size, not guessed. From (L),
(F-1)M>=7. The elementary tree bounds a>=4F-2 and d>=3M+2 imply the redex
cost is at least4F+3M+4>=28 (the same elementary arithmetic as loop's
critical_base). Thus q<=2 and ell<=2 below46. The code's wider loops
q=1..8 and ell=0..8 include every possible case; zero count cells are
actually visited.

| q | ell | Sources | Wrong zero NF | Wrong n=1 NF | Exceptions |
|---:|---:|---:|---:|---:|---:|
| 1 | 0 | 673 | 658 | 15 | 0 |
| 1 | 1 | 38 | 38 | 0 | 0 |
| 2 | 0 | 16 | 16 | 0 | 0 |
| total | | **727** | **712** | **15** | **0** |

All sources are distinct. There are no fuel, size, recursion or cycle
cutoffs. Every source has a theorem `not Reader r_i` in
LinearInventory.lean, proved by a concrete beta reduction to a distinct
normal form and confluence. The longest certificate uses18 beta steps;
there are6216 steps in total. These refutations require only the zero or
length-one law, so they refute every full-law reader.

**The727 refutations and cost/filter formulas are kernel-checked. The
constructor-exhaustion proof and its assembly into this family theorem
are handwritten, backed by the complete Python inventory.** The whole
family theorem has not been formalized as a Lean enumeration theorem.

### 3.2 No multiplicity six or more in a j-free first operand

This extends loop's literal-handler restriction to arbitrary j-free H.
The proof is handwritten, with its arithmetic endpoints in Prices.lean.
No additional candidate enumeration is used.

Let m>=6. Tree accounting gives d>=4m-2, so

    |H| >=4m+2+a+k <=33.

In particular m<=7. The reader must have a source c. Partition by its
first available location, taking A first, then D, then C, then the tails.
If A lacks c:

- A c leaf in D costs at least4 plus its joining application2 beyond the
  pure m-x baseline. Thus H>=4m+10>=34, impossible.
- A c leaf in C costs at least5 outside the marked redex. The budget
  forces m=6,a=2,d=22,k=5. No context lambda fits, so A=s. Its contraction
  saves6+G bits, contradicting minimum.
- If c occurs only in the tails, their minimum price makes H<=28. This
  forces m=6,A=s,d=22,k=0, again contradicted by contraction.

If A contains c, at local context depth ell it has a>=ell+3, while the
context costs at least2ell. For m=7 there is only A=c, a pure-x D and
empty C; the zero head is c, not r. For m=6 the budget permits only:

- ell=0: A=c, lambda u.c, c s, or s c;
- ell=1: A=c.

This list follows directly from a<=7-2ell: c costs ell+3, a lambda above
it adds3, and an application with one additional leaf adds at least4.
For A=c at ell=0, D has at most four bits beyond its pure-x tree. An
additional external leaf costs at least5; a new local leaf with its
binder costs at least6. Thus its only leaves are x, with possibly vacuous
lambdas. A leading lambda costs at least2+m>=8 extra, and a lambda on the
applied head path would be an erasing source redex, forbidden in a
minimum. Hence D's head is x and becomes rigid c. The possible remaining
contexts are empty, an application with s, or one lambda; none changes
that zero outcome to an r-headed term. For lambda u.c, D is a pure-x
application tree and applying A exposes c. For c s and s c, A already has
rigid c head on zero. The ell=1 case is a single surrounding lambda and
a pure-x D, and likewise yields c after the supplied cell arguments.
All cases contradict the zero law.

Combining this with section3.1 and the existing minimum non-erasure theorem
proves the claimed **multiplicity2..5 restriction throughout a j-free H**.
It says nothing yet about redexes inside a first operand containing j.

### 3.3 Verification and compute limits

| Run | Time | Peak RSS | Threads |
|---|---:|---:|---:|
| linear_check.py,727 sources | 0.061s | 26MB | 1 compute + watchdog |
| LinearCertificates.lean | 0.225s | 126MB | 2 |
| LinearInventory.lean | 10.642s | 709MB | 2 |
| Prices.lean, final | 0.554s | 465MB | 2 |

Every concrete refutation's axiom list is exactly `[propext, Quot.sound]`.
The general price module additionally uses `Classical.choice` through
existing imports/lemmas. No final theorem uses sorryAx or native_decide.
The Lean wrapper stops its exact child process group at110s or900MB.
Every run is below the specified term, time, RSS and thread caps.

Reproduce from the repository root:

    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/firstop/linear_count.py
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/firstop/linear_check.py
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/firstop/export_linear.py
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/firstop/run_limited.py LinearCertificates.lean
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/firstop/run_limited.py LinearInventory.lean
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round4/firstop/run_limited.py Prices.lean

All writes stayed in this lane. No external consult, subagent, commit,
engine modification, full census, or broad source search ran.

## 4. Remaining boundary and next proof step

The assigned whole branch is **not closed**. Its remaining source cases
include:

- j-free first operands with nonlinear source redexes of multiplicity2..5,
  including stream-headed first operands;
- first operands containing j, especially a redex whose shared argument
  contains it at depth one;
- generated handlers whose let sinking raises weight, including equality
  issues when a move changes lambda count or hole depth.

Even a contraction ending in a literal lambda does not by itself invoke
handlerlet. It may increase weight; or at the same weight it may increase
lambda count, so the result is not a global lexicographic minimum. The
exact identities above expose these costs instead of assuming them away.

Count-only dynamic programming explains why a larger check is not the
next move. The relaxed direct-head-redex family with j in pending operands
has853,044 layouts after the inside/outside pending-operand split. The
relaxed j-in-argument family still has5,275,615. These counts instantiate
no candidate terms and establish no semantic result. No over-cap source
inventory was run. The only source-family check performed was the pinned
727-source linear case.

The useful next target is a semantic classification of the remaining
multiplicity2..5 redexes, combining (H), the strict sink constraint (S),
and the actual zero/unary ancestry of the repeated variable's uses. For a
j-free first operand whose let body begins with a lambda, (S) already
requires enough captures or repeated uses of the incoming bit to make
sinking expensive. That is the promising place to connect zcore's single
8..15-bit dispatch-site result. A produced handler's bit uses are not
automatically distinct source dispatch sites, so that connection still
needs proof. Merely counting the bit occurrences would skip the sharing
issue this lane was assigned.

H_nf would provide an absolute bound after full normalization, but it
would still need a bound on the cumulative increases caused by these
source contractions. No such bound is proved here, and H_nf was not
assumed in any result above.
