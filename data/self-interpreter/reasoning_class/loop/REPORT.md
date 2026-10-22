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
