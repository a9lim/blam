# qALC three-program kernel — v1

**Status: kernel v1, machine-verified, pre-review.** This is the
formalization gate demanded by `token.md` §4: the complete transition
table for a boolean-output qALC machine, step-indexed traces of the
three witness programs, and a column-Gram enumeration over the
reachable bases. All obligations pass. Verification was mechanized in
a scratch superposition evolver (exact `ℤ[1/√2]` arithmetic, norm
asserted equal to 1 at every global step; the evolver stays out of the
tree per the no-code gate — reviewers should reproduce independently,
which is stronger verification than sharing it). Scope limits are in
§7; nothing here claims more than the kernel.

```text
h (h 0̂)             mass 1 on 0̂, single terminal configuration
h (NOT′ (h 0̂))      mass 1 on 0̂, single terminal configuration
(λb. b I I) (h 0̂)   two error configurations, 1/2 + 1/2, orthogonal
                     in residue AND in entry time — never merge
column-Gram          orthonormal on every reachable basis tested
```

Two probes beyond the gate, both physics-correct: the selector
`λb. b 1̂ 0̂` interposed in H–NOT–H **decoheres** (1/2, 1/2 mixed,
branches one step desynchronized) — the first mechanical measurement
of the coherence-is-earned economy; and lone `h 0̂` gives 1/2, 1/2 at
equal ticks.

## 1. Scope

The kernel machine answers a single **root boolean question** about
the invocation `p h t`: initial state
`(root, ↓, log ε, tape •·•·ρ)`, halting sectors `Halt(0̂)`/`Halt(1̂)`
for boolean outputs and an absorbing error sector for everything
else (non-boolean normal forms land there — legitimate for the
kernel, whose three programs need only this; full normal-form
readback is the next design stage, not smuggled in here). The ring
is `ℤ[1/√2]` — `h` only; `t` is the same table with
`Q_t = diag(1, ω)` over `ℤ[ω]/√2^d` and its own tags, deliberately
left unexercised. Classical substrate: the eight λIAM rules exactly
as pinned in `token.md` §2.

## 2. State space

```text
Run   ::= (pos, d, log, tape)          — λIAM shape, plus VB phase
        | (leaf, VB(g, b′, k), log, tape)   k ∈ {0,1,2}
Done  ::= RunDone/Halt(b, residue, tick) | Error(residue, tick)
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

root     (root, ↑, ε, P_b·ρ)  → RunDone(b̂) → Halt(b̂, res, 0) → tick
         other ρ arrivals     → Error (non-boolean output)
errors   VB with a non-• non-classifier tape top; ↓-stuck on μ/ρ
         (too many head lambdas); neutral constants under μ/ρ;
         recall arity mismatch — all → Error, complete residue.
ticks    Halt/Error(…, k) → (…, k+1)
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

| program | sectors | support | terminal at | tick-aligned |
|---|---|---|---|---|
| `h (h 0̂)` | `0̂`: 1 | 1 | t=48 | yes |
| `h (NOT′ (h 0̂))` | `0̂`: 1 | 1 | t=63 | yes |
| `(λb. b I I)(h 0̂)` | err: 1 | 2 | t=59 | no (Δ=2) |
| `h (selNOT (h 0̂))` | `0̂`: 1/2, `1̂`: 1/2 | 4 | t=78 | no (Δ=1) |
| `h 0̂` | `0̂`: 1/2, `1̂`: 1/2 | 2 | t=30 | yes |

HH's `1̂` amplitudes cancel *at the outer fire step* (t=33): the two
branches arrive at the boundary as a clean fibre — equal position,
log, tape-below-slot, and time — so everything after t=33 is a
single classical path. H–NOT–H does the same through NOT′'s real
selection legs (residue popped, lengths equal — the L2 obligation
confirmed for NOT′). The negative witness's branches keep distinct
residues and enter the error sector two steps apart — orthogonal two
ways over, as unitarity demands, and its four-state predecessor was
the run that caught a real table bug (§6).

**Column-Gram enumeration**: for each program, the union of all
basis states reachable during evolution (ticks truncated at depth 2;
the tick shift is manifestly isometric beyond it), every column
checked unit-norm and every distinct pair orthogonal:

| program | reachable basis | non-unit | non-orthogonal |
|---|---|---|---|
| HH | 61 | 0 | 0 |
| H–NOT–H | 83 | 0 | 0 |
| negative | 99 | 0 | 0 |
| selector | 131 | 0 | 0 |
| lone H | 49 | 0 | 0 |

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

## 7. Honest scope and obligations discharged/remaining

Discharged by the kernel: HH and H–NOT–H step-indexed traces; L2
for `NOT′`; the negative witness; orthonormal columns on the tested
reachable bases; totality on every reachable state (the evolver
faults on stuck states; none occurred).

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
t= 48 rootdone → RunDone(0̂) → Halt(0̂, residue (ah0·R), 0) → ticks.
      Mass 1 on 0̂, amplitude 2/√2² = 1 exactly.
```

The H–NOT–H and negative-witness traces (63 and 59 steps) follow the
same notation and are mechanically reproducible from the table; their
checkpoints (fires, anshead/vvar windows, recall events in the
negative witness, terminal entries) are as reported in §5.
