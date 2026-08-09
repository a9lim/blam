# qALC three-program kernel — v1

**Status: v1.4 in progress — §11 is the current register. The
polarity coloring is now a THEOREM with a closed form (uniform
flip, fire defect `1 − w(erased lp)`; 1,518 edges checked, zero
violations), the branch-offset formula is verified on all
measured offsets, Codex's even-pad search is a corollary,
certificates are canonical (discovery fixpoint, HAND==AUTO on all
eleven programs, validity strictly beyond Gram — the negative
control is properly caught), amplitudes are exact `ℚ[√2]`, and
the sharpened open object is the §11.3 weight-conservation
conjecture: gate-free readback conserves `w ≡ slot` (geometric
selection of classical data decoheres intrinsically), with
gate-mediated routing as the parity-free pattern class. The
encoded-fibre amendment is RATIFIED-WITH-EDITS and applied to
architecture §7 (§11.7). The coloring review returned
PASS-WITH-CORRECTIONS on the theorem and FAIL on the v1.4 table —
the C-collapse countermodel exposed the v1-lineage fire erasing
which-path lps unsoundly — fixed by the **v1.5 encoded fire**
(§12): conservative decode by default, certified erasure under the
corrected fibre condition; twelve programs total and clean; HNH's
coherence is now an *earned*, certificate-bearing phenomenon.
Owed: the mark-free-ancestry conservation lemma, terminal-chain
mechanical check, terminating conservative certificate analysis,
lp invariants.** §10 is
the v1.3 register. Of the re-review's six gate items: totality on `q`'s
graph ✓ (the `replay` rule, derived from the literal visit-3
trace); correct slot-0/slot-1 outer arrivals ✓; instance-indexed
frames ✓ (instance = the log-head logged position, already present
at every gate-leaf entry); a transparency/pop rule ✓ (certified
per-program, falsification caught as a typed error, verified by
the Gram/norm pass, negative control included); `q`'s frames
cleaned with **no residual replay discriminator** ✓ — but mass 1
on `0̂` does NOT follow, because the branches arrive at the outer
boundary at different global times, and the offset is **odd and
invariant under every program-level padding tried** (§10.4).
Slot routing that survives to a boundary as tape *pattern* is
time-free (HH, H–NOT′–H sync exactly); routing *consumed* as
transport steps skews the clock by the transported bit. The
standing conjecture: step-encoded (geometric) selection decoheres
intrinsically in this machine class; coherence is the
pattern-encoded routing class; time-balancing is a compiler
obligation, not a rule-level fixable. History: v1 was reviewed
adversarially (thread
`qalc-token-machine`, independent reimplementation) — the classical
substrate, gate fibres, HH cancellation, H–NOT′–H balance, and
negative witness all HOLD, but `recall` was CONFIRMED-BROKEN on
`p★ = λh.λt. ((((h 0̂) h) h) 0̂)`: nested same-kind tickets aliased
after the replay erased its `b′` discriminator (norm 3/2 at step
89, verified against both implementations — §9). **v1.2 repairs it
with the inert replay stack** (§9.5): `recall` moves the ticket to
a transport-inert residue component instead of erasing it; recalled
branches decohere mandatorily — which is the correct physics, since
a coin whose branches both select gate occurrences has been
consumed non-injectively — and the coherent witnesses never touch
the mechanism. All seven programs (five witnesses + `p★` + the
3-coin regression) now pass with norm 1 and structurally clean
column-Gram. The conformance review's earlier fixes (output
alphabet {`0̂`,`1̂`,`I`}, separate `RunDone`/`Halt` steps,
structural Gram) are incorporated and stand.

```text
h (h 0̂)             mass 1 on 0̂, single terminal configuration
h (NOT′ (h 0̂))      mass 1 on 0̂, single terminal configuration
(λb. b I I) (h 0̂)   Halt(I) in BOTH branches, 1/2 + 1/2: same
                     output normal form, orthogonal in residue AND
                     entry time — the noninjective-output dilation,
                     exactly as the negative witness asserts
column-Gram          orthonormal on every structural reachable basis
                     (amplitude-blind BFS: cancelled targets included)
```

Two probes beyond the gate, both physics-correct: the selector
`λb. b 1̂ 0̂` interposed in H–NOT–H **decoheres** (1/2, 1/2 mixed,
branches one step desynchronized) — the first mechanical measurement
of the coherence-is-earned economy; and lone `h 0̂` gives 1/2, 1/2 at
equal ticks.

## 1. Scope

The kernel machine answers a single **root output question** about
the invocation `p h t`: initial state
`(root, ↓, log ε, tape •·•·ρ)`, output alphabet **{`0̂`, `1̂`, `I`}**
with typed halting sectors for each, an absorbing error sector for
species errors, and root arrivals outside the alphabet also entering
the error sector — a kernel-scope limitation flagged as such: the
architecture permits arbitrary normal-form outputs, and recognizing
them is the readback controller's job, not smuggled in here. `I` is
in the alphabet because the negative witness's output is a *valid
closed normal form* — classifying it as an error would make witness
8 vacuous (a conformance-review catch; v1.0 had exactly that bug).
Terminal entry is the normative two-step
`RunDone(nf, res) → Halt(nf, res, 0) → tick`, each a separate `U`
application. The ring is `ℤ[1/√2]` — `h` only; `t` is the same table
with `Q_t = diag(1, ω)` over `ℤ[ω]/√2^d` and its own tags,
deliberately left unexercised. Classical substrate: the eight λIAM
rules exactly as pinned in `token.md` §2.

## 2. State space

```text
Run     ::= (pos, d, log, tape, RS)    — λIAM shape, plus VB phase
          | (leaf, VB(g, b′, k), log, tape, RS)   k ∈ {0,1,2}
RS      ::= [R_g(b′), …]   — transport-inert replay stack (v1.2):
          no transport or classifier rule reads it; only `recall`
          pushes; it joins the garbage factor at terminal entry
RunDone ::= RunDone(nf, residue)            nf ∈ {0̂, 1̂, I, err}
Halt    ::= Halt(nf, residue, tick) | Error(residue, tick)
residue = the COMPLETE pre-entry state (pos, d, log, tape, VB, RS)

tape/log entries: • | logged position l | γ_g | μ_g | A_g(b′)
                  | α_g(b′) | ρ
```

`γ_g` (gate boundary marker), `μ_g` (probe frame), `A_g(b′)` (fired
answer token), `α_g(b′)` (answer ticket — a logged-position-like
entry with empty slice), `ρ` (root frame). The classical transport
rules (`arg`, `bt1`) treat `γ` and `α` exactly like logged positions;
`bt2` never matches them (no binder). `lp-like := l | γ | α`;
arrival classifiers accept `l | α` as the answer position, never `γ`.

## 3. The transition table

Classical rules `•1 •2 •3 •4 var arg bt2` are unchanged from
`token.md` §2. `bt1` is restricted to non-`γ` log heads; the `γ`-head
case belongs to the gate boundary (arrive/retrace below). New rules —
every `Done` entry freezes the complete source state as residue:

```text
call     (g, ↓, L, •·T)                 → (g, ↑, L, γ_g·•·•·μ_g·T)
         g's leaf position; the top • is the query's application
         crossing. Classical transport then delivers the probe to
         g's true argument through arbitrary dereference plumbing.

recall   (g, ↓, L, •^(b′+1)·α_g(b′)·T, RS)
           → (g, ↑, L, •·•·•·T, R_g(b′)·RS)
         consistent replay of a fired instance off its ticket — no
         fire, and (v1.2) **no erasure**: the discriminator moves to
         the inert replay stack. Routing mirrors the literal
         boolean's bt2-replay: consume the slot-dependent re-descent
         bullets and the ticket, emit the two virtual lambda
         crossings plus the gate-application compensation. Recalled
         branches carry distinct R-frames forever — mandatory
         decoherence, matching the physics (a re-interrogated coin
         was consumed non-injectively by its selection). Bullet/
         ticket arity mismatch → Error. `call`'s domain excludes
         recall's by the explicit guard "tape below the leading
         bullet does not match •^k·α_g of this gate" — stated as a
         side condition, structural disjointness still owed to the
         formal table.

arrive/  (m ends 'a', ↑, γ_g·L, P_b·μ_g·T) →
fire       Σ_b′ (Q_g)_{b′b} · (m, ↑, γ_g·L, A_g(b′)·T)
         P_0 = l·   P_1 = •·l·   (l ∈ {logged position, α})
         the δ block, directly on arrival states; Q_h = H.
         Other tape shapes at a γ boundary → Error (species).

retrace  (m ends 'a', ↑, γ_g·L, A_g(b′)·T) → (parent+'f', ↓,
         L, γ_g·A_g(b′)·T)        [bt1's action on the γ head]
         Classical rules then retrace the inward transit to the leaf.

anshead  (g, ↓, L, γ_g·A_g(b′)·T) → (g, VB(g, b′, 0), L, T)
vb2      (g, VB(g,b′,k<2), L, •·T) → (g, VB(g,b′,k+1), L, T)
vvar     (g, VB(g,b′,2), L, T)     → (g, ↑, L, •^(b′+1)·α_g(b′)·T)
         the balanced virtual answer: consume the outer question's
         two bullets as the two virtual lambdas, then emit the seek.
         One bullet pays the gate-application crossing; the rest
         encode the slot; α carries the return ticket.

root     (root, ↑, ε, P_b·ρ)   → RunDone(b̂, res)
         (root, ↑, ε, l·•·ρ)   → RunDone(I, res)
         one lambda consumed, head = its own binder, unapplied —
         the I signature at depth-2 observation
         other ρ arrivals      → RunDone(err, res)  [kernel-scope
         limitation: outputs beyond {0̂,1̂,I} await real readback]
halt     RunDone(nf, res)      → Halt(nf, res, 0)   [separate step]
ticks    Halt/Error(…, k)      → (…, k+1)
errors   VB with a non-• non-classifier tape top; ↓-stuck on μ/ρ
         (too many head lambdas); neutral constants under μ/ρ;
         species shapes at γ boundaries; recall arity mismatch —
         all → Error via RunDone, complete residue.
```

## 4. Where the design came from (load-bearing derivations)

**Classical transport is the whole protocol.** `call` does not move
the token to the argument; it flips ↑ at the leaf with `γ_g` on top,
and the untouched classical rules carry the probe through any
var/arg dereference plumbing to the gate's true argument — verified
through double indirection (`((λg.g) h) 0̂` style). Dually, after
`fire`, `retrace` is one rule and the classical rules run the inward
transit backward to the leaf — bideterminism doing what v1's entire
hand-built reverse machine failed to do.

**The gate-application compensation (+1 bullet).** A literal
boolean's lambdas are real tree nodes: its answer exits by real `•4`
crossings that later pay real `•3` crossings. The virtual boolean
sits one application *deeper* (at the gate leaf, function of its own
application node), so every virtual exit emits one extra bullet to
pay that crossing: `vvar` emits `•^(b′+1)·α` (one for the gate app,
`b′` for the slot skip), `recall` emits `•••` (two virtual lambdas
plus the gate app). Both derived by replaying the literal-boolean
ground-truth traces, not stipulated.

**Balance needs no padding.** The classical `0̂`/`1̂` exits are one
step apart (the `•4` for the deeper binder). In the virtual answer
the slot-2 bullet is consumed by the arrival *classifier*, not by a
step, so both branches take identical step counts from fire to the
next boundary. The earlier design guess (a pad rule) was wrong and
is gone.

**Re-interrogation is real; the no-store mechanism works.**
Conjecture C1 of `token.md` §3.5 is **false**: an output's variable
can seek its argument by backtracking *through* the boolean
selection, re-dereferencing to the gate leaf (the negative witness
does this). The literal boolean answers re-entry by `bt2` on the
selection ticket — replaying its structure, net tape-neutral.
`recall` is the virtual mirror: it reads `b′` off the `α` ticket and
replays without firing. The outcome of a fired gate lives only in
the tokens the machine already carries — no store, as designed.

## 5. Verification results

Mechanized runs, exact arithmetic, norm ≡ 1 asserted at every global
step (a norm increase is a non-injectivity detector — see §6):

Timing convention (pinned, conformance-reviewed): `RunDone` entry and
`Halt(…, 0)` entry are separate `U` steps; "Halt at" below is the
`Halt(…, 0)` step.

| program | sectors | support | Halt at | R-frames |
|---|---|---|---|---|
| `h (h 0̂)` | `0̂`: 1 | 1 | t=49 | none |
| `h (NOT′ (h 0̂))` | `0̂`: 1 | 1 | t=64 | none |
| `(λb. b I I)(h 0̂)` | `I`: 1 | 2 | t=58, 60 | yes |
| `h (selNOT (h 0̂))` | `0̂`: 1/2, `1̂`: 1/2 | 4 | t=78, 79 | yes |
| `h 0̂` | `0̂`: 1/2, `1̂`: 1/2 | 2 | t=31 | none |
| `p★` (regression) | `0̂`: 1/2, `1̂`: 1/2 | 8 | t=99–103 | yes |
| 3-coin (regression) | `0̂`: 1/2, `1̂`: 1/2 | 4 | t=63, 65 | yes |

The two coherent witnesses never create an R-frame — the repair
mechanism is invisible to coherent code, engaging exactly where
mandatory decoherence is the correct physics. `p★` completes at
norm 1 with the first coin decohered and the marginal (1/2, 1/2) —
the rewriting-picture sanity check: its branches both reduce to the
*same term* `h 0̂` post-selection, so any machine that merged them
would violate norm; refusing is correctness, not cost.

Output-density report (the kernel as output-operator prototype): the
negative witness's two branches halt with the *same* `nf = I` and
distinct residues — `ρ_output` is `|I⟩⟨I|` with the orthogonality in
the traced-out garbage/time, the noninjective-output dilation
exactly. Lone `h 0̂` halts at equal ticks but with `b`-dependent
residues (the `α` ticket survives), so `ρ_output` is exactly
diagonal `diag(1/2, 1/2)` — the bare coin's output coherence is
unearned, as the contract's economy demands; earning it would
require code that uncomputes the ticket.

HH's `1̂` amplitudes cancel *at the outer fire step* (t=33): the two
branches arrive at the boundary as a clean fibre — equal position,
log, tape-below-slot, and time — so everything after t=33 is a
single classical path. H–NOT–H does the same through NOT′'s real
selection legs (residue popped, lengths equal — the L2 obligation
confirmed for NOT′). The negative witness's branches keep distinct
residues and enter their `Halt(I)` chains two steps apart —
orthogonal two ways over, as unitarity demands, and its earlier
four-state form was the run that caught a real table bug (§6).

**Column-Gram enumeration** (strengthened after conformance review):
the basis is the **structural** reachable graph — an amplitude-blind
BFS over column targets, so states that cancel to zero in the
aggregated evolution (e.g. the annihilated `A_h(1)` targets at HH's
outer fire) have their columns checked too. Ticks truncated at depth
2 (the tick shift is manifestly isometric beyond it); the
invocation-sector coordinate is suppressed in displayed states and
preserved trivially (the term is read-only), so per-program
enumeration plus sector orthogonality covers the direct sum. Every
column unit-norm, every distinct pair orthogonal, no stuck states
(totality):

| program | structural basis | stuck | non-unit | non-orthogonal |
|---|---|---|---|---|
| HH | 82 | 0 | 0 | 0 |
| H–NOT–H | 104 | 0 | 0 | 0 |
| negative | 103 | 0 | 0 | 0 |
| selector | 173 | 0 | 0 | 0 |
| lone H | 53 | 0 | 0 | 0 |
| `p★` | 458 | 0 | 0 | 0 |
| 3-coin | 180 | 0 | 0 | 0 |

(v1.2 numbers; the v1 table had two non-orthogonal 3-coin pairs —
the cross-time `recall` collision — and `p★` broke the norm outright
at step 89. Both are clean under the inert replay stack.)

## 6. Findings register

1. **The selector decoheres — the economy is measurable.** `NOT′`
   (path-balanced) preserves coherence; `λb. b 1̂ 0̂` routes through
   literal booleans whose step counts differ by one, and the machine
   returns the mixed 1/2, 1/2 — mechanically deriving what the
   rewriting drafts could only predict. "Coherence is earned" now
   has a unit: token steps.
2. **Error residue must be the complete state — including control
   phase.** The first negative-witness run produced norm 3/2: two
   branches differing only in the VB `b′` register collided in an
   error entry whose residue dropped the register. Third recurrence
   of this bug class (v0 E1, v1 E1, here); the lesson is now a rule
   shape: `Done` residues freeze the whole state, no exceptions.
3. **The norm assertion is a live non-injectivity detector.** Both
   table bugs found during construction announced themselves as
   norm violations in the negative witness — the witness battery
   works as designed, and `λb. b I I` specifically earns its place.
4. **Valid normal forms are not errors** (conformance blocker,
   fixed in v1.1). v1.0's root classifier sent the negative
   witness's output `I` to the error sector, which made witness 8
   vacuous — it tested error-entry injectivity rather than the
   architecture's same-output-never-merges assertion. The output
   alphabet gained `I`, both branches now halt as `Halt(I, …)` with
   orthogonal residues and times, and the general lesson is pinned:
   only a *gate applied to* a non-boolean is a species error;
   output classification belongs to readback.
5. **The battery accounting, per conformance review**: items 2, 3,
   4 (finite instance), 6, 7, and 8 are discharged at kernel scope;
   items 1 and 9 are not applicable (no code exists — not
   "vacuously passed"); item 5 (effect-free conservativity) is not
   exercised by the kernel set and remains open.

## 7. Honest scope and obligations discharged/remaining

Discharged by the kernel: HH and H–NOT–H step-indexed traces; L2
for `NOT′`; the negative witness (as of v1.1 — same halted `I`,
orthogonal configurations); orthonormal columns on the structural
reachable bases; totality on every structural state (zero stuck).
The erasure at `fire` is, per the conformance review's framing,
*proved injective on the enumerated kernel domains by the Gram
check itself*; its general schema remains conditional on the
arrival-determinacy lemma — and the input boolean `b` must never be
conservatively charged as residue (retaining it would destroy the
clean fibre; the design keeps `b` as the consumed quantum
coordinate). `recall` no longer erases (v1.2, §9.5); the governing
question became the transparency criterion of §9.6.

Remaining, inherited or newly exposed:

1. **Re-entry determinacy (new, replaces C1).** `recall` absorbs
   `α_g(b′)`; injectivity needs `b′` recoverable from the retained
   state. It holds on the kernel programs (the pending question
   carries branch-distinct positions) and needs a general proof —
   the sharpest open lemma, alongside general L1.
2. **Source-pattern disjointness**: `call`/`recall` partition by a
   decidable negative premise — scan the maximal leading bullet
   block; a same-gate `α_g(b)` beneath it means replay (arity
   `b+1`) or arity-error, anything else means fresh call — but the
   *semantic* implication (same-gate α after the block ⇒ replay of
   the intended dynamic instance) is unproved without
   instance-tagged tickets; other rule pairs remain
   priority-ordered in the scratch model.
3. **The `•^(b′+1)·α` adjacency patterns** (recall trigger, arrival
   shapes) are verified on the kernel programs; their totality over
   all reachable shapes needs the general species-classification
   proof.
4. **Boolean-output halt only** — the readback controller
   (`token.md` §3.8) remains the largest undesigned component; the
   root classifier here is its 1-bit special case.
5. **`t` unexercised** (needs `ℤ[ω]` scalars; table shape ready).
6. Gram enumeration is per-program reachable bases, not an
   all-programs theorem — that is exactly the orthonormal-columns
   proof obligation of architecture §9 item 1.

## 8. Appendix — HH step-indexed trace

Notation: `b` = bullet, `L(path|n)` = logged position (slice length
n), `gh/mh` = `γ_h`/`μ_h`, `Ahb′` = `A_h(b′)`, `ahb′` = `α_h(b′)`,
`R` = ρ. Amplitude `m/r2^k` = `m·2^(−k/2)`. Term paths: wrapper
`(λh.λt. h (h 0̂)) h t`; `fa` = the h leaf, `ffbbf`/`ffbbaf` = outer/
inner `h` occurrences, `ffbba` = `h 0̂`, `ffbbaa` = `0̂`.

```text
t=  1 b1      1       f     D  log[]            tape[b b b R]
t=  2 b1      1       ff    D  log[]            tape[b b b b R]
t=  3 b2      1       ffb   D  log[]            tape[b b b R]
t=  4 b2      1       ffbb  D  log[]            tape[b b R]
t=  5 b1      1       ffbbf D  log[]            tape[b b b R]
t=  6 var     1       ff    U  log[]            tape[L(ffbbf|0) b b b R]
t=  7 arg     1       fa    D  log[L(ffbbf|0)]  tape[b b b R]
t=  8 call    1       fa    U  log[L(ffbbf|0)]  tape[gh b b mh b b R]
t=  9 bt1     1       ff    D  log[]            tape[L(ffbbf|0) gh b b mh b b R]
t= 10 bt2     1       ffbbf U  log[]            tape[gh b b mh b b R]
t= 11 arg     1       ffbba D  log[gh]          tape[b b mh b b R]
t= 12 b1      1       ffbbaf D log[gh]          tape[b b b mh b b R]
t= 13 var     1       ff    U  log[]            tape[L(ffbbaf|1) b b b mh b b R]
t= 14 arg     1       fa    D  log[L(ffbbaf|1)] tape[b b b mh b b R]
t= 15 call    1       fa    U  log[L(ffbbaf|1)] tape[gh b b mh b b mh b b R]
t= 16 bt1     1       ff    D  log[]            tape[L(ffbbaf|1) gh …]
t= 17 bt2     1       ffbbaf U log[gh]          tape[gh b b mh b b mh b b R]
t= 18 arg     1       ffbbaa D log[gh gh]       tape[b b mh b b mh b b R]
t= 19 b2      1       ffbbaab D log[gh gh]      tape[b mh b b mh b b R]
t= 20 b2      1       ffbbaabb D log[gh gh]     tape[mh b b mh b b R]
t= 21 var     1       ffbbaa U log[gh gh]       tape[L(ffbbaabb|0) mh b b mh b b R]
t= 22 fire-h  ————— inner δ: slot-1 arrival at the inner γ boundary —————
        1/r2  ffbbaa U log[gh gh] tape[Ah0 b b mh b b R]
        1/r2  ffbbaa U log[gh gh] tape[Ah1 b b mh b b R]
t= 23 retrace (both branches, lockstep)   ffbbaf D  tape[gh Ahb′ …]
t= 24 var     both    ff    U  …
t= 25 arg     both    fa    D  log[L(ffbbaf|1)] tape[gh Ahb′ b b mh b b R]
t= 26 anshead both    fa VB(h,b′,0)             tape[b b mh b b R]
t= 27 vb2     both    fa VB(h,b′,1)             tape[b mh b b R]
t= 28 vb2     both    fa VB(h,b′,2)             tape[mh b b R]
t= 29 vvar    ————— balanced emission: b′=0: [b ah0 mh …]; b′=1: [b b ah1 mh …]
t= 30 bt1     both    ff    D  …
t= 31 bt2     both    ffbbf U  …
t= 32 b3      both    ffbba U  b′=0: tape[ah0 mh b b R]; b′=1: tape[b ah1 mh b b R]
t= 33 fire-h  ————— outer δ: branches arrive as a clean fibre (equal
              log, position, T, time; slots differ) — H fires, the
              A_h(1) amplitudes cancel exactly, support returns to 1:
        1     ffbba  U log[gh] tape[Ah0 b b R]
t= 34 retrace 1       ffbbf  D …
t= 35 var     1       ff     U …
t= 36 arg     1       fa     D  tape[gh Ah0 b b R]
t= 37 anshead 1       fa VB(h,0,0)  tape[b b R]
t= 38 vb2     1       fa VB(h,0,1)  tape[b R]
t= 39 vb2     1       fa VB(h,0,2)  tape[R]
t= 40 vvar    1       fa     U  log[L(ffbbf|0)] tape[b ah0 R]
t= 41 bt1     1       ff     D  log[]  tape[L(ffbbf|0) b ah0 R]
t= 42 bt2     1       ffbbf  U  log[]  tape[b ah0 R]
t= 43 b3      1       ffbb   U  log[]  tape[ah0 R]
t= 44 b4      1       ffb    U  log[]  tape[b ah0 R]
t= 45 b4      1       ff     U  log[]  tape[b b ah0 R]
t= 46 b3      1       f      U  log[]  tape[b ah0 R]
t= 47 b3      1       root   U  log[]  tape[ah0 R]
t= 48 rootdone 1      RunDone(0̂, residue (ah0·R))
t= 49 halt     1      Halt(0̂, residue, 0)     [separate U step]
t= 50 tick     1      Halt(0̂, residue, 1) …
      Mass 1 on 0̂, amplitude 2/√2² = 1 exactly.
```

The H–NOT–H and negative-witness traces (63 and 59 steps) follow the
same notation and are mechanically reproducible from the table; their
checkpoints (fires, anshead/vvar windows, recall events in the
negative witness, terminal entries) are as reported in §5.

## 9. v1 review verdict (registered)

**FAIL for kernel v1; the token-machine route is not implicated.**
The reviewer reimplemented §3 independently (adding the scratch
model's unstated `recall`-before-`call` priority) and reproduced all
five §5 results exactly. What holds, independently verified: HH
cancellation at the outer fire; H–NOT′–H step balance with no
padding (the slot-bullet-consumed-by-classifier derivation
confirmed); the negative witness's orthogonality; the
gate-application `+1` bullet count through one- and two-hop identity
plumbing.

### 9.1 The countermodel

`p★ = λh.λt. ((((h 0̂) h) h) 0̂)`: the first coin selects between
two `h` occurrences; the selected gate is freshly applied to `0̂`,
creating nested same-kind answer tickets. `recall` maps, for
identical retained `L, T`,

```text
C₀ = (g, ↓, L, •·α_h(0)·T)      C₁ = (g, ↓, L, •·•·α_h(1)·T)
```

to the identical `(g, ↑, L, •·•·•·T)`. Both are reachable in `p★`
at global step 89 with amplitude `1/(2√2)` each: mass 1/4 → 1/2 per
colliding pair, norm 1 → 3/2 — reproduced against our evolver
bit-exactly. A second mandated regression,
`λh.λt. ((h 0̂) (h 0̂) (h 0̂))`, conserves norm on the aggregated
run but its structural Gram exposes the same collision across time
slices (2 non-orthogonal column pairs, reproduced). Both programs
are now mandatory regressions for any successor table.

### 9.2 The structural diagnosis

Re-entry determinacy is **false**. The literal-boolean analogy
omitted the load-bearing part: literal `0̂`/`1̂` replay through
*distinct code positions*, and position retains the discriminator
through the replay. The virtual construction parks both answers at
the same gate leaf and then erases the only remaining discriminator
— classical irreversible erasure, not token transport. Two
secondary breaks: the `α` tag (gate kind, bit) cannot identify
which dynamic invocation owns a ticket, so same-kind nested
invocations alias; and `call`/`recall` source domains overlap
(every `recall` source is a `call` source), resolved only by
implementation priority — the formal table needs structural
disjointness.

### 9.3 Gram-methodology gaps (for the general theorem)

The five-program enumeration is a regression battery, not the
isometry theorem. A general verifier needs: structural source
disjointness; pairwise columns across every time slice's reachable
union; graph reachability before amplitude aggregation; arbitrary
nested exponential contexts and same-kind instances; `h`/`t`
cross-fibre and δ/non-δ range checks; the typed `RunDone → Halt`
entry checked mechanically; general ring amplitudes (the scratch
`(m, k)` representation cannot express `1 + 1/√2`); whole-term
identity in the sector coordinate.

### 9.4 Repair directions (unadjudicated)

`recall` cannot consume `α_g(b′)` into a common classical target.
Candidate shapes from the review: a dynamically instance-indexed
replay ticket (not merely gate kind + bit); a partial-permutation
replay retaining enough to reconstruct `b′`; structural separation
of fresh call from replay; erasure only where independent retained
state reconstructs the discriminator, or inside an actual unitary
block. A dedicated replay frame `R_g(instance, b′)` restores local
injectivity, but carrying it forever suppresses wanted interference:
**reversible ticket cleaning is now the central design problem** —
the same "coherence is earned" economy, now at the level of the
machine's own bookkeeping rather than user code.

### 9.5 The v1.2 repair (inert replay stack)

`recall` no longer erases its discriminator: the state gains a
transport-inert replay stack `RS` that only `recall` pushes
(`R_g(b′)`), no transport or classifier rule reads, and terminal
entry freezes into the garbage factor. The countermodel pairs now
map to targets differing in `RS` — locally injective, and both
mandated regressions pass (norm 1; structural Gram clean, `p★`
basis 458). The design argument for *inert rather than cleaned*:
a re-interrogated coin has been consumed non-injectively by its
selection (in `p★` both branches reduce to the same term
post-selection, so merging them would violate norm — mandatory
decoherence is correctness), and no program has been found where a
recalled instance's branches may legitimately merge later; the
coherent witnesses never recall at all. If such a program exists,
the frame needs reversible cleaning and the design reopens — that
question rides to the re-review. Fork (A)'s minimality program
applies to R-frames verbatim: each is charged conservatively, and
any later transparency lemma that proves one recoverable removes it
and enlarges the raw-interfering class.

### 9.6 The v1.2 re-review: transparency, not inertness (registered)

**Verdict: FAIL for v1.2 as the gate; the repair itself is locally
real** (independently reproduced: push injectivity fixes the p★
pairs; all seven rows verified). Two deliveries:

**The mandatory-decoherence claim is refuted.** With `E = λz. I z`
and `N = λz. z 1̂ 0̂`,

```text
q = λh.λt. h ((((h 0̂) E) N) 0̂)
```

selects between identity and NOT, so `(((b E) N) 0̂) = b` on the
boolean basis — an *injective* transport of the coin through
selection; the circuit is H;id;H and physics demands the branches
re-interfere at the outer gate (mass 1 on 0̂). The blanket premise
"a recalled coin has been consumed non-injectively" is false. The
correct criterion (review-supplied, adopted): **`R_g(b)` is
transparent at a reachable boundary iff `b` is a single-valued
function of the non-R core there** — frames are mandatory exactly
on predecessor fibres where the branch images overlap (p★), and
cleanable where the live core still carries the bit (q). Cleanup
belongs *inside the δ block* with provenance matching:

```text
|g, b, κ, R_i(b)·RS⟩ ↦ Σ_b′ Q_g[b′,b] |land, b′, J(κ), RS⟩
```

which requires dynamically instance-indexed frames — `(kind, bit)`
cannot name its owning invocation. Inert RS stands as the sound
conservative first point of the transparency program, not as final
semantics; permanent freezing is selective full logging.

**A more basic totality failure.** On the actual v1.2 table, `q`
never reaches the RS question: its structural graph (335 states)
has three stuck states — all with an `α` ticket at the log head
inside the selected function's plumbing (the uncovered
recall-under-deeper-γ case) — the live run leaks norm before t=82,
and both outer arrivals misclassify as slot 0. Verified bit-exactly
against our evolver. The α/γ transport layer does not yet carry a
recalled coin through distinct reversible selected functions.

**The next gate** (review-mandated): `q` joins the mandatory
regressions; repair α/γ transport to totality on q's graph;
correct same-time slot-0/slot-1 outer arrivals; instance-indexed
replay frames; a first proved transparency/pop rule; and `q`
finishing at mass 1 on `0̂` with no residual replay discriminator.
Also open, restated: general `ℤ[1/√2]` amplitudes in the verifier
(`(m,k)` cannot express `1 + 1/√2`), H/T cross-fibres, effect-free
conservativity, general readback.

## 10. v1.3 — replay, instance frames, the pop rule, and the time register

Scratch artifacts: `kernel.py` (v1.3 evolver), `kernel_v12.py`
(archived v1.2), `suite.py` (the ten-program battery), `q_diag.py`
(the diagnosis run). All scratchpad-only per the no-code gate.

### 10.1 The diagnosis: the ticket is single-use, replay is not

The full 81-step trajectory to `q`'s first stuck state, read against
the literal ground truth (`q` with the coin replaced by literal
`0̂`/`1̂` — both literal variants run total, 93/126 basis states,
zero stuck), gives a clean taxonomy of coin visits:

- **Visit 1** — fresh selection descent (`•2 •2 var (•4)`): the
  literal consumes the two λ-crossings and emits the selection
  variable's logged position. Virtualized by fire + VB + `vvar`
  (the ticket `α` *is* that logged position).
- **Visit 2** — ticket transit (`•2 bt2 •4 •4`): the restored lp
  re-enters and jumps through the coin. Virtualized by `recall`
  (v1.1), which consumes the ticket.
- **Visit 3** — a SECOND fresh selection descent, exactly the
  visit-1 episode again: the literal machine re-derives the
  selection from the static term. The virtual coin has no term to
  re-derive from, and the ticket is gone. v1.2 misclassified this
  as a fresh call, re-fired the coin (extra fire measured at t=70),
  and the mismatched ticket jammed in the selected function's
  plumbing — all three stuck states are downstream corpses of that
  one wrong classification.

The repair insight: after the first recall, the branch's selection
memory is exactly the replay frame in RS. **The replay stack is not
just an injectivity dump; it is the replay memory, read
nondestructively.**

### 10.2 The v1.3 rules

**Instance identity.** The dynamic instance of a gate invocation is
the logged position of the invoking occurrence — in λIAM lineage, a
logged position is precisely the machine name of a dynamic subterm
copy. At every gate-leaf entry the invoking occurrence's lp sits at
the log head (arg-entry is structurally forced), so the identity is
already in hand: `i := log[0]`. Tickets and frames carry it:
`α_{g,i}(b)`, `R_{g,i}(b)`.

**recall (v1.3).** Guard now requires the ticket's instance to
equal the current log-head lp — the review's "semantic ticket
ownership" obligation, discharged structurally. A same-gate
foreign-instance ticket is a typed error. Pushes `R_{g,i}(b)`.

**replay (new).** At a gate leaf, `↓`, with a leading bullet block
of length ≥ 3, no same-instance ticket on the tape, and RS head
`R_{g,i}(b′)` with `i` = the current log-head lp:

```text
(g, ↓, i·L, •³·T, R_{g,i}(b′)·RS) → (g, ↑, i·L, •^(b′+1)·α_{g,i}(b′)·T, R_{g,i}(b′)·RS)
```

Derived from the literal visit-3 episode: consume the two selection
bullets plus one gate-application compensation, emit a fresh
ticket; the frame is read, not popped — the fresh ticket may be
recalled again later, pushing another frame (measured: `q`'s
branches accumulate 2–3 same-bit frames). A leading block < 3 with
a same-instance frame (an under-applied re-seek) is a typed error,
out of v1.3 scope.

**call.** Fires only when neither a same-instance ticket nor a
same-instance frame is present. A different instance's frame at the
RS head does not block a fresh call (p★'s second invocation).
Frame reading is head-only; interleaved re-seeks of distinct
recalled instances are out of scope (typed error).

**pop (transparency cleanup).** `step` takes a per-program
certificate: a set of fire boundaries. At a certified boundary the
fire strips every frame whose bit equals the arrival slot, in the
same unitary step; a leftover mismatched frame falsifies the
certificate and becomes a typed error (`pop-err`), never a silent
reinterpretation. Soundness on the reachable span — injectivity of
fire-with-pop against every other source — is exactly what the
structural Gram verifies; the certificate's discovery is manual in
v1.3, its *verification* is the machine checker. This implements
§9.6's provenance-matched cleanup schema with the frame's bit as
the recovered function of the live core.

### 10.3 Results

The ten-program battery (`suite.py`), structural Gram
(amplitude-blind BFS, cancelled targets included, ticks truncated
at depth 2) plus dynamic evolution with per-step exact norm
assertion:

```text
program    basis  stuck  defects  dynamic                    residue frames
HH            82      0        0  halt0 mass 1               none
H–NOT′–H     104      0        0  halt0 mass 1               none
negative      83      0        0  Halt(I) 1/2+1/2            R(0)/R(1) inert
selector     106      0        0  1/2, 1/2                   R(0)/R(1) inert
lone h        53      0        0  1/2, 1/2                   none
p★           242      0        0  1/2, 1/2, support 4        R(0)/R(1) inert
3-coin       180      0        0  1/2, 1/2, support 4        R(0)/R(1) inert
q  (cert)    218      0        0  1/2, 1/2, support 4        NONE — popped
q′ (cert)    246      0        0  1/2, 1/2, support 4        NONE — popped
q2 (cert)    115      0        0  1/2, 1/2, support 4        NONE — popped
```

- **Totality restored**: `q` runs total (0 stuck of 256 basis
  states uncertified, 218 certified); slot-0/slot-1 outer arrivals
  are correct per branch — the injective transport works.
- **v1.2 basis drift explained and owned**: negative 103→83,
  selector 173→106, p★ 458→242. The v1.2 counts included
  wrong-semantics double-call subgraphs (visit-3 re-seeks that
  fresh-called and re-fired). Measured directly on p★: v1.2 has
  five dynamic fire events (t = 18, 49, 51, 63, 65), v1.3 has
  three (18, 49, 51); v1.2's reported support 8 was
  transport-bug-inflated — the correct support is 4 with marginals
  unchanged. HH / H–NOT′–H / lone / 3-coin are bit-identical to
  v1.2 (no re-seek anywhere in their graphs).
- **The pop is sound and does real work**: certified `q`-family
  runs halt with EMPTY replay stacks — garbage-free halting, the
  bounded-garbage factorization the architecture requires — and
  the Gram stays zero-defect with the pop enabled. p★'s frames
  remain inert (mandatory, per the transparency criterion).
- **Negative control**: certifying p★'s boundaries (unsound — its
  frames are mandatory) yields `err` mass 1/2 via `pop-err`, with
  zero Gram defects and no norm loss: an unsound certificate is
  caught as a typed error, not silent unitarity damage.

### 10.4 The time register (new finding)

With frames cleaned, `q`'s branches still do not interfere: they
arrive at the outer boundary at different global steps, and the
tick register makes any offset permanent decoherence. Arrival
telemetry (branch-0 vs branch-1):

```text
q   (Codex's, E = λz. I z)         t = 84  vs 119   offset 35
q′  (wire-balanced, E′ = λz. z 0̂ 1̂) t = 112 vs 119   offset 7
q2  (minimal, h ((h 0̂) 0̂ 1̂))       t = 48  vs 51    offset 3
```

Wire-balancing (E′ position-isomorphic to N = λz. z 1̂ 0̂,
differing only at two Var leaves — the NOT′ index-swap trick lifted
one level) removes the interior asymmetry (35 → 7); the residue is
the slot routing itself.

**Mechanism — pattern vs step.** A slot bullet that survives to the
boundary as part of the arrival pattern (`•·l·μ` vs `l·μ`) costs no
time — this is why HH and H–NOT′–H arrive branch-synchronous and
cancel exactly. A slot bullet consumed by a `•3` crossing an
f-node of the selection spine is a step. Geometric selection
step-encodes; the transported bit itself skews the clock.

**Odd-offset invariance (measured).** Every program-level padding
tried shifts branch-relative time by an EVEN amount: I-wraps +8
per wrap (k = 0..4 measured), NOT′-wrap +16, η-expansion +16,
pre-decided literal-selection pads +12/+16; a pad inside the
unselected function shifts nothing (traversal-sensitivity
control). Reachable offsets for q′ sit in −7 + 4ℤ — never 0. Token
round trips cost even; the odd base offset traces to the odd
teleport savings of the `0̂` answer episode vs `1̂` (var jumps
distance 2 in one step). Conjecture, to be adjudicated: the
branch-relative offset of any step-encoded selection is odd —
mass-1 interference is unreachable by program padding under this
timing.

**Consequences.** (1) A machine-level uniform retiming cannot fix
this: how many slot bullets are consumed as steps is contextual
(depends where the ticket surfaces), so no per-rule charge
equalizes all programs — and the classical substrate's timing is
pinned. (2) Time-balance is therefore a *compiler* obligation in
this machine class, and if odd-offset invariance holds, coherent
compilation must route data flow through pattern-encoded
(index/wire) transport only — which the H–NOT′–H witness already
inhabits — treating geometric selection as a decohering (classical)
primitive. (3) Review-gate item 6 splits: "no residual replay
discriminator" HOLDS (the pop delivers it); "mass 1 on 0̂" is
blocked by an independent, now-measured channel that the
transparency criterion must incorporate — the branch bit is
single-valued on the non-R core *per time slice*, and the time
slice itself carries the bit. The transparency theorem needs time
in the core.

### 10.5 Scope and standing obligations

Head-only frame reading (interleaved multi-instance re-seeks →
typed error, no reachable instance in the battery); under-applied
re-seeks (leading block < 3) → typed error; certificate discovery
manual (verification mechanical); γ/μ marks remain kind-only
(stack-paired by nesting discipline — Gram-policed per program;
instance-indexing them is mechanical if a countermodel appears).
Restated from §9: general ℤ[1/√2] amplitudes in the verifier, H/T
cross-fibres, effect-free conservativity, general readback.

### 10.6 The v1.3 review verdict (registered)

Adversarial round (thread `qalc-token-machine`, fresh independent
run, 2026-08-09): **FAIL as the formalization gate; PASS for the
replay repair.** Every v1.3 number was independently reproduced —
all basis counts, marginals, supports, the p★ fire events
(confirming t = 63/65 were spurious and support 8 was
bug-inflated), the q-family arrival telemetry, and the instance
invariant (every downward gate-leaf entry in every graph has an
ordinary lp at the log head; the TOP fallback never fires).

**Parity: no odd pad found, and a theorem route supplied.** The
review searched 156 closed identity-context pad variants (up to
three nested applications of `I M`, `(λx.M) I`, `0̂ M I`, `1̂ I M`,
`λz.M z`) around q′'s branch-0 function plus a branch-local
coherent HH pad (`λz. h (h (E′ z))`, +48): every shift even, every
offset odd, no stuck states. Composed geometric selections stay
odd: id∘id Δ=9, NOT∘NOT Δ=1, id∘NOT Δ=7, NOT∘id Δ=1 — odd
selections do not cancel. The proposed proof shape is a
**port-polarity coloring**: give ports a bipartite polarity; each
ordinary transition crosses one interaction edge and flips
polarity; a closed pad entering and exiting through one interface
has equal endpoint polarity, hence even cost; a geometric boolean
route's two computational slots end at opposite polarity (the slot
bullet crossed a real f-node via `•3`); pattern encoding is
exceptional because the δ classifier consumes its slot bullet
without a machine transition, quotienting the one-step difference —
exactly why HH/H–NOT′–H synchronize. Status: odd-offset invariance
HOLDS empirically; the even-pad lemma is a promising theorem; "the
coherent fragment is exactly the pattern-encoded class" is NOT YET
PROVED — it needs the row-by-row coloring over the full extended
table, the compressed `replay` rule checked directly rather than
via its literal expansion.

**Blocker 1 — the pop is not the frozen clean δ fibre.** At a
certified boundary the two logical inputs are
`|0, R_i(0)·…, κ₀⟩` and `|1, R_i(1)·…, κ₁⟩`: the source spectator
depends on `b`, so this is not `U|q,b,κ⟩ = Σ Q[b′,b]|b′,J(κ)⟩`
with a common κ. The correct object is an **encoded fibre**: an
isometry `E_m|b,κ⟩ = |b, F_m(b,κ), κ⟩` with certified reachable
range and `U·E_m|b,κ⟩ = Σ_b′ Q[b′,b]|b′, J_m(κ)⟩`. Either the
architecture's clean-fibre contract is amended to admit encoded
fibres, or replay frames become a formally decoded logical
coordinate outside κ.

**Blocker 2 — Gram/norm is not certificate soundness.** Our own
negative control is the countermodel: the wrong p★ certificate
passes the structural Gram and norm perfectly while sending mass
1/2 to `pop-err`. Certificate validity must separately require:
zero structurally reachable `pop-err`; the complete RS stack being
the certified function `F_m(b,κ)`; no framed/frameless predecessor
collision after erasure; and preservation of the intended
non-error semantics. Certificates must also become **canonical**:
a frozen function of the immutable program sector (a proved
stack-shape predicate, not an externally supplied fire-position
set) — otherwise the same program denotes different dynamics under
different certificates and `U` is not well-defined.

**Blocker 3 — buried same-instance frames (FIXED in-session).**
The registered scope text claimed interleaved re-seeks raise a
typed error; the code actually fell through to fresh `call` when a
same-instance frame sat under another instance's frame — the v1.2
double-fire class waiting to recur. Corrected immediately: a
buried same-instance frame is now the typed error `buried-frame`,
and the silent TOP instance fallback is removed (`no-instance`
typed error). The full battery is bit-identical after both
corrections (neither state is reachable in it), and the review's
copy-discrimination probe `(λx. x x) (h 0̂)` — two dynamic
instances of one argument occurrence, distinguished only by log
slices — joins the battery (`dup`: 90 basis states, total,
zero-defect, sectors halt0 1/4 / halt1 1/4 / haltI 1/2).

**Ratified**: instance = logged position is "exactly the λIAM
structure intended to name exponential copies"; owed as proofs:
every valid gate-leaf entry has an lp at the log head, and equal
lps name the same dynamic copy.

**The v1.4 gate**: (1) formalize the port-polarity coloring and
check every rule row; (2) the encoded-fibre theorem or architecture
amendment; (3) certificate validity = zero reachable `pop-err` plus
the RS-function property, not Gram alone; (4) certificates as
proved stack-shape predicates; (5) the canonical
program→certificate relation; (6) buried-frame handling proved or
ruled out (typed error now, resolution owed); (7) the two
logged-position invariants; (8) exact verification beyond
single-monomial `(m,k)` amplitudes before general h-only claims.

## 11. v1.4 — the polarity theorem, canonical certificates, and the conservation conjecture

Scratch artifacts: `polarity.py` (the coloring checker), `certify.py`
(canonical certificate discovery + validity), `kernel.py`/`suite.py`
upgraded to exact `ℚ[√2]` amplitudes. All scratchpad-only.

### 11.1 The coloring, with its closed form (gate item 1)

Define, on Run states of the full v1.3 table:

```text
φ(s) = depth(pos) + [dir = ↑] + Σ w(tape) + Σ w(log) + Σ w(RS) + k_VB   (mod 2)

w(•) = w(γ) = w(μ) = w(α) = w(ρ) = w(R-frame) = 0
w(A) = 1
w(l) for l = (occ, slice) = (depth(occ) − depth(binder)) + Σ w(slice)
```

— a logged position carries its own binder–occurrence tree distance
plus, recursively, the weight of everything captured in its slice.

**Theorem (uniform flip).** Every rule of the table with Run source
and Run target flips φ — the eight classical rules, `call`,
`recall`, `replay`, `anshead`, `vb2`, `vvar`, `bt1g` — EXCEPT
`fire`, whose defect is exactly `1 − w(l)` where `l` is the
which-path logged position erased at the boundary. Terminal entries
chain linearly off unique predecessors (complete residues) and flip
by assignment.

*Proof* is per-row algebra, two lines each; the load-bearing case is
`var`/`bt2`, where the teleport's distance is absorbed by the lp
carrying that distance as weight (`Δφ = w(lp) − Σ slice − d + 1 =
1`), and the constraint propagation fixes the remaining weights
(`call` forces `w(γ)+w(μ) ≡ 0`; `recall`/`replay` force
`w(R) ≡ w(α) ≡ 0`; `anshead`+`vvar` force `w(γ)+w(A) ≡ 1`).
Mechanically verified: every Run→Run edge of all eleven reachable
graphs — 1,518 edges — has the predicted Δφ, zero violations, and
every fire edge's measured defect equals `1 − w(l)`.

### 11.2 The branch-offset theorem (the parity result)

For two branches created at one fire and meeting at a common later
boundary with no interior fires:

```text
len₀ − len₁ ≡ w(l₀) − w(l₁)   (mod 2)
```

where `l_b` is branch b's erased arrival lp. Verified: q/q′/q2
offsets 35/7/3, all with `w(l₀)=0, w(l₁)=1` — parity 1 ✓.

**Corollary (even pads — Codex's search, now a theorem).** A
gate-free pad adds no fires and leaves both endpoints' φ unchanged,
so it shifts branch-relative time by an even amount. The measured
+8/+12/+16 menu and the review's 156-variant all-even search are
instances; an odd gate-free pad that preserves the arrival lps
cannot exist.

**Refined coherence condition.** Synchrony requires *equal* erased
weights, not zero: H–NOT′–H's fires show `w = 1` defects on BOTH
branches (its arrival lps are NOT′'s x/y occurrences, distances
3 and 3 — the index swap moves occurrence depth in step with binder
depth). The pattern class is the equal-weight class.

### 11.3 The weight-conservation conjecture (what remains of "the coherent fragment")

Answer-term variants that try to re-weight a literal boolean's
readback all fail — measured: `q2` (0̂,1̂) offset 3; (λλ.I x, 1̂)
offset 1; (0̂, λλ.I y) offset 7; both wrapped, offset 3 — every
variant keeps `(w₀, w₁) = (0, 1)` up to swap. The mechanism is the
slice: an `a`-step in the readback path adds `1 + w(captured lp)`
to the surfacing weight, and in gate-free plumbing the captured
lp's weight telescopes so that `w ≡ exit slot` is conserved.
H–NOT′–H evades conservation because its slice captures the coin's
*virtual ticket* (`w(α) = 0` by fiat) — gate-mediated routing is
the parity-free transport.

**Conjecture (conservation).** Along gate-free readback of a
boolean value, the surfacing lp's weight is congruent to the exit
slot. Hence geometric selection of *classical data* always has odd
offset (decoheres intrinsically), and the coherent fragment is
exactly gate-mediated (pattern) routing. The proof target is a
telescoping lemma over the `a`-step capture algebra; the q3 variant
table is its evidence base.

### 11.4 Canonical certificates (gate items 3, 4, 5)

`discover(term)`: iterate to fixpoint — BFS under the current
certificate; admit a fire boundary iff over its reachable arrivals
(a) every frame bit equals the arrival slot, (b) RS is
single-valued per fire-target fibre `(path, log, slot, l, T)`, and
(c) some arrival carries a frame. Deterministic and terminating:
the certificate is a **frozen function of the program sector**, so
U is well-defined per program (item 5). The implied stack-shape
predicate — every frame bit equals the arrival slot — is checked,
not assumed (item 4).

`validate(term, cert)` — the item-3 criterion, strictly beyond
Gram: zero structurally reachable `pop-err`, plus the RS-function
property on the certified graph, plus Gram totality/orthogonality.

Results: discovery reproduces the hand certificates on **all
eleven programs** (q-family certified at exactly the outer
boundary; HH/HNH/negative/selector/lone/p★/3-coin/dup refused —
their frames, where present, never transit a later fire and stay
inert terminal garbage). The negative control now FAILS validation
properly: p★ under the wrong certificate reports
`pop_err_reachable = 1` and `rs_function = False` while Gram shows
zero defects — the criterion separates exactly where the review
demanded.

### 11.5 Probes and fences (gate items 6, 7)

`h` applied to a gate (`h t`, `h h`): total, resolves as a typed
species error — the probe meets a non-boolean. Nested coin-in-coin
(`h ((h 0̂) ((h 0̂) 0̂ 1̂) 1̂)`): 263 states, total, Gram-clean,
correct marginals, and correctly refused a certificate.
`buried-frame` and `no-instance` remain **unreached in every
program constructed to date**; both corners are typed errors, not
silent behavior. The general proofs (lp-at-log-head; equal lps =
same copy; buried frames unreachable or handled) remain owed.

### 11.6 Exact amplitudes (gate item 8)

The evolver now carries amplitudes as exact pairs
`(p, q) ∈ ℚ[√2]`, `p + q√2` — no monomial restriction; `1 + 1/√2`
is representable. Norm assertions compare against `(1, 0)` exactly.
The whole battery, the polarity check, and certificate discovery
are bit-identical under the new ring.

### 11.7 The encoded-fibre statement (gate item 2 — RATIFIED-WITH-EDITS, applied)

Proposed amendment to the architecture's clean-δ-fibre guardrail:

> A δ event may be realized on an **encoded domain**. Let
> `E_m|b,κ⟩ = |b, G_m(b,κ), F_m(b,κ), κ⟩` adjoin the which-path
> arrival position `l = G_m(b,κ)` and the replay frames
> `RS = F_m(b,κ)`, where G and F are proved single-valued functions
> of `(b, κ)` on the reachable span at boundary m — the certificate
> conditions. Then the machine's fire-with-pop satisfies
> `U·E_m|b,κ⟩ = Σ_b′ Q[b′,b] |b′, J_m(κ)⟩`: the clean-fibre law
> holds after decoding, with landings and cross-fibre orthogonality
> unchanged. `E_m` is an isometry because its adjoined coordinates
> are functions of its arguments; certification is canonical by
> §11.4.

Note this covers not only the v1.3 frames but the arrival lp
erasure the fire has performed since v1 — the original design was
already an encoded fibre in this sense.

**Ratified with edits** (thread `qalc-architecture`, 2026-08-09) and
applied to architecture §7 in the reviewer's strengthened language.
The edits beyond the draft: subsume the arrival-lp erasure (v1 is
the `F_a`-trivial case) rather than split the law; a seven-item
per-boundary exhibition obligation (canonical `(b,G,F,κ)`
decomposition, coverage, unique decoding, single-valued `G`/`F` on
the certified reachable *basis domain* extended linearly, the
complete boolean pairing with the counterfactual column, `J_a`
injectivity, the full range matrix); source-fibre disjointness
`E_a†E_a′ = 0` in addition to landing orthogonality; "coherent
decoding, not deletion" — the inverse reconstructs the coordinates
through `E_a` after `Q_q†`, no copy reaches garbage, and the clause
is explicitly not a license to erase deterministic histories around
non-injective maps; and a computability discipline — certification
must be total, terminating, sound over a proved over-approximation
of arrivals (exact reachability is not decidable in general), free
to reject valid certificates, with rejection selecting the
conservative nontransparent transition so `U` is never undefined,
and the certificate static metadata fixed at initialization. The
scratch `discover`/`validate` satisfy the discipline on finite
kernel graphs (BFS is exact there, a valid over-approximation);
the strengthened validation checklist — `G`-function property,
encoded-range coverage, unique decoder, boolean pairing, source
disjointness, landing/non-δ disjointness — is registered as the
checker's growth path.

### 11.8 The v1.4 scorecard

| Gate item | Status |
|---|---|
| 1 coloring | **discharged** (closed form + per-row proof + 1,518-edge mechanical check) — adversarial review owed |
| 2 encoded fibre | **discharged** — ratified-with-edits and applied to architecture §7; strengthened validation checklist registered |
| 3 cert validity beyond Gram | **discharged** (`validate`: pop-err reachability + RS-function; negative control now caught) |
| 4 stack-shape predicate | **discharged** (checked predicate: frame bit = arrival slot) |
| 5 canonical program→cert | **discharged** (`discover` fixpoint; HAND==AUTO ×11) |
| 6 buried frames | typed fence + probes (unreached); general resolution owed |
| 7 lp invariants | probes + battery evidence; general proofs owed |
| 8 exact amplitudes | **discharged** (`ℚ[√2]` pairs; battery bit-identical) |

New standing object: the **conservation conjecture** (§11.3) — the
sharpened form of "the coherent fragment is the pattern class."

## 12. The v1.4 review verdict and the v1.5 encoded fire (registered)

The coloring review (thread `qalc-token-machine`, independent rerun,
2026-08-09) returned **FAIL for the v1.4 transition table** with a
fatal countermodel, while grading the coloring theorem itself
PASS-WITH-CORRECTIONS (all 1,518 edges independently verified,
including the compressed `replay` row directly).

### 12.1 The C-collapse countermodel

`C ≡ λb.λx.λy. b y y` maps both booleans to `1̂` non-injectively.
On `p ≡ h (C (h 0̂))`, two reachable outer arrivals share slot 1
with **different** which-path lps (`w = 1` and `0`); the v1-lineage
fire erased the lp, mapping orthogonal sources onto identical
columns — a reachable column collision (105-state graph, 1
non-orthogonal pair; the dynamic run hid it only because the
arrivals are one step apart). This was a defect of the fire since
v1, outside the battery until the encoded-fibre lens found it.

### 12.2 The v1.5 fire: conservative decode by default, certified erasure

The fire now implements the ratified encoded-fibre amendment
directly:

- **Conservative (default)**: retain the decoded spectator `D(l)`
  on a new inert spectator stack `ks`: a ticket whose bit matches
  the slot decodes to `(gate, instance)` — the bit is redundant —
  so HH's branches land at equal spectators and interfere free of
  any certificate; anything else (real lp, mismatched ticket) is
  retained whole, so same-slot arrivals with distinct which-path
  data stay orthogonal. `w(D(l)) = w(l)` for retained lps, 0 for
  decoded tickets — the conservative fire **flips φ uniformly**;
  the parity defect now lives only at certified erasure.
- **Certified**: erase `(l, RS)` entirely — sound iff the corrected
  fibre condition holds: within the boundary, the RETAINED key
  `(slot, T, log)` determines the ENTIRE erased tuple `(l, RS)`
  (the review's correction: the old condition keyed by `l`, which
  the fire erases — not a sound local theorem).

Results (twelve programs — `Ccoll` joins the battery): all total,
zero Gram defects, zero polarity violations, canonical certificates
reproduce 12/12.

```text
HH        82   mass 1      free coherence (ticket pattern; no cert needed)
HNH      104   mass 1      EARNED coherence: its outer boundary is
                           certified (slot determines its real lps,
                           w = 1 both) — the coherence bar is a
                           certified-fibre phenomenon
Ccoll    143   1/2, 1/2    the countermodel: certification refused at
                           the collision boundary (same slot, distinct
                           l); conservative fire keeps the sources
                           orthogonal — Gram CLEAN, correct physics
q-family                   unchanged (certified; time-decohered by the
                           odd offset)
p★, 3coin, negative, selector, lone, dup   unchanged
```

The theoretical upshot sharpens the coherence economy again:
**pattern-ticket coherence is free; coherence through real plumbing
is earned by exhibiting the encoded fibre** — the certificate is
not an optimization, it is what makes HNH's interference lawful.

### 12.3 Corrections to §11 claims (review-mandated)

- **Weight uniqueness is gauge-only.** `w_c(γ_g)=w_c(μ_g)=c`,
  `w_c(A_g)=1+c` passes all edges for either `c` (mechanically
  confirmed by the reviewer); `ρ` is unconstrained by Run→Run rows.
  The coloring is unique after pinning conventions
  (`w(A)=1, w(ρ)=0`).
- **General parity law with interior fires**:
  `n₀ − n₁ ≡ w(l₀) − w(l₁) + Σ_{F∈branch₀} w(l_F) − Σ_{F∈branch₁}
  w(l_F)` — interior gates supply parity corrections, so the
  even-pad corollary is limited to fire-free plumbing, and gate
  mediation is confirmed as the parity-escape route.
- **Conservation conjecture refined**: the literal gate-free form is
  FALSE (the countermodel's surfacing lp has `(slot, w) = (1, 0)` —
  its slice contains an α). Viable statement: *along a closed,
  fire-free readback whose surfacing lp has entirely ordinary,
  mark-free ancestry, its weight equals its canonical boolean exit
  slot.* Reviewer's exhaustive enumeration: all 10,180 closed pure
  λ-terms of syntax size ≤ 10; 708 ordinary mark-free arrivals;
  **zero** weight/slot mismatches. Proof target: the telescoping
  enter/return pairing, with the selected variable of the final
  Church boolean as the only unpaired segment (distance 2 vs 1).
  And the classification claim weakens to necessity: coherent
  routing ⊆ routing with virtual ancestry or interior-fire charge —
  gate mediation is necessary, not sufficient (`Ccoll` is
  gate-mediated and must stay orthogonal).
- **Terminal chains**: to be checked mechanically (2-coloring the
  terminal edges), not asserted from unique predecessors.
- **`discover` totality**: the BFS implementation is not the final
  canonical mechanism — raw reachability may diverge on untyped
  programs, the cap raises instead of returning conservatively, and
  the fixpoint bound is unproved. The final mechanism is a
  terminating conservative static analysis defaulting to no-pop
  (the amendment's computability discipline); the BFS version is
  exact and valid on finite kernel graphs only. Consequence,
  registered: all-program Ω objects for qALC cannot be defined
  through semantic-BFS certificates.

### 12.4 The standing gate (v1.5 → PASS)

Fixed this round: the encoded fire (conservative + certified), the
corrected fibre condition, `Ccoll` as a mandatory regression,
canonical certificates refrozen (the discovery output is machine
metadata). Still owed: the mark-free-ancestry conservation lemma;
the mechanical terminal-chain check; the gauge-pinned uniqueness
statement; the terminating conservative certificate analysis; the
lp invariants; H/T cross-fibres; the readback controller.
