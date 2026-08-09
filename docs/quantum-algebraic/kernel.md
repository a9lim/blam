# qALC three-program kernel — v1

**Status: kernel v1.1 — reviewed; `recall` CONFIRMED-BROKEN, the
rest of the machine holds.** The adversarial review (thread
`qalc-token-machine`) independently reimplemented §3 from this
document alone and reproduced all five results exactly — the
classical substrate, gate fibres, HH cancellation, H–NOT′–H balance
(no padding), and the negative witness all HOLD — then broke the
virtual-boolean replay protocol with a reachable countermodel: in
`p★ = λh.λt. ((((h 0̂) h) h) 0̂)` (a coin selecting between two gate
occurrences, then a fresh application of the selected gate), two
valid nested re-entry states with identical position, log, and
pending differ only in the `b′` that `recall` erases — both map to
one target, norm 1 → 3/2 at global step 89, verified against both
implementations (§9). **The three-program gate is therefore not
passed**: the traces stand as finite results, but the replay
protocol is the kernel's unresolved central mechanism. Do not build
on §3's `recall` rule; the repair is the docket head. The
conformance review's earlier fixes (output alphabet {`0̂`,`1̂`,`I`},
separate `RunDone`/`Halt` steps, structural Gram) are incorporated
and stand.

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
Run     ::= (pos, d, log, tape)        — λIAM shape, plus VB phase
          | (leaf, VB(g, b′, k), log, tape)   k ∈ {0,1,2}
RunDone ::= RunDone(nf, residue)            nf ∈ {0̂, 1̂, I, err}
Halt    ::= Halt(nf, residue, tick) | Error(residue, tick)
residue = the COMPLETE pre-entry state (pos, d, log, tape, VB phase)

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

recall   (g, ↓, L, •^(b′+1)·α_g(b′)·T) → (g, ↑, L, •·•·•·T)
         consistent replay of a fired instance off its ticket — no
         fire. Mirrors the literal boolean's bt2-replay: consume the
         slot-dependent re-descent bullets and the ticket, emit the
         two virtual lambda crossings plus the gate-application
         compensation. Bullet/ticket arity mismatch → Error.

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

| program | sectors | support | Halt at | tick-aligned |
|---|---|---|---|---|
| `h (h 0̂)` | `0̂`: 1 | 1 | t=49 | yes |
| `h (NOT′ (h 0̂))` | `0̂`: 1 | 1 | t=64 | yes |
| `(λb. b I I)(h 0̂)` | `I`: 1 | 2 | t=58, 60 | no (Δ=2) |
| `h (selNOT (h 0̂))` | `0̂`: 1/2, `1̂`: 1/2 | 4 | t=78, 79 | no (Δ=1) |
| `h 0̂` | `0̂`: 1/2, `1̂`: 1/2 | 2 | t=31 | yes |

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
residues and enter the error sector two steps apart — orthogonal two
ways over, as unitarity demands, and its four-state predecessor was
the run that caught a real table bug (§6).

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
| selector | 135 | 0 | 0 | 0 |
| lone H | 53 | 0 | 0 | 0 |

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
The erasures at `fire` and `recall` are, per the conformance
review's framing, *proved injective on the enumerated kernel
domains by the Gram check itself*; their general schemas remain
conditional on the re-entry and arrival-determinacy lemmas — and
the input boolean `b` must never be conservatively charged as
residue while those are open (retaining it would destroy the clean
fibre; the design keeps `b` as the consumed quantum coordinate).

Remaining, inherited or newly exposed:

1. **Re-entry determinacy (new, replaces C1).** `recall` absorbs
   `α_g(b′)`; injectivity needs `b′` recoverable from the retained
   state. It holds on the kernel programs (the pending question
   carries branch-distinct positions) and needs a general proof —
   the sharpest open lemma, alongside general L1.
2. **Source-pattern disjointness is by rule priority in the scratch
   model**; the formal table must make it structural (the Gram check
   covers targets, not source overlap).
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
