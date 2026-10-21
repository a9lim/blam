# Size-priced semantic projections

These are handwritten consequences of the exact contracts. They assume no
165/168 parser frame. The first is a whole-program lower bound for exact
remainder extraction; the second is a disjoint-subterm decomposition only
when the self-interpreter is **already** continuation-headed in its source.

## 1. Every exact remainder extractor costs at least 24 bits

Let closed `R` satisfy

```
R (stream(M,N)) =beta N
```

for every closed source `M` and every closed suffix `N`. Then **|R|>=24**.
The stronger open-source/all-suffix extractor contract is included. This
does not assert 24 is attainable; the existing construction costs 70.

The proof uses the kernel-checked theorems
`SelfintZero.remainder_two_nonlinear` and
`SelfintZero.remainder_body_two_nonlinear`, together with source minimality
and elementary syntax classification. It is not a new Lean theorem.

Choose a shortest extractor; `rem70` establishes existence. Suppose it
costs at most 23. The wire inequality gives exactly two nonlinear binders:
three would cost at least 28. If `L,V,X` are the usual counts, the only
possible `(L,V)` are

```
(2,4), (2,5), (3,4), (4,4).
```

A literal leading lambda is impossible:

* If it is nonlinear, its body has only one nonlinear binder, contrary to
  the body theorem.
* If it is vacuous, the output ignores the input, contradicting the two
  distinct normal suffixes `I,K` for a fixed source `I`.
* If it is live affine, the other two nonlinear binders require four
  more leaves and two more lambdas: `L>=3,V>=5`, already 24 bits.

Follow the source function spine to its first redex. Its contractor cannot
be vacuous, since a shrinking beta reduct would still be an extractor.
There are no live affine binders in this small inventory (the same
`L>=3,V>=5` count rules them out). Thus this is one nonlinear binder.
Its argument is closed and must contain a live binder, necessarily the
other nonlinear binder. The two are therefore incomparable.

Every leaf belongs to these two binders. No leaf is left for a pending
spine argument or another outside component. The source is `D1 D2`, where
each `Di` is closed with one nonlinear live binder. There are at most two
additional vacuous lambdas in total. Each `Di` is beta-normal: an internal
redex would have a vacuous contractor, since its sole live binder is at
its root. `D1` itself cannot start with a vacuous lambda, since it is applied.

Use the following notation, with literal vacuous boxes:

```
Delta = lambda x.x x                    (8 bits)
deltaK = lambda x.x (K x)              (11 bits)
V = lambda x u.x x                    (12 bits)
D3 = lambda x.x (x x) or lambda x.x x x (12 bits)
```

With four leaves, each live binder occurs twice. With no vacuous lambda
the source is `Delta Delta`, which diverges. With one vacuous lambda, the
only normal possibilities, respecting D1's nonvacuous root, are

```
Delta (K Delta),   deltaK Delta,   Delta deltaK,
V Delta,          Delta V.
```

The first three reduce to `Delta`, `Delta`, and `deltaK` respectively, so
their reduct has just one nonlinear binder and cannot be an extractor.
`V Delta -> K Omega`, so every input returns Omega and fails suffix I.
`Delta V -> V V -> K (V V)`. For an input ending in suffix Omega, applying
this term reaches `V V` and then an outer lambda; it cannot beta-join
Omega, whose every reduct is Omega.

With two vacuous lambdas, the bit budget leaves `X<=1`. A vacuous lambda
around both occurrences of a live variable would already cost two index
units. Apart from closed outer wrappers, at most one leaf may be boxed.
The complete remaining normal sources are

```
Delta (K (K Delta)),   Delta (K deltaK),   deltaK (K Delta).
```

They reduce respectively to `K Delta`, `deltaK`, and `Delta`. Again each
reduct has only one nonlinear binder. A wrapper above D1 would be an
erasing source redex, and every other placement either adds two index
units or creates such a redex.

With five leaves there can only be two lambdas, so one binder has three
occurrences and the other has two. Thus the source is `D3 Delta` or
`Delta D3`, with either application tree for D3. These head-diverge.
More generally, an application tree with at least two leaves, each a
closed combinator `lambda x.T(x,...,x)` using x at least twice, stays such
an application tree after every head contraction. Its head contractor
always has an argument supplied inside the tree. It never exposes a
lambda to consume a later input, and the number of leaves never falls
below two. This proves divergence, independently of any clock bound.

All size-at-most-23 cases are excluded. Therefore every exact extractor
costs at least 24 bits. Its syntax must carry more than the smallest
two-binder self-application gadget, even though the task's output is
only an unchanged suffix.

## 2. A continuation-headed interpreter costs at least 70 bits

Suppose the *literal source* is

```
H = lambda c s.c A(c,s) B(c,s).
```

Then the disjoint source payloads satisfy

```
|A| >= 37,                 |B| >= 22,
|H| = 11 + |A| + |B| >= 70.
```

No redex-free, opaque-module, or independent-reader assumption is used.
The existing `SelfintProjections` theorems establish the exact projection
contracts, the stream occurrence in both payloads, and B's two nonlinear
binders. B therefore costs at least 22 by
`10 nonlinear + 4 freeLeaves <= wire + 2`.

For A there is a stronger argument than merely counting two nonlinear
binders.

**A contains two incomparable nonlinear binders.** Substitute the affine
quotation of Omega for s and keep c and the tail rigid. If A's nonlinear
binders were on one chain, affine substitution and full beta reduction
would preserve that property (`SelfintNonlinearChain`). But its required
value `lambda z.Omega` reduces only to itself and has two incomparable
nonlinear binders. The beta join is impossible.

**Some A-subterm has three free variables bound internally to A.** Use
source S, close the two public variables with affine closed terms
(`c:=K`, `s:=stream(S,I)`), and apply the resulting value to I. This
closed term is beta-convertible to S. Its inserted arguments all have
width one. Statman's theorem therefore supplies a width-three subterm
descending from A, whose free variables cannot be the replaced public
variables c,s. Thus its three ancestor binders lie inside A.

The three live binders on this chain cannot contain both incomparable
nonlinear binders. Hence A contains at least four live internal binders,
six leaves bound by them, and index tax at least `2+1+0=3` on selected
internal occurrences. It additionally contains a free occurrence of s,
on a distinct leaf, because its value must depend on the input source.
Therefore

```
L(A)>=4,       V(A)>=7,       X(A)>=3,
|A|>=2*4 + 4*7 - 2 + 3 = 37.
```

The two interface lambdas, the two root applications, and the continuation
leaf cost 11 bits, giving 70. This improves the existing 55-bit literal
continuation-headed floor by pricing the value projection's internal
binding structure.

### Exactly what is, and is not, decomposed

The theorem charges two disjoint subtrees of the *displayed source* once
each, so it does not double count. A source that beta-expands into this
head form can share code between A and B before the expansion. The 165 is
stream-headed and can fuse reading, variable return, and skip; it is not
in the displayed class. No 70-bit floor for an arbitrary pre-head-normal
source follows from this theorem.

The whole-extractor 24-bit theorem also must not be added to A's 37-bit
payload cost as if B were a separately closed extractor: closing B adds
a stream binder, and may require eliminating continuation occurrences.
The correct literal-source accounting above charges the open B body at
22, not a second copy of its surrounding interface.

## 3. Why the requested semantic directions do not yet give 165

* Unbounded unary reading alone has the very small stream diagonal
  `s s s`. It uses the input's own cells and shares the variable's value
  representation. A syntactically separate fixed point is not necessary;
  the 204 and 672 normal witnesses rule that out directly.
* The existing exact-remainder growth theorem proves repeated source-code
  growth, not merely one self-application. It is a sound necessity, but
  an argument must price the *source that produces that growth*, rather
  than count expanding residual copies as distinct modules.
* Arbitrary output abstractions/applications impose the internal width and
  incomparability requirements used above. They do not require distinct
  original binders for each role; the shared-S translation in
  `structural-bounds.md` explicitly defeats that stronger conclusion.
* The Omega probes enforce correctness independently of evaluating source
  normal forms. All new deductions above preserve beta joinability on
  divergent sources. No claim is inferred from the battery's skipped
  Omega test.

The missing quantitative theorem would bound the least *original* BLC
syntax capable of sharing one active code package across (i) a complete
syntax traversal with exact remainder and (ii) beta-exact reconstruction
of arbitrary binding/application structure. Neither residual-origin
counts nor separate minima for familiar implementation modules currently
supply such a theorem.
