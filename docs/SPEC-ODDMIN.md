# SPEC-ODDMIN — the stage-1a compositional DP

*Status: §§1–2 and 5–8 are ratified architecture (rounds r3–r4b,
2026-08-04); §§3–4 are the PROTOTYPE DOMAIN PROPOSAL, revised to the
r5a-ratifiable form (port-labeled interaction NFAs — the first draft's
plain language-DFAs were compositionally unsound for higher-order
values and were replaced same-day). Companion theory:
NOTE-GALOIS.md §4. Validation layer: `src/odd.rs`.*

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

## 3. The abstract domain (r5a-revised)

**Central claim (r5a-ratifiable form).** A summary is a finite
COLORED INTERACTION NFA with evaluation, Call, Return, and Apply
ports. Its paths form a regular over-approximation of the concrete
stack-disciplined interaction traces: call-stack erasure connects
every compatible return to every compatible continuation, so every
concrete finite trace is retained (induction on the interaction
sequence — call↦Call edge, effect↦effect edge, return↦one of the
added compatible return edges) while mismatched returns may only ADD
spurious traces. β-reuse and recursion are graph cycles. The
stage-1a effect language is a projection; odd acceptance is computed
by product with the trusted monitor automaton (`odd.rs` kernels) —
summaries carry NO mask states and NO accept bits. Regularity
belongs to the deliberately flattened interaction graph, not to the
exact higher-order trace semantics (which is not regular — see the
port requirement below).

**Why plain trace languages fail (first-draft defect, on record):**
before application, `λx.x` and `λx. HD; x` both project to a bare
`Return(lam)` — language equivalence merges them and `app_ref` can
never recover which body runs. Same failure for closures returned
by calls, primitive partials, and effectful neutral spines. Hence
PORTS: a lambda's return carries an apply/body port as a colored
observation; application connects the argument interface and enters
that port. Canonicalization must never minimize ports away.

**Interface protocol:**

- `Call(i)` — ordered opaque edges (i ≤ depth ≤ 26); the callee's
  events splice at App time. Never a multiset: ordering relative to
  `HD`/`TD` is what H·T·H detects.
- Capability protocol on calls and returns —
  `(cap_in, action, cap_out, head)` with cap ∈ {None, Cur} and
  action ∈ {Keep, Create, Advance, Retire, Kill}: `Create` = NewD;
  `Advance` = H/T consumed the entry generation and returned a
  fresh Cur (aliases of the entry capability are now stale — one or
  many advances invalidate alike, no integer epochs needed);
  `Retire` = MeasD, absorbing; `Kill` = stale/species path, no
  continuation. A stored-but-never-forced stale handle is `None`
  WITHOUT killing the surrounding value. Prototype may widen "after
  Advance, retained aliases nondeterministically remain Cur" —
  sound, loose, stated, and removable later.
- Head domain (return/apply selection):
  `Lam {apply: PortId}` ·
  `Prim {which, supplied, held}` (New is non-strict and discards;
  H/T/Meas strict unary; Cnot strict binary whose partial holds its
  first argument — merging these is unsound for app_ref) ·
  `Handle {role: DistinguishedCur | Other}` ·
  `Neutral {root: RigidSlot | Inert, spine: PortId}` (an effectful
  spine still normalizes left-to-right and may force Calls; rigid
  roots may be instantiated later — inert and effectful neutrals
  must not merge) · `Dead`.

**Canonicalization (prototype):** structural NFA with sharing →
bisimulation/partition-refinement quotient → deterministic
color-and-edge sorting → cheap canonical labeling; an OPTIONAL
minimal-DFA language fingerprint only under a hard subset-state cap
(e.g. ≤4096 determinized states). Language-equivalent summaries may
fail to dedup — that overstates the growth curve, never soundness.
The certificate's reference canonicalizer may later be strengthened;
prototype dedup need not solve language equivalence.

**Finiteness at fixed W:** interface depth ≤ W bounds the alphabet;
constructors add finitely many nodes; App connects shared argument
graphs rather than unfolding; recursion adds back-edges; call sites
are bounded by source nodes. Graph size is bounded by a finite
function of W; the count of labeled graphs below the bound is
finite (potentially astronomical — hence the §8 gates). No widening
on Calls is needed; runtime repetition is cycles.

**Pre-16 adversarial checks (build gate zero):** (1) `λx.x` and
`λx.HD;x` yield distinct apply ports; (2) two calls to one shared
callee exhibit the wrong-return false trace while retaining both
correct traces; (3) a callee `Advance` invalidates an
entry-generation alias; (4) inert vs effectful-spine neutrals stay
distinct. Only then weight 16.

## 4. Transfer functions and the splice discipline (r5b-revised)

Pure, total, deliberately naive. The r5b round replaced three naive
pieces of the first draft; the rulings below are binding.

**Call ownership — bare de Bruijn call indices are unsafe.** Edges
carry `CallTarget ∈ {Free(i), Formal(PortId), Received(BindId)}`.
`lam_ref` does ALL binder rebasing: `Free(1) → Formal(p)` (its new
apply port), `Free(i+1) → Free(i)`, `Formal(q) → Formal(q)`.
`app_ref` substitutes ONLY `Formal(p)` of the entered lambda and
never shifts ambient indices (App does not change ambient depth).
Counterexamples on record: in `((λx.λy.y) A) B` a global Call(1)
splice would install A into the INNER lambda's formal; in
`((λx.λy.x) A) B` the inner closure must retain A — bare indices in
a disjoint-union graph cannot separate these binders.

**Splice (`app_ref(F, A)`).** The composed entry stays `F.entry` —
the full evaluation prefix of F is preserved. For each lam-headed
`RetOut{Lam{apply: p}}` occurrence, dissolve that return seam and
enter port p with `Formal(p) ↦ A.entry`; every demand re-enters
`A.entry` (call-by-name reuse, not memoization; an unused formal
never evaluates A). Strictness is inherited: `new A` never enters
A; H/T/Meas species-check before touching an argument body; a
partial cnot holds its first-argument information for the second
application. `Kill` terminates a path — no `Dead` value ever
crosses a seam (earlier odd measurements stay visible on the
prefix). Re-entrant/recursive splices close as cycles; the complete
same-weight LFP saturates before canonicalization. Output = the
fully saturated finite SET. Weight w_f + w_a + 2.

**Binding (the α ruling).** Received values bind alpha-renamed
`BindId` slots, resolved by a finite SPECIALIZATION PRODUCT during
composition: specialized state = (caller node, binding environment,
cap state), binding environment : BindId → may-set of ValueRef =
(head, composed port, captured abstract environment). A matched
return extends the environment; `Enter(bind)` branches over the
slot's may-set; merged control nodes union environments; a slot may
widen to Top. Finiteness: components, binders, heads, and cap
states are all finite. Raw receive-edge indices may serve as
TRANSIENT keys inside one splice but never appear in canonical
summary bytes — quotienting/relabeling would merge or renumber
them, and one receive edge can dynamically carry different
closures. Soundness shape: every concrete call selects one
compatible callee return; that exact return with its specialized
continuation exists in the composed graph; extra compatible
pairings and environment unions only ADD paths.

**Interface letters (the γ ruling).** Both directions carry the
complete capability relation:
`RetIn {head_pattern, bind, cap_rel}` ·
`RetOut {head_value, cap_rel}` with
`CapRel = (cap_in, action, cap_out)`. Head+output-capability alone
is insufficient — identity (`Keep`) and H (`Advance`) both return
`Handle Cur`, but caller-retained aliases stay valid under one and
go stale under the other. Matching is may-lattice order
(`None ≤ Cur`), with action and output correlated per chosen path.

**Capability seam (the β ruling), relative to the entry
generation:** `Keep` — aliases stay current, same generation out;
`Advance` — aliases go stale, fresh generation out; `Create` —
requires absent lineage, fresh generation; `Retire` — absorbing,
no current output; `Kill` — no continuation. One or many advances
invalidate alike (no counters). A returned `Cur` after `Keep`
aliases the entry generation; after `Advance`/`Create`, the output
generation. Precise mode never lets aliases survive `Advance`; the
nondeterministic survival belongs only to the explicitly-declared
widened mode.

**Head evaluation vs NF descent.** qeval discovers a lambda head
without normalizing its body in function position, but fully
reduces under binders when the lambda survives to the normal form,
and raises species Err on a lambda primitive-argument BEFORE its
body. The context protocol therefore distinguishes `EvalHead`,
`Apply(arg)`, and `NormalizeValue`/`DescendLam` — a surviving
lambda's NF descent reuses its apply port with the formal bound to
a zero-cost rigid neutral; a species check chooses neither and
dies. Closed-program acceptance runs the mask product from ONE
composed top-level NF-driver root; `may_accept_latent` (the
all-roots product in `src/oddmin.rs`) is the deliberately looser
any-context query, and auxiliary ports are canonicalization roots
only, never independent acceptance starts.

- `var_ref(depth, i)`: force `Free(i)`, then behave as the received
  value per its `RetIn` branches. Weight i+1.
- `lam_ref(body)`: rebase binders as above; return
  `Lam {apply: p}`. Weight +2.
- `app_ref(fun, arg)`: the splice above. Other heads: `Prim` by its
  strictness/arity row, `Handle` applied = species-Err, `Neutral`
  extends the spine port (arguments may still force Calls and emit
  effects), `Dead` absorbing.

Iteration: outer Knuth min-weight agenda over Var/Lam/App
hyperedges (all constructors strictly weight-increasing, so
extraction order is sound); inner complete LFP saturation at fixed
weight BEFORE the layer finalizes. If saturation streams, the layer
finalizes only at quiescence.

**Gate-zero additions (r5b):** beyond §3's four checks — (5) the
two nested-binder counterexamples resolve correctly; (6) a final
`λx.E` explores E under a rigid formal; (7) `h (λx.E)` Errs without
exploring E; (8) `new E` discards E; (9) an unapplied latent apply
port is never independently accepted; and check (2) verifies BOTH
halves: every true pairing survives AND the wrong-return path
appears only as declared looseness.

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

## 9. Prototype findings (r6, 2026-08-04 — measured; ratification pending)

The §8 gate was built and run. Four domain-level revisions were forced
by measurement; each is a deviation from the §§3–4 text awaiting the
r6 ruling, and all are strictly on the transfer/representation side —
§1–2, §5–7 stand unchanged.

- **The ★ observation fan.** The letter-enumerated RetIn fan
  (pat × action × cap_out ≈ 43 letters per ambient seam) multiplies
  per application depth: open app chains measured fan^depth
  (level-3 app > 10⁵ specialized states; witness45 unreachable). The
  information the fan splits on is only consumed at USE sites, where
  value dispatch case-splits anyway — so the transfers emit ONE
  `HeadPat::Any` observation binding an opaque value
  (`Head::Opaque`), and use sites branch: apply defers a symbolic
  call, strict prims branch over {D-current handle + effect,
  other-handle τ, stuck neutral} with species kills absent.
  Result: witness45's summary is 44 nodes / 43 edges / 10 ports,
  LINEAR per constructor. Ambient seams no longer stale aliases
  (unknown action) — sound looseness, and real seams stale with the
  real net at delivery. Consequence: `may_accept_latent` is now
  effect-edge reachability, NOT an any-context upper bound; its r5b
  role needs an opaque-ambient instantiation run if wanted.
- **Continuation-specialized frames replace maximal call-stack
  erasure.** With frames keyed only by (subgraph, captured env),
  shared configurations (the primitive library entries) BRIDGE call
  sites: a root-reachable library node carries ε-edges into frames
  never semantically entered, and gates 7/8 fail with false accepts.
  Frames now carry the return continuation id; recursion with a
  stable continuation memoizes; the declared wrong-return looseness
  is gone (nothing needed it). Unbounded continuation growth aborts
  at the state cap (⊤ cell).
- **Closure-environment restriction.** Captured environments are
  restricted to the port subgraph's free references (memoized
  side-analysis). Without it, env-specialized argument ports
  explode the interface (> 63 ports on `(5 (3 1))`); with it the
  specialization product and port table stay small. `Label::Eps` is
  a first-class internal letter (ε-elimination by edge copying is
  quadratic).
- **One-shot closed evaluation.** Staged signature application
  (five app_refs, flatten between) re-specializes the whole graph
  per stage and blew past 3×10⁶ states on witness45. `Mode::Closed`
  runs one specialization universe (prims as library thunks in a
  single continuation chain, NF descent inline) and the product runs
  directly on the internal graph — no flatten, no canon.

**The open hole: Ω-family widening.** Self-application builds
structurally distinct deepening captured-env chains; hash-consing
cannot close them, and the state cap fires (⊤). Nine ⊤ programs in
the closed ≤22 population, all Ω-style, all concretely effect-free
divergers. ⊤ = conservative accept, so any ⊤ below 45 breaks the
bound: the r5b "widen to Top" ruling needs a Top SCOPED to the
component's own constructible heads (an unscoped Top's use-site
branches include handle effects and would falsely accept Ω at 18).
This is the main r6 design question.

**Gate measurements** (naive single-thread ref):

| W | unique summaries | closed | time (total) | ⊤ splices | accepts |
|----|-----|-----|--------|----|----|
| 16 | 96 | 96 | 12 ms | 0 | none |
| 20 | 751 | 751 | 0.21 s | 2 | none |
| 24 | 6,346 | 6,346 | 2.5 s | 28 | none |

Growth ≈ ×1.7 per bit ⇒ the 10⁶ stop rule is met at 16/20/24 with
three orders of margin, but extrapolates past it near weight ~34 —
the ladder to 44 needs search-side pruning and/or stronger
canonical dedup (per-copy BindIds overstate the count; see §3).
Validation: the 12-test gate battery is green (all §3/§4 checks
constructible under the revised schema), and the closed ≤22
differential vs qeval is EXACT — 6,069 programs, zero abstract
accepts, zero looseness, nine ⊤ — with witness45 accepting and the
28-bit cnot witness rejecting through the full pipeline in
milliseconds.
