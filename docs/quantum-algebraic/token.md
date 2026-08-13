# qALC machine — token-transport design

**Status: Gates 1 and 2 closed.** The §4 kernel is registered current-only in
`kernel.md`; the complete proof records and executable reference live out of
tree at `~/Work/qalc-scratch/`. Fresh-context Gate-1 audit #6 returned PASS,
and the universal Gate-2 clean-compilation theorem closed on 2026-08-13. The
Rust reference pillar is the next implementation step. The qALC machine is
IAM-lineage token transport
(architecture §8): the invocation term is immutable and read-only, the
runtime basis is token configurations, and gate arguments reach δs by
routing, never by copying. The rationale: the Interaction Abstract
Machine (Danos–Regnier) is **bideterministic — natively reversible** —
so orthonormal columns can come from the dynamics instead of being
engineered onto them; there is no substitution, no closure
construction, no environment erasure; and the exponential context does
reversibly what content tags did irreversibly in the rejected
rewriting substrate. Quantum prior art: Hasuo–Hoshino (quantum GoI),
Dal Lago–Faggian–Valiron–Yoshimizu (multitoken machines) —
typed/linear settings. The 2026-08-12 Gate-2 construction audit rejected
geometric selection and the constant-weight ROM, then isolated a native
two-port CNOT with persistent reusable outputs. Its buffered SSA compiler has
an unbounded actual-machine refinement to the ideal H/T/CNOT circuit column,
including common reachable inputs, literal terminal garbage, full-NF output,
arbitrary superpositions, and no earlier halt. Clean Bell, derived Toffoli,
nonlinear-reuse carriers, and a 917-state Python/Lean differential remain the
independent executable evidence.
This document is current-only: guardrails (§1), the exact classical
substrate (§2), the accepted quantum-control extensions (§3), and the
current state register (§4). History — the route choice, the ratified
amendment, the review record, the failed rewriting drafts — lives in
`../ledger/2026-08.md` and `machine.md`.

## 1. Guardrails

Any design is dead on arrival unless it respects:

1. **No basis-copying of unknown superpositions** —
   `CNOT(|+⟩|0⟩) = |Φ⁺⟩`, `(H⊗I)|Φ⁺⟩ ≠ |0⟩|+⟩` (`machine.md` §9.1).
   Values reach δs by *transport* or not at all; no machine rule
   copies an already-superposed runtime value.
2. **Global single-map injectivity on the reachable basis** — distinct
   sources need orthogonal images under every iterate, checked as a
   full pairwise matrix over all columns, δ, readback, error, and halt
   included.
3. **Typed invariant halting sectors with ticks** (architecture §4.3):
   no reachable fixed points; common origin; halted states factor
   **isometrically** as `ℓ²(NF) ⊗ garbage ⊗ terminal-control ⊗ tick` —
   a many-to-one classical decoder from terminal traces to normal
   forms is forbidden; error sectors identically, retaining complete
   discarded control.
4. **Interference = same configuration, same global time.** Timing is
   physical; length-unbalanced branches decohere honestly. Any claimed
   coherence must survive a step-indexed trace.
5. **Clean δ fibres, gate-indexed** (architecture §7):
   `U|q,b,κ⟩ = Σ (Q_q)_{b'b}|b′, J_q(κ)⟩`, `J_q†J_r = δ_qr I`,
   landings boolean-independent. The fibre must be *exhibited*: the
   canonical pairing of the two boolean input states and two output
   states sharing one spectator, with exactly equal spectators.
   Boolean-as-position is acceptable precisely when that pairing is
   exhibited; a classically-positioned token driving a hidden quantum
   payload register is the classical-control corner, not this pillar.
   Amended (ratified 2026-08-09): a δ event may act through a
   certified **encoded fibre** `E_a|b,κ⟩ = |b, G_a(b,κ), F_a(b,κ), κ⟩`
   — coherent decoding of bit-correlated arrival/replay coordinates
   before `Q_q`, with per-boundary exhibition, source and landing
   disjointness, and an effectively computable certification whose
   rejection falls back to the conservative nontransparent transition;
   the original law is `E_a = identity`. Full text in architecture §7.
6. **Full-NF effect-free conservativity** (observational): if
   rigid-atom leftmost-outermost normalization of `p X₁ X₂` reaches
   normal form `n`, the machine's internal readback halts with output
   `n`; if no NF exists, the machine never enters `Halt` — including
   WHNF-without-NF cases. No token-step/redex-step simulation is
   required or expected.
7. **Witness battery**: HH must cancel (mass 1 on `0̂`); H–NOT–H is
   the coherence bar; the negative witness — `λb. b I I` on a fired
   `h` outcome — is an inner-product assertion: the synchronized
   images of `0̂` and `1̂` remain orthogonal *full configurations*
   (both branches may output `I`; the reduced output can't see it).
   Witness statements name wire terms only, never machine mechanisms.
8. **Minimal-information residue, earned coherence** (fork A), in
   token vocabulary: live stacks are control, not garbage; residue is
   what a configuration carries beyond the canonical live token state;
   terminal garbage is the non-output state surviving at `RunDone`;
   minimality is predecessor-fibre-local.
9. **Closed semantic readback**: all query scheduling and NF
   construction happen inside one computable, time-homogeneous `U`.
   No external driver relaunching token queries — that would make τ,
   halting age, monotonicity, and interference driver-relative.
10. **Canonical position identity**: positions are structural (rooted
    zipper into the immutable invocation term), no allocation
    identity; the global space is an orthogonal direct sum over
    invocation sectors.
11. **Locally finite computability**: every basis column has finite
    support with exact ring coefficients, and one step on finite
    support is effectively computable (the sparse evaluator depends on
    it).
12. **Generator duplication as constraint**: contraction revisits the
    same immutable subterm under distinct exponential contexts; each
    visit to an unfired δ occurrence is a distinct gate event.
13. **Error completeness**: species-error entry retains enough
    interrogation transcript and control to be injective and
    participates in the full pairwise range matrix.

## 2. The classical substrate, exact: λIAM

Source: Accattoli–Dal Lago–Vanoni, *The (Abstract) Machinery of
Interaction* (PPDP 2020, arXiv:2002.05649); table as reproduced in
*The Space of Interaction* (LICS 2021, arXiv:2104.13795, Fig. 1),
Closed CbN setting — which matches ours (invocation terms are closed).

```text
States           s ::= (t, C, L, T, d)     — code subterm, context,
                                             log, tape, direction
Logged positions l ::= (t, Cn, Ln)         — |Ln| = n = level of Cn
Tapes            T ::= ε | •·T | l·T
Logs             L ::= ε | l·L
Directions       d ::= ↓ | ↑
```

The level of a context = the number of arguments the hole lies under.
Initial states, parameterized by observation depth `k`:
`(t, ⟨·⟩, ε, •^k, ↓)` — the hook the readback controller iterates on.
Final states: `(λx.u, C, L, ε, ↓)` — the head abstraction of the
weak-head normal form. The λIAM implements Closed CbN: the run from
the depth-0 initial state terminates iff weak-head reduction
terminates on `t`.

```text
•1   (t u,        C,         L,    T,                 ↓) → (t,        C⟨⟨·⟩u⟩,   L,    •·T,               ↓)
•2   (λx.t,      C,         L,    •·T,               ↓) → (t,        C⟨λx.⟨·⟩⟩, L,    T,                 ↓)
var  (x,         C⟨λx.Dn⟩,  Ln·L, T,                 ↓) → (λx.Dn⟨x⟩, C,         L,    (x,λx.Dn,Ln)·T,    ↑)
bt2  (λx.Dn⟨x⟩,  C,         L,    (x,λx.Dn,Ln)·T,   ↓) → (x,        C⟨λx.Dn⟩,  Ln·L, T,                 ↑)
•3   (t,         C⟨⟨·⟩u⟩,   L,    •·T,               ↑) → (t u,      C,         L,    T,                 ↑)
•4   (t,         C⟨λx.⟨·⟩⟩, L,    T,                 ↑) → (λx.t,     C,         L,    •·T,               ↑)
arg  (t,         C⟨⟨·⟩u⟩,   L,    l·T,               ↑) → (u,        C⟨t⟨·⟩⟩,   l·L,  T,                 ↓)
bt1  (t,         C⟨u⟨·⟩⟩,   l·L,  T,                 ↑) → (u,        C⟨⟨·⟩t⟩,   L,    l·T,               ↓)
```

Reading: `↓` states query the head variable of the code; `↑` states
search for an abstraction's argument; `↓` with a logged position on
the tape top is backtracking (`bt1` starts it, `bt2` ends it). `•`
records the crossing of an application whose identity is forgotten —
search up to β-redexes. `var` jumps from an occurrence to its binder,
saving the occurrence (with the log slice covering its level) as a
logged position; `arg` completes an argument query, moving the logged
position from tape to log as the return address for later
backtracking.

**Bideterminism is structural** (verified against arXiv:2002.05649).
The step relation is a partial bijection: `flip(s′) → flip(s)` gives
the reverse machine, and the rules occur in inverse pairs (`•1`/`•3`,
`•2`/`•4`, `var`/`bt2`, `arg`/`bt1`). Forward, the applicable rule is
determined by direction, code shape, and tape top; backward, target
patterns are pairwise disjoint by the dual classification —
`↓`-targets split by position kind and tape top (function-position/•
= `•1`, function-position/l = `bt1`, λ-body = `•2`, argument-position
= `arg`), `↑`-targets likewise (application = `•3`, λ/• = `•4`, λ/l =
`var`, variable = `bt2`) — and each row is individually injective
(pure stack transport; nothing is erased, `•` has constant content).
Zero-garbage reversibility is a structural fact about the table.

Two boundary caveats. A partial bijection's linear extension is an
isometry only once *totalized on reachables* — every final or stuck
shape needs a norm-one successor (tick sectors, error adapters), or
norm leaks. And the **jumping variant (λJAM) is excluded**: its jump
rule drops the skipped source state, is plainly noninjective on the
raw state grammar, and retaining the skipped source as residue would
give back the history the jump avoids.

For qALC the walked term is the immutable invocation `p h t`; the
constants are two extra leaf kinds with no classical rules of their
own — every transition at a constant leaf belongs to the δ gadget
(§3) or to neutral readback. A rigid head's argument is *not* entered
by any classical rule (the standard machine stops at the head), so
gate interrogation is necessarily new machinery.

## 3. Accepted quantum-control extensions

The current machine extends the immutable-term λIAM substrate at four explicit
surfaces. Their complete executable definitions live in the scratch reference;
this document records the design shape rather than duplicating the row table.

### 3.1 H/T interrogation and replay

A gate application launches a two-slot boolean probe. Ordinary λIAM transport
evaluates the argument; the returned slot selects the H or T matrix column.
The gate row scatters exact amplitudes over balanced virtual answers:

```text
H = 1/sqrt(2) [[1,  1], [1, -1]]
T =             [[1,  0], [0,  omega]]
```

Tickets, instance-keyed replay frames, and storage records retain the exact
predecessor fibre. Re-interrogating the same dynamic gate copy recalls or
replays its recorded answer; it never resamples. Every malformed species,
foreign ticket, conflicting bit, dead-key refire, and bad routing shape enters
a typed source-retaining error sector.

The runtime key `(gate, instance)` reconstructs the complete fixed-shell gate
copy address. Raw agreeing-frame recall is not injective on arbitrary WF
states, so admission separately checks reachable-recall injectivity on the
complete finite carrier. The concrete Lean replay proves that predicate for
all 17 canonical typed sectors.

### 3.2 Full-normal-form readback and terminal sectors

A single depth-first zipper reads the complete normal form without copying
values. RB/RBL delimiters and binder/residue records make ENTER, RETURN, and
terminal rows reversible. Bare or variable-headed gate applications remain
neutral normal forms; closed non-Boolean gate arguments enter typed errors.

Halt and error entry preserve the complete terminal predecessor fibre. Their
common-origin unilateral tick tails are forward invariant, so equal-time
interference is explicit and halt mass is monotone. Exact amplitudes use
`Z[omega]/sqrt(2)^k`; the semantic layer defines `U`, `mu_p`, `rho_p`,
finite `M`, and `Omega_qALC` for every finite closed sector. Rejected
admission selects the exact conservative source-history representation.

### 3.3 Native CNOT and linear SSA compilation

Gate 2 adds one invocation-supplied two-port CNOT. It queries its control and
target once, parks the first result in reversible controller records, and
delivers persistent linear output handles to the continuation. Explicit
query, park, history, dead-port, and stage coordinates give every successful
row a literal inverse and satisfy the pinned coloring.

The compiler emits one closed `p h t c` term. Preparation creates all words
at the common reachable `47n+4` cut. Each H, T, or CNOT consumes current wire
versions and binds fresh versions, so a computed nonlinear target can later be
used as a control without duplicating or resampling a quantum value. Toffoli is
the standard exact H/T/CNOT decomposition.

Recognized compiler images take a cap-free syntax-directed certificate path.
All other terms continue through Gate 1's validated finite admission or
conservative fallback.

### 3.4 Closed compilation contract

For every positive width and typed finite H/T/CNOT circuit, the actual
composed machine refines the ideal exact circuit column from the common input
cut to one full-NF terminal block. The theorem is uniform in circuit length,
word, and arbitrary finite input amplitudes; it proves exact symbolic time,
literal branch-independent garbage/control, tick zero, and no earlier halt.

The load-bearing Lean endpoint is
`Gate2CleanCompilation.lean::physicalCleanCompile`. Independent executable
checks cover all 43 width-two circuits through length two, Bell uncompute,
derived Toffoli, nonlinear target reuse, mutation controls, and a 917-state
Python/Lean differential. The authoritative records are
`~/Work/qalc-scratch/GATE1.md` and `~/Work/qalc-scratch/GATE2.md`; rejected
routes and design chronology live only in the ledger and scratch attic.

## 4. Current state register

The original three-program kernel target has been exceeded: the current
out-of-tree machine covers the exact lambda-IAM substrate, H/T gate transport,
full-normal-form readback, typed terminal sectors, and static total semantics.
Detailed machine definitions and proof boundaries live in `kernel.md`; the
completed composed proof is `~/Work/qalc-scratch/GATE1.md`. Audit chronology
belongs only in `docs/ledger/2026-08.md` and the preserved scratch audit kits.

| Item | Current status |
|---|---|
| Architecture Gate 1 | **Closed.** Thirty admitted finite operational cores cover 7,507 states and 7,417 exact columns; generated Lean checks literal ranges, predecessor inversion, and exact Gram identity. Fresh-context Gate-1 audit #6 passed with no required correction. |
| Kernel | **v1.43.** The v1.42 transition/WF surface passed fresh audit #35. v1.43 adds the mandatory Gram-independent reachable-recall certificate without changing transitions, frozen certificates, or accepted canonical programs. |
| Transport and transparency | **Closed for admitted finite sectors.** Gate values move by token routing, encoded-fibre erasure is certificate-controlled, and rejection selects the conservative source-history representation. |
| Instance identity | **Closed at the required boundary.** `(g,i)` identifies fixed-shell gate copies; complete-carrier RRI is checked before admission and replayed in Lean on all 17 canonical typed sectors. Raw-WF recall is noninjective, so no stronger raw theorem is claimed. |
| Readback and scalars | **Closed.** The internal zipper reads complete normal forms; bare and variable-headed `h`/`t` applications remain neutral; `t` uses exact `diag(1,omega)` arithmetic over `Z[omega]/sqrt(2)^k`. |
| Terminal and semantic objects | **Closed.** Typed error/halt entry and unilateral ticks are forward invariant. Static sector selection defines exact `U`, `mu_p`, `rho_p`, finite `M`, and `Omega_qALC` approximants for every finite closed program. |
| Time register | **Kernel theorem.** The coloring, branch-offset law, and mark-free fire-free conservation theorem explain why step-encoded classical selection decoheres and identify the permitted escape mechanisms. |
| Architecture Gate 2 | **Closed (2026-08-13).** The native CNOT and buffered SSA compiler have an unbounded actual-machine refinement for arbitrary typed H/T/CNOT lists, a common reachable encoded-input cut, exact ideal columns, arbitrary finite amplitudes, full-NF output, one literal terminal block, no earlier halt, and cap-free structural admission. |
| Optional stronger structure | The ambient uniform lifecycle/minimal-carrier theorem, general probe-exit classification, and broader arrival/pop determinacy remain research lanes; none is a Gate-1 premise. |
