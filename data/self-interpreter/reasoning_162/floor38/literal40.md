# A 40-bit floor for a literal continuation binder

**Theorem, handwritten with checked components.** If an exact closed-source
self-interpreter is literally `lambda c.B`, its size is at least **40**.
The argument uses the established global floor 39. It makes no normality
or parser-shape assumption about B.

## Equality in the previous literal-39 bound

The argument in `../floor/literal-interface.md` places a width-three
witness and two incomparable nonlinear binders inside B. Its three
witness binders a,b,c' form an ancestor chain; at least one other internal
live binder d is required. Including the outer continuation gives
five live binders, seven leaves and index sum at least three. Equality 39
therefore forces

    L=5, V=7, X=3,
    four internal live binders and six internal leaves,
    one use of the continuation c, with index zero.

The unique index-two and index-one leaves, together with an index-zero
leaf, already pay for the internal width witness. The continuation's
occurrence cannot lie under any internal lambda. All internal binders
are live; exactly two are nonlinear, each used twice.

Traverse B through applications, stopping at each lambda-rooted subtree.
The resulting application context has the single leaf c and some closed
lambda components: none of those components can contain c. The three
witness binders lie in one component. Every other closed component needs
a live binder, and only four internal live binders exist. There are at
most two such components.

## One closed component: two uniform exclusions

If there is just one closed component P, the whole source is either

    lambda c.c P,       or       lambda c.P c.

The first gives `C P stream(I,R)` on the identity source. Its second
payload cannot reduce to the rigid R, because the stream is an
abstraction. This is the complete Lean theorem
`literal_constant_not_selfint` in `Shapes39.lean`, for every closed P.

For the second, direct beta contraction on either invocation transfers
the exact interpreter contract to P. This is `selfint_of_literal_eta` in
`Shapes39.lean`. It does not use eta conversion as an equality principle.
But P has 33 bits, six fewer than the source, contradicting the already
established global floor 39.

## Two closed components: exactly 1,008 layouts

One component contains the three width-chain binders; call it N. The
other contains only d. The incomparable nonlinear pair forces d to be
nonlinear, with two uses, so this component is exactly

    Delta = lambda d.d d.

N has three live lambdas, four leaves and index sum three. Every redex in
N shrinks: a nonlinear chain contractor and the other two width variables
already use all four leaves, leaving no argument; an affine contractor
leaves at most one argument leaf, and its exact wire change is at most
-6. Since the whole 39-bit source is minimum, N is normal.

There are exactly 84 such N, using the six-family classification already
proved in `inventory38.md`, section 3:

| Repeated leaf | Number |
|---|---:|
| outer variable above the middle binder | 12 |
| middle variable above the inner binder | 12 |
| inner variable below its binder | 60 |

The source is `lambda c.T(c,Delta,N)`, where T is an ordered binary tree
on those three distinct atoms, each occurring once. There are two trees
and six orders. Hence there are exactly `12*84=1,008` layouts. In
particular, this includes `lambda c.c (Delta N)` and its relatives;
they are not excluded by assuming a normal body B.

`size39.py literal` generates precisely these contexts. It checks distinct
wires, closure, width and the incomparable pair. `Sources39Literal.lean`
independently proves closure and 39-bit length for every source. The
classification and generator-to-classification correspondence remain
handwritten.

## Exclusions and the two residuals

The first classified check gives 1,002 positive finite certificate
predicates, four W/B exclusions, and two initially unresolved cases.
All predicates are kernel-checked in `Finite39Literal.lean`; their
semantic implications are the same ones detailed in `proof39.md`, now
with size threshold 39. The four W/B cases have complete Lean
`not IsSelfInterpreter` theorems.

Both residuals now have complete Lean exclusions in `Residuals39.lean`:

* **literal 276:** a checked four-step identity-invocation prefix reaches
  a 24-node core. A three-step pump restores that core with two added
  rigid continuation arguments. The weak-head clock strictly decreases.
* **literal 180:** set `A=lambda x.x (lambda y.x y C)` and
  `J(X)=lambda y.X y C`, with C rigid. A checked four-step invocation
  prefix reaches `A A stream(I,R)`. Atoms are A and iterated J of atoms.
  Every pair of atoms has a selected weak-head step:

      A X -> X J(X),
      J(X) Y -> X Y C.

  In both cases another pair remains at the head. The second rule only
  appends a trailing C. A finite weak-head clock for a pair would give a
  strictly smaller clock for another pair, impossible by strong
  induction. `Pair39.lean` proves the substitution identities, the
  invariant, and the complete invocation-to-contract contradiction.
  Its captures are correctly shifted open terms; no closedness of X is
  silently assumed.

Thus every literal 39-bit source is excluded. The residual set is empty,
and the literal-interface bound is **40**. The two uniform lemmas and
all six non-finite layout exclusions are full Lean; the numeric
classification and the implications of the 1,002 checked finite
predicates are handwritten.
