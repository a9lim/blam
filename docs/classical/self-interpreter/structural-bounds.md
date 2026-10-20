# Unconditional structural constraints on self-interpreters

These results concern the repository's actual closed-source, beta-exact
contract. They do not assume a parser architecture, an environment
representation, or correctness on open source programs. They do not prove
165-bit optimality. The constructions in `normal.md` and `typed-normal.md`
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

giving `selfintSizeBound_eighteen : SelfintSizeBound 18`. This is a small
numeric consequence, not a useful approximation to a 165-bit bound.

The nonlinear count is sharp, even among beta-normal interpreters.
`Blc.SelfintSharp` gives a 584-bit interpreter reducing to the literal 165
and a 742-bit beta-normal interpreter satisfying `IsSelfInterpreter`;
each has exactly two nonlinear binders, both closed in isolation.
`two-nonlinear.md` describes the affine translation and first-bit gate.
Thus a live capturing binder need not itself be nonlinear, and neither
normality nor the absence of a nonlinear capture raises this count.

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

## Exact evidence boundary

The three structural modules are kernel-checked, use no `sorry` or
candidate enumeration, and depend only on `propext` and `Quot.sound`.
`lake build` includes them.

None of the results prices parsing, exact remainder recovery, or arbitrary
closure construction as independent modules. Those operations can share
syntax and computation. Adding their familiar implementation costs would
require a decomposition theorem that has not been established.
