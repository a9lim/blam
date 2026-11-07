# Architecture ledger, before compilation

These are six complete designs, not six reader replacements. This file was
written before compiling any of them. The counts below are manual source
counts; subsequent measurements belong in REPORT.md. The first two are
deliberately hypotheses about a changed representation, not claimed
interpreters. Their public interface is fully specified and must be tested.

The reference has `(L,A,X)=(16,24,32)`, hence 162 bits. Application associates
left. `I = lambda x.x`, `K = lambda x y.x`, `F = lambda x y.y`.
`Cell(a,e) = lambda b r.b a (r e)`; `A(f) = lambda e a.f Cell(a,e)`;
`B(f,g) = lambda e.f e (g e)`.

## Obligations and mechanisms

| Obligation | What must be preserved | Mechanisms in the record |
|---|---|---|
| Recursive control | Traverse arbitrary finite syntax without evaluating the decoded program | Diagonal generator and shared fixed point; self-passed NEXT/handler/context; reader diagonal and synthetic carriers; reset modes; parser generator carried by values or continuations |
| First tag | Separate constructors from a unary variable and retain the needed tail | Explicit Scott handler; `s I` self-selection; projected Boolean; conditional predecessor; dual selected operands; callback/packet/mode |
| Second tag | ABS parses one child, APP parses two, with the right result builder | NEXT after the first parse; dispatch before that parse; select-first continuation; optional child and no-input parser; stream-correlated guard; NEXT as the reader's operand |
| Variable value | Preserve the index for evaluation under arbitrary sufficient environments | Raw unary tail; whole unary prefix; function-environment adapter; parsed Scott selector; shifted/absolute index; boxed/raw-code values; explicit mode |
| Variable skip | Return the exact suffix without demanding it or the semantic value | Unary diagonal `s s`; forced/hoisted skip; NEXT as erased operand; thunked remainder; cursor and entry skip; independent skipper |
| Extension | Bind an arbitrary semantic argument, with access to the old environment | Canonical cell; K-repaired leaky cell; own-tag repair; whole-prefix cell; function environment; Scott pair; boxed arguments; levels |
| Lookup | Recover the correct bound argument, independent of code suffix | Raw code drives the canonical cell; environment drives a code selector; recursive helper; alternating orientation; explicit phase argument |
| Application | Interpret both children in the same environment and apply in source order | Pointwise lift; explicit direct evaluation; rejected cell/APP alias; applicative retraction; value-driven parser; boxed application |
| Return/control | Preserve both value and suffix, and resume exactly one pending parse | CPS `(value,suffix)`; reversed arguments; Church result pair; thunks; code/resumption metadata; continuations carrying recursion; modes |
| Root | Produce exactly `C (lambda z.M) N`, also for divergent M, with rigid C,N | Transparent environment closure; explicit decoder/retraction; continuation adapter; constructor-only root shortcut; mode supplied by root |

The semantic obligations are unavoidable for this style; separate source
modules implementing them are not. No costs are added as if obligations had
to own disjoint syntax. In particular the 162's `s I` is both dispatch and
the zero arm, and its NEXT is both the second dispatcher and the erased skip
argument.

## A. Thunk language arguments; let lookup consume the code suffix

Keep the 162 parser and its ordinary raw-tail variable values. Change BOTH
semantic constructors:

    A1(f) = lambda e a.f (lambda b.b a (lambda r.r e))
    B1(f,g) = lambda e.f e (lambda unused.g e)

The cell is leaky: index zero applies its stored argument to the variable's
code suffix. APP now supplies an argument thunk, so that application erases
the suffix. The public root is the ordinary transparent root: `E = P`.
This is not the recorded local K repair: the thunk is constructed at APP,
and ABS accepts that thunk as its language argument. It changes application
and the environment's meaning together. A thunk is asked to serve both as a
delayed argument and as the terminator-suffix eraser.

Paper count: leaky cell changes only X by -2. The new lambda around `g e`
adds one lambda and raises two free occurrences by one: +1 L, +2 X.
Total `(17,24,32)`, **164**. This reaches the build threshold. The outstanding
semantic question is whether functions exported to rigid C still accept
ordinary language arguments. A public adapter is not being silently omitted:
the proposed adapter is identity, and that is part of the testable design.

## B. Full unary values; reset the phase at every abstraction

Return the whole variable stream:

    VAR = lambda u.c s (s s u)
    A2(f) = lambda e a.f F (Cell(a,e))
    B2(f,g) = B(f,g)

Use the 162's knot, `s I` reader and NEXT, with these replacements. Root
adapter is identity. The idea is to let ABS's application of F remove the
leading one of a raw variable value, avoiding a larger shifted cell or a
global mode argument. Unlike the recorded 203, constructors themselves have
no phase parameter. This simultaneously changes variable representation and
the evaluation entry performed by ABS.

Paper count: full-prefix VAR removes one lambda and one index bit. The F
application in ABS adds two lambdas and one application. Total
`(17,25,31)`, **167**. It is close enough to the threshold for a fixed check.
The dangerous case is a constructor-valued body, not a variable body.

## C. Whole-prefix values; NEXT becomes the bare continuation on variables

In the 162 frame define

    D(a,e) = lambda u r.r (lambda b.b (lambda discard.a) (e b))
    Q = lambda b.p (lambda f.b (c (lambda e a.f (D(a,e))))
                                  (p (lambda g.c (B(f,g)))))
    N_s = (s K) Q c
    P c s = s I (lambda u.u s (s s u)) N_s

Use the usual fixed point for p; root is P. On a variable, N_s is c and the
variable arm calls it directly on the whole stream. On a constructor, N_s is
Q. The whole stream therefore provides the variable payload AND the tag
that switches NEXT's callable interface. The whole-prefix cell is necessary.
This differs from next/variable_mode (177): there N_s is K c on variables,
the arm is `s u`, and values are raw tails. Here it is c, the arm is `u s`,
and the environment obeys the shifted lookup law.

Paper: VAR -5; guard +18; whole-prefix cell +10. Counts `(19,28,33)`,
**185**. Reject as a record contender on source price; retain as the nearest
complete positive check of the coupled continuation/value change.

## D. Boxes whose ordinary application performs the environment lift

Define a nonrecursive tag and box:

    T = lambda t g f h.h t (lambda e.f e (g e))
    Box(f) = lambda h.h T f
    unbox(v) = v F

The parser returns Box(r) for a variable, Box(A(unbox(f))) for ABS, and
`f g` for APP. Suffixes remain ordinary and are sent to the continuation as
its second argument. Root is `lambda c.P (lambda v.c (v F))`.
The box is simultaneously a representation and an application operator:
`Box(f) Box(g) ->* Box(B(f,g))`. This is the reader algebra, not the ordinary
object-language application of the recorded 303's metadata boxes. No suffix
is in the box, no recursive tag is needed, and no APP lift remains in NEXT.

Use a single outer Box binding, the 162 knot/reader, variable handler
`lambda q r.c (Box r)`, ABS `c (Box (lambda e a.(f F) Cell(a,e)))`, and
APP `p (lambda g.c (f g))`. These specify the whole parser without a hidden
helper.

Paper: T has `(5,5,8)` = 40; closed Box has `(7,7,9)` = 53. The parser body
with Box free has `(18,26,44)` = 186. Putting it under the root c adds two
index bits for its two Box occurrences. The root callback and its lambda/
application add 21; the outer Box let adds 4 plus 53. Total
`(30,37,56)`, **266**. The structural application saving is real, but boxes,
unboxing and the root consume it. This is a price of this explicit rendering,
not a lower bound on all boxed architectures.

## E. A two-field value supplies the recursive generator and APP accumulator

Set `Box_g(f)=lambda h.h g f`. Its diagonal is

    Box_g(f) Box_g(f) ->* g g f f.

Define the complete generator:

    G g a j c s =
      let r = lambda f.c (Box_g(B(a,f))) in
      s I (lambda u.s (lambda q.r) (s s u))
        (lambda b.g g F F (lambda v.b
          (r (lambda e x.(v F) Cell(x,e)))
          (v v (lambda w.r (w F)))))

The j argument is unused: the diagonal supplies the accumulator twice. Its
second copy is absorbed here. The root is

    E = (lambda g c.g g F F (lambda v.c (v F))) G.

The generator invariant is: a call on M returns a box of B(a,V_M), followed
by the ordinary suffix. `a=F` is the neutral seed. At APP, the left box's
diagonal starts the right parse with its semantic payload as accumulator.
The final callback composes the outer accumulator, which MUST NOT be lost
when an APP itself is a right child.

This differs from the recorded 323: two fields `(generator,value)`, ordinary
CPS suffix, an accumulator generator, and no value-carried code tail. The
same diagonal both enters recursion and supplies the left application value.

Paper: return helper `(3,6,16)` = 48; reader `(18,23,35)` = 165;
generator `(27,30,51)` = 227; public adapter `(9,6,3)` = 47; outer app = 2.
Total `(36,37,54)`, **276**. Reject on this source price. Missing the final
outer-accumulator callback would give a cheaper but incorrect architecture.

## F. Parse a Church syntax algebra; interpret once at the public boundary

The parser returns these three-argument syntax values:

    V(r)   = lambda a b v.v r
    L(f)   = lambda a b v.a (f a b v)
    J(f,g) = lambda a b v.b (f a b v) (g a b v)

Use the 162's traversal/knot, return V(r) at variables, L(f) at ABS and
J(f,g) at APP. The public continuation decodes with the three closed algebras

    A = lambda f e a.f Cell(a,e)
    B = lambda f g e.f e (g e)
    I = lambda r.r
    E = lambda c.P (lambda w.c (w A B I)).

Variable code is retained as a leaf of syntax, not used as the representation
of every semantic value. All environment extension and application live in
the shared root algebra, outside recursive parser continuations. The Church
object provides structural recursion for the semantic phase, so no second
fixed point is introduced. This is not the recorded parser for Scott variable
indices, nor direct evaluation with a separate syntax skipper.

Paper: parser `(21,31,47)` = 215; A = 36, B = 23, I = 4; the complete root
callback `(10,11,12)` = 78; outer lambda/application add 4. Total
`(32,43,59)`, **297**. Moving the semantic algebra out saves no overall bits:
the three handlers must be threaded through the stored syntax.

## Build plan

Build A and B first and give exact finite failures if they fail. C is a
single positive control for the new coupled convention. D--F are fully
specified paper architectures with proofs to check; their high paper prices
do not justify searching their neighborhoods. Fixed compilation/battery
checks may be used to audit their prices and equations, but no enumeration.
All runs use at most two workers; individual polish subprocesses are capped
at 45 seconds and all artifacts stay in this directory.
