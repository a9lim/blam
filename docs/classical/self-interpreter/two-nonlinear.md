# The two nonlinear binders are sufficient

`lean/Blc/SelfintSharp.lean` proves a closed self-interpreter with exactly two
syntactically nonlinear binders. Both nonlinear lambda subterms are closed in
isolation. The 584-bit witness therefore has no binder that is simultaneously
nonlinear and captures an enclosing variable.

This makes the unrestricted two-binder lower bound in
`Blc/SelfintLowerBound.lean` sharp. It also rules out strengthening the
live-capture theorem by demanding that its capturing binder be nonlinear.
It does not improve the 165-bit interpreter, and it gives no numerical
optimality result for 165.

## Direct construction

Let `Δ = λa.a a`, and use one free variable `d` for every occurrence of it.
The affine duplicator is

```text
W_d = λf x. d (λb. b (λk.f) x).
```

Every binder of `W_d` is affine. On substituting `Δ` for `d`, its behavior is
`W_Δ f x →* f x x`. Writing `A = λb.b (λk.f) x`, the essential reductions are

```text
Δ A → A A → A (λk.f) x → (λk.f) (λk.f) x x → f x x.
```

The compiler recursively translates a term. It retains an abstraction
`λx.B` when `x` occurs at most once. Otherwise it gives the first occurrence
a fresh name `u`, the remaining occurrences a fresh name `v`, and replaces
the abstraction with `W_d (λu. T(λv.B[u,v]))`. Repeating this operation
reduces the multiplicity of each binder until every binder is affine.

For a closed source `E`, close the resulting code as
`(λd.T(E)) Δ`. The only possible nonlinear binders are the shared `d`
and the argument of `Δ`; both corresponding lambda subterms are closed.
Substitution of `Δ`, followed by the displayed reductions and structural
induction, gives a finite directed beta reduction to `E`.

For the literal 165-bit interpreter this deterministic construction gives
584 bits, ten uses of the shared `d`, and 71 administrative beta steps back
to the literal source. No candidate enumeration or search occurs.

The source and wire encoding are
`data/self-interpreter/machines/int584_two_nonlinear.{lam,blc}`.

## Sharpness among normal interpreters

The same two-binder minimum is attained by a beta-normal interpreter. First
normalize the affine body `T(E)` while its free `d` stays rigid, obtaining
`B(d)`. Affine reduction terminates and leaves its own binders affine.
Both `λd.B(d)` and `Δ` are normal and closed. The public root is

```text
E_normal = λc s. s (λb r. b (λd.B(d)) I Δ c (λk.k K r)).
```

For a closed source the first bit is `K`, so `s = λk.k K r`. The root uses
that bit to select `λd.B(d)`, discards `I`, and supplies `Δ`. Its last
argument rebuilds the consumed first cell:

```text
E_normal c (λk.k K r) →* ((λd.B(d)) Δ) c (λk.k K r).
```

No application in the source has a lambda as its function. The root binders
`c`, `s`, `b`, `r`, and `k` are all affine. The two nonlinear lambda subterms
remain the closed `λd.B(d)` and `Δ`.

For the 165-derived code this produces the 742-bit canonical witness
`data/self-interpreter/machines/int742_two_nonlinear_normal.{lam,blc}`.
Lean checks a 13-step reduction of the 584 to the normalized core, a
seven-step root reduction, normality, and the exact nonlinear count.
Confluence with the 584's directed contract proves the 742's contract as
**beta joinability**, for every closed source and arbitrary continuation
and suffix. The theorem does not claim a directed reduction to the literal
target `C (λz.M) N` when that target is itself reducible.

## Evidence

`tools/self-interpreter/theory/affine_basis.py` constructs both witnesses,
checks their exact source and traces against the Lean literals, counts the
nonlinear binders, and runs the standard interpreter battery with two
workers. The checked reports are
`data/self-interpreter/theory/two_nonlinear.json` and
`data/self-interpreter/theory/two_nonlinear_normal.json`.

The Lean theorem `reduces584` replays all 71 beta steps through a proved
path-selected reduction checker. `selfint_contract584` then inherits the
directed contract for every closed source term, including diverging terms,
and arbitrary continuation and suffix. `two_nonlinear_sharp` packages
correctness, exact nonlinear count two, and `NonlinearClosed`. Its only
axioms are `propext` and `Quot.sound`.

`two_nonlinear_normal_sharp` additionally requires beta-normality, using
`selfint_join742` for correctness. It has the same axiom inventory. These
two sharpness theorems establish that a stronger interpreter size bound
needs more than a larger count of nonlinear binders, including within the
normal fragment.
