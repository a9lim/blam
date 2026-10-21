# Capture width and its sharpness

Every self-interpreter for the repository's exact closed-source contract has
a source subterm with at least three distinct free variables. Consequently
its source contains at least two live abstractions that capture an enclosing
variable. Both bounds are sharp, even simultaneously with the established
minimum of two nonlinear binders.

The lower bound uses a published theorem of Rick Statman and Codex's
handwritten interface argument below. The sharpness construction is also
handwritten. These results are not Lean theorems in this repository and do
not establish a useful numerical lower bound near 165 bits.

## The source measure

For a term `T`, define

```text
width(T) = max { |FV(U)| : U is a syntactic subterm of T }.
```

`FV(U)` counts distinct variables free relative to `U`, including variables
bound outside `U` in the enclosing term. It does not count occurrences.
Use globally distinct names for the binders when computing these sets;
equivalently, count the distinct external de Bruijn indices of each
subterm. The resulting width is invariant under alpha conversion.

A binder is *live* if its own variable occurs in its body. A live binder
*captures* if its abstraction subterm also contains an occurrence bound by
an enclosing abstraction. A vacuous abstraction is not a live capture,
even when its body mentions enclosing variables.

Width is a measure of the source syntax, not a quantity that decreases
under beta reduction. For example,

```text
λf g.(λp.λx.p x) (f g)  →  λf g x.f g x
```

increases width from two to three. The lower bound therefore needs the
specific impossibility theorem below; it does not follow by comparing
input and output widths along a reduction.

## Statman's obstruction

Write

```text
S = λf g x.f x (g x),
K = λa b.a,
I = λx.x.
```

Statman's *Two Variables Are Not Enough* states the following consequence
on page 406:

```text
P closed and P =β S  ⇒  width(P) ≥ 3.
```

The paper also states the corresponding consequence for `B`. Its
two-variable result concerns the number of reusable variable names, not
the total number of abstraction nodes. The connection to free-variable
width allows insertion of `K` applications for vacuous abstractions; the
displayed consequence is stated directly in the paper.

Sources inspected:

- Rick Statman, [*Two Variables Are Not Enough*, ICTCS 2005, pp. 406–409](https://doi.org/10.1007/11560586_32).
  The publisher's [two-page preview](https://page-one.springer.com/pdf/preview/10.1007/11560586_32)
  contains the width consequence on page 406 and the conversion of
  two-variable terms into HOT combinations on pages 406–407.
- Rick Statman, [*Combinators Hereditarily of Order Two*, CMU Mathematics
  Research Report 88-33, August 1988](https://doi.org/10.1184/R1/6477068.v1).
  Printed pages 2–7 give the HOT definitions and the strict hierarchy by
  definitional rank. The report distinguishes HOT rewriting from beta
  conversion of the expanded lambda terms; its negative result is about
  the latter.

The hierarchy prevents a finite collection of HOT definitions from
representing every higher rank. This is a restriction on exact lambda-term
representation, despite the computational power of the HOT system. The
argument here invokes the published width consequence rather than
claiming a new proof of Statman's theorem.

## The exact interpreter contract crosses the obstruction

Let `E` be closed and satisfy, for every closed source `M` and independent
rigid `C,N`,

```text
E C (stream(M,N)) =β C (λz.M) N.
```

Here `stream(M,N)` is the Scott list of the BLC bits of `M`, ending in
`N`. Its cells are `λk.k b t`, and its bit terms are `K,F`, where
`F = λa b.b`.

Take the closed source `M=S`. Capture-avoiding substitution of `C:=K` and
`N:=I` into the finite beta-join diagram gives

```text
E K (stream(S,I)) =β K (λz.S) I.
```

Apply both sides to `I`. The resulting closed term

```text
P = E K (stream(S,I)) I
```

satisfies

```text
P =β K (λz.S) I I →* S.
```

This uses only beta conversion. It does not strengthen the interpreter's
joinability contract to a directed reduction on arbitrary divergent
sources.

Every tail of `stream(S,I)` is closed. In a cell `λk.k b t`, both `b` and
`t` are closed, so its application subterms have at most the one free
variable `k`. Induction on the list, together with the literal definitions
of `K,F,I`, gives

```text
width(stream(S,I)) = width(K) = width(I) = 1.
```

An application of two closed terms adds no new free-variable support at
its root; its other subterms belong to its two operands. Thus

```text
width(P) = max(width(E), 1).
```

Statman's obstruction forces `width(E) ≥ 3`. The quotation and the two
closed public arguments cannot supply the required source subterm.

## At least two live capturing abstractions

Choose a subterm `U` of the closed `E` with three distinct free variables.
Their binders are ancestors of `U` in one syntax tree, so order them from
outermost to innermost as `b₁,b₂,b₃`.

The abstraction `b₂` is live because `U` contains its bound occurrence.
Its body also contains the occurrence bound by `b₁`, so it captures an
enclosing variable. Likewise `b₃` is live and captures `b₁` and `b₂`.
These are two distinct abstraction occurrences in the original `E`.

This argument does not require either capturing binder to be nonlinear.
The stronger claim that some binder must be both nonlinear and capturing
is already refuted by the checked construction in `two-nonlinear.md`.

## The required support can lie wholly inside a literal interface

There is a stronger source statement when the interpreter is literally
written `E = λc s.B`. Some subterm of `B` has three distinct free variables
whose binders are inside `B`, excluding both public variables `c,s`.
Consequently at least two live captures occur wholly among internal
binders: neither the public binders nor a capture of a public variable
supplies these two witnesses.

Set `Q = stream(S,I)` as above and perform the two interface contractions.
The closed term

```text
B[K/c,Q/s] I
```

is beta-convertible to `S`, so Statman's theorem requires width at least
three. Both substituted terms are closed and have width one. A subterm
inside an inserted copy therefore cannot witness width three. Every
remaining subterm descends from a subterm `U` of `B`, and its free-variable
set is exactly `FV(U) \ {c,s}`: closed substitution removes the two public
variables and introduces no external variable. The final application to
the closed `I` contributes no new support. Thus some original `U` has at
least three free variables other than `c,s`.

Since `λc s.B` is closed, those three variables must be bound inside `B`.
Ordering their ancestor binders gives the two internal live captures by
the preceding argument. This statement concerns the literal source
interface; it does not price a head normal form reached by expanding a
different source term.

In fact a literal two-lambda interface has at least three live captures
in total. Both `c` and `s` must occur in `B`: on the normal source `I`,
omitting `c` would leave the invocation without its required rigid head
`C`, while omitting `s` would leave it without its required rigid suffix
`N`. Beta reduction cannot introduce either absent free variable. Hence
the public `s` binder is live and captures `c`, in addition to the two
internal witnesses.

By the exact-arity argument in `head-decomposition.md`, a beta-normal
self-interpreter has this literal two-lambda interface. It therefore also
has at least three live captures.

## Small numerical consequences

Combining width with the two-nonlinear theorem gives the handwritten
bounds

```text
|E|_BLC ≥ 27                     for every exact self-interpreter,
|E|_BLC ≥ 40                     when E is literally λc s.B,
                                hence also when E is beta-normal.
```

Let `L,V,X` count abstractions, variable leaves, and the sum of zero-based
de Bruijn indices. The BLC size identity is

```text
|E|_BLC = 2L + 4V - 2 + X.
```

Width three requires at least three distinct live binders. Two nonlinear
binders add at least two occurrences beyond one per live binder, so
`L ≥ 3` and `V ≥ 5`. For the three free variables of a width witness,
order their ancestor binders from outermost to innermost and select one
occurrence of each. Their zero-based indices are at least `2,1,0`,
respectively, even when additional binders intervene. Thus `X ≥ 3`,
giving 27.

For a literal interface, the internal width witness and the two internal
nonlinear binders instead require at least three internal abstractions
and five internally bound leaves. The live public variables `c,s` add
two abstractions and two leaves. Every occurrence of `c` lies beneath
the `s` binder and therefore adds at least one index unit, on a leaf
distinct from the three internal witnesses. Hence `L ≥ 5`, `V ≥ 7`,
and `X ≥ 4`, giving 40. Head normalization can increase BLC size, so
this second argument does not give a 40-bit bound for arbitrary sources.

These inequalities are sharp for the stated syntax constraints, not for
self-interpretation. The closed normal term

```text
H = λa.a (λb.b (λx.a b x))
```

has exactly 27 bits, width three, two nonlinear binders, and two live
captures. The closed normal `λc s.s H c` has exactly 40 bits, two internal
nonlinear binders, and three live captures. Neither term is claimed to be
an interpreter. The repository's kernel-checked numerical lower bound
remains the weaker 18-bit theorem in `structural-bounds.md`; the new
27- and 40-bit consequences also depend on the published width theorem.

## Joint sharpness by one shared S

The following translation applies to every closed lambda term `T`,
including an exact self-interpreter. Compile it into a finite applicative
expression `P(S,K)` by ordinary beta-exact bracket abstraction. Treat `S,K`
as closed constant symbols during compilation and use

```text
[x]x       = S K K,
[x]A       = K A                 if x is absent from A,
[x](A B)   = S ([x]A) ([x]B)    otherwise.
```

Compile variables and applications structurally and replace each lambda
by this bracket operation after compiling its body. No eta optimization
is used. Expanding the constants gives a finite directed reduction

```text
P(S,K) →* T.
```

For completeness, the bracket invariant is `[x]A →* λx.A` after constant
expansion. The variable case follows from `S K K →* λx.x`; the absent
case follows from `K A →* λx.A`; and the application case reduces first
to `λx.([x]A) x (([x]B) x)` and then to `λx.A B`. Structural induction
on `T` proves the displayed reduction, without reducing any source
redex that need not be reduced.

Replace every syntactic occurrence of the constant `S` in `P` by a fresh
variable `s`, leave the literal `K` copies in place, and define

```text
T_shared = (λs.P(s,K)) S.
```

Then `T_shared →* T`. Its source syntax has the following exact structure:

- `λs.P(s,K)` is closed in isolation. Its body is an application tree of
  `s` occurrences and closed `K` copies, and has width one.
- Every `K` copy has an outer binder that captures nothing and a vacuous
  inner binder. Neither is a live capture or nonlinear.
- The sole literal `S` has width three. Its middle `g` and inner `x`
  binders are its only live capturing abstractions. Only `x` is nonlinear.

Consequently `T_shared` has width exactly three, exactly two live captures,
and at most two nonlinear binders: `S.x` and, if `P` uses `S` more than
once, the sharing binder `s`.

Take `T` to be the proved literal interpreter. Directed reduction to `T`
transfers its beta-join contract to `T_shared`. The kernel-checked
two-nonlinear lower bound from `structural-bounds.md` then rules out the
case where the sharing binder is affine. Thus this one construction
simultaneously attains

```text
width = 3,       live captures = 2,       nonlinear binders = 2.
```

No new expanded witness or bit count is needed for this existential
argument. The applicative control expression `P(s,K)` can still be large.
A substantial size lower bound must constrain that control, or another
weighted property of the source, rather than increase any of these three
sharp structural minima.

There is exact wire accounting for this particular representation. If
`P(s,K)` has `m` variable leaves and `k` literal `K` leaves, its application
tree has `m+k-1` applications. Each `s` occurrence costs two bits, each
closed `K` costs seven, and each application costs two. The outer sharing
lambda and application cost four bits and the single `S` costs 23. Hence

```text
|T_shared|_BLC = 25 + 4m + 9k.
```

This gives a weighted control target for the shared-S representation. It
is not a lower bound on an arbitrary interpreter: bracket abstraction can
increase size, and no cost-preserving conversion into this form has been
proved.

The literal-interface refinement is sharp as well. Wrapping the same
closed construction as `λc s.T_shared c s` adds exactly one live capture,
the public `s` binder, and no nonlinear binder. It preserves width three
and the exact interpreter contract. Thus among literal two-lambda
interfaces, the simultaneous minima are width three, three live captures
of which two are internal, and two nonlinear binders.
This wrapper contains beta redexes; the next construction attains the
same three minima simultaneously in the beta-normal fragment.

## Joint sharpness among normal interpreters

Codex's following first-bit construction gives a beta-normal exact
interpreter with width three, exactly three live captures, and exactly
two nonlinear binders. Every zero-based de Bruijn index in its source is
at most two.

First adapt a closed exact interpreter `T` to accept the tail after its
first zero bit, followed by the continuation:

```text
T₀ = λr c.T c (λk.k K r).
```

Compile `T₀` into the beta-exact SK expression `P(S,K)`. Write
`Fbit = λu v.v` and replace the two constant symbols in that application
tree by projections from one variable:

```text
J  = λh.h S K,
F₀ = λp.P(p K, p Fbit).
```

Both terms are closed and beta-normal. In `F₀`, the application tree's
leaves have the rigid head `p`; every selector is a closed literal `K`
or `Fbit`. These selectors have width one and no live capture. Thus
`F₀` has width one, no live capture, and only one possible nonlinear
binder, its outer `p`. The pair binder `J.h` is affine and closed in
isolation.

The projections reduce directly:

```text
J K    → K S K    →* S,
J Fbit → Fbit S K →* K.
```

Consequently `F₀ J →* P(S,K) →* T₀`. No normalization with a rigid
placeholder is needed.

Now define

```text
H        = λb.b F₀ I J,
E_normal = λc s.s H c.
```

The three closed terms `F₀,I,J` each occur literally once in `H`. The
source is beta-normal: the displayed application heads are the variables
`s,b`, and `F₀,I,J` are themselves normal.

Every closed BLC source begins with the zero bit `K`. For its stream
`Q = λk.k K R`, the gate reduces after the two public-interface
contractions as follows:

```text
Q H C
  → H K R C
  → K F₀ I J R C
  →* F₀ J R C
  →* T₀ R C
  →* T C Q
  =β C (λz.M) N.
```

The dummy branch `I` is discarded by the known zero bit. This leaves
`R` available as the first argument of `F₀ J`, so the public stream need
not be duplicated. All administrative steps reduce directly to the
original invocation `T C Q`; its exact beta-join contract supplies the
last line.

The source counts are explicit:

- The public `s` binder is live and captures `c`. The closed handler
  `H` adds no live capture; neither do `F₀,I` or the pair binder `J.h`.
  The sole `S` inside `J` adds exactly its two captures, `g,x`.
  Thus there are exactly three.
- The outer application spine mentions only `c,s`. The handler's
  application nodes mention only `b`, the pair's application nodes
  mention only `h`, and `F₀,I` have width at most one. The literal `S`
  supplies width exactly three.
- The public `c,s`, handler `b`, and pair binder `h` are affine.
  The binder `S.x` is nonlinear, and `F₀.p` must also be nonlinear:
  otherwise the proved
  interpreter `E_normal` would have only one nonlinear binder,
  contradicting the established lower bound. Every other binder is
  affine. Thus there are exactly two nonlinear binders.
- Occurrences of `p,h,b,s` have zero-based index zero, and the public
  `c` has index one. Closed `K,Fbit,I` copies have maximum index at most
  one. The sole `S` has maximum index two. Closed insertion changes none
  of these indices, so the whole source has maximum index exactly two.

This attains all three minima simultaneously within the beta-normal
fragment and rules out any necessary occurrence of index three or
higher, even within that fragment. It is an existential structural
construction, not a new measured compact interpreter or a proof of
165-bit optimality.
