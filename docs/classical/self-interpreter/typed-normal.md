# A simply typed beta-normal self-interpreter

The complete construction is
`data/self-interpreter/machines/int672_typed_normal.lam`, **672 bits**.
`lean/Blc/SelfintTyped.lean` proves its exact wire length, beta-normality,
ordinary simple typing, and directed interpreter contract for every closed
source and arbitrary continuation and suffix. Current finite verification
results are in `docs/STATUS.md` and
`data/self-interpreter/theory/typed_normal.json`.

The important result is the construction, rather than its size. In
particular, **simple typability of the interpreter alone cannot be an
unconditional exclusion**. Actual applications to quotations need not admit
the interpreter's inferred type.

Let `E0` be any closed correct interpreter, `I = λx.x`, and

```text
B = λk.k I I.
```

For source variables all assigned one base type `o`, define the translation
with two free cast parameters:

```text
u : o -> o -> o
d : (o -> o) -> o

x*       = x
(M N)*   = u M* N*
(λx.M)*  = d (λx.M*).
```

Induction on syntax proves:

1. Every `M*` has simple type `o`, given its source variables type `o`.
2. `M*` is beta-normal, regardless of redexes in `M`: every translated
   application is headed by `u`, and every translated abstraction is guarded
   by `d`.
3. Substituting `u := I` and `d := I` gives a finite beta reduction to `M`.
   This reduction can be performed by removing only the added cast redexes;
   it does not require normalizing any original redex of `M`.

For variables `C,R`, put

```text
T(C,R) = λu d.(E0 C (cons K R))*.

E_typed = λC S.S (λbit R.bit B R T(C,R)).
```

Here `C,R` are source variables in the translation, both assigned type `o`.
The first bit of every closed source is `K`, so

```text
E_typed C (cons K R)
  ->* K B R T(C,R)
  ->* B T(C,R)
  ->* T(C,R) I I
  ->* E0 C (cons K R).
```

This is a finite beta-reduction for every remainder and continuation,
including divergent ones. It transfers the exact beta contract; no eta law
is used.

To see the simple typing of the complete interpreter explicitly, write

```text
U = (o -> o -> o) -> ((o -> o) -> o) -> o
```

for the type of `T`. Choose any simple type `Q` of the closed affine packet
`B`, and give

```text
bit : Q -> o -> (U -> o).
```

Then `λbit R.bit B R T(C,R)` has type

```text
(Q -> o -> (U -> o)) -> o -> o,
```

and `S` is assigned the corresponding consumer type. This establishes a
simple type for `E_typed`. The actual bit `K` does not fit this assigned type;
that is precisely where the evaluated application leaves the simply typed
fragment. All subterms of `E_typed` remain beta-normal.

The Lean proof uses a syntax-directed checker for annotated lambda terms,
proved sound for the ordinary simply typed lambda-calculus judgment
`HasType`. The checked annotation establishes
`HasType [] intL672 type672`; Python inference is only an untrusted
certificate producer. A checked 59-step beta trace removes the gate and
casts to reach the literal 165-bit interpreter on its original input.
Substitution lifts that trace to arbitrary `C,R`, and the existing 165
contract supplies `selfint_contract672`. This proof does not normalize the
source program or require it to halt.

`tools/self-interpreter/theory/typed_normal.py` constructs the AST directly,
round-trips its named source, checks syntactic normality, infers a simple
type, and checks that the Lean term, annotation, type, and reduction trace
match the generated certificates. It optionally runs the bounded battery:

```text
python tools/self-interpreter/theory/typed_normal.py --battery
```

As a smaller illustration of the same typing issue,

```text
T_omega = λu d.u (d (λx.u x x)) (d (λx.u x x))
```

is simply typable, while `T_omega I I ->* Omega`. Packaging the two identities
in the closed affine `B` yields two individually simply typed closed terms
whose application diverges.
