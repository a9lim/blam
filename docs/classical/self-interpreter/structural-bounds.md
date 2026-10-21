# Unconditional structural constraints on self-interpreters

These results concern the repository's actual closed-source, beta-exact
contract. They do not assume a parser architecture, an environment
representation, or correctness on open source programs. They do not prove
162-bit optimality. The constructions in `normal.md` and `typed-normal.md`
also show why several plausible qualitative restrictions are false.

## At least two nonlinear binders

Let `nonlinear(t)` count syntactic abstractions whose own bound variable
occurs at least twice, including occurrences beneath nested abstractions.
This counts syntax, not graph nodes or redexes.

`Blc.SelfintLowerBound.selfInterpreter_two_nonlinear` proves

```text
IsSelfInterpreter E  ->  2 <= nonlinear(E).
```

The stronger interface statement
`selfInterpreter_two_inside_interface` proves that when `E = λc s.B`,
the body `B` itself contains at least two nonlinear binders. Duplication of
the public continuation or stream cannot supply them: those two interface
binders disappear when their affine arguments are substituted.

The engine of the proof is `one_nonlinear_normalizes`: every term with at
most one nonlinear binder has a beta-normal form. This is a weak
normalization theorem; strong normalization is not claimed.

Capture-avoiding substitution obeys the exact identity

```text
nonlinear(B[x := A]) =
  nonlinear(B) + occurrences(x,B) nonlinear(A).
```

For a weak-head reduction, which crosses no enclosing abstraction:

- An affine contraction strictly decreases syntax-node count and does not
  increase the nonlinear count.
- If the contracted binder is the unique nonlinear binder, its body,
  argument, and other spine arguments are affine. The entire reduct is
  therefore affine and normalizes.

An induction on node count follows weak-head reduction and then descends
under a leading lambda or into the arguments of a rigid head. Separating
these phases matters: reducing under an enclosing binder can make that
binder nonlinear, as in `λy z.(λx.x x)(y z)`. The proof never asserts that
the nonlinear count decreases under arbitrary contextual reduction.

For the interpreter theorem, instantiate the contract at the closed
divergent source Ω. Quotation cells and K/F bits are affine, so

```text
nonlinear(E C (quote(Ω) ++ N)) = nonlinear(E)
```

for rigid `C,N`. With at most one nonlinear binder the left side would
normalize. Confluence transfers existence of a normal form across the
contract's beta join to `C (λz.Ω) N`, contradicting non-normalization of Ω.
No finite test battery enters this argument.

The kernel also proves the syntax inequality

```text
10 nonlinear(t) + 4 freeLeaves(0,t) <= |t|_BLC + 2,
```

giving `selfintSizeBound_eighteen : SelfintSizeBound 18`. The
`SelfintFloor*` modules raise the kernel-checked floor to
`selfintSizeBound_27 : SelfintSizeBound 27` without Statman's theorem: the
incomparable pair and a live capture give three live binders (25 bits); a
β-invariant (every application argument mentions at most one free variable)
fails for interpreters, which must also expose an abstraction body that is
not an application; abstraction-rooted interpreters then need four
abstractions (27 bits), and minimal application-rooted ones below 27 bits
are classified and refuted by finite head reduction. The proof uses
`Classical.choice`. A literal `λc s.B` costs at least 31 there. These are
small numeric consequences, not approximations to a 162-bit bound; the
handwritten floor is 37 (`global-floor.md`).

The nonlinear count is sharp, even among beta-normal interpreters.
`Blc.SelfintSharp` gives a 584-bit interpreter reducing to the literal 165
and a 742-bit beta-normal interpreter satisfying `IsSelfInterpreter`;
each has exactly two nonlinear binders, both closed in isolation.
`two-nonlinear.md` describes the affine translation and first-bit gate.
Thus a live capturing binder need not itself be nonlinear, and neither
normality nor the absence of a nonlinear capture raises this count.

`Blc.SelfintNonlinearChain` strengthens the necessary arrangement: two
nonlinear binders must be incomparable in the source ancestor order.
It proves that putting all nonlinear binders on one chain is preserved
by unrestricted beta reduction. Scott quotations and rigid public
arguments add no nonlinear binders, while the required output for Ω
contains two incomparable ones and reduces only to itself. This
contradicts the exact beta-join contract. The public binders of a literal
two-argument interface cannot witness incomparability, so the pair lies
inside its body. `capture-width.md` gives the proof and numerical
consequences with Statman's width obstruction.

## A live abstraction must capture an enclosing variable

Call an abstraction *live* when its own bound variable occurs in its body.
`Separated d t` allows arbitrary global free variables, but requires each
live abstraction in `t` to mention none of its enclosing local binders.
Vacuous abstractions may capture freely.

`Blc.SelfintCapture` proves that separation is preserved by shifting,
substitution, and every beta reduction, including reduction under lambdas.
The substitution argument is direct: a live inner binder cannot contain
the substituted enclosing local variable, so substitution cannot connect
that inner binder to another local binder. Reduction cannot introduce a
previously absent variable.

K, F, and every Scott quotation with rigid suffix are separated. But the
required normal output for the closed source

```text
λa b.a b
```

is not: its inner live binder captures `a`. Hence every self-interpreter
already contains such a dependency.

The formal conclusions are:

- `selfinterpreter_not_separated`;
- `selfinterpreter_has_live_capture`, an explicit existential witness;
- `selfinterpreter_indexSum_pos`, excluding terms whose every de Bruijn
  index is zero.

These are source-syntax constraints. They do not say that the captured
binder must itself be nonlinear.

The handwritten argument in `capture-width.md` strengthens this to two
live capturing abstractions, or three for a literal two-argument interface
and hence for a beta-normal interpreter. It applies Statman's published
obstruction to a width-two term representing `S`: the closed quotation and
interface arguments have width one, so the necessary width-three subterm
must come from the interpreter. Combining that requirement with the
incomparable-binder theorem and the 33-bit exclusion gives 34- and 46-bit
floors, respectively:
the three live binders on the width witness's ancestor chain cannot
contain both incomparable nonlinear binders, requiring a fourth live
binder. The resulting 33-bit global floor rises to 34 by analytically
excluding its equality cases, and `global-floor.md` excludes 34–36 the
same way, giving 37. The same document proves simultaneous sharpness of
the width, capture, and nonlinear counts by a shared-S construction. These
additions are handwritten; they do not strengthen the kernel-checked
numerical theorem above.

## Quotation-origin binders cannot provide arbitrary binding structure

`Blc.SelfintOrigins` colors abstractions by origin: interpreter syntax is
red, and the input quotation's K/F/Scott abstractions are blue. Substitution
copies these colors. Erasing colors gives the ordinary lambda term.

A live blue binder's sole bound occurrence stays at the rigid head beneath
leading lambdas. Its pair of counts `(leading lambdas, head arguments)` is
one of `(1,0)`, `(0,0)`, or `(0,2)`, inherited from K's outer binder, F's
inner binder, or a Scott cell. Capture-avoiding substitution cannot capture
a blue bound variable, and reduction below that binder cannot move or
duplicate its protected head occurrence.

The module lifts every ordinary beta-reduction path from

```text
E C (stream(bits,N))
```

to a colored path and proves preservation of the blue invariant.
`quotation_origins_frozen` supplies one residual coloring with all of the
following properties:

- Every blue binder is affine; a live one retains one of the three head
  shapes.
- A live blue binder captures no enclosing local variable.
- Its body remains beta-normal and contains only blue abstractions.
  Vacuous blue wrappers may contain arbitrary red payloads.

`selfInterpreter_normal_frozen` transfers these properties to the exact
output for every closed normal source program. Consequently a nonlinear
output binder, or a live output binder capturing an enclosing variable,
must descend from the interpreter's syntax, possibly through duplication.

This provenance statement is stronger than saying the initial quotation
is affine. Affineness alone does not identify the origin of a binder
after unrestricted interpreter reductions.

## Decoding must copy interpreter-origin code

The quotation can control computation, but duplicating only quotation
syntax cannot supply arbitrary output structure. `Blc.SelfintOrigins`
proves this as a property of reduction traces.

Let `redCount(t)` count interpreter-origin abstractions. Substitution has
the exact accounting law

```text
redCount(B[x := A]) = redCount(B) + occurrences(x,B) redCount(A).
```

A red contraction consumes its own abstraction, so with `k` occurrences
and `r` red abstractions in the argument, its change in red count is
`(k - 1) r - 1`, interpreted over integers. A blue contraction cannot
increase the count, because its binder is affine. Consequently any strict
increase must contract a nonlinear red binder and duplicate an argument
containing a red abstraction. `CodeDup` identifies such a contraction,
including beneath arbitrary application and abstraction contexts.

For each `n`, use the closed normal source

```text
M_0     = λx.x
M_(n+1) = λx.(x x) M_n.
```

It has exactly `n` nonlinear binders. All of them must be red in the
interpreter's exact output. Choose `n` one greater than the number of
abstractions in `E`: the initial colored invocation has only that many
red abstractions, while its output has at least `n`.

`selfInterpreter_every_trace_copies_code` proves that a successful trace
exists and **every** colored trace to this source's exact output contains
a strict red-count growth step. The theorem supplies the prefix, selected
contraction, and suffix, with `CodeDup` and the strict count inequality.
Its existential corollary is `selfInterpreter_must_copy_code`.

This excludes a decoder whose contractions duplicate only quotation-only
arguments. It does not require a separate fixed-point combinator: a
semantic operation may perform the necessary code copying. Nor does it
assign that operation an independent bit cost.

## Different output roles need not have different origins

The frozen-quotation theorem does not turn different output binding roles
into distinct abstraction occurrences in the interpreter. A single original
binder can supply every abstraction in an arbitrary reconstructed lambda term,
including binders with different multiplicities and capture relations.
The following is Codex's handwritten construction, not a separate Lean result.

Let

```text
S = λf g x.f x (g x)
K = λa b.a
I = S K K.
```

Mark the final `x` binder in one syntactic copy of `S` with origin `α`.
Treat `S,K` as constant symbols when constructing combinatory expressions.
Use this modified bracket abstraction, in the displayed case order:

```text
[x]x       = I
[x]T       = S (K (K T)) I              when x is absent from T
[x](U V)   = S ([x]U) ([x]V)           otherwise.
```

For every combinatory expression `T`, expanding the constants gives a finite
beta reduction

```text
[x]T →* λx.T
```

whose displayed surviving abstraction comes from `S`'s final binder.
This is beta equality, with no eta rule:

* `S K K →* λx.x`.
* `S (K (K T)) I →* λx.(K T) (I x) →* λx.T`.
* `S ([x]U) ([x]V)` first becomes
  `λx.([x]U) x (([x]V) x)`. The two induction hypotheses turn its
  subapplications into `U` and `V`; their intermediate abstraction binders
  are contracted.

In each case the selected outer `S` receives both its first arguments, so
its `f,g` binders are consumed. The auxiliary `K` and `I` binders used by
that abstraction step are consumed or erased. Copies of constants inside
`T` are left intact for subsequent steps. All variable names can first be
chosen distinct from the constant symbols and administrative binders.
Capture avoidance preserves the free variables of `T`; the application
case passes the surviving bound `x` to the two recursive expressions.
Thus the construction creates the required binding edges by substitution
and application, without accidental capture.

Compile a source term structurally:

```text
C(x)       = x
C(M N)     = C(M) C(N)
C(λx.M)    = [x]C(M).
```

A second induction gives `C(M) →* M`. In an abstraction case first perform
the bracket reduction to `λx.C(M)`, then the source induction beneath that
lambda. In an application case reduce its two operands independently.
These reductions need not contract any redex belonging to the reconstructed
source: the result holds for non-normal and divergent `M` too. Every
source abstraction reconstructed by this path has the marked origin.

To make this one *original* occurrence rather than repeated copies of the
same definition, share the constants:

```text
T_M = (λs k. C(M)[S := s, K := k]) S K.
```

The two sharing binders are contracted first. The resulting copies of `S`
all inherit the same original `α`, so every abstraction in the final `M`
is a residual of that one syntactic binder. A small example already
separates affine and nonlinear capturing roles:

```text
(λs k. s s (k (s k k))) S K
  →* S S (K I)
  →* λf. S f I
  →* λf x. f x x.
```

Both final binders descend from the original `S.x`. The final `f` is
affine, whereas `x` is nonlinear and captures `f`.

Apply the general construction to the literal 165-bit interpreter.
`T_int165` first beta-reduces to that exact interpreter, with every one of
its abstractions descended from `α`. It therefore satisfies the same
self-interpreter contract. Composing this path with the existing interpreter
reduction shows that all interpreter-origin output binders can descend
from `α` for every closed source. Quotation-origin output binders may still
remain; the frozen theorem continues to constrain those independently.

Consequently no finite source binding or capture graph alone forces several
distinct interpreter origins for its complex output binders. This does not
exclude a size-sensitive argument: the combinatory code can be much larger
than 165 bits, and the structure encoded by that code still has a cost.
The counterexample rules out unqualified origin-counting arguments, not
lower bounds that account for how much syntax is needed to reuse an origin.
It supplies a chosen reduction path, not a classification of all paths.
The sharing and combinator machinery still contains other binders; this
does not contradict the two-nonlinear-binder lower bound.

## Exact evidence boundary

The three structural modules are kernel-checked, use no `sorry` or
candidate enumeration, and depend only on `propext` and `Quot.sound`.
`lake build` includes them.

None of the results prices parsing, exact remainder recovery, or arbitrary
closure construction as independent modules. Those operations can share
syntax and computation. Adding their familiar implementation costs would
require a decomposition theorem that has not been established.
