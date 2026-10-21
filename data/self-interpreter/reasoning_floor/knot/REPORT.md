# Knot lane: exact opaque-knot bound, carrier bounds, and two reset bootstraps

No sub-165 interpreter was found. The main result is a **Lean-checked exact
20-bit minimum for an opaque fixed-point context**, giving **31 bits for the
knot, parser binder, and two recursive references in the 165's frame**. This
does not assume Curry's knot syntax or a bounded search. A separate handwritten
argument explains why sinking the shared diagonal cannot save bits when there
are exactly two recursive uses.

The generic reader-diagonal carrier has a sharp 12-bit minimum. Within the
existing independent-carrier bootstrap template, this gives a sharp 192-bit
minimum. Two new constructions escape that carrier's independence hypothesis
by changing the erased skip operand; both still cost 192 bits.

All files written by this lane are under this directory. The live brief,
interpreter record, STATUS, proof-boundary documents, and nine earlier lane
summaries were read. No external consult or subagent was used.

## 1. Complete interpreters and checks

The first two entries are unchanged controls, copied to the lane to verify
the attaining examples. The last two are new complete constructions.

| File | Exact battery line | L, A, X | Idea |
|---|---|---|---|
| `reference165.lam` | `165 bits  ok=667 skip=1 fail=0` | 17, 25, 29 | Existing 165; attains the ordinary 31-bit recursion accounting. |
| `reference192.lam` | `192 bits  ok=667 skip=1 fail=0` | 21, 29, 32 | Existing independent zero-arm carrier; attains the restricted carrier-template bound. |
| `reset_cont192.lam` | `192 bits  ok=667 skip=1 fail=0` | 21, 29, 32 | Put the continuation in the erased skip operand; bootstrap through input F. |
| `reset_generator192.lam` | `192 bits  ok=667 skip=1 fail=0` | 20, 29, 34 | Put the generator in the erased skip operand; bootstrap through input F. |

Each has its exact `.blc` encoding. `battery.json` records the full outcomes,
including no failures and approximately 1.88–1.94 seconds per battery with
two workers. All four also return the rigid suffix exactly on both Omega and
lambda.Omega under the suffix-projecting continuation. These finite checks
are not universal correctness proofs. The two new terms have the handwritten
unfolding and structural-parser arguments below, not new Lean interpreter
proofs.

Reproduce:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/knot/build_and_check.py
PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/knot/identity_check.py
PYTHONDONTWRITEBYTECODE=1 python3 tmp/overnight/knot/checks.py carriers
```

The scripts import the existing battery and compiler, compile without
optimization, use at most two workers, and direct any temporary files to the
lane. The only finite hole check contains 71 terms, as detailed below.

## 2. An exact 20-bit opaque-knot theorem

**Status: kernel-checked in `KnotBound.lean`.** The final check is recorded in
`lean_check.log`. Its reported axioms are `propext` and `Quot.sound`; there is
no `sorryAx`. The attaining knot's unfolding uses no axioms.

Let T be a lambda term containing a distinguished free rigid variable h.
Price every lambda and application at two bits, every bound occurrence at its
ordinary BLC cost, and every occurrence of the opaque hole h at zero bits.
Call this source cost ghostCost(T). In the intended one-hole interpretation,
T has no other free variable and h occurs once. The formal theorem actually
permits multiple free holes, all priced at zero.

**Theorem.** If

```text
T =beta h T,
```

then `ghostCost(T) >= 20`. More precisely, if k is the total number of free
hole occurrences, then

```text
ghostCost(T) >= 18 + 2k.
```

No source-normality assumption, particular knot shape, reduction-cycle
criterion, or bound on reduction length is imposed. Equality is beta
joinability, not eta equality.

**Proof.** T cannot have a beta-normal form n. Otherwise confluence and the
displayed equation give `n = h n`, impossible for finite syntax. The existing
kernel-checked theorem `SelfintLowerBound.one_nonlinear_normalizes` says every
term with at most one nonlinear binder has a beta-normal form. Hence T has at
least two nonlinear binders. It must also contain h: reduction cannot create
an absent free variable, while every reduct of `h T` retains its h head.

Let m be the number of nonlinear binders, L the number of lambdas, A the
number of applications, and V the number of bound variable leaves. Distinct
binders own disjoint occurrences, so `L >= m` and `V >= 2m`. A unary/binary
syntax tree has `A+1 = V+k` leaves. Dropping the nonnegative index tax gives

```text
ghostCost(T) >= 2L + 2A + 2V
             >= 2m + 2(2m+k-1) + 4m
              = 10m + 2k - 2
             >= 18 + 2k >= 20.
```

The Lean proof uses equivalent node/free-leaf inequalities, proves that the
hole is present, and proves the no-normal-form step from confluence.

**Attainment.** With `Delta = lambda x.x x`,

```text
T = Delta (lambda x.h (x x))
```

has ghost cost 20 and one hole. Put `G = lambda x.h (x x)`. Then T reduces to
`G G` and then `h (G G)`, while `h T` reduces to `h (G G)`. The exact term,
cost, scope, one-hole count, and unfolding are all checked in Lean.

**Two-call consequence.** Insert a closed body `H = lambda p.M` into a
single opaque body hole. Charge the parser-parameter lambda and the two
occurrences of p as recursion overhead. If their zero-based depths relative
to that lambda are d1 and d2, then the exact minimum is

```text
20 + 2 + (d1+2) + (d2+2) = 26+d1+d2.
```

The call applications themselves already belong to M and are not charged
twice. At the 165's depths 2 and 3, this gives **31**, attained by its
existing knot. `two_call_overhead`, `current_frame_thirty_one`, and
`current_frame_attains` check these statements in Lean.

This supplies an analytic and formal version of the opaque-knot minimum.
It does **not** imply that every interpreter has 31 separately chargeable
recursion bits. Using the parser body or stream as part of the knot violates
the opaque-hole premise. Changing the two call depths also changes the
numerical consequence.

To reproduce without writing build products outside the lane, from `lean/`:

```sh
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
  lean -j2 /Users/a9lim/Work/blam/tmp/overnight/knot/KnotBound.lean
```

## 3. Why sinking a twice-used diagonal does not help

**Status: handwritten exact wire accounting.** This is an explanation of
the existing letopt neighborhood, not a proposal to repeat its search.

Assume a generator binds x and shares `p = x x`; its body is closed apart
from p, so x has no other occurrence in that body. Suppose all r occurrences
of p remain in one subtree, and sink that let through an intervening lambda
`lambda a` into the subtree. Let m count the occurrences of a in the region
newly enclosed by the p binder. Then the size change is exactly

```text
Delta bits = 2 - r + m.
```

The two x occurrences in the diagonal's right-hand side each become one
index deeper, adding two bits. The r p occurrences each become one index
shallower, subtracting r bits. The m captured a occurrences each become one
index deeper, adding m bits. Other references keep their index, and the
lambda/application inventory is unchanged. Application edges crossed by the
move add no index cost under the stated no-other-x condition.

For **r=2**, each crossed lambda therefore contributes **m >= 0**. Sinking
the shared recursive parser cannot reduce total size, even though its two
use sites become cheaper. The argument extends over arbitrarily many such
moves by summing their nonnegative capture taxes.

For the 165, moving the binding just inside the whole continuation body
charges its three continuation references, giving +3. Restricting the let to
NEXT before its bit binder charges only NEXT's two continuation references,
giving +2. Moving it further under that bit binder adds the bit occurrence,
giving +3. These agree with the recorded absence of a better let layout.

Inlining the diagonal has a separate exact formula. At r use depths d_i,
let D be their sum. Shared overhead inside the generator is `10+2r+D`;
the inlined `x x` copies cost `6r+2D`. Thus inlining changes the size by
`4r+D-10`. For r=2 and D=5, it costs three extra bits.

Finally, a pure exchange of adjacent parser/continuation lambda binders,
with matching argument-order changes, decreases the two parser indices by
one but increases the three continuation indices by one: **+1 bit even
before any calling-convention adapter**. A win needs a changed use pattern,
not just that exchange. These claims do not cover a body that already uses x
in another semantic role, or a different continuation/value protocol.

## 4. The generic diagonal carrier is exactly 12 bits

Write

```text
Z_t = lambda u r.r t
T_t = lambda r.r t
H(q,c) = lambda b.b Z_q c
R(q,c) = lambda s.s H(q,c) (s s s).
```

Consider carriers S(t) whose **only possible free variable is t**, in frame
`[t]`, satisfying

```text
R(q,c) S(t) =beta t t
```

for independent rigid q,c,t. S may contain arbitrary beta redexes.

**Theorem.** `|S| >= 12`, with the unique 12-bit source `Z_t`, up to alpha
renaming. This is a handwritten proof, supported by the complete 71-term
check in `carrier_check.json`; it is not a Lean theorem.

The attaining equation is the recorded diagonal identity:

```text
Z_t H -> T_t,           Z_t Z_t Z_t -> T_t,
R(q,c) Z_t -> T_t T_t -> t t.
```

Here is a small analytic exclusion, including non-normal source terms.
Any candidate at most 12 bits has at most two applications, since
`|S|=2L+4A+2+X`. A term without t is impossible by absence preservation.

If a supported candidate is non-normal and has one application, its redex
body and argument are application-free and its binder is affine. Contracting
it strictly reduces size. If it has two applications, its only possible
lambda count is one and its index sum is zero. Every t occurrence is then
outside the sole lambda. The sole redex contracts either an identity or a
closed duplicator on application-only t syntax, again strictly reducing size.
Thus every supported non-normal source in this range reduces to a smaller
normal source. It suffices to classify normal sources:

* With no applications, they are `t`, `K t`, `K(K t)`, and `K(K(K t))`.
  The reader returns respectively a two-argument t spine, `t(t S)`, t,
  and a lambda. None is `t t`.
* A normal source with no leading lambda has rigid head t and at least one
  existing argument. The reader adds two more, so it fails by rigid arity.
* With one leading lambda and one application, a t head retains two
  arguments after reading. A bound head can contain t only as the direct
  operand (`T_t`) or as `K t`. The first obeys
  `R T_t -> t Z_q c (t t T_t)`, with three arguments at t. The second
  makes `H (K t) -> t c`, retaining two arguments after reading.
* Two leading lambdas and one application already cost ten bits before
  indices. The required t occurrence contributes two. The only choices
  within 12 are `lambda u v.v t` and `lambda u v.t v`. The first is Z_t;
  the second gives `t(t S)`.
* With two applications, a leading lambda plus an occurrence of free t
  would cost at least 13 bits. The remaining normal cases have head t.

There are 39 terms below 12 bits and 32 at 12 in this one-free-variable
frame. Thirty are excluded because t is absent; all 41 supported terms
normalize in the check, with zero capped cases. Only Z_t passes.

**Bootstrap-template corollary.** Keep the 165's body and write, literally,

```text
W = lambda x.x A x S(x)
G = lambda x.(lambda p.B(p)) (W x)
E = (lambda w.w (lambda x.(lambda p.B(p)) (w x))) W.
```

Here A is closed and S has the independent diagonal law above. Any closed A
costs at least four bits; the driver shell costs 12, and S costs at least 12.
Thus `|W| >= 28`. Exact source accounting gives `|E| = 164+|W|`, hence
**192 is optimal in this template**, attained by `A=I`, `S=Z_x`. Both the
template restriction and the independent carrier law matter.

## 5. Exact erased-operand identities and the new constructions

For a fixed erased operand a, define

```text
R_a(q,c) = lambda s.s H(q,c) (s s a).
```

Two exact identities are

```text
R_a(q,c) F   ->* a,
R_a(q,c) Z_t ->* a t t.
```

Proof of the first: `F H (F F a) -> F F a -> a`. For the second,
`Z_t H -> T_t` and `Z_t Z_t a -> a t`, so the result is
`T_t(a t) -> a t t`. No q or c is evaluated. If the erased operand depends
on the stream, substitute F or Z_t into that operand in these laws.
The fixed rigid equations are checked in `identity_check.py`.

On a genuine input prefix, `s s ->* K remainder`, so replacing the erased
operand preserves the original parser equation, even if the replacement
diverges. This is the already-established erased-operand freedom; the two
bootstraps below use its reset behavior to close the recursion loop.

Let `B_c(p)` be the 165's body with skip `s s c`. It satisfies
`B_c(p) c F ->* c` for every provisional p. Set

```text
W_c = lambda x.x I x F x                 -- 26 bits
G   = lambda x.B_c(W_c x)
E   = W_c G.
```

Then

```text
E -> G I G F G
  -> B_c(W_c I) G F G
  -> G G
  -> B_c(W_c G) = B_c(E).
```

The provisional recursion is erased during the reset. This proves the
needed finite unfolding; the ordinary structural parser induction then
applies, including source terms without normal forms. The driver is two
bits smaller than the old 28-bit driver, while the continuation skip costs
two more index bits. The complete source remains **192**. Its only syntactic
self-application is the reader's `list list`, as in the older 192.

For the generator reset, let `B_x(p)` use skip `s s x`. Put

```text
W_g = lambda x.x x x F x                 -- 24 bits
G   = lambda x.B_x(W_g x)
E   = W_g G.
```

Here

```text
E -> G G G F G
  -> B_G(E) G F G
  -> G G
  -> B_G(E).
```

This also supplies the required unfolding and unchanged genuine-stream
parser equations. Its driver saves four bits and its deeper erased operand
costs four, again giving **192**. This variant does contain an explicit
syntactic self-application in its driver.

`identity_check.py` additionally verifies both finite unfoldings with an
arbitrary rigid NEXT-constructor Q, by comparing the resulting weak-head
terms. The two sides take respectively 11/1 and 13/2 beta steps. Those
fixed symbolic checks supplement the paper reductions; no search is used.

## 6. Remaining boundary and practical next step

The 31-bit theorem closes replacement of the opaque knot by a cleverer
fixed-point combinator in the same call frame. The sinking formula closes
ordinary inward movement of the twice-used shared diagonal. The carrier
theorem prices the existing independent-carrier bootstrap exactly.

It remains possible to save by removing a recursive reference or by using
the concrete parser body as part of the knot. The reset constructions show
why the independent 12-bit carrier bound must not be applied indiscriminately:
F, at six bits, becomes a useful carrier after changing the skip protocol.
In the two fully worked constructions, the surrounding code pays back the
saving exactly.

The specific live seam is still a NEXT/control object whose ordinary Boolean
cases perform parsing and whose non-Boolean case generates recursion, with
the two behaviors sharing source syntax. A useful next lower-bound target
would price those coupled cases together, rather than assume NEXT independent
and rigid. A constructive win would need the carrier to perform an already
required semantic operation or eliminate a call-head occurrence; neither
reset construction does that.

I also inspected the previously unresolved 189-bit one-binder-carrier
attempt. A bounded head trace reached 131,002 bits at iteration 80 and was
stopped after 2.56 seconds. No repeated head prefix was certified. It remains
unresolved; this is not a refutation and is not a new complete-interpreter
claim. `probe189.py` reproduces that bounded probe.

There is no global optimality result at 165 in this lane.
