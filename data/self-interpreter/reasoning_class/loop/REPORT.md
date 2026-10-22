# Loop lane — wave 5

**Verdict.** Finite reader syntax does **not** imply the proposed exact
periodicity. I constructed a correct one-hole reader with an unbounded
live counter and a quadratic normal-order unary scan. Its two reader laws
are kernel-checked for every length. A second problem is independent of
the counter: the 162's recurring skip applications are residuals of the
**input**, not of reader-source applications. A valid replacement must
track contraction ancestry, not only surviving source nodes.

I prove a conditional finite-state pumping lemma, a general suffix-exposure
lemma, and source-union accounting. I also give analytic 20/23 and 46
bounds for a precisely restricted diagonal/serial family, allowing arbitrary
redexes in its callback. I did **not** independently reprove the unrestricted
20/23 facts or establish `w >= 46`. The missing implication is stated below.

## 1. Complete interpreters and verification

No complete interpreter was built; there is no new battery result or
sub-162 claim. The new object is a reader used as an operational
counterexample, not an optimization candidate.

Definitions are ordinary lambda terms; all abbreviations expand literally:

```text
O = λf x. x
S = λk f x. f (k f x)
I = λx. x
W = λg t k. t (λb r. b r (k I (g g r (S k))))
G = W W

Rslow = λs. s I (λu. s (λq.c) (G s O)) j
```

`Rslow` has one source `j`, `cost = 217`, `depth(j) = 1`, and `w = 221`
as written. It was not polished or assembled into an interpreter.

Files:

- `Slow.lean`: `slow_skip m n N` for all natural m,n and every term N;
  `slow_reader_zero r` for every tail r; `slow_reader_unary n N` for every
  n and every suffix N; `slow_price` checks its cost/depth/one-hole facts.
  The reader's rigid frame is c=0, j=1.
- `ReaderSlow.lam`: expanded reader source, with exactly c and j free.
- `lean.log`: final successful `lean -j2` check, 0.45 s wall / 0.33 s user /
  0.15 s system; maximum RSS 429,539,328 bytes. Both reader theorems use
  only `propext`, `Quot.sound`; no `sorry`.
- `check.py`: targeted checks only, no enumeration. Nine readers passed
  zero and n=1..12. Exact clocks were checked for G at n=0..16 and the
  diagonal skip at n=0..12. Runtime 0.337 s; RSS 20,774,912 bytes;
  one computation thread and one watchdog thread.

The Lean file proves reductions, not an operational pumping impossibility
theorem. The exact clock and the latter claim have the handwritten proofs
below, corroborated by the targeted clock checks.

## 2. Exact identities and the failure of unconditional pumping

### 2.1 A correct scan with a live growing counter

Put `k_i = S^i O`, without normalizing these successor applications.
Normal-order reduction gives, for any remaining unary tail r,

```text
G (cons F r) k_i
  ->^8 k_i I (G r (S k_i))
  ->^(4i+2) G r k_(i+1).

G (cons K N) k_i ->^8 N.
```

The first eight steps are three applications of W, one cell application,
two callback applications and two Boolean applications. For every term X,

```text
k_0 I X ->^2 X,
k_(i+1) I X ->^4 k_i I X.
```

The second identity expands S in three steps and contracts the resulting
`I (...)` in one. These are actual normal-order steps; X is untouched
until the clock has finished. Consequently, induction on m gives

```text
G U_m(N) k_i ->* N,
steps(G U_m(N) k_i -> N) = 2m² + (8+4i)m + 8
```

when N is rigid. In particular the clock from O is `2n²+8n+8`.
The all-m reduction identity is kernel-checked as `slow_skip`; the exact
clock formula is handwritten.

On a zero stream, `Rslow Z(r) ->* r j`: `s I` selects the zero tail and
never enters G. On a unary stream, it selects the absorber and gives
`c U_(n-1)(N) (G U_n(N) O) ->* c U_(n-1)(N) N`. Thus this is a reader
under exactly the brief's laws, not a weaker suffix extractor. Both laws
are kernel-checked.

This scan has **no stream applied to itself**. Its recurrence is a
source-function recurrence, through `g g`, with a growing argument. A
stream self-application is therefore not a necessary feature of a reader.

### 2.2 What is refuted, precisely

An exact finite-template pump would provide finitely many fixed contexts
`D_q`, whose only variable components are the unread stream and declared
unchanged input parameters, and represent successive active scan states
by `D_q[U_m]`. Transitions must preserve all live control, arguments,
closures and stack; they cannot silently discard a counter which the run
will evaluate. Repeating q then gives a fixed beta word consuming a fixed
number of leading F-cells.

At the cell boundary after i unary cells, this reader has the active state

```text
G U_(n-i)(N) k_i.
```

The terms k_i have distinct beta normal forms (the Church numerals).
Their syntactic successor chains grow with i. During the next clock, an
untouched copy `S k_i` remains in the pending recursive call. Therefore
the growing state is not absent even between cell boundaries. Input
stream substitution cannot supply these source-origin successor chains:
the input contains only cells, K and F. A finite collection of fixed exact
contexts has a bounded number of these source-origin nodes. Our run
exceeds that bound before it reaches the terminator. The gaps between
successive cell boundaries also grow as `10+4i`, rather than repeating a
fixed beta word.

One can quotient away the clock **using an additional semantic proof**
that `k_i I X ->* X`. That is a useful abstraction, but it is no longer
the claimed consequence of finite source syntax. Repeating a program
location is not repeating its closure or continuation.

If "period" instead permits a growing extra state parameter, arbitrary
length internal computations, or an iterated context around the old
state, this counterexample need not refute that weaker notion. Those
extensions must be stated explicitly; they also remove the proposed
finite-state basis for the source-price inference.

This does not refute pumping for minimum readers or readers below 46.
The counterexample is deliberately expensive. Such a restricted theorem
would need a proof that small/minimum readers cannot carry these states.
Also, a statement merely requiring one occurrence of `D[U_(n-k)]` with
arbitrary D and k=0 is vacuous; periodicity must mean recurrent boundaries.

### 2.3 The diagonal loop is input-generated

For m >= 0 and any a,

```text
U_(m+1) U_(m+1)
  -> U_(m+1) F U_m
  -> F F U_m U_m
  -> (λy.y) U_m U_m
  -> U_m U_m.

U_0 U_0 ->^4 K N,
U_n U_n a ->^(4n+6) N.
```

Label each application and abstraction by its literal source position,
keeping disjoint labels for R and its input. In the initial contraction
of `s s`, the source application node is consumed. The new applications
come from the Scott cell body `f b r`. Subsequent rounds likewise use
input-cell applications. The stream-variable leaves have already been
replaced by input copies. Thus the repeated skip need not contain any
residual of a reader-source application or lambda.

Its six-bit `s s` is an **initiating cause**, not a surviving residual
period. The existing cross-application identity is not new; the
consequence for the requested source-residual charging argument is.

One may instead call the whole substituted stream a causal descendant of
the reader's s leaf. That convention retains the initiating source, but
it is stronger than ordinary surviving-node provenance: arbitrarily many
input nodes then share that one ancestor, which must still be charged once.

## 3. Valid replacement lemmas and price arguments

### 3.1 Conditional exact pumping — handwritten

Assume an actual reader run has an exact finite representation at scan
boundaries by states q in Q, `|Q| = B`, with contexts D_q as above.
Assume also that for enough leading F-cells there is a deterministic
transition

```text
D_q[U_m] ->^(a(q)) D_(δ(q))[U_(m-e(q))],
```

where the normal-order beta word, its length a(q), and the positive number
of cells consumed e(q) depend only on q. The transition does not inspect
the declared unchanged parameters, and it preserves every live component.

Then there are `0 <= i < j <= B` with equal control state at boundaries i
and j. Determinism gives equality at i+t and j+t for every t while the
input is long enough. The period consumes

```text
p = sum e(q_l),  i <= l < j,
```

and repeats exactly `sum a(q_l)` contractions. If `e(q) <= E`, prefix and
period consume at most BE cells each. This is just the pigeonhole
principle followed by induction on t; it requires no normal-source or
no-let assumption.

The substantial extra hypothesis is the **finite exact representation**.
Finitely many source labels do not provide it. Even under this hypothesis,
an input-generated cycle can have no surviving reader-source nodes, and a
shared helper may serve multiple roles. There is no 20-, 23- or 46-bit
consequence without another charging theorem.

### 3.2 Unconditional suffix exposure — handwritten

Let R contain no fresh N, and suppose `R U_n(N)` reduces to a term with an
occurrence of N outside all lambdas (in particular, the required final
second argument N). Label the n+1 input-cell lambdas on the initial path
to N. Then the reduction contracts a descendant of **every one** of these
cell lambdas along the ancestry of the selected output occurrence.
Hence at least n+1 input-cell beta contractions occur.

Proof: follow that output occurrence backwards, choosing its unique
pre-copy ancestor at each substitution. An enclosing labelled lambda
persists around the chosen occurrence under every reduction except a
contraction of that lambda. Erasing the chosen occurrence is impossible;
copying it retains its internal ancestors. The final occurrence has none
of those enclosing lambdas, so each must have been contracted. This
argument permits arbitrary source redexes, copying, and reconstruction of
the *other* output argument. It proves unbounded demand, not regularity.

### 3.3 Exact accounting with sharing — handwritten

Give each source node its literal BLC contribution: two for an application
or lambda, index+2 for a non-j variable, zero for j. Add four to each
source lambda above the unique j. The sum is exactly w(R).

For any obligations with causal source supports P,V,Z, the amount one may
charge is the weight of their **union**, not the sum of their weights.
For example,

```text
weight(P union V union Z)
 = weight(P)+weight(V)+weight(Z)
   -weight(P intersect V)-weight(P intersect Z)-weight(V intersect Z)
   +weight(P intersect V intersect Z).
```

Repeated residuals of one source node contribute once. A contraction-
ancestry record is necessary to retain the initiating `s s` once its
applications have disappeared. This gives a sound ledger, but no bound on
the overlaps. The proposed pump supplies neither that bound nor an
injective map from period events to source nodes.

### 3.4 Analytic 20/23 result in the direct diagonal family — handwritten

Consider

```text
T = s H (s s j),
```

in frame [s,c], with j priced zero and outside H. H has only c free; its
internal syntax, redexes and sharing are unrestricted. Suppose T satisfies
every unary law. Then `cost(T) >= 20`; if `cost(T) <= 23`, T is literally
`s (λq.c) (s s j)`.

Proof: T costs `14 + h`, where h is H's cost in this frame. H must contain
c because neither the input nor the rest of T contains it. If H is
lambda-free, it is an application tree over c. Then `H F U_(n-1) N` has
the wrong rigid c-spine arity. So H contains a lambda. A c inside a lambda
costs at least four plus two for the binder; if c and the lambda are in
different branches, the minimum is `3+4+2=9`. Thus h >= 6.

For h <= 9, constructor counting gives just four possibilities containing
both c and a lambda:

```text
λq.c             6
λq v.c           9
I c              9
c I              9
```

With one lambda and an application beneath it the minimum is 10; three
lambdas cost at least 12; separate branches cost at least 9 with equality
only as listed. The last three candidates give respectively `c N`,
`c F U_(n-1) N`, and `c I F U_(n-1) N`, so fail. The first works by §2.3.
This is a symbolic all-n argument, with no term enumeration.

**Coverage boundary:** the source factorization T is an explicit
hypothesis. I have not derived it for arbitrary cores, lets or redexes.
Thus this does not replace the round's unrestricted finite checks. A
finite-state scan need not expose this literal source factorization.

### 3.5 Conditional 46-bit price — handwritten

For the serial-absorber family

```text
R_H = λs. s I (λu. s H (s s u)) j,
```

H again has only c free and is otherwise arbitrary source syntax. Let h
be its price in frame [s,c] and f its number of free c leaves. The exact
source price is

```text
w(R_H) = 39 + h + f.
```

The outer stream lambda, routing spine, I, and hole tax cost 18. The arm
costs `21+h+f`: its absorber costs two; three s leaves cost three each;
four applications cost eight; the u leaf costs two; and moving H under u
adds f. The unary law forces h >= 6 and f >= 1 as in §3.4. Therefore
`w(R_H) >= 46`, with equality only at `H = λq.c`. No minimality assumption
is used in this family theorem.

The same lower bound holds with any j-free term A in place of the final
u: its cost in the arm's frame is at least two, so the exact formula becomes
`37+h+f+cost(A) >= 46`. This includes the 47-bit reader's A=s.

For an arbitrary reader, the weakest premise of **this particular
source-charge proof** is a cost-dominating injective origin map for this
required serial skeleton: its distinct charged nodes must have distinct
source ancestors, and its total index/hole-depth charges must not exceed
those ancestors' charges. Extra source nodes are harmless. This condition
allows administrative redexes, but excludes unpriced alias sharing and
index-increasing contraction. Under it, summing the injection proves 46.
It is a sufficient structural certificate, not a claimed necessary
condition or a logically weakest hypothesis among all possible proofs.

To apply this route to a hypothetical minimum counterexample, take the
global order **(weight, lambda count, hole depth)**. One must prove either
that it admits this certificate or that a law-preserving rewrite to a
certified source strictly improves that order. Neither follows from
periodicity. I have not proved either. In particular, just contracting
all lets is invalid; the 165's placement gives the concrete counterexample
to cost monotonicity below.

## 4. Tests against the required readers and honest assessment

All the following passed zero and n=1..12 in the targeted checker. That
sampling alone is not an all-n proof. The 162/47/164/165 reductions use the
diagonal identity in §2.3; R59 contracts to the 162; the two more complicated
witnesses have the explicit all-n reductions below.

| Reader | w / j-depth | Unary scan | Status of the serial charge hypothesis |
|---|---:|---|---|
| 162 | 46 / 1 | `s s u` | Literal sharp instance |
| 47-bit reader | 47 / 1 | `s s s` | Same skeleton, pricier junk leaf; charge survives |
| 164: `λs.s (λb.b F c) (s I (s s) j)` | 48 / 1 | `s s j` | Not serial: c is in one operand, N/j routing in the other |
| 165, j at depth 4 | 54 / 4 | `s s s` | Not serial: zero arm contains j |
| 165, hoisted | 49 / 0 | `s s s` | Contracting its let raises w to 54; depth charge is not preserved |
| R59 | 59 / 1 | 162 after two administrative steps | Contracts to 162, saving 13; its wrapper supplies separate source origins |
| R84 | 84 / 1 | `t t j`, t the first tail | Shared x supplies both zero handoff and unary suffix; no asserted injective serial certificate |
| R104 | 104 / 1 | `s s s` | Let-shared value, with a lambda-valued zero parent; no asserted serial certificate |
| Rslow | 221 / 1 | growing `G t k_i` | Exact finite-template premise fails |

For R84, put

```text
X = s (λb t. b (λa k. k a) (t t)) j.
```

On zero, `X -> λk.k j`. On unary, `X -> U_(n-1) U_(n-1) j -> N`,
including n=1. The outer body is
`s (λb t. b (X t) (c t X))`: zero gives `X r -> r j`; unary gives
`c U_(n-1) X -> c U_(n-1) N`. The repeated t occurrences are bound
inside a callback; a raw count of free source s occurrences would miss
this copying route. X is shared, not two independently chargeable pieces.

For R104, after u=j define

```text
X = s (λb t. b (λa q. t j) (c t)) (s s s).
```

On zero, `X -> λq.r j`; on unary, `X -> c U_(n-1) N`. Its outer body
`s (λb t. b (X s) X)` returns `X s -> r j` on zero and X on unary.
Again the zero lambda is operationally real, not a rigid zero result.

These examples have a simple diagonal scan once dispatch is resolved, but
very different source-role sharing and j placement. Thus even a successful
finite-template theorem would not settle the additive source price. The
164 is particularly decisive: its standard one-state scan already
coexists with the overlap that invalidated the earlier additive argument.

The 165's depth-4-to-hoisted change is also decisive for proof hygiene:
source normalization and source size minimization are different operations.
An argument about a global minimum must use the stated three-part order,
preserve the one-hole requirement, and prove its cost comparison.

**My read:** exact pumping alone cannot close 46. Its general premise is
false, and its finite-state repair still does not bound overlap of causal
source supports. A potentially useful next theorem is a *small-source
causal separation* result: in a minimum reader below 46, trace the first
exposed suffix N and the retained/reconstructed unary value back through
the first copying events, keeping contracted-node ancestry; prove either
a cost-dominating serial certificate or a separately priced shared
configuration. This must handle R84's captured t and x, the 164's split
operands, and hoisting's exact depth savings. I have not proved such a
theorem, and I do not regard finite source-label repetition as evidence
for it.

The unrestricted unary-core >=20 and <=23 uniqueness statements remain
supported here by the earlier finite checks, not by a new independent
proof. No new unconditional reader floor is claimed.

## 5. Follow-up: rigid shielding and priced shared configurations

**Result.** I have not proved the requested exhaustion for an arbitrary
minimum reader. I did prove the following precisely delimited,
computer-assisted source-family bounds, without any normality or minimality
assumption on their operands:

| Source family | Lower bound on w | Sharp witness / required example |
|---|---:|---|
| `λs.s (λb.b A c) B`, exactly one j anywhere in A or B | **48** | 164, w=48 |
| `(λa s.s (λb.b A c) B) j`, arbitrary multiplicity of a in either or both operands | **49** | Hoisted 165, w=49 |
| `λs.(λx.s (λb t.b (x t) (c t x))) X`, exactly one j in X | **70** | Includes R84, w=84; bound not claimed sharp |
| `λs.(λu.(λx.s (λb t.b (x s) x)) X) j` | **49** | Includes R104, w=104; bound is wrapper accounting |

The first two bounds price the 164's split continuation and the 165's
hoisting exactly. The second permits nonlinear sharing of the hoisted
argument; it is not restricted to a single use of a. The third allows an
arbitrary lambda-valued zero result of X and prices its source once.
All local operands may contain arbitrary beta-redexes and internal lets.
These are syntactic families, not their beta-equivalence closures.

**Evidence boundary.** The semantic rigid-shield invariant and four exact
source-price identities are kernel-checked. The family bounds combine
handwritten reductions, confluence, and exhaustive small helper lemmas
checked by Python. The finite helper lemmas and the assembled family bounds
are not Lean theorems. No unrestricted w>=46 theorem or new interpreter is
claimed.

### 5.1 The semantic invariant: a surviving occurrence may be inaccessible

The stronger occurrence-erasure claim is false. Let

```text
B = s (λb t.t t) j.
```

Its local weighted cost is 16. For every n>=1,

```text
B[U_n/s] -> U_(n-1) U_(n-1) j ->* N,
B[Z(r)/s] -> r r j.
```

Thus retaining the source j on zero does not make it usable. The precise
replacement is **rigid shielding**: every surviving j lies inside a
c-headed application, or an r-headed spine with at least two arguments.
The target `r j` has no such protected occurrence.

This property is preserved by beta reduction. A reduction inside a shield
cannot contract its rigid head or remove its existing spine arguments. A
reduction outside a shield can erase it or copy it, but every surviving
copy retains the shield. Substitution of another shielded term preserves
the property as well. Consequently an arbitrary j-free context cannot
turn `r r j` into `r j`, even if it duplicates its operand, applies it,
or contains its own redexes.

`Shield.lean` proves this in ordinary lambda syntax with named free atoms
and de Bruijn bound variables. `Safe.sub`, `Safe.step`, `Safe.steps`, and
`no_recovery` are the relevant results. `no_recovery_from_rrj` specializes
the result to the actual low-cost obstruction. These theorems depend on no
axioms. The named atoms are the rigid probe variables c,j,r; this file does
not claim a formally checked translation to the repository's `Term`.

When the operand B has a normal form Q, we may reduce B first in its
surrounding context. If the original reader also reduces to the normal
form `r j`, confluence forces the context containing Q to reduce to
`r j`. The shielding theorem then rules this out. This avoids the invalid
assumption that the operational reader must evaluate B before using it.

### 5.2 Complete helper cases and their scope

`split_check.py` enumerates source syntax by exact cost. Ordinary variables
have cost 2+index; an abstraction and an application each cost 2. In a
weighted one-hole operand, the j atom costs four times its internal lambda
depth. In a hoisted operand, the marker represents the bound a variable,
so its cost is its ordinary index plus two, increasing by one per internal
lambda. Its slot is excluded from ordinary variable generation.

The recurrence covers every source term: choose a variable/marker leaf,
remove two from the cost for a lambda and increment the lexical depth,
or split cost minus two and the marker multiplicity across an application.
These constructor cases are disjoint. No beta-normality, head-shape,
linearity, or lambda-count restriction is imposed. For the hoisted cases,
all positive marker counts up to floor(cost/minimum-marker-cost) are
covered. Sources without the marker are shielded by syntax and cannot
normalize to j; they do not need to be normalized for those conclusions.

An all-n reader law implies the necessary probes at n=1,2,3 used by the
checks. This implication is the only use of those probes in the proof;
passing them is not asserted to prove an all-n positive law. A resource
cutoff raises an exception and fails the entire check. The final run had
no cutoffs.

The closed helper cases are:

| Helper statement | Complete sources checked | Necessary-unary survivors |
|---|---:|---:|
| One j, frame `[s,c]`, weighted cost <=17: zero NF is r or `r r j` | 3,277 | 61 |
| Same frame, cost <=19: zero NF is not j, and applying it to r is not `r j` | 10,752 | 195 |
| No j, frame `[s,c]`, raw cost <=9: cannot return N on U1 | 24 | 0 |
| One j, frame `[b,s,c]`, weighted cost <=9: `A[K/b,Z/s] r X` fails for every j-free X | 38 | Not a unary check |
| Hoisted frame `[s,a,c]`, positive a count, raw cost <=20: zero NF after a=j is r or `r r j` | 5,380 | 84 |
| Same hoisted frame, raw cost <=11: zero NF is not j | 28 | 1 |
| Hoisted frame `[b,s,a,c]`, positive a count, raw cost <=13: classify `A[K/b,Z/s,j/a] r X` for arbitrary X | 55 | Not a unary check |

Every unary survivor in a hoisted positive-a frame has cost >=11.
The no-a lower bound 10 transfers from `[s,c]` to `[s,a,c]` by deleting the
unused a slot, which can only lower ordinary variable costs.

In the first zero-arm check, the symbolic result either has the wrong
rigid head or contains no j. Substituting any j-free X preserves that
failure. In the second zero-arm check X is completely arbitrary and may
contain j: the result has a wrong rigid head/arity, retains an outer
lambda, contains neither j nor X, or is exactly `r X`. The last case has
A cost at least 12; it occurs only once in this enumeration. These are
stable syntactic obstructions, not tests on a few chosen X values.

The combined check covers **19,554 helper sources**, takes **0.481 s**, and
uses **25,067,520 bytes** maximum RSS in the final recorded run. It has one
compute thread plus its resource-watchdog thread. The log is
`split_check.log`. This is not a whole-reader enumeration.

### 5.3 Split dispatch: the sharp source bound 48

Let

```text
S(A,B) = λs.s (λb.b A c) B,
```

where A is scoped in `[b,s,c,j]`, B in `[s,c,j]`, and exactly one source j
occurs across A and B. Both operands are otherwise arbitrary terms.
Use raw cost for a j-free operand, and local weighted cost for the operand
containing j; the latter prices j at zero plus four per internal lambda.

Direct dispatch gives, for n>=1,

```text
S(A,B) U_n ->* c U_(n-1) B[U_n/s],
S(A,B) Z(r) ->* A[K/b,Z/s] r B[Z/s].
```

The first line forces B[U_n/s] to normalize to N. In particular, the
unary value handed to c is the outer input tail: it is routed by the
literal dispatch, independently of the suffix computation inside B.

If j lies in B, exact source accounting gives

```text
w(S) = 24 + raw(A) + weighted(B).
```

If weighted(B)<=17, its zero normal form is shielded by §5.2, whereas
`A[K/b,Z/s] r [-]` is a j-free context. This contradicts the zero law.
Hence weighted(B)>=18. If w<=47 then raw(A)<=5. The complete list is
`b`, `s`, `c`, `I`, `λv.b`. On zero, their resulting outer heads are,
respectively, r with no argument; r with three arguments; c; `r B[Z/s]`;
and a lambda. Only I could work, requiring B[Z/s]=j. Its cost is four,
so w<=47 also gives weighted(B)<=19, and the second helper case excludes
that requirement.

If j lies in A, the exact price is

```text
w(S) = 28 + weighted(A) + raw(B).
```

The j-free suffix operand has raw(B)>=10. Thus w<=47 implies
weighted(A)<=9. The small zero-arm classification rules out
`A[K/b,Z/s] r B[Z/s] =β r j` for every possible j-free B[Z/s].

Both cases contradict w<=47. Therefore **w(S)>=48**. The 164 attains it
with `A=F` (cost six) and `B=s I (s s) j` (weighted cost eighteen).
No global minimality assumption was used.

`Prices.split_price` kernel-checks the underlying identity
`weight 0 (S A B) = 20 + weight 2 A + weight 1 B` in the repository's
actual `Term` representation. The one-hole split into the two displayed
formulas is ordinary depth accounting.

### 5.4 Hoisted split dispatch: the sharp source bound 49

Now let

```text
H(A,B) = (λa s.s (λb.b A c) B) j,
```

where A is scoped in `[b,s,a,c]`, B in `[s,a,c]`, and there is no other
free j. Any number of a occurrences is allowed, in either or both operands.
The reader laws force at least one a occurrence. All costs below are raw
wire costs in those lexical frames. The exact source identity is

```text
w(H) = 25 + raw(A) + raw(B).
```

This is `Prices.hoisted_price`. It does not contract the outer let or
charge the resulting j copies separately.

If A contains no a, B must contain a. If raw(B)<=20, its zero normal form
after a=j is shielded, and the j-free A context cannot produce `r j`.
Thus raw(B)>=21. The only A below cost four are b and s; their zero
outputs have the wrong r arity, independently of B. Hence raw(A)>=4,
and this branch actually has **w>=50**.

If A contains a, the necessary unary law gives raw(B)>=10, whether or
not B also contains a. Suppose w<=48. Then raw(A)<=13. The complete
positive-a classification in §5.2 rejects every such A for arbitrary X,
except a source of cost at least 12 whose zero action is `r X`. In that
exception raw(B)<=11 and the zero law requires B[Z/s,j/a]=j. If B has no
a it cannot produce j at all. If it has a, the raw-cost-11 helper case
excludes j. This also contradicts w<=48.

Therefore **w(H)>=49**, attained by

```text
A = λu r.r a       raw(A)=14,
B = s s s         raw(B)=10.
```

This is the hoisted 165. Its unhoisted depth-four presentation lies in S
with w=54. The proof prices the hoisted source at 49 directly and never
uses an invalid monotonicity claim about let contraction.

### 5.5 Shared X and a lambda-valued zero parent

For the R84 wrapper, define

```text
RX(X) = λs.(λx.s (λb t.b (x t) (c t x))) X,
```

where X is any term in `[s,c,j]` with exactly one j. The laws force

```text
X[U_n/s] =β N                 for every n>=1,
X[Z(r)/s] r =β r j.
```

There is no restriction on the zero normal form of X: it may be a lambda,
as in R84. Exact source accounting is

```text
w(RX) = 50 + weighted(X).
```

The cost-19 helper check excludes the functional zero requirement, so
weighted(X)>=20 and **w(RX)>=70**. This is not claimed sharp. The fixed
wrapper itself already exceeds 45. What matters for the overlap issue is
that X is counted once although its residuals supply both the zero handoff
and the unary suffix; the captured tail t is priced in the fixed wrapper.
`Prices.sharedX_price` checks its general source identity.

For the R104 wrapper,

```text
NX(X) = λs.(λu.(λx.s (λb t.b (x s) x)) X) j,
```

X is arbitrary in `[u,s,c]`. `Prices.nestedX_price` proves
`w(NX)=47+raw(X)`. Every source term has raw cost at least two, so
**w(NX)>=49** without any semantic helper check. This handles any
multiplicity of u inside X and does not assume its zero result is rigid.

### 5.6 Required examples, causal interpretation, and the remaining gap

| Required example | Follow-up coverage |
|---|---|
| 162, w=46 | The previous serial theorem in §3 remains sharp |
| 47-bit reader | Same serial theorem; the last junk leaf costs one more |
| 164, w=48 | Sharp instance of S; B owns the shared skip/zero routing |
| 165 at depth four, w=54 | Instance of S with j inside A |
| Hoisted 165, w=49 | Sharp instance of H; source a uses are charged before contraction |
| R59, w=59 | Previously checked source; contracts to the serial reader with a 13-bit saving |
| R84, w=84 | Instance of RX; arbitrary zero-valued closures allowed |
| R104, w=104 | Instance of NX; wrapper price already excludes <=45 |
| Rslow, w=221 | Still the counterexample to exact finite-template pumping; outside these syntactic families |

These proofs follow a useful part of contracted-node ancestry without
pretending to obtain pairwise-disjoint supports. In S, the literal outer
dispatch supplies the retained input tail to c. The source of B can serve
both the unbounded skip and zero routing and is charged once; the shielding
lemma gives a lower price for that overlap. If j is in A, it disappears
on unary dispatch and the j-free B is charged separately. In H, the
single source j may be copied into both supports, but every source use of
a already has its ordinary index/depth price. In RX, one source X and
its captured t route are priced exactly despite repeated residual use.

For an arbitrary globally minimum reader under **(w, lambda count, j-depth)**,
what remains missing is a theorem producing one of these cuts, or another
finite list of separately priced cuts, without increasing that order. An
arbitrary shared function can straddle the first dispatch, retain a tail in
its environment, and supply c from inside that shared function. No result
here moves such a function into the literal `λb.b A c` handler, restricts
a general shared argument to the hole j, or proves that an arbitrary
wrapper is at least as expensive as RX or NX. The reviewed minimum-reader
non-erasure and local beta-price inequalities do not provide that
classification on their own.

So the remaining problem is an **exhaustion of low-cost causal sharing
configurations**, rather than a need to price the 164 or hoisted165 again.
These family theorems exclude all their members below 46 independently of
minimality, but do not prove that every minimum below 46 belongs to their
union. I do not infer that exhaustion from the tested examples.

Artifacts: `split_check.py` / `split_check.log`, `Shield.lean` /
`shield.log`, and `Prices.lean` / `prices.log`. The final shield check took
0.704 s with a sampled process-group peak of 490,110,976 bytes; the price
check took 0.324 s with 471,662,592 bytes. Both used Lean `-j 2` and a
process-group watchdog. The price identities use only propext and
Quot.sound; the shield theorems use no axioms. All writes stayed in this
lane; no consult, commit, or broad search ran.
