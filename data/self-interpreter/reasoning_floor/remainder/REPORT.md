# Remainder lane report

No smaller complete remainder extractor was found. The best upper bound
remains **70 bits**, including open sources. This lane proves
**27 ≤ Rmin ≤ 70** for the closed-source, exact-suffix contract. The
27-bit lower bound is handwritten, with fixed equation checks; its new
incomparable-binder ingredient is checked in Lean. It does **not** establish
Rmin ≥ 50 or improve the existing 34-bit interpreter floor.

The main new obstruction to the proposed route is constructive: **45 bits
already suffice for every lambda tower and every unary index**. This partial
reader has incomparable nonlinear binders and repeatedly increases the
number of program-origin lambdas. Its exact tower contract is checked in
Lean. Consequently the zero-stream family, even together with the known
code-growth mechanism, cannot by itself prove a 50-bit remainder bound.

All files written are in this lane directory. No candidate enumeration,
long sweep, external consult, or repository edit was used. The largest
test run took 4.922 seconds with two workers. Lean checks used two threads
and took less than two seconds each.

## 1. Constructions and exact tests

No new complete self-interpreter was built. `int165_projection.lam` is the
existing 165 applied to `λv r.r`, used as a reference remainder extractor.

`check.py` compiles sources without optimization and normalizes

```
λn. R (streamOf(code(M),n))
```

against the literal normal form `λn.n`. Thus the suffix is rigid. It tests
all 226 closed programs through 16 bits, eight further closed sources
including Ω, λ.Ω, Ω I, I Ω, indices through 40, and a 48-lambda tower,
plus six open sources. No divergent source is skipped: source syntax is
never evaluated. Every listed candidate received all 240 probes.

| File stem | Bits | Exact battery counts | Status / idea |
| --- | ---: | --- | --- |
| `reference70` | 70 | pass=240 fail=0 capped=0 timeout=0 | Existing self-passed context. |
| `floated71` | 71 | pass=240 fail=0 capped=0 timeout=0 | Float the context-sharing let outside the stream lambda. |
| `fixedpoint_direct` | 86 | pass=240 fail=0 capped=0 timeout=0 | Explicit fixed point, select the input of the final parse. |
| `fixedpoint_select_after` | 95 | pass=240 fail=0 capped=0 timeout=0 | Explicit fixed point, select between one and two complete parses. |
| `int165_projection` | 173 | pass=240 fail=0 capped=0 timeout=0 | Existing E applied to the six-bit tail projection. |
| `diagonal63_failed` | 63 | pass=0 fail=240 capped=0 timeout=0 | Replace the adapter by D D; wrong normal form already on I. |
| `triple67_capped` | 67 | pass=0 fail=0 capped=240 timeout=0 | D D D. Analytically head-divergent on every zero-headed input; proof below. |
| `right_diagonal67` | 67 | pass=0 fail=240 capped=0 timeout=0 | D (D D); wrong normal form on I. |
| `partial_diagonal69` | 69 | pass=5 fail=200 capped=35 timeout=0 | Self-apply the partial parse s D; wrong normal form on I. |
| `drop_second_skip_failed` | 66 | pass=27 fail=213 capped=0 timeout=0 | Remove one context operand from APP; returns a thunk instead of the exact tail. |
| `unary_only` | 12 | pass=5 fail=235 capped=0 timeout=0 | Ordinary stop-at-first-zero diagonal. |
| `zero_tower_only` | 67 | pass=27 fail=213 capped=0 timeout=0 | Explicit fixed point, ignore the second tag. |
| `tower51` | 51 | pass=27 fail=213 capped=0 timeout=0 | rem70 with Q = λt u d.u d d. |
| `tower45` | 45 | pass=27 fail=213 capped=0 timeout=0 | Skip all leading zero bits, then the unary variable. |

Every stem has `.lam` and `.blc` files. `checks.json` records the full
counts, groups, and counterexamples. The cap is 12,000 beta steps; caps are
not counted as refutations. The separate proof resolves `triple67_capped`.
The five passes of the unary-only reader are the five open-variable probes.

### rem70, completely unfolded

Let K be bit zero, F bit one, and `[b,r]=λh.h b r`. Define

```
Q = λt u d.t u (u d d) d d
D = λb r.r (b Q r)
P(s) = s D D
R70 = λs.(λd.s d d) D.
```

The adapter gives `R70 s →* P(s)`. A first cell gives

```
P([F,r]) →* r r D
P([K,r]) →* r Q D.
```

For `r=1^i 0 ++ N`, the self-skip identity is `r r →* K N`, so the
first clause returns N and erases the pending D. On the constructor path,
the second Scott cell exposes t,u before the context argument arrives:

```
Q K u D →* u D D                 = P(u)
Q F u D →* (u D D) D D           = P(P(u)).
```

Induction on source syntax proves exact extraction for every source,
including open and divergent ones, uniformly in its suffix. Uniformity is
what licenses parsing the first child with the second child's complete
stream as its suffix. No encoded source evaluation is involved.

Q costs 36, D costs 53, and the adapter costs 17. The total is
L=7, A=12, X=6, hence 70. The binder order in Q puts its four d occurrences
innermost, its two u occurrences next, and its one t occurrence outermost.
`SelfintRemainder.rem70_contract` already proves the full contract; this
lane separately rechecked the source and the 240 exact probes.

The 86-bit construction satisfies

```
P s =β s (λb r. b (r (λt u. P (t u (P u)))) (r r r)).
```

The 95-bit version replaces `P(t u(P u))` by `t(P u)(P(P u))`.
Their explicit diagonal/let knots unfold to these equations. The same
source induction proves both correct on open sources and arbitrary tails.
These derivations are handwritten; the finite batteries are corroboration.

### The capped 67-bit bootstrap really loops

Use the same D,Q as rem70 and put

```
X = Q Q D,     Y = X Q Q,
A = D Q Q,     B = A Q Q,     C = A Q B.
```

For an arbitrary zero cell `s=[K,r]`, ordinary weak-head reduction gives

```
D D D s →^12 Y s (s K K) K K r
Y       →^13 Q Q Q Q (Q Q Q) Q Q C Q Q Q Q.
```

Both fixed traces are replayed in `audit.py`. The closed prefix Q Q Q Q
diverges at the head. Indeed every all-Q application spine with at least
three arguments rewrites, by `Q t u d → t u (u d d) d d`, to another
all-Q head spine with at least four arguments. Its t is again an all-Q
application tree. Appending arbitrary arguments cannot interrupt this
invariant: the four newly supplied all-Q arguments precede them. Thus the
displayed input never reaches its suffix. The explicit source-sharing
adapter adds one initial beta step before D D D.

## 2. A 45-bit boundary for zero-stream arguments

The exact source is

```
λs.(λd.s d d) (λb r d.r (b d r) d).
```

Let `D0=λb r d.r(b d r)d` and `P0(s)=s D0 D0`. Its two laws are

```
P0([K,r]) →* r D0 D0 = P0(r)
P0([F,r]) →* r r D0.
```

Therefore, for every k≥0, m≥1, and arbitrary N,

```
R45 (0^k 1^m 0 ++ N) →* N.
```

Induct on k and then use unary self-skip. This includes every closed
lambda tower `λ^n.I` and every well-scoped `λ^k.var m`. It even accepts
odd zero prefixes, which need not be a source encoding. `Tower45.lean`
checks the literal 45-bit length, closedness, both symbolic clauses, and
the all-k/all-index/all-suffix theorem, including the tower corollary.
Both public contracts depend only on `propext` and `Quot.sound`.

It fails, for example, on `λx.x x` (wire `00011010`): it returns
`10 ++ N`, the encoding of the second variable followed by N.
This is a partial reader, not an improvement to Rmin.

It also realizes the growth mechanism concretely. In one zero-cell cycle
`P0([K,r]) →* P0(r)`, the active D0 consumes its b and r binders. Its
last d contraction then duplicates the other three-lambda D0 twice and
consumes one lambda, increasing the program-origin lambda count by
`(2−1)·3−1 = 2`. Before/after counts in the cycle are 6,5,4,6. This
happens at every zero cell, arbitrarily late in the infinite-zero trace.

The source has five live binders, three nonlinear binders, and an
incomparable nonlinear pair (the sharing lambda against binders in D0).
Thus two nonlinear binders, incomparable branches, unary skipping, and
arbitrarily late code growth are jointly compatible with 45 bits.
Any sound bound using only these obligations is at most 45 and transfers
at most 37 bits to interpreters. In particular it cannot reach the desired
42-bit interpreter bound. This does not obstruct a bound that additionally
uses genuine application parsing.

## 3. Incomparable nonlinear binders: new Lean theorem

`RemainderChain.lean` proves `remainder_not_chain` and
`literal_remainder_body_not_chain`. Hypotheses are closedness and exact
closed-source/closed-suffix beta joinability. The latter theorem puts the
incomparable pair inside the body of a literal one-lambda interface.

The interpreter's old Omega-output argument cannot simply be reused:
putting Omega in an extractor's suffix puts its two nonlinear binders in
the input already. This proof instead extends the labelled-zero argument.

Use the existing extended syntax Q with program lambdas and affine data
K,Z_i. Define ChainQ by the existing `Chain` predicate on its binder-count
erasure. All extended steps preserve ChainQ and preserve affineness when
the initial term is affine. Data phases normalize finitely and do not
increase either nonlinear-binder count or program-lambda count.

At a global program head contraction:

* An affine binder decreases program-lambda count and does not increase
  nonlinear count.
* A nonlinear binder, by the chain property, has an affine argument.
  Its contraction therefore decreases nonlinear count by one, regardless
  of how many affine program lambdas get copied.

The lexicographic pair `(nonlinear count, program-lambda count)` decreases
between completed data phases. Thus every closed chain-shaped extended
term reaches a lambda-like answer. This permits arbitrarily many nested
nonlinear binders; it is stronger than assuming their count at most one.

Simulate the resulting finite trace of R Z0 on a sufficiently long even
zero prefix ending in `stream(I,Omega)`. It is the quotation of a closed
lambda tower followed by Omega. The trace produces an outer lambda,
whereas correctness says it beta-joins Omega. Confluence contradicts this:
all reducts of an outer lambda remain lambdas, and Omega's only reduct is
itself. Hence R is not chain-shaped.

Lean checks the preservation lemmas, lexicographic termination, finite
simulation, and contradiction. Its final axiom audit is exactly
`[propext, Quot.sound]`; there are no admitted proofs.

## 4. Handwritten unconditional lower bound: Rmin ≥ 27

This proof concerns arbitrary closed sources for R, including beta-redexes.
It assumes neither a normal-form source nor a parser architecture. The
syntax classification below is analytical, not a term enumeration.
`audit.py` replays 33 fixed equations used here and above in about 0.003 s;
the exhaustiveness comes from the following count argument, not those tests.

### Three live binders, hence at least 24 bits

Call a binder live when its own variable occurs. An extractor R weak-head
normalizes to a lambda: apply it to a fixed quoted closed source with
normal suffix I, and use head-normalization reflection to its function.
The exposed binder must be live, since otherwise the result would be
independent of the suffix (take closed suffixes I and F).
The reduct remains an extractor by confluence, so `SelfintZero` says that
the exposed lambda's body contains at least two nonlinear binders.

Suppose the original R had at most two live binders. There must be two,
both nonlinear, and the new chain theorem makes them incomparable.
Each is consequently closed in isolation: every ancestor is vacuous.
Neither body contains another live binder. During weak-head evaluation,
copies of these closed live lambdas retain their original bodies, since
substitution cannot change a closed subterm and no step is taken under a
lambda. Every other original binder is vacuous and remains so under
capture-avoiding substitution. Thus a live exposed lambda would have no
nonlinear binder in its body, the required contradiction.

R has at least three live binders and two nonlinear binders. Write L,V,X
for lambda nodes, variable leaves, and the sum of zero-based indices.
There are at least five leaves, and

```
|R| = 2L + 4V - 2 + X ≥ 2·3 + 4·5 - 2 = 24.
```

### The entire allocation through 26 bits

If |R|≤26, necessarily V=5, exactly three binders are live, exactly two
are nonlinear, and each nonlinear binder occurs exactly twice. The third
live binder is affine. Either

```
L=3, X≤2,                or                L=4, X=0.
```

In the second case the fourth lambda is vacuous. Put `D=λx.x x`.

### Zero index sum

When X=0 every lambda subterm is closed in isolation. Any lambda exposed
by weak-head evaluation is therefore an unchanged original lambda subterm.
To have two internal nonlinear binders it must be the affine binder,
containing both nonlinear binders. These consume all five source leaves.
There can be no application outside this lambda, because its other operand
would require a leaf. An outer vacuous lambda would itself receive and
discard the public stream. Thus R is literally this affine lambda.

With three lambdas it has form `λs.T(s,D,D)`, where T is a three-leaf
binary application tree. On any `s=[K,r]`, its six layouts give:

| Body | Reduct after substituting s |
| --- | --- |
| `(s D) D` | `K D` |
| `(D s) D` | `r` |
| `(D D) s` | `Omega s` |
| `s (D D)` | `Omega K r` |
| `D (s D)` | `K K` |
| `D (D s)` | `r` |

Take `s=stream(I,n)`, with rigid n; r is a nonempty Scott stream. None
returns n.

With a fourth, vacuous lambda, its body must be closed because X=0.
It cannot surround an occurrence bound by s or D. It therefore wraps
one D, giving `J=λz.D`, or wraps `D D`. In the latter case the only
layouts are `s(λz.Omega)` and `(λz.Omega)s`, both head-divergent.
In the former case take `s=[K,r]`, `r=[K,u]` (as for source I):

| Body | Reduct |
| --- | --- |
| `(s D) J` | `K J` |
| `(s J) D` | `u` |
| `(D s) J` | `r` |
| `(D J) s` | `K r` |
| `(J s) D` | `Omega` |
| `(J D) s` | `K r` |
| `s(D J)` | `K` |
| `s(J D)` | `K` |
| `D(s J)` | `u` |
| `D(J s)` | `Omega` |
| `J(s D)` | `D` |
| `J(D s)` | `D` |

Here u is also a nonempty Scott stream. Again none is n. This excludes
all zero-index allocations through 26 bits.

### Three lambdas and a positive index sum: literal interface

If R starts with a lambda, it is the affine binder; a nonlinear root
would be comparable with the only other nonlinear binder. Its sole
stream occurrence must lie inside one of the incomparable nonlinear
binders, or X would be zero. Thus

```
R = λs.H_s D,       or       R = λs.D H_s,
H_s = λx.T(x,x,s).
```

The first reduces to the already excluded three-leaf layout. For the
second, the six choices of T give the following on
`s=stream(I,n)=[K,r]`, `r=[K,u]`:

| T | Behavior of H_s H_s |
| --- | --- |
| `(x x)s` | `H_s H_s → H_s H_s s`, an infinite head expansion |
| `(x s)x` | `I` |
| `(s x)x` | `K H_s` |
| `x(x s)` | `u` |
| `x(s x)` | `K K` |
| `s(x x)` | `H_s H_s →² H_s H_s K r`, an infinite head expansion |

No choice returns n. The two recurrence equations preserve the head
redex while appending arguments; they are divergence proofs, not fuel caps.

### Three lambdas and a positive index sum: application root

A positive index requires two nested live binders in one subtree. The
other nonlinear binder is incomparable, closed, and has no other binder,
so is D. Closure and the five-leaf inventory leave exactly

```
R = N D,       or       R = D N,
```

where N contains one affine and one binary nonlinear binder and three
leaves.

If the affine binder is outermost, positivity forces
`N=λa b.T(a,b,b)`. Both N D and D N reduce to a literal interface whose
body contains exactly one nonlinear binder: respectively D or one copy
of N. The public b binder does not count. `SelfintZero` excludes them.

If the nonlinear binder is outermost and the affine binder is leading,
`N=λx y.T(x,x,y)`. N D reduces to the excluded 24-bit literal form.
For D N, first reduce to N N:

| T | Obstruction |
| --- | --- |
| `(x x)y` | `(N N)s →² (N N)s`, a head cycle |
| `(x y)x` | `N N →* λy.y N y`, only one internal nonlinear binder |
| `(y x)x` | `(N N)(stream(I,n)) →* K` |
| `x(x y)` | `N N →* λy z.(N y)((N y)z)`, two leading lambdas |
| `x(y x)` | `N N →* λy z.(y N)(z(y N))`, two leading lambdas |
| `y(x x)` | With X=N N, `X[K,r] →⁷ X`; X already has a lambda head |

For the fifth row, expanding N once gives
`λy.N(y N) → λy z.(y N)(z(y N))`. Two leading lambdas leave a lambda
after the one public input and cannot yield rigid n. In the last row,
`X → λy.y X`, so the returned X also cannot yield n.

Finally suppose the inner affine binder is nonleading. It has one own
occurrence and, by positivity, exactly one captured x; the other x is
outside it. The only forms are

```
λx.(λy.x y)x,    λx.(λy.y x)x,
λx.x(λy.x y),    λx.x(λy.y x).
```

The first two beta-reduce to D, yielding Omega in either outer order.
For the third let `J(A)=λy.A y` and `N=λx.x J(x)`. N D reaches the
two-step cycle `D J(D) → J(D) J(D) → D J(D)`. For N N the infinite
head progression is

```
N J^k(N) → J^k(N) J^(k+1)(N) →* N J^(k+1)(N).
```

For the fourth use `J(A)=λy.y A`. N D reduces to Omega, and N N enters
the three-step cycle

```
N J(N) → J(N) J(J(N)) → J(J(N)) N → N J(N).
```

This exhausts the positive-index allocation. Hence no closed exact
remainder extractor has size at most 26, and **Rmin ≥ 27**.

The reduction tables and representative recurrence equations passed the
fixed audit. The three-live-binder argument and the exhaustive allocation
classification are handwritten and have not been formalized or independently
reviewed. The Lean numerical remainder floor in this lane remains 18.

## 5. Transfer, exactly

For any self-interpreter E let `R_E=E F`, where `F=λv r.r` costs six bits.
Substitute F for the rigid continuation in the self-interpreter contract:

```
R_E (stream(M,N)) =β F (λz.M) N →* N.
```

This holds for every closed M, including divergent M, and every N.
The source application costs two more bits, so

```
|R_E| = |E| + 8,       |E| ≥ Rmin − 8.
```

`RemainderChain.lean` now checks the general projection theorem, its exact
size equation, and `remainder_bound_transfers`: every universal remainder
bound n gives `SelfintSizeBound (n−8)`. It also checks the 18-bit numerical
remainder floor and that no universal remainder floor can exceed 70,
using the existing rem70 theorem. All these proofs audit to
`[propext, Quot.sound]`.

The new handwritten remainder bound therefore gives only **|E|≥19**.
The established **34-bit handwritten / 18-bit Lean interpreter floors remain
the strongest overall floors cited here**. In principle this exact transfer
can yield at most 62 bits because rem70 exists. A 50- or 60-bit remainder
floor would give 42 or 52 respectively, but neither was proved.

## 6. What is and is not priced

The invariant audit gives:

| Term | Bits | Live binders | Nonlinear binders | Incomparable pair |
| --- | ---: | ---: | ---: | --- |
| rem70 | 70 | 7 | 4 | yes |
| int165 F | 173 | 17 | 7 | yes |
| tower45 | 45 | 5 | 3 | yes |
| incomplete-APP 66 | 66 | 7 | 4 | yes |
| failed D D 63 | 63 | 6 | 4 | yes |

The 66-bit near miss has exactly the same zero-branch recurrence and
growth behavior as rem70. It retains a second-tag test, but APP computes
`P(u) D` instead of `P(P(u))`: one context operand is missing. On `λx.x x`
it produces `K N` rather than N. Qualitative binder, branching, unary-skip,
and zero-growth constraints do not detect that error.

There is no justified additive sum of a unary skipper, three tag branches,
a fixed-point wrapper, and two recursive calls. rem70 already shares the
context between the variable eraser and constructor recursion. A counter
or continuation protocol could share one recursive source occurrence
between the two sequential skips. The semantic requirement for APP is
real; a source-syntax charge for it has not been established.

Nor can the interpreter's width-three theorem simply be assigned to R.
Its proof reconstructs the exact S combinator from interpreted source;
an extractor only forwards its suffix, which would already contain S if
that were chosen as the suffix. The proof that width comes from E does
not establish the same claim about R.

The most useful next proof target is an **application-sensitive** invariant
of residual control: after the left child's entire encoding has been
discarded, a still-live obligation must consume exactly one further
source while remaining uniform in the arbitrary final suffix. It must
permit this obligation to be encoded in pending applications, shared
closures, or a counter; requiring two literal recursive call sites would
exclude architectures without proof. A quantitative charge for such
residual control, combined with the zero-reader mechanism, is the missing
step toward 50. I have no valid charge large enough to claim it.

Constructively, a sub-70 reader would need to exploit actual-context or
actual-stream behavior in Q, or change the recursion protocol. The direct
fixed-point variants cost substantially more; the obvious D/partial-parse
diagonals fail, including the analytically resolved 67-bit loop. This is
not an optimality proof for rem70.

## Reproduction

From the repository root:

```
PYTHONDONTWRITEBYTECODE=1 python tmp/overnight/remainder/check.py
PYTHONDONTWRITEBYTECODE=1 python tmp/overnight/remainder/audit.py
```

From `lean/`, using the existing compiled dependencies and writing no
build output outside the lane:

```
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean lean -j 2 /Users/a9lim/Work/blam/tmp/overnight/remainder/RemainderChain.lean
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean lean -j 2 /Users/a9lim/Work/blam/tmp/overnight/remainder/Tower45.lean
```

The final outputs are recorded in `lean-checks.txt`, `checks.json`, and
`audit.json`. No existing Lean module or tracked artifact was changed.

## 7. Application-sensitive residual control

**Outcome of the follow-up.** The pending-source obligation is now precise
and checked in Lean, including its program-origin version and an unbounded
family of distinguishable pending depths. Three proposed ways of charging
it to original syntax are false: a complete extractor need not have a third
nonlinear binder, a third live capturing binder, or a second width-three
subterm. A new **647-bit** counterexample proves all three facts at once;
its full contract and exact structural counts are kernel-checked.

A separate handwritten theorem proves **70 bits is optimal in the restricted
rem70 frame with an opaque, lambda-free Q body**. This is a genuine charge
for two sequential skips in that frame, not a global 70-bit bound. Two new
65-bit attempts to pack the pending pair into one argument fail, with
kernel-checked counterexamples. No sub-70 complete extractor was found.
The unconditional numerical result remains the handwritten **27 ≤ Rmin ≤ 70**
from section 4, subject to its stated review boundary. Its transfer remains
**|E| ≥ 19**, and does not improve the coordinating global lane's handwritten
37-bit interpreter floor (`../global/PROOF37.md`).

### 7.1 Exact obligation: semantic derivatives, without an assumed parser

Write `p ++ S` for the Scott stream of the finite word p with tail S.
For a closed exact extractor R define

```
D_p(S) = R (p ++ S).
```

For every closed M, closed Q, and arbitrary S,N, correctness gives

```
D_code(M)(S)                    =β S,
D_(01 code(M))(code(Q) ++ N)    =β N.
```

The first residual is done. The second must still extract one complete
source, uniformly in the final suffix. They cannot be the same residual
operation: supply both with `code(I) ++ n`, with n rigid. The first gives
the nonempty Scott stream `code(I) ++ n`, an outer lambda; the second
gives n. An outer lambda cannot beta-join a rigid variable, by confluence.
This proof applies to every closed M, so in particular to the unbounded
family `M=λ^m.I`, and does not evaluate M or assume that M normalizes.

This is the precise sense of "flat" excluded here: identifying the
operations for zero and one pending sources. It is not the unrelated
`SelfintGrowthOrigins.Flat` predicate on a single closed lambda.

There are actually infinitely many necessary modes. Put

```
w = code(I),
p_k = (01)^k code(M),
C_k = (((M I) I) ... I),       k right children,
code(C_k) = p_k w^k.
```

For `i<j`, supply the identical tail `w^j ++ n` to both derivatives:

```
D_p_i(w^j ++ n) =β w^(j-i) ++ n,
D_p_j(w^j ++ n) =β n.
```

The results cannot beta-join. Thus pending depths cannot collapse to a
finite collection of uniformly equivalent residual operations. If each
such operation has a closed literal representative `λs.B_k`, then among
m+1 depths their maximum residual code length is at least `ceil(log2(m+1))`:
distinct closed BLC codes of length at most b admit at most 2^b values,
by prefix-freeness. This is a bound on **residual syntax**, not on the
original reader. Retained input, copied closures, counters, and pending
applications can all carry the distinction.

`ResidualControl.lean` proves `one_pending`, `pending_ne_done`,
`k_pending`, `fewer_pending`, and `pending_depths_distinct`, with no
architectural assumption. The last theorem quantifies over every i,k
with k>0. These are not finite-depth tests.

### 7.2 What must survive a uniform cut, including origins

Suppose the open residual body B has only its tail variable free and
satisfies the uniform cut equation

```
R (01 code(M) ++ S) =β B[S]       for every S.
```

Then `λs.B` is itself an exact closed-source remainder extractor. Therefore
B contains two incomparable nonlinear binders. This follows from the
earlier remainder theorem, not from interpreting a divergent source as
an output. It requires only closed next sources and closed suffixes for
the nonlinear/chain contradiction.

The origin statement is also checked. Mark original reader lambdas red
and the finite prefix's Scott cells and Boolean lambdas blue. Start with

```
red(R) (blue_stream(01 code(M), rigid_s))
```

and take any color-preserving beta trace to a residual b whose erasure
has only s free. `QuoteOrigins.Marked.good_steps` preserves the protected
shape of blue lambdas; `good_blueAffine` makes every blue lambda affine.
Substituting for rigid s transports this same trace to every actual suffix,
so the cut equation above holds. The two incomparable nonlinear binders
in b must consequently have **reader origin**. In particular
`2 ≤ Marked.redCount b`.

`marked_pending_has_code` checks this argument using the existing origin
machinery. It returns the red-count bound and non-chain property. It does
not require old prefix garbage to have disappeared; when a clean cut does
exist it applies there too. Conversely, the exact contract alone does not
assert that every implementation exposes a syntactically clean cut before
looking at the next source. The unconditional object is the semantic
derivative; a particular operational factorization needs its own proof.

This is the charging obstruction: the two required residual binders may be
copies of the same original pair that processed the left child. The theorem
does not provide two additional original binders, a second independent code
package, or additive original wire cost.

### 7.3 Three proposed source charges have checked counterexamples

First, the existing 584-bit interpreter gives

```
rem592 = intL584 F.
```

It is a complete closed-source extractor with exactly **two nonlinear
binders**, both closed as standalone lambda subterms. `rem592_contract`,
`rem592_two_nonlinear`, and `rem592_nonlinear_closed` are in
`ResidualControl.lean`. Hence application parsing does not force a third
nonlinear binder or a nonlinear capturing binder.

The new construction `shared_s_remainder.lam` / `.blc` is more discriminating.
Compile rem70 by the ordinary beta-exact SKI abstraction rules

```
[x]x = I,
[x]T = K T                         when x is absent,
[x](U V) = S ([x]U) ([x]V),
S = λx y z.x z (y z).
```

There is no eta shortcut. Abstract every source lambda, then replace all
copies of S by one let-bound variable:

```
(λs. compiled_expression(s,K,I)) S.
```

The resulting exact source costs **647 bits**. K and I are affine; each
inserted K and I is closed. The shared s binder and S's z binder are the
only nonlinear binders. The only live capturing binders are S's y and z.
The only subterm with three or more distinct free variables is the single
body `x z (y z)` inside the one literal S. Thus the source has exactly

```
nonlinear binders          2,
live capturing binders     2,
width-three subterms       1.
```

`SharedS647.lean` checks 413 explicit beta steps to the same 114-bit normal
form as rem70, then derives the complete contract for **all sources,
including open sources, and arbitrary suffixes** by confluence and
`rem70_contract`. It also computes all three structural counts in the
kernel. `widthWitnesses` counts actual subterm occurrences, not merely
distinct triples of variable names. The count is one in the whole reader
and zero in the compiled body outside S.

The structural count theorems use no axioms. The semantic contract's axiom
audit is `[propext, Quot.sound]`. The 647 is not a size improvement; it
refutes the proposed qualitative increments. The same translation explains
how expanding residual control can be generated from one shared width
witness. This does not establish a width-three lower bound for extractors;
that separate necessity remains unproved here.

### 7.4 A tight conditional price: the existing opaque frame costs 70

Consider exactly this source architecture:

```
R_Q = λs.(λd.s d d) (λb r.r (b Q r)),
Q   = λt u d.H(t,u,d),
```

where H is an application tree of t,u,d, with **no further lambdas**, and Q
satisfies the following laws for **rigid, independent** u and d:

```
Q K u d =β u d d,
Q F u d =β u d d d d.
```

These opaque laws are stronger than correctness when d is the one actual
recursive context. They are explicit hypotheses, not consequences asserted
for every closed-source extractor.

Let T,U,D count t,u,d leaves in H. After substituting K or F for t, every
contracted lambda is affine: H contributes no lambdas of its own. The
application law therefore implies D≥4 and U≥1. The two different laws
imply T≥1. H cannot have rigid head u, because its top-level arity would
be fixed in both cases; it cannot have rigid head d either. Hence

```
H = t A1 A2 A3 ... Am,          m≥2.
```

If U=1, that sole u cannot occur in A1 or A2, since one Boolean selection
would erase it. It must occur in a later argument. Both selected branches
A1 and A2 must then become functions capable of reaching that later u.
Each must contain t: without t or u, it is an inert application tree of
the rigid d. Thus **U≥2 or T≥3**.

The exact wire cost in this binder order is

```
|Q| = 4 + 6T + 5U + 4D.
```

If U≥2 the minimum is 36; if U=1 it is at least 43. Therefore |Q|≥36.
Equality forces `(T,U,D)=(1,2,4)`. There is one u in each selected branch
and no further t. If k common trailing d arguments follow the selector,
the branches must contain respectively 2−k and 4−k d arguments. The four
available d leaves give `6−k=4`, so k=2. The unique equality form is

```
H = t u (u d d) d d.
```

Finally the reader adapter costs 17 bits and the rest of D costs 17:

```
|R_Q| = |Q| + 34 ≥ 70.
```

The semantic leaf argument and uniqueness classification are handwritten.
`frame_size`, `next_size`, and `opaque_leaf_price` check the wire accounting
and final arithmetic in Lean. The existing rem70 clauses check attainment.
This rules out a smaller Q in the displayed opaque, lambda-free frame.
It does not rule out extra lambdas, a different reader interface, or use
of the actual d's behavior. In particular it is **not Rmin ≥ 70**.

### 7.5 Exact behavior of the required controls and two 65-bit attempts

For rem70, `P(s)=s D D` and APP gives `P(P(u))`. If
`u=code(M1) ++ S`, the inner parse reduces to S uniformly, leaving

```
S D D = P(S).
```

This is the retained one-source obligation. It is carried by two pending
applications of existing code; no new source binder is implied.

Tower45 fails earlier than a clean-cut account would suggest. Lean proves
the exact all-suffix identity

```
tower45 (010 ++ r) →* r.
```

Thus on `01 code(M1) code(M2) ++ N` with a zero-headed left child, it
removes only the first bit of M1. In particular this fails for every
closed tower left child. On the closed source `λx.x x` it returns
`10 ++ N`. The 51-bit partial reader is a more literal flat-cut example:
it discards the second tag and, for a tower left child, reaches S with
no pending parser at all. Its measured width is only two.

For the 66-bit near miss, APP instead produces

```
u D D D = P(u) D.
```

After a correctly parsed left tower, the residual is **S D**, one operand
short of the required S D D. If the right child is a variable under a
closing source lambda, S D becomes K N. On a closed right child such as I,
the result is a different unresolved reader abstraction; it is not generally
K N. The exact K N counterexample is the closed source `λx.x x`.
The failure is the wrong retained control, not merely forgetting that
some work remains.

The 165 projection E F satisfies the same derivative theorem by its full
contract. Its continuation-passing implementation is admitted without
requiring the displayed rem70 factorization. It passes all tests below.

Two reasoning-derived 65-bit alternatives kept D's frame but used

```
Q_tail    = λt u d.u d (t d (d d)),
Q_handler = λt u d.u (t d (d d)) d.
```

Both preserve ABS. They attempt to pack the APP obligation into the tail
operand or handler operand. On `λx.x x`, with rigid suffix n, their exact
normal forms are respectively

```
10 ++ n,
λa.a a K n a.
```

The tail packing is erased by the first variable's unary-skip return;
the handler packing changes the operation rather than composing two
parses. `FixedResiduals.lean` kernel-checks these two counterexamples and
the corresponding tower45 and near66 failures. Each is proved not to be
an exact remainder extractor. No cap is used as a refutation.

### 7.6 Checks, artifacts, and remaining bound

`residual_checks.py` runs the original 240 exact probes plus 20 closed
left-comb sources (left tower depths 0,1,4,12 and pending depths 0..4),
plus `λx.(λy.y) x`: **261 cases per construction**, at most two workers.

| Construction | Bits | Pass | Wrong normal form | Capped |
| --- | ---: | ---: | ---: | ---: |
| rem70 | 70 | 261 | 0 | 0 |
| tower45 | 45 | 31 | 230 | 0 |
| tower51 | 51 | 31 | 230 | 0 |
| near66 | 66 | 31 | 230 | 0 |
| int165 F | 173 | 261 | 0 | 0 |
| shared-S rem70 | 647 | 261 | 0 | 0 |
| int584 F | 592 | 261 | 0 | 0 |
| tail packing | 65 | 31 | 210 | 20 |
| handler packing | 65 | 31 | 230 | 0 |

The initial run took 3.608 s. The shared-S reader's 48-lambda tower alone
exhausted the original 12,000-beta budget; one 50,000-beta retry passed in
0.006 s. Both initial and final counts are retained in
`residual-checks.json`. The 20 tail-packing caps remain unresolved clocks;
the separate exact counterexample already refutes that candidate.

All new semantic Lean theorems audit to `[propext, Quot.sound]`; none uses
`sorryAx`. The new sources are `ResidualControl.lean`, `SharedS647.lean`,
and `FixedResiduals.lean`. `pin_shared.py` and `pin_failures.py` regenerate
the finite trace files. The former trace is 413 steps; the four failure
traces are 36,45,33,40 steps. Final compiler output and elapsed times are
in `lean-residual-checks.txt`. No new complete interpreter was built.

The next genuinely quantitative gap is now explicit: source syntax must
generate the infinitely distinguishable pending operations, but one shared
nonlinear pair and one shared width witness suffice to do so. A proof must
charge the **amount of source syntax implementing this sharing**, or exclude
small ways of doing it, rather than charge a new binder or width witness
for each recursive obligation. The restricted 70-bit theorem supplies that
charge in one frame. I do not have a valid global charge beyond section 4's
27-bit floor, so neither Rmin ≥ 50 nor Rmin ≥ 60 is claimed.

To reproduce the new checks from the repository root:

```
PYTHONDONTWRITEBYTECODE=1 python tmp/overnight/remainder/residual_checks.py
PYTHONDONTWRITEBYTECODE=1 python tmp/overnight/remainder/pin_shared.py
PYTHONDONTWRITEBYTECODE=1 python tmp/overnight/remainder/pin_failures.py
```

For Lean, run from `lean/`, set
`LEAN_PATH=$PWD/.lake/build/lib/lean:$PWD/../tmp/overnight/remainder`, and use
`lean -j 2 -R ../tmp/overnight/remainder`. First compile `RemainderChain.lean`
and `Tower45.lean` with their `-o` paths inside the lane. Compile
`ResidualControl.lean` to its lane-local `.olean`, then check `SharedS647.lean`
and `FixedResiduals.lean`. All authored files and local build outputs remain
inside the remainder lane.
