# An unconditional 40-bit floor

**Theorem.** Every closed interpreter for the repository's beta-exact,
closed-source contract has BLC length at least **40**.

The proof has three layers. Sections 1–5 are Codex's handwritten proof of
37: the counting argument of `capture-width.md` gives 33 and excludes it,
and sections 3–4 exclude 34, 35 and 36 using semantic consequences of the
exact contract (head arity, internal width, internal nonlinearity, and exact
identity-source outputs). Two independent adversarial reviews (a separate
Codex consult and Gemini) found it correct; each re-derived the counting,
the width-loss lemma and the six divergence invariants, and the Codex review
replayed every finite refutation with its own reducer
(`data/self-interpreter/reasoning_floor/verify/`). `Blc/SelfintFloor37.lean`
kernel-checks the 144 fixed head-reduction clauses that case analysis cites,
including the loop clauses and fixed instances of the six parametric
divergence invariants, plus eight clauses for remainder extractors
(`remainder.md`); `tools/self-interpreter/theory/floor37/verify.py`
regenerates them and checks the 108 residual layouts in 0.05 seconds
(`data/self-interpreter/theory/floor37.json`). Section 6 proves that every
literal `λc.B` interpreter has at least 39 bits; sections 7–9 use it to
exclude sizes 37, 38 and 39 (Codex's handwritten proofs with kernel-checked
components, each found correct by two independent reviews). No Lean theorem
states the numeric floor itself: the syntax classifications, the width
argument and the implications of the finite certificates are handwritten;
the parametric invariants are proved below or in Lean, and no fuel cap is
used as a refutation anywhere.

This is not an additive parser-module argument and does not approach a
proof of 162-bit optimality; the conditional bound near 162 is
`class-bound.md`.

## 1. Dependencies and conventions

Write `L,V,X` for the number of abstractions, variable leaves, and total
zero-based de Bruijn index. Then

```
|E| = 2L + 4V - 2 + X.
```

The following established consequences are used.

1. `width(E) >= 3`. Here width is the maximum number of distinct variables
   free relative to a source subterm. This uses Statman's theorem that a
   closed term beta-convertible to `S` has width at least three (printed
   p. 406), applied to `E K (stream(S,I)) I`. The interface argument is in
   `capture-width.md`.
2. Two nonlinear binders of `E` are incomparable in the source ancestor
   order. This is `SelfintNonlinearChain.selfInterpreter_not_chain`.
3. An interpreter has head normal form with exactly two leading lambdas.
   If its head is the continuation, that head has exactly two arguments.
   A beta reduct with three leading lambdas is already impossible, whether
   or not its body head-normalizes. See `head-decomposition.md`.
4. An interpreter literally `lambda c s.B` has two nonlinear binders in
   `B`, and a subterm of `B` with three free variables bound **inside B**.
   The first is kernel-checked; the second is the internal form of (1).
   A literal interface costs at least 46 bits.
5. Every beta reduct of a closed interpreter is an interpreter. Hence
   every redex of a globally minimum interpreter is nonshrinking. In
   particular no source redex erases its argument, and a linear redex
   whose argument has at most one free occurrence strictly shrinks.
   These follow from the exact formula in `SelfintWireCost`:

   ```
   delta_bits = (k-1)|A| + (f-1)D - 2k - 4 - g.
   ```

6. No interpreter has length at most 33: the counting argument and the
   twelve-layout equality-case exclusion in `capture-width.md`.

All uses of reduction here are beta reduction. Some of the inherited
33-bit exclusions use beta-eta confluence to prove impossibility, as the
existing document explicitly explains; that does not change the beta-exact
contract.

For every divergence argument below, defined global weak-head steps
survive capture-avoiding substitution for the free placeholders: the
contracted lambda and its application remain on the same head spine.
Thus an infinite symbolic head trace with a placeholder stream remains
an infinite head trace when that placeholder is replaced by `stream(I,N)`.
This contradicts the exact contract on the normal source I. It is not
necessary to assert correctness on an arbitrary rigid object supplied
as the stream.

Let `Delta = lambda x.x x`, and write `K T` as shorthand for the literal
vacuous abstraction `lambda u.T` with fresh `u`. Thus a displayed box `K T`
is already a lambda term, not an extra application of an inlined K.

## 2. The inventory below 37 bits

Assume a minimum interpreter has size at most 36. A width witness supplies
three distinct live binders on a chain, called `a,b,c` from outside to
inside. The incomparable nonlinear pair needs a fourth live binder.
There are at least six leaves and index sum at least three. Consequently

```
(L,V) = (4,6) or (5,6),       X <= 6 or X <= 4 respectively.
```

In either case exactly four binders are live. Exactly two are nonlinear,
each used twice; the other two are used once. For `L=5` the additional
binder is vacuous. One nonlinear binder is on the width chain and the
other, called `d`, is incomparable with it.

The `d` abstraction cannot contain any of `a,b,c`: that would make it an
ancestor of the nonlinear binder on their chain. Nor can it capture a
chain variable. Its possible enclosing chain binders are affine, and
their sole occurrences are already needed in the width witness outside
`d`. Thus `d` is closed in isolation, with precisely two own occurrences
and at most the one vacuous binder.

There are at most one leading source lambda: two are ruled out by the
46-bit literal-interface bound, and three by head arity. If there is one,
call it `y`. It is live (otherwise the supplied rigid continuation could
never occur in the output), affine (a nonlinear root would be comparable
with all binders), and one of the width-chain binders. Follow the function
spine, under this possible lambda, to its first source redex. A neutral
head here would already be an impossible zero/one-lambda head normal form.

Write this redex `(lambda x.B) A`. An affine `x` would shrink: the only
possible free variable of its argument is `y`, used at most once globally.
A vacuous `x` also shrinks. Therefore `x` is one of the two nonlinear
binders.

### The width-chain binder cannot be this contractor

If `x` is on the three-binder chain, the width witness lies in `B`, as do
all nonleading binders on that chain. All four chain-bound leaves lie in
`B`: its nonlinear variable's two occurrences, and the two affine
variables' required occurrences. The argument must be closed, since a
possible `y` occurrence is already used in that witness. Its only possible
live binder is `d`; an argument with only vacuous binders and no free
variables is impossible. Thus the argument contains all of `d` and its
two leaves. There are no leaves available for a pending spine argument.

The argument is closed and has width one: its only live variable is `d`.
Contracting substitutes copies of this closed width-one term and removes
one of the three chain binders. Every remaining source subterm therefore
has at most two distinct free variables. Vacuous binders supply no free
variable. The reduct has width at most two, contradicting (1), since it
is still an interpreter.

The contractor is excluded by **loss of necessary width**, regardless of
whether this particular contraction grows its wire length.

### The source has one of two diagonal forms

The first contractor is consequently `d`. All nonleading chain binders
and their four leaves belong to its argument; a pending argument would
have no possible leaf. Up to the possible leading `y`,

```
E = D N,                 or                 E = lambda y.D A(y).
```

`D` is closed, contains the nonlinear binder `d`, and has exactly two
leaves. `N`, or `A` with `y` counted as the outermost chain variable, has
three live variables on a chain and exactly four leaves. At most one
vacuous lambda occurs in the two operands together.

Both operands are beta-normal. For the four-leaf argument, a redex with
a live contractor used `k` times has at least `k+2` body leaves: the `k`
own occurrences and the other two variables required by the width witness.
At most `2-k` leaves remain for its argument. `k=2` is impossible; `k=1`
leaves at most one free argument occurrence and would shrink. A vacuous
redex shrinks. The same conclusion is immediate for the two-leaf `D`.

## 3. No extra vacuous binder: all four-lambda cases

Here `D=Delta`. A normal four-leaf term with three live binders on one
chain has the following exhaustive six shapes. `T3(a,b,c)` ranges over
the twelve linear application trees on its three displayed leaves;
`T4` ranges over the sixty trees on the displayed multiset.

| Duplicated variable and location of its extra occurrence | Closed argument N | X |
|---|---|---:|
| outer, before the middle binder | `lambda a.a (lambda b c.T3(a,b,c))` | 3 |
| outer, between the middle and inner binders | `lambda a b.a (lambda c.T3(a,b,c))` | 4 |
| outer, below all three binders | `lambda a b c.T4(a,a,b,c)` | 5 |
| middle, before the inner binder | `lambda a b.b (lambda c.T3(a,b,c))` | 3 |
| middle, below the inner binder | `lambda a b c.T4(a,b,b,c)` | 4 |
| inner | `lambda a b c.T4(a,b,c,c)` | 3 |

Proof of completeness: one occurrence of each variable lies below all
three binders and costs indices `2+1+0`. The only remaining leaf repeats
one of them. If it is above a later lambda block, normality forces that
leaf to be the function and the block its argument; the reverse orientation
would be a redex. Otherwise all four leaves are below the last binder.
This also shows `X<=5`; an alleged four-lambda minimum with `X=6` has no
possible shape.

The open argument `A(y)` has only the latter three shapes, with `a=y`
and the `a` lambda omitted: `y` is affine, so it cannot be the repeated
variable.

The `X=3` closed cases, and the open middle-before-inner case, are already
excluded by the established 33-bit bound. The open inner case also reduces
to a literal two-lambda interface with at most one nonlinear binder inside
the body.
The closed middle-below-inner case also has only one internal nonlinear
binder after `N N -> lambda b c.T4(N,b,b,c)`.

For the open middle-below-inner case,

```
lambda y.A A -> lambda y c.T4(y,A,A,c).
```

The body contains two copies of `A`, each with only two internal binders;
`y,c` are public. No subterm has three free variables bound inside the
body. This contradicts (4). Thus only the second and third closed rows
need new finite analysis.

### 3a. The twelve 34-bit layouts

Let

```
N = lambda a b.a (lambda c.T3(a,b,c)),
J(a,b) = lambda c.T3(a,b,c),
B = J(J(N,b),d).
```

Four head steps, including `Delta N -> N N`, give

```
Delta N ->* lambda b d.T3(N,b,B).
```

The twelve possibilities are:

| T3 | Refutation |
|---|---|
| `(a b) c` | Head form has two lambdas, continuation with one argument. |
| `a (b c)` | A reduct has three leading lambdas. |
| `(a c) b` | Advancing-wrapper divergence invariant below. |
| `a (c b)` | A reduct has three leading lambdas. |
| `(b a) c` | Continuation's first payload is fixed normal `N`, not `K I`. |
| `b (a c)` | Continuation has one argument. |
| `(b c) a` | Continuation's second payload is fixed normal `N`, not the rigid suffix. |
| `b (c a)` | Continuation has one argument. |
| `(c a) b` | Pair-pumping divergence invariant below. |
| `c (a b)` | Continuation has one argument. |
| `(c b) a` | Continuation has three arguments. |
| `c (b a)` | Continuation's first payload is fixed normal `N`, not `K I`. |

For `(a c) b`, put

```
J_t(X) = lambda u.X u t,
N = lambda a b.a (J_b(a)).
```

A nonempty wrapper word `W=J_t1(...J_tk(N))` satisfies

```
W U ->* N U tk ... t1.
N W P rest... ->* N (J_P(W)) tk ... t1 rest....
```

Every macro consists of head contractions. The new wrapper word is
nonempty and there is still at least one pending argument. Starting
`N N C S ->* N (J_C(N)) S` reaches this invariant. It gives infinitely
many weak-head contractions, never a head normal form. This is a proof
for all finite wrapper lengths, not a conclusion from the capped trace.

For `(c a) b`, put `P(X,Y)=lambda u.u X Y` and
`N=lambda a b.a P(a,b)`. With `W=P(N,C)` and `L=N W S`,

```
N N C S ->* L,
L ->^4 L C.
```

Iterating the four head contractions, in their growing application
contexts, proves weak-head divergence.

### 3b. The sixty 35-bit layouts

Now `N=lambda a b c.T4(a,a,b,c)`, and

```
Delta N ->^2 lambda b c.T4(N,N,b,c).
```

The multiset has twelve distinct orders and five application trees.
Separate by the leftmost/head leaf of `T4`.

**Thirty a-headed layouts.** Twenty-four have a reduct with at least
three leading lambdas (the four non-left-spine shapes for each ordering
of the other three leaves). Of the six remaining left spines:

| T4 | Refutation |
|---|---|
| `a a b c` | Exact head cycle, period three after a two-step prefix. |
| `a a c b` | Exact head cycle, period six after a two-step prefix. |
| `a b a c` | Two leading lambdas, continuation with three arguments. |
| `a b c a` | Same. |
| `a c a b` | On source `I`, the rigid continuation has four arguments. |
| `a c b a` | On source `I`, the result is `C K stream(I,Ntail)`, with wrong value and remainder. |

For the first two cycles one can also inspect directly the equations
`N N B C ->* N N B C` and `N N B C ->* N N C B ->* N N B C`.

**Fifteen b-headed layouts.** Nine have one or three arguments at the
continuation. The six two-argument cases give respectively

```
C N (N S),       C (N N) S,       C N (S N),
C (N S) N,       C S (N N),       C (S N) N,
```

with `S=stream(I,Ntail)`. The first or second payload visibly disagrees
with `K I` or the rigid `Ntail`: `N` is a fixed closed normal three-lambda
term, and `S` is a nonempty normal Scott stream. No normalization of
`N N` is needed.

**Fifteen c-headed layouts.** Direct identity-source head reduction gives:

| T4 | Result obstruction on source I |
|---|---|
| `c (a (a b))` | `C` has one argument. |
| `c ((a a) b)` | An extra leading lambda. |
| `(c a) (a b)` | `C` has three arguments. |
| `(c (a a)) b` | Rigid suffix, rather than `C`, is the head. |
| `c a a b` | An extra leading lambda. |
| `c (a (b a))` | `C` has four arguments. |
| `c ((a b) a)` | Result `C N C`, with the wrong rigid remainder. |
| `(c a) (b a)` | `C` has three arguments. |
| `(c (a b)) a` | `C` has five arguments. |
| `c a b a` | `C` has four arguments. |
| `c (b (a a))` | `C` has three arguments. |
| `c ((b a) a)` | `C` has four arguments. |
| `(c b) (a a)` | `C` has three arguments. |
| `(c (b a)) a` | `C` has four arguments. |
| `c b a a` | `C` has four arguments. |

All these finite reductions are among the kernel-checked clauses.

## 4. One extra vacuous lambda: the five-lambda cases

Here `X<=4`. First suppose the vacuous lambda belongs to `D`. Its two
own `d` leaves already have index zero. Placing the vacuous lambda around
both would spend two index units, leaving fewer than the required three
for the width witness. Placing it above `d` makes `D` vacuous-headed,
contrary to source minimality. Placing it around one leaf gives either
an erasing source redex or the single normal possibility

```
D = deltaK = lambda d.d (K d),             |D|=11.
```

This uses the one available index unit beyond the width witness. Its
four-leaf argument is consequently one of the `X=3` shapes in section 3.
Since `deltaK A -> A (K A)`, these fail uniformly:

| Argument | Consequence |
|---|---|
| closed outer-duplicate-before-middle | `A (K A) ->* A`, a strictly smaller interpreter if it worked. |
| closed middle-duplicate-before-inner | One-lambda head normal form. |
| closed inner duplicate | Two-lambda interface with only one internal nonlinear binder. |
| open middle duplicate | `lambda y.A (K A) ->* lambda y.A`; its body has no internal nonlinear binder after the interface lambdas. |
| open inner duplicate | Two-lambda interface with only one internal nonlinear binder. |

### If the vacuous lambda belongs to the four-leaf argument

Then `D=Delta`. Delete the vacuous lambda, decrementing the affected
indices, to obtain `N0` or `A0`. Deleting a vacuous lambda from a normal
term preserves normality: it was not in function position of an
application, since that would already be a redex. It also preserves the
width-three witness and all live-binder occurrence counts.

Reinserting the lambda around a subterm `U` costs exactly

```
2 + freeLeaves(U).
```

The base diagonal has at least 33 bits. Thus at size at most 36 there
are only two possibilities:

* A zero-free-leaf insertion into a base of 33 or 34 bits. The only closed
  subterm of a closed four-leaf argument in the six-shape classification
  is the whole argument. An open argument has none. Therefore this gives
  `A=K N0`, and `Delta A -> A A -> N0`, contradicting minimality.
* A one-free-leaf insertion into a 33-bit base. A subterm with one free
  occurrence is either a variable leaf or the block containing the two
  innermost live binders and the single free occurrence of the outer one.
  There is no other possibility in these normal four-leaf trees.

Inserting around that two-binder block gives, for the closed arguments,

```
lambda a.a (lambda u b c.T3(a,b,c)),
lambda a u b.b (lambda c.T3(a,b,c)),
lambda a u b c.T4(a,b,c,c).
```

After diagonal application the first has two interface lambdas with
only one internal nonlinear binder; the second ignores its public
continuation; the third leaves three leading lambdas. In the open forms,
the corresponding reduction gives either zero internal nonlinear binders
or three leading lambdas.

For insertion at a variable leaf, boxing the exposed duplicate before its
lambda block creates an erasing source redex. Boxing any leaf inside the
block leaves the closed middle family with one-lambda head form, and the
inner families with one internal nonlinear binder. A vacuous box introduces
no nonlinearity and does not duplicate the one inserted copy in the inner
families. The open middle family needs its own analysis in section 4b:
its diagonal can create more than one residual copy of the argument.

The remaining closed family is **outer-duplicate-before-middle**:

```
N = lambda a.a (lambda b c.T3(a,b,c) with one leaf boxed).
```

The exposed outer `a` cannot be boxed: that is an erasing source redex.
Inside `T3`, a box cannot be the function of an application. Exactly
eighteen normal layouts remain.

### 4a. The eighteen normal boxed layouts at 36 bits

The following table writes `Kx` for the literal box `lambda u.x`.

| Boxed body | Refutation of `Delta N` |
|---|---|
| `(a Kb) c` | Two-lambda head form with zero arguments at C. |
| `(a b) Kc` | Forward-wrapper divergence below. |
| `a (b Kc)` | First payload is `K S`, not `K I`, on source I. |
| `(a c) Kb` | One-lambda head form. |
| `(a Kc) b` | One-lambda head form. |
| `a (c Kb)` | One-lambda head form. |
| `(b Ka) c` | One-lambda head form. |
| `(b a) Kc` | Reverse-wrapper divergence below. |
| `b (a Kc)` | Two-lambda head form with one argument at C. |
| `(b c) Ka` | One-lambda head form. |
| `(b Kc) a` | One-lambda head form. |
| `b (c Ka)` | Fixed normal first payload `lambda u v.v (lambda p q.p (q (K v)))`, not K I. |
| `(c Ka) b` | One-lambda head form. |
| `(c a) Kb` | One-lambda head form. |
| `c (a Kb)` | One-lambda head form. |
| `(c b) Ka` | One-lambda head form. |
| `(c Kb) a` | One-lambda head form. |
| `c (b Ka)` | One-lambda head form. |

For the forward case put

```
F(X) = lambda b c.X b (K c),
N = lambda a.a (F(a)).
```

Induction on `k` gives, for `k>=1`,

```
F^k(N) U V ->* N U (K^k V),
N F^k(N) P ->* N F^(k+1)(N) (K^k P).
```

Each macro is a nonempty finite head-reduction sequence. Starting
`N N C S` reaches `N F^2(N) (K C) S`. The displayed invariant gives
infinitely many weak-head contractions with `S` still pending.

For the reverse case put

```
G(X) = lambda b c.b X (K c),
N = lambda a.a (G(a)),
Y = N G(N).
```

Then `N N -> Y`, and the exact head macro is

```
Y P ->^5 Y (K (K P)).
```

Again the invariant iterates indefinitely. These arguments work for
arbitrary rigid public arguments; in particular they fail on quoted I.

### 4b. The eighteen open middle-duplicate boxed layouts

The second family is

```
E = lambda a.Delta A_a,
A_a = lambda b.b (lambda c.T3(a,b,c) with one leaf boxed).
```

It has the same eighteen normal boxed bodies listed in section 4a.
For **sixteen**, the head normal form of E has exactly one leading lambda;
the exact finite reductions are in `g36open_*` in `Blc/SelfintFloor37.lean`.
The only exceptions are `(b c) Ka` and `(c b) Ka`. Their nontermination
does not rely on the capped exploratory traces.

For `(b c) Ka`, fix the outer parameter a and put

```
T = K a,
J(X) = lambda c.X c T,
A = lambda b.b J(b).
```

For every `k>=1`,

```
J^k(A) U ->* A U T ... T       (k pending copies of T),
A J^k(A) ->* A J^(k+1)(A) T ... T.
```

The second identity uses `1+k` head contractions. `A A -> A J(A)`
enters this invariant. The active recursive argument always precedes
every pending T and the eventual stream argument, so neither reaches
the head. This proves weak-head divergence for each rigid a.

For `(c b) Ka`, put

```
T = K a,
P(X) = lambda c.c X T,
A = lambda b.b P(b),
L = A P(A).
```

Then `A A -> L` and

```
L ->^3 L T T.
```

This is another head-pumping invariant. Both exceptions are excluded,
completing the vacuous-lambda case split.

## 5. Conclusion and checking boundary

Every minimum interpreter of at most 36 bits would have one of the two
inventories in section 2. Sections 3 and 4 exclude both. Since the known
162 supplies existence, well-ordering gives a minimum; therefore every
interpreter has at least **37 bits**.

`verify.py` checks exactly 108 residual layouts (12+60+18+18), and never
treats a cap as a result. It produces exact repeated-state certificates
for the two 35-bit loops. The six growing families have the handwritten
parametric invariants above; their fixed macro clauses are additionally
checked in Python and Lean. The global syntax classification, width
argument, and infinitary invariants remain handwritten.

The live 162 and 165, exact pinned 168, 170 inlined-NEXT variant, 204 normal,
584 two-nonlinear, 672 typed-normal, and 742 two-nonlinear-normal
references satisfy the used structural constraints (`floor37.json`;
`verify.py --battery` also reruns their batteries); no syntactic-redex or
untypability assumption is made.

The next inventory is qualitatively more permissive: seven leaves can
support a third nonlinear binder, or allow the off-chain nonlinear binder
to capture a variable whose other occurrence lies in the width witness.
Sections 6–8 handle it with a different first-contraction argument, which
uses closedness of the first head argument rather than an index budget.

## 6. A literal interface costs at least 39

**Lemma.** Every interpreter that is literally `λc.B` has at least 39 bits,
for arbitrary `B` (redexes allowed). Take the contract at `M = S` with
`C := K`, `N := I`, and apply the result to `I`: the closed term
`B[K/c] stream(S, I) I` is β-convertible to `S`, so it has width three. The
inserted copies of `K`, the quotation and `I` have width one and are closed,
so the witness descends from a subterm `U` of `B` whose three free
variables other than `c` are bound inside `B`. The incomparable nonlinear
pair is also inside `B` (the outer `c` is comparable with every binder), so
`B` has at least four live binders owning at least six leaves; `c` itself is
live, since otherwise the identity source could not produce the rigid `C`.
That is five live binders, seven leaves and index sum at least three:
`2·5 + 4·7 − 2 + 3 = 39`. Both reviews of section 7 and the two reviews of
the round-3 class bound re-derived it
(`data/self-interpreter/reasoning_162/floor/literal-interface.md`).

## 7. Size 37

A 37-bit interpreter would be globally minimum, so any strictly smaller
β-reduct contradicts section 5. Section 6 excludes a λ root. The witness
chain `a, b, c` and the incomparable pair force four live binders; five
would need seven leaves and 39 bits. The only `(L, V, X)` triples are
`(4,6,7)`, `(5,6,5)`, `(6,6,3)` and `(4,7,3)`. The first head redex of an
application-rooted closed source has a closed argument, so an affine or
vacuous contractor shrinks the term; a chain contractor leaves every
subterm of width at most two; hence the contractor is the off-chain
binder `d` and the source is `D N` with closed normal operands, `N` holding
the whole chain. `(4,6,7)` has no admissible layout; the duplicators `D`
and the leaf placements in `N` give 652 normal layouts, and the vacuous
λ insertions 24 more: **676** layouts
(`reasoning_162/floor/floor37-progress.md`).

All 676 are excluded: 615 by finite exact certificates (413 nonlinear
binders on one chain, 133 wrong candidate head forms, 28 wrong identity-source
head forms, 18 wrong normal identity payloads, 15 three-λ heads, 6 exact
repeated head states, 2 smaller reducts), 48 by five parametric divergence
invariants (macro systems, direct `N N` pumps, two-pending-argument systems,
duplicated-argument and boxed wrappers), and the last 13 by complete Lean
proofs of `¬ IsSelfInterpreter` on the identity source: eight by a rank-zero
macro invariant, one by a protected trailing-argument grammar, four by
explicit pumps (`reasoning_162/floor38/proof.md`; the Lean builds with `floor38/check_lean.py`).

Two independent reviews (a fresh Codex consult and Gemini) found this
correct. The Codex review replayed all 615 finite certificates with a
separately written reducer, re-derived the 652 + 24 counts by hand and
matched every Lean term to its layout; Gemini re-enumerated the four count
triples and reproduced the ledgers byte for byte
(`reasoning_162/review38/`).

## 8. Size 38

The same argument at 38 bits gives the triples `(4,6,8)`, `(5,6,6)`,
`(6,6,4)` and `(4,7,4)`. Three binders may now be nonlinear, but the
first-contractor argument never uses which chain binder is, so again the
source is `D N`. `(4,6,8)` has no layout; `(6,6,4)` forces a zero-charge
vacuous wrapper whose every placement either makes the head contractor
vacuous or is erased to a smaller interpreter; `(4,7,4)` gives 828 layouts
and `(5,6,6)` 378: **1,206** layouts (`reasoning_162/floor38/inventory38.md`).

All 1,206 are excluded: 1,143 by finite certificates whose predicates and
replay traces are kernel-checked (chain 613, wrong source head 201, three-λ
head 188, wrong identity head 59, wrong payload 72, head cycle 4, smaller
reduct 6), and the last 63 by complete Lean proofs: 57 through a `W/B`
grammar preserved by head reduction, one parametric pump and five rigid
payload mismatches (`reasoning_162/floor38/proof39.md`).
The certificates' implications for non-interpreter status are handwritten.

Two independent reviews (a fresh Codex consult and a fresh Claude
consult, standing in for Gemini) found this correct. The Codex review
re-instantiated the layout templates independently and matched all 1,206;
the Claude review enumerated the whole `D N` slice independently (1,602
terms: the 1,206 plus 396 `(6,6,4)` terms, each with a smaller β-reduct
within two steps), checked every certificate predicate against the
contract and re-encoded every Lean term (`reasoning_162/review39/`). An
earlier draft's claim that the first contraction of a two-vacuous-binder
layout always shrinks is false (`(λd. d (λu. d)) (λv. N0)` grows from 38 to 54
bits before reaching 23); the proof uses the two-step argument instead.

## 9. Size 39

At 39 bits the literal interface first becomes possible. Equality in
section 6 forces `(L, V, X) = (5, 7, 3)`: no vacuous binder, `c` used once at
index 0 outside every internal λ, four internal live binders with exactly
two nonlinear. The maximal λ-rooted pieces of the application context are
closed and each needs a live binder, so there are at most two. With one, the
source is `λc. c P` or `λc. P c`: Lean proves that no `λc. c P` with closed `P`
is an interpreter (the identity invocation reaches `C P ⌜I⌝` and projection
would equate a λ-rooted stream with the rigid remainder), and that an
interpreter `λc. P c` makes `P` one, of 33 bits, contradicting section 6.
With two, the off-chain piece is `Δ` and the chain piece one of 84 normal
shapes, in twelve contexts: 1,008 layouts
(`reasoning_162/floor38/literal40.md`).

Application roots give six count triples, now with a possible fifth live
binder at `(5,7,3)`. With four live binders the size-38 argument applies
unchanged (`E = D N`); with five, the witness uses the unique index-2 and
index-1 leaves, so a chain first contractor leaves every index at most one
and width at most two. The inventory has 2,248 four-live and 1,416
five-live layouts (`reasoning_162/floor38/inventory39.md`).

All 4,672 are excluded: 4,505 by kernel-checked finite certificates
(`chain` 2,058, wrong source head 828, three-λ head 841, smaller reduct 439,
wrong identity head 227, wrong payload 112) and 167 by complete Lean proofs
(147 by the `W/B` grammar on sources and 2 on identity reducts, 9 head
cycles, and the last 9 residuals: an active-pair invariant, six pumps, two
rigid-shape obstructions; `reasoning_162/floor38/proof40.md`).

Two independent reviews (a fresh Codex consult and a fresh Claude consult)
found this correct (`reasoning_162/review40/`). The Codex review rebuilt the
templates independently (exactly 1,008 + 2,248 + 1,416 terms) and replayed
the nine late residuals. The Claude review went further: a standalone
enumerator generated every closed term at the six application triples (35.4
million terms) and filtered them by necessary conditions only (width,
incomparable nonlinear pair, no smaller reduct within two steps); exactly the
ledger's application-rooted layouts survive, so the five-live classification
and the vacuous-wrapper counts are complete without the first-contractor
lemma, and every λ-rooted survivor lies in a class section 6 or the two Lean
lemmas exclude.

The classifications grow quickly (676, 1,206 and 4,672 layouts at 37, 38 and
39). A further step would want a size-aware structural lemma rather than a
larger inventory.

## 10. What probe families can charge

A lower-bound argument that uses only some of the contract's obligations is
capped by the smallest term meeting those obligations. Kernel-checked
restricted-domain witnesses (Codex; `Blc/SelfintTowerBarriers.lean`,
`Blc/SelfintSpineBarriers.lean`, `Blc/SelfintGlobalBarriers.lean`; inductions
over every depth with arbitrary suffixes, not finite batteries) put those caps
at:

| obligations used | witness | cap on a floor for `E` |
|---|---:|---:|
| values on every `λⁿ.I` | 57 | 48 |
| values on every `λⁿ.I` and `λⁿ.Ω` | 84 | 75 |
| both outputs on every `λⁿ.I` | 88 | 88 |
| values on every Church numeral `λf x. fⁿ x` | 121 | 112 |
| both outputs on every Church numeral | 154 | 154 |

The witnesses are not interpreters, and the caps do not add. The
projections cost `|E (λv r. v)| = |E| + 9` and `|E (λv r. r)| = |E| + 8`
(`projection_value`), so a value-decoder floor of 50 or a remainder floor of
49 would already improve the 40. The Church-spine witness works because each
left child is the same variable, whose code merges with the application tag
into one unary skip; a proof that goes further must use applications whose
two children both vary, and charge shared source connections once
(`data/self-interpreter/reasoning_class/global/`).

Source for the external theorem: Rick Statman, *Two Variables Are Not
Enough*, ICTCS 2005, printed pp. 406-409,
https://doi.org/10.1007/11560586_32 .
