# qALC machine v2 — token-transport exploration brief

**Status: exploration brief, pre-design.** Route (b) of `machine.md`
§9.4 — a reversible interaction/token construction in which values are
*transported* to δs rather than copied — was chosen by a9 (2026-08-09)
as the v2 direction after the v1 Try-boundary protocol fell to the
no-cloning countermodel. This brief pins what any v2 design must
inherit from the four completed review rounds, the questions it must
answer, and the one contract amendment it requires. Written for a
fresh-context continuation; read `architecture.md`, `machine.md` §9,
and the ledger entry first.

## 1. Why tokens

The Interaction Abstract Machine (Danos–Regnier) runs on untyped pure
terms, never rewrites the term, and is **bideterministic — natively
reversible**. The entire v0/v1 injectivity war (producer marking,
color disciplines, join charging) may dissolve at the root: orthonormal
columns could come from the dynamics instead of being engineered onto
it. The term is read-only, so there is no substitution, no closure
construction, no environment erasure — the state is a token position
plus context stacks, and the exponential-context stack plays the role
our `Look` tags played, reversibly by construction. Quantum prior art:
Hasuo–Hoshino (quantum GoI), Dal Lago–Faggian–Valiron–Yoshimizu
(multitoken machines) — typed/linear-logic settings; the untyped port
is the open engineering.

## 2. Inherited constraints (the four rounds' guardrails)

Any v2 design is dead on arrival unless it respects:

1. **No basis-copying of unknown superpositions** — the v1 killshot:
   `CNOT(|+⟩|0⟩) = |Φ⁺⟩`, `(H⊗I)|Φ⁺⟩ ≠ |0⟩|+⟩` (`machine.md` §9.1).
   Values reach δs by *transport* or not at all.
2. **Global single-map injectivity on the reachable basis** — bare
   syntactic states are too coarse (the `λf. f (h 0̂) 0̂` overlap);
   whatever the token state is, distinct sources need orthogonal
   images under every iterate, checked as a full pairwise matrix.
3. **Typed invariant halting sectors with ticks** (frozen architecture
   §4.3): no reachable fixed points; `RunDone → Halt(…,0)`; common
   origin; error sectors identically, retaining complete discarded
   control (v1 defect: dropping the continuation breaks injectivity
   even where coherence is irrelevant).
4. **Interference = same configuration, same global time.** Timing is
   physical; length-unbalanced branches decohere honestly. Any claimed
   coherence must survive a step-indexed trace.
5. **Clean δ fibres, gate-indexed** (frozen architecture §7):
   `U|q,b,κ⟩ = Σ (Q_q)|b′, J_q(κ)⟩`, `J_q†J_r = δ_qr I`, landings
   boolean-independent, orthogonal to all non-δ ranges. In token
   terms: how a δ node acts on a passing token must have exactly this
   fibre structure, including when the token *position* superposes
   (quantum control is the point — a classically-positioned token with
   a quantum payload is design A again).
6. **Effect-free conservativity** against rigid-atom leftmost
   reduction (projected fate identity — for a token machine this
   becomes: the path semantics restricted to constant-free runs must
   compute the same normal forms; the strong-normalization/readback
   story is where IAM-style machines are weakest, and the census needs
   NFs).
7. **Witness battery**: HH must cancel; H–NOT–H is the coherence bar;
   witness statements name wire terms only, never machine mechanisms
   (review-ratified). `λb. b I I` (non-injective map) must *not* come
   out coherent — unitarity forbids it.
8. **Fork (A) stands**: minimal-information residue, earned coherence,
   and any residual charging must land in the predecessor-fibre
   minimality frame (or amend the architecture explicitly).

## 3. Questions the design must answer

1. What is the token state space (position, direction, multiplicative
   and exponential stacks — and payload?), and is the *linear
   extension of the token step* on ℓ²(token states) an isometry for
   free from bideterminism, once δ-branching is added as a unitary
   block?
2. How does `h` act: the token position superposing over the two
   boolean answers to a query is the natural guess — spell out the
   fibre and check constraint 5.
3. Readback: IAM natively answers head/path queries; the census needs
   full normal forms and halting masses. Exhaustive path enumeration,
   jumping variants (Danos–Regnier's optimal/jumping machines), or a
   readback driver looping the token — and what "halting" is
   (constraint 3) when the machine is a wanderer rather than a
   rewriter.
4. Duplication: non-linear code revisits subterms with different
   exponential contexts — verify this genuinely replaces the v0/v1
   `Look` content tags and what, if anything, is charged.
5. Timing: token path lengths differ across branches — same
   synchronization physics (constraint 4); check H–NOT–H path lengths
   concretely for `NOT′` and the selector.
6. Where does `Ω_qALC` live: per-program halting mass as the norm of
   what, and does the Loewner-monotone output-block structure
   (architecture §4.6) survive the change of machine?

## 4. Contract amendment required

Architecture §8 ("β-dynamics on a new reversible machine") currently
*parks* the token alternative as "different objects … a separate
pillar, never a drop-in engine." Route (b) makes the token machine
*the* qALC machine, which is an amendment to that frozen design
decision — it must be ratified through the `qalc-architecture` thread
(where Codex proposed route (b)) before v2 is drafted against the
contract, and the β-dynamics text rewritten to record why the pivot
happened (the §9.1 countermodel) rather than silently swapped.

## 5. What carries over from v1 regardless

The typed terminal sectors and their lemma (review-confirmed twice);
the witness battery and hand-trace discipline; the defect-register
habit; the color-discipline *idea* as a fallback producer-marking tool
if bideterminism has gaps at the δ or readback boundaries; and the
review loop itself — draft, thread, countermodel, register, iterate.
