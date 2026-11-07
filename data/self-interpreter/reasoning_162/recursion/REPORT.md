(・_・) No sub-162 interpreter found. This lane proves two recursion-family
bounds in Lean: **165 bits after deleting the knot and independently replacing
the two recursive heads**, under a single identity-prefix cut condition; and
**167 bits with the diagonal generator retained but the parser-sharing let
removed**, when the replacement heads have only affine internal binders and
the same cut condition holds. The latter bound is attained by the known
unshared rendering of the 162.

The main new restriction is unconditional within the two-head skeleton:
the **first** replacement head must itself contain two incomparable nonlinear
binders, whatever the second head does. A hypothetical sub-162 knotless fill
must have a second head of at most 14 bits and must violate the ordinary
intermediate state after parsing the left identity in `I Omega`.

All artifacts are in this lane. No other agent was consulted; no term search,
candidate sweep, battery, or polish run was performed.

**1. Complete interpreters.**

No new complete interpreter algorithm was built. The formal attainment
witness for 167 is the existing 162 after one beta contraction in its
generator, inlining the `intL = x x` let. `reference_beta` proves that exact
contraction, `reference_interpreter` transfers the full contract, and
`direct_reference_cost` checks 167 bits. Its established polished rendering
is the 162. No fresh battery line is claimed for this known witness; it was
not re-batteried or re-polished.

**2. Exact identities.**

Let

```text
K = lambda x y.x       F = lambda x y.y       I = lambda x.x
R q c s = s I (lambda u.s (lambda z.c) (s s u)) q
J = lambda f.f I.
```

The following packet mode is a specialization of the one-field equation
already recorded in `golf162`, rather than a new general reader equation:

```text
R q c J =beta c q.
```

Proof: `J I ->* I`, `J (K c) ->* c`, and `J J ->* I`.
Substituting these in the definition of `R` gives `c q`.
Consequently the actual parser has the control operation
`P c J =beta c NEXT_c`; in particular `R g g J =beta g g`.
This holds for arbitrary terms, including divergent ones: the derivation
does not normalize `q` or `c`.

The fixed symbolic checks also verify

```text
R q c I                 =beta c
R q c K = R q c F        =beta q
R q c (lambda f.f K)     =beta lambda u.c K
R q c (lambda f.f F)     =beta q
R q c (lambda u v.t)     =beta t q.
```

These equations follow from the reader definition; most are already known.
They serve as the proof leaves for the carrier bounds below.

There is also an exact re-entry identity for the existing NEXT. Write

```text
A(e)   = lambda env arg.e (lambda b r.b arg (r env))
B(e,f) = lambda env.e env (f env)
Q_c b  = P (lambda e.b (c A(e)) (P (lambda f.c B(e,f)))).
```

Since `P k I =beta k`,

```text
Q_c K I e =beta c A(e)
Q_c F I e =beta P (lambda f.c B(e,f)).
```

These two equalities are handwritten consequences of the checked reset
identity. They do not remove a call site by themselves. If the second call
in the definition of `Q_c` is replaced by its own `Q_c F I e`, the resulting
mutual equations instead give the head cycle

```text
Q_c F I e
  ->* P (lambda z.Q_c F I z) I e
  ->* (lambda z.Q_c F I z) e
  ->  Q_c F I e.
```

The reset law remains valid for this altered parser because it is independent
of NEXT. Thus this literal cyclic-alias family cannot interpret `I I`: its
first `I` parses through ABS and VAR, then enters the displayed loop.
This is an exact unproductive cycle, not a fuel-based rejection. It does not
exclude a changed NEXT with a separately implemented completion mode.

**3. Bounds and their hypotheses.**

The principal formal artifact is `RecursionObstruction.lean`. Theorems below
check with only `propext` and `Quot.sound`; there are no `sorry`s or added
axioms.

Consider the exact knotless skeleton

```text
E[H,J] = lambda c s.
  s I (lambda u.s (lambda q.c) (s s u))
    (lambda b.H (lambda e.b
      (c (lambda env arg.e (lambda x y.x arg (y env))))
      (J (lambda f.c (lambda env.e env (f env)))))).
```

`H` is any term in frame `[b,s,c]`; `J` is any term in
`[e,b,s,c]`. They may contain arbitrary beta redexes, captures, duplication,
and uses of the whole original stream. There is no `intL` or generator
binder. The other syntax is exactly the 162's. The kernel checks

```text
|E[H,J]| = 129 + |H| + |J|.
```

The 129 is also `162 - 22 - 5 - 6`: delete the knot/let and the two recursive
variable leaves, retaining their application nodes.

*First-head obstruction, without a cut hypothesis.* If `E[H,J]` meets the
exact closed-source contract, then `H` is not `Chain`: its nonlinear binders
cannot all lie on one ancestor chain. This is
`first_head_not_chain`.

Proof: choose source `lambda a.Omega`. The two zero tags reduce the reader
to

```text
H[K/b, S/s, C/c] (lambda e.C A(e)) (quote(Omega) ++ N),
S = quote(lambda a.Omega) ++ N.
```

The entire `J` branch has been erased. This cut is ten beta contractions,
uniform in arbitrary `H,J`; `abs_cut` kernel-replays all ten. The ambient
substitutions, the supplied continuation, and the quoted source are all
binder-affine. If `H` were `Chain`, affine substitution and application
would preserve `Chain`, as would every later beta reduction. Correctness
requires beta-joinability with `C (lambda z a.Omega) N`. Every reduct of
that target is itself, and its two delta binders are incomparable. This
contradicts the invariant.

Thus even one arbitrarily large chain-shaped first head is impossible,
independently of the second head. In particular, no affine first-head fill
can work at any size.

*The one additional cut condition.* For the source `I Omega`, require the
ordinary result of the first-child parse: left value
`F = lambda env arg.arg`, and the right stream `quote(Omega) ++ N`.
Precisely, the condition `IdentityCut H J` is beta-joinability of the full
probe with

```text
J[F/e, F/b, S/s, C/c]
  (lambda f.C (lambda env.f env))
  (quote(Omega) ++ N),
S = quote(I Omega) ++ N.
```

The continuation here is the existing APP continuation after substituting
the left identity value and beta-reducing. It is affine; no eta contraction
has been used. A conventional first-child parser establishes this cut, but
the closed-source contract alone has not been shown to force it.

With this condition, the same invariant proves `J` is not `Chain`
(`second_head_not_chain`). All its ambient arguments are affine, and the
required result reduces to `C (lambda z.Omega) N`.

Any non-chain term has at least two nonlinear binders. The existing wire
inequality `10 nonlinear(t) + 4 freeLeaves(t) <= |t| + 2` then gives
`|H|,|J| >= 18`. Hence

```text
|E[H,J]| >= 129 + 18 + 18 = 165.
```

This is `two_independent_heads_at_least_165`. It is a lower bound; an
attaining 165 in this knotless family is not claimed. It covers infinitely
many head fills and is not a rerun or generalization by extrapolation of
the recorded 221,930,567-pair search.

The formal corollary `sub162_requires_different_cut` says that if this same
skeleton were correct below 162, then `IdentityCut` would be false and
`|J| <= 14`. Such a `J` has at most one nonlinear binder. If a proposed
first parse returns something beta-equal to the ordinary identity closure
and right stream, merely hiding code in reducible junk cannot escape:
those objects can be reduced before entering `J`, reinstating the cut.

*Using the generator directly, without the parser-sharing let.* Now retain
the diagonal wrapper and set

```text
G = lambda x.E[H,J]
E_direct = (lambda x.x x) G.
```

The first head's frame is `[b,s,c,x]`, the second's `[e,b,s,c,x]`.
Require that every binder introduced inside `H` and inside `J` is affine;
free ambient names may occur any number of times. Application-only fills
are a special case. Retain `IdentityCut` after substituting `G` for `x`.

Then `G` is `Chain`: all nonlinear binders of the frozen body lie on one
ancestor chain, and the heads add none. If `H` contains `x` at most once,
substituting this chain-shaped `G` into the affine head preserves `Chain`;
substituting the other affine inputs preserves it too. The first-head
obstruction therefore forces at least two occurrences of `x`. The second
head requires two for the same reason, using the identity cut.

Each first-site `x` costs at least five bits and each second-site `x` at
least six. Connecting two leaves needs an application. Consequently
`|H| >= 12`, `|J| >= 14`, and

```text
|E_direct| = 141 + |H| + |J| >= 167.
```

`affine_direct_heads_at_least_167` proves this in Lean. `H = x x` and
`J = x x` attain the bounds; `reference_beta`, `reference_interpreter`,
`reference_cut`, and `direct_reference_cost` check the known 167 witness
and the cut. Thus 167 is the exact minimum of this specified family.
Giving a head a genuinely nonlinear helper or changing the returned
protocol lies outside it. A bare or singly used generator, plus affine
stream manipulations, cannot do the missing recursive work in this frame.

*The 162 reader's carrier minima.* These are handwritten complete
small-budget classifications, with every listed leaf checked in `check.py`.
They price only the carrier, not the whole surrounding interpreter.

- With only `g` free, in frame `[g]`, a carrier satisfying
  `R q c S(g) =beta g q` for independent rigid `q,c,g` costs at least
  **8 bits**. The literal `lambda u v.g` attains it. The same 8 is the
  minimum for `R g g S(g) =beta g g`.
- A **closed** carrier satisfying `R q c S =beta c q` costs at least
  **10 bits**, attained by `J = lambda f.f I`. Ten is also the minimum
  closed carrier for `R g g S =beta g g`.

For the first bound, every term below eight bits in frame `[g]` is one of
`g, I, lambda u.g, F, K, g g`. A lambda with an application body costs at
least eight; three lambdas cost at least eight; an application with a
lambda operand costs at least eight; two application nodes cost at least
ten. The three constant selectors return `c` or `q`. The other three give
rigid `g` spines with respectively three, two, and four arguments, instead
of the one required argument. Setting `q=c=g` does not repair these arities.

For the second bound, every closed term below ten bits is one of
`I, F, K, lambda u.F, lambda u.K, Delta`, where
`Delta = lambda x.x x`. No closed application root fits below ten; the
lambda/leaf counts give exactly these six lambda-rooted shapes. The first
four give `c` or `q`; `lambda u.K` gives the closed term
`lambda a b d.a`; and

```text
R q c Delta ->* c (Omega q).
```

The last cannot be beta-equal to `c q`, since `Omega q` has no head normal
form and rigid `q` is normal. The corresponding diagonal failures are the
same. Attainment follows from the identities in section 2. In the fixed
reader-diagonal template, replacing the eight-bit captured carrier by a
closed carrier therefore adds at least two bits. These bounds do not price
a carrier that also changes the reader or an existing semantic operation.

**4. Assessment and next proof step.**

The productive escape is now more specific than "some other recursion":
with the rest of the 162 frozen, a knotless sub-162 must use its first head
to leave code in a nonstandard intermediate state even for the closed left
operand `I`, then use a second head of at most 14 bits to activate it.
The ordinary identity value and an ordinary source suffix contain no such
code. This points to a continuation-dependent value or residual convention,
or to changing NEXT/reader together so the first parse's returning control
can be reused. It does not justify a universal two-call or 162-bit theorem.

The packet mode exposes NEXT without a second copy of its literal body,
but the standalone carrier is already minimal and the literal reset-alias
re-entry loops. A useful completion mode has to do an additional operation
before the reader resets; simply extracting the existing NEXT again does
not supply it. The existing 303/323-bit boxed constructions already show
that changed intermediate protocols can work. The unresolved task is to
carry that code without their separate boxes, maps, and public adapters.

Reproduction, from the repository root:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round3/recursion/check.py
cd lean
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
  lean -j2 /Users/a9lim/Work/blam/tmp/round3/recursion/RecursionObstruction.lean
```

`checks.json` records seven fixed reader equations, twelve classified
carrier leaves, the 129-bit skeleton accounting, and the ten-step ABS cut.
The script takes about 0.003 seconds. The final Lean check takes under one
second with two threads. These checks are of explicit identities and
theorems; no bounded interpreter testing is being promoted to a universal
result.
