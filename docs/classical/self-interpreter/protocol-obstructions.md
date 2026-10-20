# Interpreter protocol constraints

These are exact symbolic arguments and explicit constructions by Codex. They
apply to the stated protocols, not to arbitrary interpreters. The targeted
checks perform no candidate enumeration.

## A free semantic parameter in the skip


Write

```text
K = λu v.u                 F = λu v.v
Z_t = λu r.r t
H(q,c) = λb.b Z_q c
R_a(q,c) = λs.s H(q,c) (s s a).
```

For every unary prefix `1^n 0 ++ N`, including `n=0`,

```text
s s ->* K N
s s a ->* N.
```

The second equation holds for arbitrary `a`, including divergent terms. The
proof is the same structural induction as the existing skip law, followed by
one erased application. Consequently the last skip operand can be any
in-scope term without changing the parser's behavior on source encodings.
The structural parser proof therefore transfers, including divergent source
programs; finite batteries are supplementary evidence.

Off the stream domain, the choice matters:

```text
R_a F    ->* a
R_a K    ->* H(q,c)
R_a I    ->* a Z_q c
R_a Z_t  ->* a t t.
```

For the last identity,

```text
Z_t H(q,c) (Z_t Z_t a)
  -> (λr.r t) (a t)
  -> a t t.
```

These equations were checked with all parameters bound rigidly. They expose
an off-domain control channel that the `s s s` reader does not have.

Four complete variants replace only the final `list` in the 165's skip:

| Erased operand | Bits | Off-domain operation |
|---|---:|---|
| `next` | 166 | `E C F -> Q_C` |
| `cont` | 167 | `E C F -> C` |
| `intL` | 168 | `E C F -> E` |
| `x` | 169 | `E C F -> G`, the ordinary knot generator |

These are complete interpreter constructions, all larger than 165. The reset identity in the
168-bit variant follows by finitely unfolding its existing knot once;
the script additionally checks the reset followed by parsing `I`.

## The raw NEXT diagonal still fails for every skip function

The existing five-argument obstruction is stronger than its original
`s s s` presentation suggests. Allow completely arbitrary skip terms,
including ones depending on the stream:

```text
R_i = λs.s H_i S_i(s)
H_i = λb.b (λu r.r q_i) c_i.
```

Then, without inspecting either skip term,

```text
H_i H_j ->* c_j q_i c_i
R_i R_j ->* c_j q_i c_i S_j(H_i) S_i(R_j).
```

The second equation is just

```text
R_i R_j
  -> R_j H_i S_i(R_j)
  -> H_i H_j S_j(H_i) S_i(R_j).
```

Retain the current NEXT interface,

```text
A(f)   = λe a.f (cell a e)
V(f,g) = λe.f e (g e)
a_f    = λg.C V(f,g)
q      = λb.P (λf.b (C A(f)) (P a_f)).
```

As in the existing derivation, put

```text
k(f) = q (C A(f)) (P a_f)
d_f  = λg.C A(f) (C A(g)) (P a_g).
```

Then

```text
q q = P k
k(f) = P d_f (P a_f) = R_(d_f) R_(a_f)
     ->* C V(f,q_(d_f)) d_f
           S_(a_f)(H_(d_f)) S_(d_f)(R_(a_f)).
```

On quoted `I` with rigid tail `N`, `P k` supplies its parsed value `f`
followed by `N`. The result has **five arguments at rigid head `C`**,
whereas the contract requires exactly two. No reduction inside those
arguments can remove the three extra arguments at the rigid head.

Thus replacing the skip by *any* extensionally correct alternative cannot
turn the unchanged NEXT diagonal into the required parser. This includes all
four erased-operand variants and more general stream-dependent skip
computations. It does not exclude a different NEXT protocol or a different
handler shape.

The old `P P P` head-loop proof specifically uses `s s s`; it should not be
silently transferred to the erased-operand family. The argument above is the
valid stronger obstruction for the raw NEXT-diagonal proposal.

## Constructive routes considered

An internal reset `E C F = E` or generator extraction `E C F = G` does not
by itself create a cheaper fixed point: using it to recover the recursive
parser requires that parser to be available already. Likewise,
`E C F = C` gives a continuation-return instruction, but its arity differs
from the no-input parser `λk.k k`; appending the missing fake value also
appends it on the real second-parse branch unless another mode adapter is
introduced.

Self-application of a Scott pair also has a concrete payload-duplication
cost. For `D = λh.h g r`,

```text
D D ->* g g r r.
```

It can perform the generator diagonal while supplying a field, but supplies
that field twice. A complete construction must discard or use the duplicate
before reaching the rigid public continuation. Simply calling it a
“pair-carried knot” does not eliminate that obligation.

These observations leave the productive target precise: a revised control
protocol in which an erased skip operand carries a *solvable* recursion or
return instruction, and that instruction performs an already-required
semantic operation. An explicit adapter that merely recovers the current
parser repays the hoped-for saving. A smaller protocol of this kind remains open.


## Closed-source correctness already forces closed internal values

Consider a context-independent compositional parser with a transparent root
callback:

```text
P C (code(M) ++ N) ->* C V(M,N) N,
```

where `V` is independent of `C` and of the syntactic context containing `M`.
If `P` itself satisfies the required closed-source contract, then for every
closed `M`,

```text
V(M,N) =_beta λz.M.
```

The argument uses the contract with rigid `C,N` and Church-Rosser: a common
reduct of the two rigid-`C` applications must have common reducts in their
corresponding argument positions. This does not require correctness of
intermediate closures on arbitrary open terms or arbitrary environments.

Consequently the existing cell/APP alias obstruction remains even if one
relaxes open-parser correctness as far as possible. Let

```text
X1^N       = cons K N
X(n+1)^N   = cons F Xn^N
APP(f,g)   = λe.e f g.
```

The closed term `I` necessarily compiles to `K I =_beta F`, including when
its suffix contains the next operand. Therefore

```text
APP(V(I,...), Xn^N)
  =_beta λe.e F Xn^N
  =_alpha X(n+1)^N.
```

The bodies `I b` and `a` in the contexts `λa b.[...]` thus acquire identical
values with the same suffix. If ABS depends only on the child value and
suffix, the complete closed sources

```text
λa b.I b            λa b.a
```

also acquire identical values, although their required beta-normal forms
differ. No choice of environment cell repairs this collision.

Thus the assumption of canonical closed internal values in the previous
alias theorem is derivable from root transparency and context independence;
it is not an extra consequence of an overly strong open-term interface.
A successful alternative must change at least one of raw variable values,
root transparency, context independence, or the information carried through
ABS.

The direct common-combinator idea does not yet supply that escape. Both the
cell and APP use the skeleton

```text
D a e f g = f a (g e).
```

But cell construction partially applies `D` to its first two fields, whereas
APP must feed the *same whole environment* into both fields. Making the cell
itself act as APP requires overloading its behavior on parsed values versus
the Boolean selectors. The canonical closed value of `I` is exactly `F`,
so these are not disjoint domains. A value wrapper or context distinction
must preserve additional information before such overloading is meaningful.

## Eta-optimized combinator values cannot have a uniform beta repair

Ordinary SK bracket abstraction can preserve beta equality if it retains
lambda structure instead of applying eta optimization. The tempting cheaper
route is to erase eta expansions during compilation and repair the public
result with a fixed decoder. That route has an information-loss obstruction.

Let `R` be any representation and `D` a decoder using only that
representation. If

```text
R(I) =_beta R(λf x.f x),
```

then beta congruence forces

```text
D(R(I)) =_beta D(R(λf x.f x)).
```

The two required results are distinct beta-normal forms. Hence no such `D`
can satisfy the exact interpreter contract on both programs. This applies
to any representation that collapses eta equivalence, irrespective of the
decoder's size or computation time.

Retaining the original code, an eta-shape annotation, or another context
parameter avoids the hypothesis. A decoder supplied only an eta-collapsed
value cannot restore the missing syntactic distinction. This explains why
an eta-only internal protocol cannot be made beta-exact merely by adding a
uniform boundary coercion.


## Two-sided beta inverses are trivial


**Theorem.** Let `F` and `G` be closed untyped lambda terms, and let `z` be a
fresh variable. If

```
F (G z) =beta z
G (F z) =beta z,
```

then `F =beta I` and `G =beta I`.

**Proof.** Since `z` is beta-normal, Church–Rosser gives reductions
`F (G z) ->* z` and `G (F z) ->* z`. A head-normalizing application has a
head-normalizing operator, so both `F` and `G` have head normal forms.
Closed head normal forms have the shape

```
lambda a1 ... an. ai U1 ... Uk
```

with `n >= 1` and `1 <= i <= n`.

The first reduction forces `F` to have exactly one leading abstraction:
if its head normal form had `n >= 2`, applying one argument would leave an
outer abstraction. Beta reduction preserves an existing outer abstraction,
so this reduct could not have the common reduct `z`. The second reduction,
separately, forces `G` to have exactly one leading abstraction. Thus their
head normal forms are

```
F ->* lambda a. a U1 ... Uk
G ->* lambda b. b V1 ... Vl.
```

Apply the first form to `G z`, then reduce the head occurrence of `G`.
The result has the form

```
z V1[z/b] ... Vl[z/b] U1[G z/a] ... Uk[G z/a].
```

Its rigid head is `z`; reducing inside an argument cannot remove a head
argument. Therefore its number of head arguments, `l + k`, must be zero.
Both head normal forms are `lambda a. a`, as required. ∎

This proof uses head normalization and Church–Rosser as standard lambda
calculus facts; it is a handwritten argument, not a Lean theorem in this
repository.

The claim is about two-sided inverses on arbitrary terms. It permits
nontrivial retractions, such as

```
J x = lambda k. k x
D v = v I,
```

for which `D (J x) ->* x` but `J (D z)` does not reduce to `z`. It also
permits inverses restricted to a chosen representation domain.

## Swapping a closure's two arguments is not an exact involution

A tempting wrapper swaps a closure's environment and source-argument
positions:

```
J f = lambda a e. f e a.
```

However,

```
J (J f) ->* lambda e a. f e a.
```

For a rigid variable `f`, the right side is beta-normal and distinct from
`f`. It is an eta-expansion, not a beta inverse. This is also visible on
closed terms: with `Omega = (lambda x. x x) (lambda x. x x)` and
`f = lambda e. Omega`, the two expressions reduce respectively to
`lambda e a. Omega a` and `lambda e. Omega`. Their only remaining redex is
the self-loop in `Omega`, so they have no common reduct.

Restricting the input to closures that always already expose two leading
abstractions would make the swap an involution on that domain. Raw variable
closures do not satisfy this restriction: evaluation can return an arbitrary
runtime argument. Enforcing such a domain therefore requires a changed
value representation and a beta-exact root decoder.

## Reproduction

`python tools/self-interpreter/theory/erased_skip.py --battery` checks the
symbolic identities and the four complete variants. Their source and wire
encodings are `data/self-interpreter/machines/int_skip_*.{lam,blc}`; the
results are `data/self-interpreter/theory/erased_skip.json`. Current measured
verification is in `docs/STATUS.md`.
