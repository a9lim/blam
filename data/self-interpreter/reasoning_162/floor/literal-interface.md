# A 39-bit floor for a literal first continuation binder

**Theorem (handwritten).** Every exact closed-source self-interpreter
literally of the form `E = lambda c.B` has at least **39 bits**.
No hypothesis is made about B's root, beta normality, head-normal form,
parser protocol, or reduction length.

This strengthens the first-interface consequence used in the old 37-bit
classification. It does not raise the unconditional floor: an arbitrary
source E can be application-rooted.

Let S be the standard three-variable combinator. Set
`Q=stream(S,I)` and substitute the closed affine continuation K. The exact
contract gives

    B[K/c] Q I =beta S.

Both Q and I are closed and have free-variable width one. Statman's
published width obstruction, in the form already used by
`capture-width.md`, forces a width-three witness in `B[K/c]`. A witness
inside an inserted K is impossible. Every other subterm descends from a
subterm U of B, with free-variable set `FV(U) minus {c}`. Therefore three
distinct variables of the witness are bound **inside B**.

Their binders form a three-element ancestor chain. The two incomparable
nonlinear binders of E, supplied by `SelfintNonlinearChain`, must also lie
inside B: the outer c binder is comparable with every source binder. Both
cannot lie on the witness chain, so B has at least four live internal
binders. They own at least six leaves: one each, and the two extra uses of
the incomparable nonlinear binders.

The continuation binder c is live, since applying E to a fresh rigid C
must produce a normal C-headed output on the identity source. This adds a
fifth live binder and a seventh leaf, separate from the internal six.
The width witness's outer/middle/inner occurrences cost indices at least
2,1,0. With the exact identity `bits=2L+4V-2+X`,

    |E| >= 2*5 + 4*7 - 2 + 3 = 39.

The proof depends on the existing handwritten Statman interface argument
and the kernel-checked incomparable-nonlinear theorem. It is not itself a
new Lean theorem. In particular, the numeric consequence may be used to
exclude lambda-rooted 37-bit candidates without analyzing their possible
head reductions.
