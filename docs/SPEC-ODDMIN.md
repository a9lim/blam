# SPEC-ODDMIN — the stage-1a compositional DP

*Status: buildable spec, frozen 2026-08-04 from `qblc-omega-witnesses`
rounds r3–r4b. The trust architecture, iteration strategy,
certificate discipline, and validation battery are Codex-ratified;
§3's domain concretization (summaries as minimal DFAs) is this
document's contribution and is the prototype's first empirical
question. Companion theory: NOTE-GALOIS.md §4. Validation layer:
`src/odd.rs`.*

## 1. Theorem target

**Stage 1a.** The minimum source weight of a closed program with a
cnot-free qeval effect trace whose leaf mass is Galois-odd is **45**
(witness45; wire in `src/odd.rs`).

Scope is forced, not chosen: min cnot-trace weight ∈ (22, 28] — the
28-bit witness `λ⁴.((1 (2 1)) (2 1))` fires a Cnot effect, so a
monitor latching accept on cnot caps its provable minimum at ≤ 28.
Cnot traces verdict `NeedsCnot` (out of scope, never accepted); the
companion that removes the premise is stage 1b's Pauli-string path
parity (NOTE-GALOIS.md §4). Weight algebra (wire-exact):
w(Var i) = i+1, w(λM) = w(M)+2, w(MN) = w(M)+w(N)+2 — source weight
is paid once at construction; substitution is zero-cost.

## 2. Concrete anchor and projection

Concrete semantics: `qeval::run_traced` under the frozen signature
`[H, Meas, New, Cnot, T]`. A leaf's trace is projected to the
**stage-1a alphabet** by nondeterministically guessing one
allocation as the distinguished qubit D:

- `NewD` — D's allocation (mask := FRESH);
- `HD`, `TD` — unary effect on D's current-epoch handle;
- `MeasD` — measurement of D (retires it);
- `Cnot` — any cnot at all → the `OutOfScope` sink;
- effects on non-D qubits — erased (τ). Sound because cnot-free
  evolution never couples lineages (the product-structure argument:
  an odd leaf mass forces an odd Born factor on SOME qubit; guess
  that one).

A projected word is **accepting** iff its `MeasD` fires with
(Z, odd) in the mask determined by the `HD`/`TD` prefix since
`NewD` — decided by the trusted kernels `odd::step_h/step_t/
step_meas`, never stored.

## 3. The abstract domain (the concretization decision)

**A summary is the minimal DFA of a may-language** over the finite
summary alphabet; canonical form = determinize + minimize + a fixed
state ordering (BFS over lexicographically least edges), serialized
deterministically. Canonicalization laws (tested, trusted):
idempotence, congruence (language-equal machines canonicalize
identically, by Myhill–Nerode), byte round-trip.

The summary alphabet extends §2's with interface letters:

- `Call(i)` — the term forces its i-th free thunk (i ≤ depth ≤ 26).
  Within one summary a `Call(i)` edge is OPAQUE — the callee's
  events belong to the argument summary and are spliced in at App
  time. Ordered edges, never a multiset: ordering relative to
  `HD`/`TD` is exactly what H·T·H detects.
- Handle-flow letters: the interface must say when the distinguished
  current-epoch handle crosses it. First cut: annotate `Call(i)` and
  value-return with h ∈ {NoD, Dcur} (dead/stale handles collapse to
  NoD — using them Errs in qeval and kills the branch). The epoch
  discipline (each effect bumps D's epoch; only the current handle
  is usable) is what keeps this a two-point lattice.
- Return protocol: a value position carries a head kind
  {lam, handle, prim-partial, neutral} so `app_ref` knows which
  behaviors an application can select.

Why regular suffices: splicing an argument machine into finitely
many `Call(i)` edges is regular substitution; β-reuse and recursive
re-entry become CYCLES in the machine graph, interpreted as
may-reachability — the finite cyclic NFA recognizes the may-language
of its own infinite unfolding. Nesting depth is deliberately not
distinguished (may-analysis); nothing visibly-pushdown is needed.

Base states are interned: reachable mask ids from FRESH under
step_h/step_t (small; computed once, trusted), lineage location
{absent, current, other, dead}, control kind, flags
{accepted-reachable, out-of-scope}. The DFA product with the mask
automaton is the checker's accept computation.

**Known risks the prototype measures** (gate, §7): powerset blowup
under determinization; interface-alphabet growth from the handle
protocol; app-pair quadratics. Stop and redesign if canonical
summaries exceed ~10⁶ at weight ≤ 24.

## 4. Transfer functions (reference side)

Pure, total, deliberately naive:

- `var_ref(depth, i)`: the two-edge machine `Call(i)` → behave as
  the callee's value (head kind from the interface), weight i+1.
- `lam_ref(body)`: package — the value has head kind lam; on
  application, run `body` with `Call(1)` denoting the argument;
  free indices shift. Weight +2.
- `app_ref(fun, arg)`: for each lam-headed behavior of `fun`,
  splice `arg`'s machine at every `Call(1)` edge of the body
  machine; re-entrant/recursive splices close as cycles; then
  compute the complete same-weight LFP and canonicalize every
  output. Returns the fully saturated finite output SET. Weight
  w_f + w_a + 2. Non-lam heads: species-Err (branch dies), neutral
  (application stays symbolic — a value whose behavior may still be
  forced later), prim heads follow qeval's arities.

Iteration: outer Knuth min-weight agenda over Var/Lam/App
hyperedges (all constructors strictly weight-increasing, so
extraction order is sound); inner complete LFP saturation at fixed
weight BEFORE the layer finalizes. If saturation streams, the layer
finalizes only at quiescence.

## 5. Trust architecture (r4b)

- `oddmin_ref` (trusted): domain types, canonicalizer, the three
  reference transfers, same-weight LFP, mask kernels (shared with
  `src/odd.rs`), the `compatible()` interface predicate.
- `oddmin` search (untrusted): rayon, interning shortcuts, fast
  transfer with its OWN algorithms (never a cached wrapper around
  ref — that tests plumbing, not independence), Knuth agenda,
  pruning, certificate emission.
- Checker (trusted, small): invokes only `oddmin_ref`. A search bug
  can fail a certificate or miss an optimum — never fake a bound.

Shared between the sides: immutable data types, the tiny kernels,
serialization. Nothing else.

## 6. Certificate

Header {magic, version, domain hash, max weight W, sector =
NoCnotTrace, entry count, claimed min accept, witness wire} +
entries {id, depth, canonical summary bytes, min weight, origin}.
Origins are acyclic in source weight — `Var{depth, i}` /
`Lam{body}` / `App{fun, arg}` only; LFP steps are internal to
transfer and never serialized. No trusted accept bits; acceptance
is recomputed (mask-automaton product).

Checker obligations: (1) header/domain-hash/ordering; (2) no
duplicate summaries per depth; (3) canonical-form validity of every
entry; (4) origin replay — recompute weight and the reference
transfer, require the entry's summary be a MEMBER of the output set
(membership, not ordinal choice); (5) all variable bases present per
depth; (6) constructor closure — every lam output of every entry
with m+2 ≤ W covered by an entry at ≤ m+2; every compatible pair
with m_f+m_a+2 ≤ W: every saturated app output covered at ≤
m_f+m_a+2 (coverage = subsumption ⊑, recomputed); (7) every
cnot-firing output marked OutOfScope, never accepted; (8) the
minimum over accepting depth-0 summaries equals 45; (9) witness
replay — parse the 45-bit wire, replay origins, require abstract
acceptance. If bucketing via `compatible()` is used, the checker
verifies every omitted pair incompatible by the same predicate;
never trust a search-supplied pair list.

## 7. Soundness obligations and validation

- **S1 (operational abstraction)**: for every open term, related
  environments, and finite cnot-free qeval prefix, `Abs(M)` has a
  path with the same projected trace ending related — so
  Traces^¬cnot(p) ⊆ L(Abs(p)) for closed p. Induction on qeval
  steps; the β lemma is
  Abs(β(B, A)) ⊑ substCall₁(Abs(B), Abs(A)),
  which must preserve repeated and interleaved calls (why ordered
  edges, not demand counts). No coinduction: accepting measurements
  occur at finite prefixes.
- **S2 (monitor soundness)**: cnot-free ∧ [√2]w(s) ≠ 0 ⇒ MayOdd.
  Product-structure + grading induction (proved at monitor level;
  the DP inherits it through the mask-automaton product).

Validation battery, in addition to the ≤22 corpus + 7 witnesses
(smoke only): (A) cnot-free gate-word enumeration on 1–3 qubits vs
exact `Dw` statevectors — tests S2 across cancellation patterns
without lambda involvement; (B) open-term transfer tests at depths
1–3 with an adversarial instantiation basis (primitives, K/I/booleans,
effectful/duplicated thunks, under-binder effects, self-application,
species errors) — tests Call substitution and interleaving, the
actual risk surface; (C) a qvm trace/fingerprint surface,
lockstepped vs qeval on ≤24, then swept through the low-30s with
primitive-mention filters, witness context mutations, and the
28-bit cnot family. Differential gates before every weight raise:
exhaustive ref-vs-fast output-set equality at 16/20, sampled at 24,
LFP fixed-point asserts F(S) = S, shift/substitution identities.
Ref-vs-fast agreement cannot catch a shared abstraction mistake;
the closure check and S1/S2 are authoritative.

## 8. Build gates

Prototype `oddmin_ref` + a naive driver only, weights 16 → 20 → 24.
Report per weight: unique canonical summaries, transition density,
compatible app pairs, LFP iterations to quiescence. STOP and
redesign if summaries exceed ~10⁶ or app pairing goes
quadratic-dominant. No fast path, no certificate freeze, no weight
45 until the growth curve is measured and r5-reviewed.
