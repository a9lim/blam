# Next/bit1 fusion: result

No sub-165 interpreter found. The useful results are two information-loss
obstructions for whole classes of proposed first-parse fusions, a strictness
obstruction, and a correct second hoist which saves one bit within a larger
189-bit construction. None is an unconditional size lower bound.

All files written by this investigation are in this directory. No searches
were run. Computation comprised four designed candidates, finite identity
checks, and targeted fuel retries on five probes, with at most two threads. All source
sizes are unoptimized BLC sizes. `investigate.py` uses the repository parser
directly and calls `battery.check(..., threads=2)`.

## Every constructed complete interpreter

| File | Bits | L,A,X | Standard battery | Idea |
|---|---:|---|---|---|
| `tag_after_parse.lam` | 189 | 20,27,39 | `ok=667 skip=1 fail=0` | Keep the redundant second-tag stream as an extra argument after the first parse; re-read the tag on return. |
| `tag_after_parse_hoisted.lam` | 188 | 19,28,36 | `ok=667 skip=1 fail=0` | Let the known first-tag K discard bit1, hoisting the complete first-parse partial application outside the ignored-bit binder. |
| `tag_after_parse_handler.lam` | 199 | 20,27,49 | `ok=667 skip=1 fail=0` | Re-read bit1 through a Scott handler instead of projecting it with literal K. |
| `independent_projections.lam` | 220 | 25,32,40 | `ok=662 skip=1 fail=5`; all five are fuel caps | Retain the actual tag and independently compute the first parsed value and its remainder. |

Exact standard-battery lines, with the common directory omitted:

```text
189 bits  ok=667 skip=1 fail=0  tag_after_parse.lam
188 bits  ok=667 skip=1 fail=0  tag_after_parse_hoisted.lam
199 bits  ok=667 skip=1 fail=0  tag_after_parse_handler.lam
220 bits  ok=662 skip=1 fail=5  independent_projections.lam
```

The last candidate's five capped probes were retried individually. Four pass
at 2^24 beta fuel; the fifth passes at 2^28. Thus all 667 terminating probes
were verified for it, but it does **not** pass the standard 2^20-fuel battery.
The last retry took 0.53 seconds. Details are in `results.json`,
`projection_retries.json`, and `projection_final_retry.json`.

All four also return the rigid tail exactly on both Omega and lambda-Omega
with the tail-projecting continuation, at the ordinary 2^20 fuel cap
(`non_strict.json`). These are additional finite checks, not a substitute for
the structural correctness arguments below. No new Lean proof was written.

## Notation

`K = lambda a b. a` is bit 0; `F = lambda a b. b` is bit 1.
`cons b t = lambda h. h b t`. Write `w:R` for a finite bit string w followed
by tail R. P is the current parser with its open-term protocol, not an
arbitrary program satisfying only the closed root contract.

Write

```text
A(f)   = lambda e a. f (lambda x y. x a (y e))
L(f,g) = lambda e. f e (g e)
B_C(f) = P (lambda g. C L(f,g)).
```

If `t = <M> ++ u`, the parser supplies a closure f and residual u to its
continuation. This is a head-reduction fact and does not require M to have a
normal form. The desired second-tag action on `q = cons b t` is therefore

```text
b (C A(f)) B_C(f) u.
```

## Exact identities and the successful, oversized hoist

For `q = cons b t`, direct beta reduction gives

```text
q K = b;       q F = t;       q P = P b t.
```

After the first parse, `q P = b f u`: it gives f for ABS and u for APP.
The missing field is a real information loss, not simply an inconvenient
argument order; the next sections give collisions.

The current reader also has an exact Boolean law not needed by its usual
stream contract. Let

```text
H_C = lambda b0. b0 (lambda unused r. r NEXT_C) C.
```

Then

```text
P C K = H_C;       P C F = F.
```

Proof: unfold the parser once. Its reader is `s H_C (s s s)`. K selects
H_C, and F selects `F F F`, which reduces to F. Consequently
`P C K K = lambda unused r. r NEXT_C`, and `P C K F = C`.
`check_identities.py` verifies the reader equations with the recursive parser
left rigid, avoiding an attempt to normalize its infinite unfolding.

For a lossless deferred-tag protocol, define

```text
D_C = lambda f u q. (q K) (C A(f)) B_C(f) u
T_C = P D_C.
```

The zero arm can use

```text
q (K T_C) q
  -> T_C t q
  ->* D_C f u q
  ->* b (C A(f)) B_C(f) u.
```

The extra copy q is now useful: it survives after the first parse, and D_C
uses it to restore bit1. In the 189-bit version, `K T_C` is written
`lambda unused. P D_C` and named `next`; the zero arm is `lambda r. r next`.
In the 188-bit version, `P D_C` is named `parse`, and the zero arm is
`lambda r. r (bit0 parse)`. The first tag is K in this branch, so it supplies
the discard without a dummy binder in the hoisted definition.

This is a genuine second hoist, but it improves 189 to 188, not 165 to 164.
Its exact cost change is Delta(L,A,X)=(-1,+1,-3), or -2+4-3=-1 bit.
The needed tag replay, extra return arguments, and deeper captures overwhelm
the saving. The 199-bit variant replaces `q K A B` with
`q (lambda b unused. b A B)`; their equality on Scott streams is immediate,
but the latter deepens the captures of A and B.

All three preserve the original semantic clauses by structural induction on
the parsed source. The induction first parses the proper first subterm,
then the reductions displayed above recover precisely ABS or APP; the
variable clause is unchanged. In particular, their argument does not assume
normalization of the parsed value.

For the 220-bit candidate, `source=q F`, `f=P K source`, and
`u=P F source`; `q K` chooses the same two actions. The same structural
induction proves its clauses. Its two projections repeat parsing, which
explains the much worse fuel behavior.

## Obstruction 1: the parse projection plus the diagonal cannot retain an index

There is no uniform replacement for NEXT which uses its original q only
through `q P`, `q q`, and `q K`, while retaining the current closure and
continuation protocol. This excludes any postprocessor of those three
results, of any size. It also excludes keeping `q q q` in place of or in
addition to `q q`.

Proof. Fix a right-operand stream R, and take

```text
q_n = cons F (1^n 0 : R),    n >= 1.
```

This is an APP second-tag stream whose first operand is variable n. The
variable parsing law and the ordinary unary diagonal give

```text
q_n P     = P F (1^n 0:R) = R
q_n q_n   = K R
q_n K     = F
q_n q_n q_n = R.
```

Every exposed result is independent of n. Choose `R = 10:N`, so the right
operand is variable 1, and compare n=1 and n=2 under two common enclosing
lambdas. The complete source programs are

```text
lambda a b. b b
lambda a b. a b.
```

Their required returned values have distinct beta normal forms. The incoming
continuation, P, and all three proposed observations of q are the same in
the two cases. Congruence of beta equality therefore makes any uniform
postprocessor's outputs equal, a contradiction. This witness works with a
rigid, otherwise arbitrary N; no divergent suffix is needed.

The equations were checked for n=1,2,5 with a rigid R (`identities.json`).
The proof itself is the unary-variable law for arbitrary n and the two
closed separating programs.

## Obstruction 2: retaining the raw source tail with q P still loses the mode

There is also no uniform replacement using q only through `q P` and `q F`,
under the same current protocol. Even retaining the complete source after
bit1 does not make its parse projection a substitute for remembering bit1.

Proof. Choose a concrete periodic stream

```text
D = lambda x. cons F (cons K (x x))
R = D D,
```

so `R -> 10:R` in one beta step. Consider

```text
q0 = cons K (110:R)       -- ABS, body variable 2
q1 = cons F (11010:R)     -- APP, variable 2 applied to variable 1.
```

The variable parsing law gives, even before imposing periodicity,

```text
q0 P = 10:R = q1 P.
```

Their raw source projections are `q0 F = 110:R` and `q1 F = 11010:R`.
These are beta equal because R unfolds once to `10:R`. Thus the two retained
fields coincide up to beta equality. Under two common enclosing lambdas,
however, the source programs are

```text
M0 = lambda x y z. y
M1 = lambda x y. x y.
```

With the same value-projecting final continuation K, the required results
are `lambda env. M0` and `lambda env. M1`, which have distinct beta normal
forms. The two outer ABS continuations are identical. Any fixed decoder of
the equal fields must give equal outputs, a contradiction.

Using this R is legitimate even when the contract is first stated with a
rigid tail N: an equation with free N remains true after substituting any
lambda term for N. Choosing final continuation K discards the infinite
suffix before normalizing the required outputs.

`check_identities.py` checks both finite projection equations, the exact
one-step unfolding of R, and both complete source programs with this explicit
periodic suffix. Both full probes terminate with the expected, distinct
values. No claim about infinite normal forms or observational approximation
is used.

## Obstruction 3: making the raw stream the first-parse continuation is strict

Another direct attempt is to use q itself as the first parse's continuation,
letting its own Scott application receive f and u. Its exact effect is

```text
P q t ->* q f u -> f b t u,       q = cons b t.
```

If the first source subterm is the closed program Omega, its parsed value is
beta equal to `lambda env. Omega`. Thus the displayed result is head
divergent. Appending any finite argument spine cannot repair that divergence.
For the ABS source `lambda x. Omega`, the ordinary tail-projecting contract
must nevertheless return its rigid suffix N. Therefore a fusion which puts
`P q t` at the output head and tries to repair it only by applying more
arguments cannot be correct. A scheme that encloses this result in a thunk,
discards it, or retains q for a separate parse is outside this exclusion.

## Where a smaller interpreter could still hide

The duplicated q really can be used, as the 189/188 constructions demonstrate.
But consuming it as a diagonal erases the first operand's unary index, and
consuming it only as a parse projection plus raw source can erase the mode.
Using it as a raw continuation forces semantic evaluation too early.

A successful fusion in this lens must retain a tag-sensitive, index-sensitive
use of q through the first parse while keeping that parse non-strict. It must
do so more cheaply than the explicit return arguments and tag replay above.
An off-diagonal use of the original stream coupled to a changed continuation
representation remains open. These arguments do not show such a construction
exists, and do not exclude a different reader or an interpreter outside the
current open-term protocol. I found no concrete sub-165 construction to
pursue or claim.
