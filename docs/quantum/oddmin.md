# SPEC-ODDMIN — the stage-1a compositional search

This document is the current contract for the CNOT-free lower-bound lane.
The implementation is split between `src/odd.rs` (trusted trace monitor),
`src/oddmin.rs` (reference abstract interpreter), and `oddminproto` (bounded
growth driver). The algebraic motivation and the CNOT-capable successor are
in `galois.md`; moving measurements and next work live in `../STATUS.md`.

## 1. Theorem target and scope

Stage 1a targets the statement:

> The minimum BLC wire size of a closed program with a CNOT-free qBLC effect
> trace and a Galois-odd leaf mass is 45.

`witness45`, pinned in `src/odd.rs`, establishes the upper bound. The search
must prove the lower bound by retaining every concrete CNOT-free odd trace in
a finite compositional abstraction.

The CNOT-free premise is necessary for this stage. A 28-bit closed witness
already fires CNOT, while no program through 22 bits does. Treating CNOT as
automatic odd acceptance would cap any lower bound at 28. CNOT effects are
therefore represented by the dead-end letter `OutOfScope`, never by
acceptance. Stage 1b replaces this restriction with Pauli-string path parity.

The source-weight algebra is exact:

```text
w(Var i) = i + 1
w(λM)    = w(M) + 2
w(M N)   = w(M) + w(N) + 2.
```

Source weight is paid once when a term is constructed. Runtime substitution
and repeated demand add no source weight.

## 2. Concrete projection and trusted monitor

The concrete anchor is `qeval::run_traced` under the frozen signature
`[H, Meas, New, Cnot, T]`. For a CNOT-free trace, nondeterministically choose
one allocation as the distinguished lineage D and project to:

- `NewD`: allocate D and initialize the monitor to FRESH;
- `HD` and `TD`: apply the corresponding exact mask transition;
- `MeasD`: measure and retire D;
- `OutOfScope`: any CNOT effect; and
- no letter for effects on other qubit lineages.

The mask is a may-set over Pauli support and `√2` parity. `odd::step_h`,
`odd::step_t`, and `odd::step_meas` are the trusted transition kernels. A
projected word accepts exactly when `MeasD` sees odd Z-readable support.

The projection is sound because a CNOT-free branch state factors by qubit
lineage. If the product Born mass is Galois-odd, at least one single-lineage
factor is odd; guessing that lineage retains an accepting projection.

## 3. Abstract domain

### Colored interaction graph

A `Summary` is a finite colored interaction NFA:

```text
Summary {
    entry: NodeId,
    ports: Vec<NodeId>,
    edges: Vec<(NodeId, Label, NodeId)>
}
```

`entry` is the evaluation root. Ports name apply bodies and neutral-spine
subgraphs. The port structure is semantic: two values can have identical
currently visible effect traces but behave differently when later applied.
Canonicalization must therefore preserve root roles.

Edges carry either a projected effect, internal epsilon, or an interface
event:

```text
Call { target, arg }
RetIn { pat, bind, rel }
RetOut { head, rel }.
```

`CallTarget` distinguishes a free variable, a lambda formal port, and a value
received at an earlier interface. This separation prevents nested binders
from accidentally capturing one another during graph composition.

### Returned values and capabilities

`Head` records the operational species of a returned value:

- lambda plus its apply port;
- primitive plus an optional held first CNOT argument;
- handle with distinguished-lineage role;
- rigid neutral plus optional spine port;
- opaque received value keyed by `BindId`; or
- `PureWiden`, a lambda-shaped effect-free widening value.

Both interface directions carry a `CapRel = (cap_in, action, cap_out)`.
Capabilities are `None` or `Cur`; actions are `Keep`, `Create`, `Advance`, or
`Retire`. The relation distinguishes identity from a unary gate: both return
a current handle, but only the gate invalidates aliases to the input epoch.
Invalid species and stale-handle paths have no continuation rather than a
synthetic `Kill` edge.

### Opaque observations

Forcing an ambient thunk emits one `HeadPat::Any` observation and binds an
opaque value. Use sites then branch over the operational cases they need.
Eagerly enumerating every possible return pattern at the seam creates an
exponential fan without adding information; the information is consumed only
when the value is used.

As a consequence, `materialized_accept_any_root` means exactly what its name
says: reachability through effects already present in a summary. It is not an
upper bound over every possible ambient context. Closed-program acceptance
does not depend on that diagnostic query.

### Canonical form and finiteness

The reference canonicalizer:

1. drops nodes unreachable from `entry` and the ports;
2. computes a bisimulation quotient while preserving every root role;
3. relabels nodes by deterministic root-first BFS; and
4. sorts and deduplicates edges.

It is idempotent and maps bisimilar graphs with the same port roles to equal
bytes. It does not yet alpha-normalize `BindId` or identify weak-epsilon
variants; this is the source of the remaining conservative cells.

At a fixed source bound W, the variable alphabet, source nodes, interface
depth, and graph size are finite. Recursion appears as graph cycles rather
than infinite unfolding. Composition still has explicit growth caps; an
abort is interpreted as top, never as rejection.

## 4. Reference transfer functions

The transfers are pure, deterministic, and intentionally direct.

### Variables and lambdas

`var_ref(i)` emits a `Call(Free(i))`, receives one opaque result, and returns
that result. `lam_ref(body)` owns all binder rebasing:

```text
Free(1)   → Formal(new_apply_port)
Free(i+1) → Free(i).
```

Existing `Formal` and `Received` targets are unchanged. Application never
shifts ambient indices.

### Application

`app_ref(F, A)` preserves the full evaluation prefix of F and specializes the
entered lambda body with its formal port mapped to A. Each demand re-enters
the argument graph, matching call-by-name rather than memoization; an unused
formal never evaluates A.

Composition runs over states specialized by subgraph, captured environment,
and continuation. Continuations are part of the memo key, so returns dispatch
only to the call site that created them. This preserves stack discipline and
prevents shared library nodes from bridging unrelated calls.

Captured environments retain references proven necessary by a forward
must-bound analysis. Extra captures are sound; dropping a capture without
the must-bound proof is not. Internal sequencing remains explicit as
`Label::Eps`; copying edges to eliminate epsilon caused quadratic growth.

Opaque received values are resolved at use sites:

- applying a lambda enters its apply port;
- applying a primitive follows its arity and strictness rule;
- applying a handle has no continuation;
- applying a neutral extends its spine;
- applying `PureWiden` returns the same pure value; and
- applying an unresolved ambient value branches over the compatible cases.

Primitive semantics match qBLC exactly. `new` discards its argument. H, T,
and measurement species-check before descending into a value. CNOT evaluates
its arguments left-to-right and retains the first handle until the second is
available.

### Normal-form descent and closed evaluation

Weak-head discovery and normal-form descent are distinct. A lambda in
function position exposes its head without reducing the body; a lambda that
survives into the normal form is opened with a rigid neutral and its body is
normalized. A primitive species error does not descend into the rejected
lambda.

`closed_accepts` applies all five signature primitives and performs final
normal-form descent in one specialization universe. This avoids repeatedly
flattening and re-specializing the entire graph at each signature argument.
Every live ambient observation must resolve; `Abort::UnresolvedAmbient`
exposes a violation rather than silently accepting it.

### Pure widening and aborts

Self-application can generate ever-deeper captured environments even when a
component is provably effect-free. Once such a capture chain exceeds
`WIDEN_DEPTH`, the reference transfer may replace it with `PureWiden` only if
the component has:

- no reachable effect edges;
- no free calls;
- no primitive or handle heads; and
- only transitively pure captures.

`PureWiden` over-approximates both a pure lambda value and divergence. It can
never introduce an accepting effect. General effectful widening is not
implemented.

Other growth failures are `StateCap` or `PortCap`. Every abort
is conservative top. No lower-bound claim may treat it as non-acceptance.

## 5. Acceptance and soundness obligations

Closed acceptance composes the program with the gate signature, descends its
normal form, and runs the trusted mask product from the single composed root.
Interface and epsilon edges are silent to the product; `OutOfScope` is a dead
end.

The proof requires two lemmas.

**S1 — operational abstraction.** For every open term, related environment,
and finite CNOT-free `qeval` prefix, the summary contains a path with the same
projected trace and a related endpoint. The critical application lemma is

```text
Abs(β(B,A)) ⊑ substCall₁(Abs(B), Abs(A)).
```

It must preserve repeated and interleaved calls, strictness, binder identity,
and normal-form descent. The proof is induction on concrete machine steps,
using the continuation-specialized simulation relation.

**S2 — monitor soundness.** For a CNOT-free leaf, a nonzero `√2`
coefficient in its mass implies acceptance of at least one distinguished
lineage. This follows from the product structure of CNOT-free states and the
grading invariant of the trusted mask kernels.

Only finite prefixes are needed: an accepting measurement occurs at a finite
point even if the surrounding program later diverges.

## 6. Verification battery

The current tests cover the abstraction's causal surface:

- monitor transitions against exact gate-word statevectors;
- canonicalization idempotence and preservation of port roles;
- variable rebasing and nested-binder selection;
- call-by-name reuse and unused-argument non-evaluation;
- species errors before lambda-body descent;
- `new` discarding its argument;
- normal-form descent under surviving binders;
- stale-handle invalidation and CNOT rejection;
- witness45 acceptance and the 28-bit CNOT witness rejection; and
- differential comparison with exact `qeval` over all 6,069 closed programs
  through 22 bits.

The differential currently has zero concrete odd leaves and zero false
negative accepts. Its conservative cells are therefore measured looseness,
not evidence for the theorem. Reference-versus-future-fast-path agreement
will not replace S1/S2: shared abstraction mistakes can survive a differential
test.

## 7. Measured growth

`oddminproto W` enumerates canonical summaries bottom-up by source weight and
free-variable depth. Primitive axioms are introduced only by closed signature
application, never as source-term bases.

Current closed-slice measurements:

| W | summaries | splice top | closed top | accepts | total time |
|---:|---:|---:|---:|---:|---:|
| 16 | 96 | 0 | 0 | 0 | about 0.01 s |
| 20 | 743 | 0 | 3 | 0 | about 0.11 s |
| 24 | 6,271 | 0 | 37 | 0 | about 1.1 s |

Witness45 composes to 44 nodes, 43 edges, and ten ports. In the direct
≤22 differential, the 19 conservative programs are concretely non-odd and arise
from one formal acquiring different composed port identities under different
captured environments. This is a canonicalization loss, not an effectful
widening failure.

Growth is approximately 1.7× per bit, projecting the million-summary stop
near W≈34. Reaching 44 therefore requires canonicalization and search-side
pruning before a certificate generation is practical.

## 8. Certificate boundary and next work

The current implementation is a trusted reference prototype; it does not yet
emit a completeness certificate. The intended production split is:

- a small trusted reference transfer and checker;
- an independent untrusted parallel search; and
- a certificate containing canonical summaries, minimum weights, and acyclic
  Var/Lam/App origins.

The checker must recompute canonical forms, replay every origin, verify
constructor closure through W, treat every CNOT path as out of scope,
recompute acceptance, and replay witness45. Search-supplied pair omissions are
trusted only after the checker proves them incompatible. No accept bit and no
post-fixpoint supplied by search is accepted without recomputation.

The next implementation sequence is:

1. alpha-normalize `BindId`, canonicalize weak-epsilon structure, and
   renumber ports canonically;
2. probe W=26, 28, and 30 after the W=24 regression;
3. prove constructor monotonicity and add a simulation-preorder antichain;
4. add a general component-scoped post-fixpoint whose ScopeId origins and
   closure are checked by the trusted side; and
5. add an independent search implementation and freeze the certificate
   format only after the growth curve is viable.

The stage-1a handle-aliasing argument applies only to closed pre-CNOT traces.
CNOT returns a Church pair containing handles, so stage 1b must model aliasing
inside lambda values explicitly.
