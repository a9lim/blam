# Env lane: no sub-165 construction; a bound for borrowed raw data

**No interpreter at or below 164 bits was found.** One new complete
construction passes at **171 bits**. The mathematical result is a
handwritten **24-bit cell / 19-bit lift bound even when raw input data are
available to borrow**, with precise rigid-law hypotheses below. It does not
exclude arbitrary changed value/environment protocols.

## 1. Complete interpreter ledger

| File | Exact battery line | Idea |
|---|---|---|
| `borrow_abs_tag.lam` | `171 bits  ok=667 skip=1 fail=0  borrow_abs_tag.lam` | Use ABS's known-zero input tag as K in a curried environment cell. |
| `reference165.lam` | `165 bits  ok=667 skip=1 fail=0  reference165.lam` | Unchanged attaining reference, copied for the comparison. |

Both have `.blc` files. The new candidate has `(L,A,X)=(17,26,31)`, against
the reference's `(17,25,29)`. Every candidate constructed was battery-checked.
No additional failed complete interpreters were constructed.

The new cell is

```
lambda b. b (bit1 arg) (lambda r.r args),
```

where `bit1=K` in ABS. Its module costs **30**, versus **24** for the original.
The lambda count is unchanged, one application is added, and index excess
increases by two: total **+6 bits**. The alternative literal-K curried cell
and the own-selector repair were already recorded; the new artifact uses
the captured input tag itself.

The batteries used two workers and took 2.152 and 2.140 seconds. The 171
also returned the exact rigid suffix on both Omega and lambda-Omega with a
tail-projecting continuation. Logs: `battery.log`, `checks.json`. Reproduce:

```
PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/env/check.py
PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/env/origin_arithmetic.py
```

`check.py` uses the lane's frozen binary and puts compilation temporaries in
the lane. No repository files were changed, no searches were run, and no
external consultations or Lean runs were performed.

## 2. Exact identities and correctness

For the proposed cell

```
C_tag(a,e) = lambda b.b (K a) (lambda r.r e),
```

the exact laws are

```
C_tag(a,e) K n  ->* (K a) n -> a
C_tag(a,e) F r  ->* (lambda q.q e) r -> r e.
```

The first uses K twice and never inspects n. The second selects the
continuation of the previous environment. They are precisely the two unary
lookup cases required by the unchanged raw variable values. Induction on
the variable index and then on source syntax therefore transfers the usual
parser correctness argument, including divergent source programs. This is
a handwritten transfer argument, supplemented by the battery, not a new
Lean proof.

**The cell is not beta-equal to the canonical cell on arbitrary selectors.**
Its beta-normal form is

```
lambda b.b (lambda u.a) (lambda r.r e),
```

whereas the canonical form is

```
lambda b r.b a (r e).
```

The script confirms these normal forms differ. Only the Boolean selector
laws are claimed for the construction.

Two existing skeleton identities were also rechecked, rather than claimed
as discoveries:

```
Cell(e,e) f g = f e (g e)
Cell(a,e) Cell(d,h) = lambda r.a d (r e h).
```

The first follows by the cell's two substitutions. For the second,
`Cell(a,e) Cell(d,h)` first gives
`lambda r.Cell(d,h) a (r e)`, then
`lambda r.a d ((r e) h)`. The diagonal identity needs an environment cell
with the *same complete environment in both fields*. The existing current
cell contains `(arg,args)` instead. Ordinary cell application does not
silently supply this diagonal.

## 3. Lower bound with borrowed data

Full proof: [`borrowed-data-bound.md`](borrowed-data-bound.md).

The class permits any finite collection of supplied K/F bits and finite
Scott bit streams ending in fresh rigid tails, including a favorable fixed
body code. Candidate terms may use their actual reductions and contain
arbitrary beta redexes. Data are independent of semantic parameters and
local binders. Parsed closures and concrete parser/NEXT implementations are
outside the loan class.

In the actual nearest-variable frames `[a,e,...]` and `[g,f,...]`, respectively,
the requirements are the rigid normal-form equations

```
C(a,e; loans) =beta lambda b r.b a (r e),
V(f,g; loans) =beta lambda e.f e (g e).
```

Then `|C|>=24` and `|V|>=19`. Thus retaining the other 122 source bits
cannot beat **165**, even with those extra raw-data loans. Additional
bindings or code needed to obtain the loans do not help this lower bound.

The proof uses the following counted facts.

* A quoted Scott application's right operand remains a Boolean or raw
  suffix with no semantic parameters. Such applications cannot survive as
  any of the three applications in either displayed target.
* Quotation binders cannot become the live capturing binders in those
  targets. With only one code lambda, affine data cannot duplicate it
  before it is consumed. Therefore the cell needs at least two original
  code lambdas; the lift needs at least one.
* With at most three code applications, beta reduction cannot increase
  their count. If a code-origin redex has body count u, argument count v,
  and k uses, its change is `(k-1)v-1`, where `k<=u+1` and
  `u+v+1<=3`. The only zero-change case is `(u,v,k)=(1,1,2)`.
* For a cell with exactly three applications, that compression case puts
  both fresh parameters a,e in the one-application argument. Its two
  available code-variable leaves are then a and e. All remaining code
  binders are vacuous, so it cannot yield the target. Consequently the
  cell's two live target binders retain source ancestry: a,e contribute
  at least 2+3 index excess, and outer b below inner r contributes one.
  This gives `2*2+4*3+2+6=24`.
* The only other potential sub-24 cell case has `(L,A,X)=(2,4,<=1)`.
  The mandatory outer e reference consumes its entire index budget; no
  loan reference can occur. Every lambda subterm is then closed in
  isolation, a beta-invariant property incompatible with the target's
  live captures. The larger L/A cases already cost 24 or more.
* For the lift, one surviving lambda must capture f,g, contributing
  at least 2+1 index excess: `2+12+2+3=19`. Two lambdas and three
  applications already cost 18, and f necessarily contributes at least
  one excess bit. More applications are larger still.

This is **handwritten**, not machine-checked. `origin_arithmetic.py` checks
only the finite arithmetic case split; `check.py` checks the attaining
module sizes and fixed beta identities. Neither checks the origin lemmas.

**Material limitation:** this is not a lower bound for all cells satisfying
only `C K n=a` and `C F r=r e`. The curried cell used by the 171 witnesses
why those laws must not be conflated with beta equality to the canonical
cell. Nor does it price a joint representation in which a parsed exp lends
interpreter-origin code, or a common helper crosses module boundaries.

## 4. Where a smaller interpreter could still hide

The raw-input borrowing route has a concrete limit: unmodified quote cells
cannot donate the live captures required by the canonical environment cell
or the ordinary pointwise lift. Merely replacing a lambda by a borrowed
input Boolean is also not automatically a wire saving; the 171 measures
the index penalty directly.

The remaining constructive distinction is **raw input data versus already
compiled closures**. A parsed `exp` contains interpreter-origin binders and
applications; the proof above does not make it passive. A body-dependent
ABS operation that consumes that structure, or a changed representation
that shares its operation with APP before an explicit cell is materialized,
could escape. Such a construction would need to preserve exact beta
distinctions and the rigid root suffix; the previously proved alias and
eta-collapse obstructions still apply.

For proof work, the next meaningful extension is to the two Boolean lookup
laws, without assuming the canonical cell's entire off-Boolean normal form.
That would cover the curried/selector-repair family as well. This lane does
not establish that stronger bound, and I have no verified cheaper protocol
to hand off.

## 5. Boolean-only cells, the actual frame, and actual-value APP

**Result.** A uniform cell replacement costs **at least 24 bits under the
two Boolean lookup laws alone**. Arbitrary source beta redexes are allowed. The proof below also
allows the 165's concrete `intL` and `x` implementations, rather than treating
those two variables as opaque. The APP lift still costs **19 bits on the
165's actual values and canonical environments**; its proof does not assume
rigid `f,g` or the lift's entire off-domain normal form.

These are handwritten proofs. The fixed checks in
[`check_boolean_bounds.py`](check_boolean_bounds.py) pass; their output is
[`boolean_checks.json`](boolean_checks.json). They check equations, costs,
and separating examples, **not the completeness of the arguments**. No
enumeration, new complete interpreter, battery, or polish run was needed:
there is no cheaper construction to submit.

### Exact hypotheses and prices

Write `K = lambda x y.x`, `F = lambda x y.y`, `I = lambda x.x`, and
`cons b r = lambda h.h b r`. All equations below are beta equations, not
beta-eta equations. Size is the original, unoptimized BLC source size:

```
size = 2 L + 4 A + 2 + X,
```

where `X` is the sum of zero-based de Bruijn indices. The actual ABS frame,
nearest binder first, is

```
[a, e, exp, bit1, cont, intL, x]
 0  1    2     3     4     5  6 .
```

The candidate `C` may use every variable in that frame. It must obey

```
C K n =beta a,             C F r =beta r e
```

for independent rigid `a,e,n,r`. This is a **uniform cell interface**: the
laws must hold in particular when `exp` is the parsed value of the closed
identity, `cont` is a fresh root continuation, and `bit1=K`. In that
specialization `exp =beta K I =beta F`. The two recursive frame values
remain their actual 165 implementations throughout the proof below.
A body-dependent replacement exempted from these lookup laws when its body
ignores the environment is outside this statement.

This quantifier is necessary. For a single favorable parsed body, let

```
Hcell = lambda u v b r.b u (r v),
exp = K Hcell,
Cspecial = exp a a e.
```

`Hcell` is closed, so `exp` is an actual closed-program value. `Cspecial`
costs **17 bits** in the stated frame and reduces to the canonical cell:
the first a is the discarded environment argument, and the next a,e feed
Hcell. It satisfies both lookup laws for that exp. It fails when `exp=F`.
Thus a claim quantifying over only `a,e,n,r` while fixing an arbitrary
helpful parsed exp is false. The theorem below concerns one replacement
that obeys the interface across bodies, not that pointwise claim. The
17-bit expression is a counterexample to an omitted hypothesis, not a
working interpreter replacement.

There are two ways raw input borrowing is covered:

* With the parser neighbors opaque, any auxiliary frame variables outside
  `[a,e]` may instead hold K, F, or finite Scott bit streams ending in fresh
  rigid tails. Their contents may be chosen favorably and used by reduction.
* With the concrete 165 frame, its `bit1` and the specialization `exp=F`
  are available for use. Additional raw-data loans may be put outside that
  frame. Their tails must be independent of `a,e,n,r` and the candidate's
  binders. References are charged at their actual indices. Creating a new
  cheap inner stream slot by changing the surrounding protocol requires
  repricing that changed frame; it is not an extra free variable here.

For APP the actual frame is `[g,f,bit1,cont,intL,x]`, with base indices
`0,1,2,3,4,5`. The required law is only

```
V(f,g) E =beta f E (g E)
```

on values, environments, and continuation contexts produced by the
**unchanged 165 value protocol**, including the root's arbitrary environment
parameter. In particular it includes closed operands, and the two variable
operands in `lambda a.a a`. It does not quantify over rigid `f,g`. This APP statement uses exactly the
six-variable frame; it does not add operand-dependent quotation bindings.

### A. The raw-data Boolean-cell lemma

First suppose all auxiliary neighbors are rigid or raw-data loans of the
specified kind. This lemma is also the case of the actual-frame proof in
which neither concrete recursive helper is referenced.

**1. Two live source binders and two semantic leaves are necessary.**
A live binder means one with at least one bound occurrence. The lookup laws
imply

```
C K =beta lambda n.a,       C F =beta lambda r.r e.
```

This implication does not use eta conversion. For example, since `r` is
fresh, a head reduction of `C F r` to `r e` must expose a lambda in `C F`;
substitution of the fresh rigid `r` into its body is just renaming. Thus
that body reduces to `r e` before the renaming too. The first implication
is similar: a rigid head cannot discard the final fresh argument `n`.

The head normal form of `C` must have one or two leading lambdas and have
its first bound variable as head. With no leading lambda, a rigid head
keeps the test arguments. With more than two, a lambda remains in `C K n`.
With one or two, a different head either stays rigid, becomes the fresh
second argument on the K test, or cannot distinguish the tests.
Consequently the lambda accepting the Boolean is live and captures the
semantic parameters. The eventual lambda in `C F = lambda r.r e` is
another live capturing lambda, present after the first has been consumed.

Neither of these can originate in raw quotation data. A Scott binder has
one head occurrence and fixed raw fields; K's remaining binder is erasing;
F's remaining binder is the closed identity. No such remaining live binder
can acquire a capture of the fresh semantic parameters. Substituting a
source term into a quoted handler can expose that source term's binders,
but does not change their origin.

There must therefore be at least **two distinct live source binder origins**.
If only one live source binder existed, every other source binder would be
erasing and every data binder affine. Before the sole live source binder's
first contraction nothing could copy it: its own disjoint argument cannot
contain it, and no other binder duplicates. Its contraction would leave no
live source binder. That cannot both consume the Boolean receiver and
leave the live receiver in `lambda r.r e`.

The source also needs occurrences of both free `a` and free `e`, because
no loan or test introduces either. An application/lambda syntax tree with
`A` applications has exactly `A+1` variable leaves. The two bound
occurrences and the two free occurrences therefore give

```
L >= 2,                  A >= 3.
```

**2. Exactly three applications leave no room for a loan.**
If `A=3`, its four leaves are exactly `a,e` and one occurrence of each of
two distinct source binders. All source binders are affine; there is no
auxiliary-variable reference. An affine beta contraction strictly decreases
its number of applications. But the reduced term still satisfies the same
lookup laws and hence still needs at least three applications by step 1.
Therefore a successful three-application source has **no beta redex**.
This removes arbitrary source redexes without assuming the desired normal
form in advance.

Let its head normal form have `k` leading lambdas.

* If `k=2`, both `a,e` are below both lambdas, and the head occurrence of
  the first binder is below the second. Thus `X >= 2+3+1=6`, giving
  `size >= 4+12+2+6 = 24`.
* If `k=1`, write it as `lambda b.b U1 ... Um`. The unique occurrence of
  `b` is this head, so none of the `Ui` depends on `b`. Here `m<=3`.
  For `m=0` or `1`, the F test cannot be `lambda r.r e`.
  For `m=2`, the laws force, literally in this normal form,
  `U1=lambda n.a` and `U2=lambda r.r e`. This curried cell costs **25**:
  `(L,A,X)=(3,3,5)`.
  For `m=3`, every `Ui` has zero applications. Then `C F=U2 U3` cannot
  normalize to `lambda r.r e`: if its sole application contracts it
  disappears, while if it does not, the expression has a rigid head and
  no leading lambda. This case is impossible.

This explicitly admits the Boolean-only curried protocol. It never
identifies that protocol with `lambda b r.b a (r e)`.

**3. The only remaining sub-24 size is impossible.**
With `A>=4,L>=2`, the only possibility below 24 is
`L=2,A=4,X<=1`. The necessary free `e` occurrence consumes the entire
index budget. Every `a,e` occurrence is consequently outside all source
lambdas, every bound occurrence has index zero, and no auxiliary reference
fits. Every lambda subterm is closed in isolation.

That property is preserved by beta reduction: substitution cannot enter a
closed nested lambda. It also holds of the test value F. Thus `C F` cannot
reduce to the open lambda `lambda r.r e`, contradicting step 1. All larger
`L,A` cases already cost at least 24.

This proves the raw-data lemma, with equality attained by the ordinary
24-bit cell.

### B. Concrete parser helpers do not evade the cell bound

This is the additional case needed to permit the actual `intL,x` frame
values. Write `G` for the 165's right-hand fixed-point operand and `P=G G`
for `intL`. For an arbitrary recursive parameter `p`, define

```
J(p,c) = lambda bit1.p (lambda exp.bit1
           (c (lambda e a.exp (lambda b r.b a (r e))))
           (p (lambda g.c (lambda e.exp e (g e)))))
Z(p,c) = lambda u r.r J(p,c)
H(p,c) = lambda b.b Z(p,c) c
R(p,c,s) = s H(p,c) (s s s).
```

The actual source gives

```
P c s =beta R(P,c,s),       G q c s =beta R(q q,c,s).
```

The following head equations hold for every `p,c`:

```
R(p,c,K) =beta H(p,c)
R(p,c,F) =beta F
R(p,c,I) =beta lambda r.r J(p,c).
```

`J(p,c)` always has a leading lambda, so it cannot be beta-equal to the
rigid `a`. A stream with rigid head stays that head with the reader's
arguments appended. These facts suffice; the recursive parser is never
unfolded deeper.

Specialize `exp=F`, `bit1=K`, and `cont` to a rigid root continuation.
Suppose a source below 24 uses a helper `h` equal to P or G. The mandatory
`a,e` references and one helper contribute at least 6 index excess for P,
or 7 for G. Two helper references already cost at least 25. Four
applications with one helper already cost at least 24. Thus there is
exactly one helper reference, and only these cases remain:

| Applications | Source lambdas | Other source leaves |
| --- | --- | --- |
| 2 | at most 3 | only `a,e,h` |
| 3 | 0 | `a,e,h` and one of `a,e,F,K`; the G case cannot afford K |
| 3 | 1 | the restricted lambda cases described below |

No `cont` reference or additional outer loan fits in this table.

**Two applications.** All source lambdas are vacuous. A source beta redex
erases `a`, `e`, or the only helper. The first two lose a necessary
parameter; the third leaves a term with no live source binder and no
helper, which fails part A. An exposed vacuous lambda ignores the Boolean
and cannot distinguish the lookup laws. After excluding these cases, the
head must be `h`, since a rigid `a/e` head retains the test arguments.

With one supplied operand, `P U K n = n Z(P,U)` and `G U K n` has the
rigid stream head `n`. With two supplied operands, `G U V K n = n
Z(U U,V)`. None equals `a`. The remaining form is `P U V`, where U and V
are lambda chains over the separate leaves `a,e`. Write `V=lambda^j.q`.
Then its K test is

```
(lambda^j.q) H(P,U) (V V V) K n.
```

There are four supplied arguments but at most three source lambdas.
The result either retains an argument at rigid `q`, or has the wrong
rigid head. It cannot be bare `a`.

**Three applications, no source lambda.** If a Boolean is the head,
two supplied operands erase a branch containing one of the unique leaves
`a,e,h`; losing the helper leaves no live source binder. One supplied
operand either ignores the Boolean test (head K) or yields I (head F).
Rigid `a/e` heads fail directly. It remains to inspect an h-headed spine
of length one, two, or three.

The one-operand cases and G's two-operand cases have the rigid `n` heads
just calculated. For P with two operands, the stream is an atom or a
one-application expression. A rigid stream head stays rigid with too many
arguments; an atomic K/F gives `lambda r.r J` or `n` after the K test;
`F u=I` gives `J`; `K u` gives rigid `u` with arguments. For three
operands, `P u K v K n` has rigid head `v`, and `P u F v K n = K n`;
a rigid stream again keeps its arguments. For G with three operands,
stream K gives `lambda r.r J`, stream F gives `n`, and a rigid stream
stays rigid. Each result differs from bare `a`. This covers both binary
bracketings inside the operand of a shorter spine as well.

**Three applications, one source lambda.** The index budget gives a
shorter structural list. For G, the lambda can only be I. For P it is
one of:

```
I;
lambda t.t u   or   lambda t.u t,       u in {a,e,P};
lambda t.u,                            with the fourth leaf a second a.
```

In the final case the lambda wraps a single leaf. The reason is numerical:
P leaves at most one excess bit beyond the mandatory indices 5 and 1;
G leaves none. A free leaf below the lambda uses one such bit. With a live
lambda, the fourth leaf is its sole bound occurrence. With a vacuous
lambda, the only affordable fourth free leaf is another `a`.

Contracting an existing source redex removes this sole, affine lambda and
reduces to the already excluded no-lambda/two-application cases, or loses
an essential parameter/helper. We may therefore examine only a lambda
buried as an operand of h or a rigid head. Rigid heads fail directly.

* I as a stream gives `lambda r.r J`; the K test returns J, or, if an
  extra rigid operand precedes the test, leaves that operand as head.
  Other positions reduce to the preceding helper cases.
* If `u=P` in the middle family, P is inside the lambda; the outer head
  is rigid or there is an existing source redex. If `u=a/e`, the outer
  tree has atoms `P`, the other rigid parameter, and that lambda. The
  only new stream cases are `lambda t.t u` and `lambda t.u t`.
  The reader sends them to `H u S = u Z c S` and `u H S`, respectively,
  both rigid heads with arguments. A G head with only two supplied
  operands already fails independently of those operands.
* For a vacuous wrapper `W=lambda t.u`, a W-headed stream reduces to a
  rigid u; an atomic W stream returns `u S`. Both keep arguments. A
  wrapper in a continuation changes none of the preceding stream-head
  arguments. If it wraps P itself, the outer head is rigid or a source
  redex exists.

Thus every possible helper-containing source below 24 fails. Combining
this with part A proves **24 in the actual ABS frame**, under the stated
uniform Boolean interface. In particular the proof does not silently
replace the real parser by a rigid variable.

### C. The lift remains 19 on the 165's actual inputs

This argument uses two families of actual parsing contexts.

1. At a root application of closed operands M,N, their values are
   `f=beta K M`, `g=beta K N`, and `cont` is a rigid public continuation.
   Changing M between I and K with N=I proves that a correct source V
   must reference f. Changing N between I and K with M=I proves that
   it must reference g. All other frame values can be kept fixed.
2. In the body application of `lambda a.a a`, put

   ```
   g0 = cons K N
   f0 = cons K (cons F g0)
   E0 = lambda b r.b a (r z).
   ```

   These are the **actual correlated variable values**, including the
   first value's suffix containing the second variable's code. Here
   `f0 E0 (g0 E0) =beta a a`, with fresh rigid `a,z,N`. The surrounding
   continuation is beta-equal to

   ```
   lambda v.C (lambda z a.v (lambda b r.b a (r z))).
   ```

   All its binders are affine. The quoted values, the APP tag F, and the
   canonical environment E0 also have only affine binders.
   Only E0 contains the fresh free a, and contains it once.

First exclude concrete parser-helper shortcuts below 19. A source
referencing `f,g` and a helper P/G needs at least two applications. Three
applications already cost at least `14+1+4=19`. At two applications its
three leaves are exactly `f,g,h`; every source lambda is vacuous. G fits
no lambda. P fits at most one, wrapping one atom. Thus these are precisely
the two binary application trees over those three atoms, optionally with
one atom replaced by `lambda u.atom`.

On closed-operand values, a right-nested tree `u (v w)` loses one of M,N:
if u is a constant closure it discards the entire inner expression;
otherwise the inner application of the two constant closures discards
one operand before reaching h. A wrapped h discards both.

For a left-nested tree `(u v) w`, a wrapped head again loses one operand.
An unwrapped f/g head discards v. If the other operand survives in w,
the only possibilities, including its optional wrapper, are

```
M (K^k N) E     or     N (K^k M) E,       k = 1 or 2,
```

in place of `M N`. For the first expression use `(M,N)=(F,I)` when k=1,
and `(I,I)` when k=2. For the second use `(K,I)` for either k. These give
distinct beta normal forms.

If h is the head, G's third argument is the rigid root environment E:
`G u v E` has head E with two reader arguments, not the required closed
result. For P, its stream is a constant closure (possibly wrapped once),
which discards H and therefore discards the continuation operand entirely:

```
P c (K N) =beta N ((K N) (K N) (K N)).
```

Wrapping that stream once still discards c. One of M,N is lost. This
excludes every helper case below 19 using only actual closed operands.

Now suppose V does not reference P/G. Apply it in context 2. If every
source binder were affine, the entire instance would be affine and could
not increase the number of free a occurrences from one to two. A correct
V therefore has a **nonlinear source binder**, with at least two bound
occurrences. Together with the necessary f and g references this forces

```
L >= 1,             A >= 3.
```

Two lambdas and three applications cost at least `18+1=19`, because f's
base index is 1. Four applications and one lambda cost at least 20.
Consequently a source below 19 must have exactly one lambda and three
applications. Its four leaves are exactly `t,t,f,g`, where t belongs to
that lambda. If f and g are both below it, their excess indices are 2 and
1, giving the attained cost **19** immediately.

If one or both are outside, the sole nonlinear lambda is consumed or
erased **before E0 is supplied**, as follows.

* If its body contains one of f,g, call the lambda T and the other
  variable k. The whole source is `T k` or `k T`. The former consumes
  T on a quoted value. The latter becomes `T K Rk`, since the actual
  variable quote k starts with K, and consumes T on K.
* If its body contains neither, it is `D=lambda t.t t`. The whole
  source is a two-application tree over D,f,g. If D occurs in function
  position, contract it before supplying E0. If it is the immediate
  argument of f or g, that Scott cell sends it K and consumes it.
  The only other position is `(f g) D` or `(g f) D`. But for any
  `f=cons K Rf`, `g=cons K Rg`,

  ```
  f g =beta K Rf,             g f =beta K Rg,
  ```

  so D is erased.

After this reduction every remaining binder is affine. Supplying E0 can
therefore never produce the two free occurrences in `a a`. These are all
positions of the single lambda, so the sub-19 assumption is impossible.
The ordinary `lambda e.f e (g e)` attains **19**.

This proof establishes 19 using actual closed values, the actual correlated
variable pair, and the actual surrounding continuations. Rigid f,g are not
an assumption.

### Boundary and verification

The Boolean cell result strictly strengthens the previous canonical-form
result. The normal curried alternative is 25 bits; the previous 171-bit
interpreter used the farther-away ABS tag to implement its constant arm,
which made that cell 30. Neither is required to be beta-equal to the
canonical cell off Boolean inputs.

The APP result is for the **unchanged 165 value/environment protocol**.
It does not establish a 19-bit floor jointly with every alternative
Boolean-correct cell. Such a cell may contain nonlinear binders or behave
differently when given a non-Boolean value; the affine-environment witness
would then need a new argument. Nor do these local bounds forbid a
body-dependent cell, a changed VAR representation, moved binders, or shared
work that changes the two interfaces. Consequently I do not infer an
unconditional 165-bit lower bound, or a joint changed-cell/changed-lift
optimum, from them.

The fixed check run took 0.122 s. It verified 15 beta equalities, 6 beta
inequalities, and the module sizes 24/25/27/17/19 in their actual frames. It
includes the reader's K/F/I equations, an actual-G check, the constant-stream
loss of the continuation, the correlated variable witness, the helper
counterexamples, and the 17-bit expression's dependence on its favorable body. No lower-bound argument here is in Lean or independently
reviewed.
