# qALC kernel — current register

**Architecture status:** Gates 1 and 2 are closed. The proof records are
`../../qalc/GATE1.md` and `../../qalc/GATE2.md`; the Rust reference pillar is
implemented in `../../src/qalc/`.
The native-CNOT rows extend this kernel inside the proved Gate-2 compiler
sector rather than changing the accepted Gate-1 kernel.

**Kernel status: v1.44.** This register is the contract for the transition
table of `../../qalc/kernel.py`, the authoritative executable reference;
`../../src/qalc/kernel.rs` ports it rule for rule and
`../../qalc/QalcConcreteKernel.lean` mirrors it. The kernel is an exact H/T
lambda-IAM superposition evolver with instance-keyed, epoch-bearing replay
records, certificate-controlled erasure, and typed guards. Admission
(`machine_coverage`, §5) checks complete finite nonterminal carrier closure
and a Gram-independent reachable-recall certificate. The concrete Lean mirror
rechecks every exported row and proves source-projection and actual-target RRI
on all 17 canonical typed sectors, including certified-H reconvergence. The
`v1.42` label in comments of `RecallEpoch.lean` and `QalcConcreteKernel.lean`
names the predecessor table (idempotent recall, no T row); it does not
describe this machine.

The accepted Gate-1 layer composes the kernel with full-normal-form zipper
readback, exact predecessor fibres, typed halt/error sectors, a conservative
source-history fallback, and the semantic objects `U`, `μ_p`, `ρ_p`, `M`, and
`Ω_qALC`.

This file states the current machine and verification boundary. The
executable reference and proofs live in `../../qalc/`; `token.md` is the
active design.

## 1. Scope

The kernel machine answers a single **root output question** about
the invocation `p h t`: initial state
`(root, ↓, log ε, tape •·•·ρ)`, output alphabet **{`0̂`, `1̂`, `I`}**
with typed halting sectors for each, an absorbing error sector for
guard and species errors, and root arrivals outside the alphabet also
entering the error sector — a kernel-scope limitation flagged as
such: the architecture permits arbitrary normal-form outputs, and
recognizing them is the readback controller's job, not smuggled in
here. `I` is in the alphabet because the negative witness's output
is a *valid closed normal form*. Terminal entry is the normative
two-step `RunDone(nf, res) → Halt(nf, res, 0) → tick`, each a
separate `U` application. Classical substrate: the eight λIAM rules
exactly as pinned in `token.md` §2.

**Scalars.** Every row is `(sign, dk, rule, target)`; its coefficient is
`sign · 2^(−dk/2)`, multiplied by `ω = e^{iπ/4}` on `fire-t1`. `fire-h` rows
have `dk = 1`; every other row has `dk = 0`. `dw_machine.py` (and the Rust
`Amp`) evaluates the coefficients exactly in `ℤ[ω]/√2^k`. `kernel.evolve` and
the §5 validation instruments use the real `ℚ[√2]` evaluator, which omits the
`ω` factor and is therefore exact only on sectors in which no T row fires —
the reason the accepted claim of §9 is h-only.

## 2. State space

```text
Run     ::= (pos, d, log, tape, VB, RS, KS)
VB      ::= ∅ | (g, b′, k)   k ∈ {0,1,2} — virtual-boolean phase
RS      ::= canonically sorted set of replay frames R_g(i, b′, e)
            — at most one per (gate, instance) (W2); transport-inert;
            recall replaces the key's frame, replay reads it
            wherever it sits
KS      ::= stack of storage heads — inert history; EVERY fire
            appends EXACTLY ONE, so incoming KS is the tail after
            stripping one head:
            ('K', g, i)      one decoded ticket (fire's α-decode)
            ('KD', {keys})   certified erasure's tagged bundle —
                             emitted on EVERY certified fire,
                             empty if no key died bare; keys
                             emitted in canonical order
            ('K', l)         a retained-whole which-path spectator
            ('KA', g, i)     suppressed decode's history head —
                             NOT a dead record: the key's
                             answerable representation survives
                             in the frame/burial, so it is
                             excluded from ks_dead_keys and
                             ks_bitfree_keys (refire, key-alias,
                             W8, W4-storage stay blind)
RunDone ::= RunDone(nf, residue)            nf ∈ {0̂, 1̂, I, err}
Halt    ::= Halt(nf, residue, tick)
residue = the frozen pre-entry source (injectivity of terminals):
          all seven Run registers, except the root rows (rootdone,
          rooterr), which freeze (log, tape, RS, KS) because the
          row fixes position, direction, and VB

tape/log entries: • | logged position l | γ_g | μ_g | A_g(b′)
                  | α_g(i, b′, e) | ρ
epochs:           e ::= F | EA(e) | EP(e, e′)
```

`γ_g` (gate boundary marker), `μ_g` (probe frame), `A_g(b′)` (fired
answer token), `α_g(i, b′, e)` (answer ticket: producing gate,
instance, bit, epoch), and `ρ` (root frame, the tape bottom).

**Epochs.** `vvar` mints tickets with the fresh epoch `F`. Recall of a
ticket with epoch `e` writes the frame epoch `EA(e)` when the key has no
frame and `EP(e, e_old)` when it replaces a frame with epoch `e_old`;
replay re-emits the frame's epoch on its ticket. A frame epoch is never `F`.
The epoch is the exact recall predecessor-fibre coordinate
(`../../qalc/RecallEpoch.lean`), unbounded as a tree; the runtime tuples are
`('AL', g, i, b′, e)` and `('R', g, i, b′, e)` with `F = ('F',)`,
`EA(e) = ('EA', e)`, and `EP(e, e′) = ('EP', e, e′)`.

**State language (enforced by W0).** Validation checks exact host types before
hashing or structural scans: the five registers contain only exact tuples,
strings, and integers; bits are exact integers in `{0,1}`; gate kinds and
tuple arities are fixed; epochs follow the recursive grammar above. Logged
positions are recursive wherever they occur, use paths over `{f,a,b}`, resolve
to bound variables of the closed 1-indexed term, and satisfy the lambda-IAM
slice equation `len(slice) = level(occurrence) - level(binder)`. The log is a
separate lp-like sort; retained `K(l)` cargo must be an arrival logged
position. Direction, path, and virtual-boolean phase are also validated. W0
defines the host-safe state grammar; W1-W9 enforce machine-phase placement and
coherence.

**Instance** `i` = the invoking occurrence's logged
position — always at log head when the token stands at the gate
leaf (arg-entry is structurally forced); a logged position names a
dynamic subterm copy (λIAM lineage). The classical transport rules
(`arg`, `bt1`) treat `γ` and `α` exactly like logged positions;
`bt2` never matches them (no binder). `lp-like := l | γ | α`;
arrival classifiers accept `l | α` as the answer position, never
`γ`.

## 3. The transition table

Rows are selected in this order: terminal rows (`halt`, `tick`); the VB
automaton; gate-leaf rows (`↓` at a gate leaf); the gate boundary (`↑` at an
`a`-position with a `γ` log head); root arrivals (`↑` at the root); classical
rows. Every error row enters `RunDone(err, res)` with the residue of §2.

Classical rules `b1`–`b4` (`•1`–`•4`), `var`, `arg`, `bt1`, and `bt2` are the
λIAM rules of `token.md` §2, with `arg` transporting any lp-like tape head to
the log and `bt1` restricted to non-`γ` log heads; the `γ`-head case belongs
to the gate boundary (fire/retrace below). `bt2` matches only a real logged
position whose binder is the current λ.

**Virtual-boolean automaton (`VB ≠ ∅`, position = the gate leaf):**

```text
vb2          (g, VB(g,b′,k<2), L, •·T) → (g, VB(g,b′,k+1), L, T)
rootval      (g, VB(g,b′,k<2), L, ρ·T) → RunDone(b̂′, res)
             [the partially-applied answer boolean IS the output;
             REACHABLE — dup reaches two such states]
verr         (g, VB(g,b′,k<2), L, μ·T) → RunDone(err, res)
             [a probed bare boolean value — typed]
stuck-vb     (g, VB(g,b′,k<2), L, T), T empty or headed by any other
             entry → RunDone(err, res)
no-instance  (g, VB(g,b′,2), L, T) with no lp at log head
vvar         (g, VB(g,b′,2), L, T) → (g, ↑, L, •^(b′+1)·α_g(i,b′,F)·T)
             one bullet pays the gate application, the rest encode
             the slot; the ticket carries the instance and the fresh
             epoch.
```

**At the gate leaf (`↓`, VB = ∅), in guard order:**

```text
tape = •·T′:
              i := log-head lp; no lp at log head → no-instance.
              j := length of the leading bullet run; x := the entry
              after it.
              bitfree := (g, i) keys of K/KD records (bit
              discarded); dead := bitfree ∪ keys of live tickets
              buried in retained-whole K(l) cargo (bit present but
              unreachable — KS is inert).

(head ticket) x = α_g(i′, b′, e) with g the leaf's own gate:
   i′ ≠ i                    → alien-ticket        [foreign copy]
   (g, i) ∈ bitfree          → key-alias           [a live
                                representation must never shadow a
                                BIT-FREE record: it has discarded
                                the bit that would detect divergent
                                aliasing; bit-carrying burials are
                                adjudicated by deep W3 instead]
   j = b′+1:
     a same-key frame with bit ≠ b′, or two same-key frames
                             → frame-conflict
     else → recall: tape •^j·x·T ↦ (g, ↑, L, •·•·•·T) with the
              key's frame replaced by R_g(i, b′, EA(e)) (no old
              frame) or R_g(i, b′, EP(e, e_old)) (old frame epoch
              e_old); KS unchanged
   j ≠ b′+1                  → recall-err
   (x = a ticket of the other gate falls through to the frame and
   fresh arms)

(frame)      otherwise, a same-key frame R_g(i, b′, e_R) anywhere in
             RS (deep keyed lookup — LIFO position is not semantic):
   (g, i) ∈ bitfree          → key-alias
   two same-key frames       → frame-conflict
   j ≥ 3     → replay: emit •^(b′+1) · α_g(i, b′, e_R) · tape[3:]
   j < 3                     → replay-err

(fresh)      neither ticket nor frame:
   (g, i) ∈ dead             → refire              [the selection
                                was erased bit-free or buried; a
                                fresh call would fire the same copy
                                twice — one-fire-per-instance is a
                                MACHINE INVARIANT, enforced here]
   else      → call: (g, ↑, L, γ_g·•·•·μ_g·T′)

tape = γ·A·T (anshead):
             leaf, γ, and A gate kinds must all agree, tuple arities
             exact, answer bit ∈ {0, 1} — the answer arriving at a
             leaf is that leaf's own gate's answer — else
             → species-ans. All four checks precede VB entry.
             (g, ↓, L, γ_g·A_g(b′)·T) → (g, VB(g, b′, 0), L, T)
             A second γ/A pair deeper in the tail is accepted
             here and typed `stuck-vb` one step later.
tape = ρ·T                   → rootneutral   [unapplied constant
                                is the output]
tape = μ·T                   → species-neutral [unapplied constant
                                meets a probe]
any other nonempty tape      → species-leaf  [A, α, l, or γ
                                without its classifier shape]
empty tape                   → no row (bare final)
```

**At a gate boundary (`↑` at an `a`-position, `γ_g` log head):**

```text
arrive/fire  tape = P_b · μ · T,  P_0 = l·  P_1 = •·l·  (l ∈ lp | α)
   μ's gate kind ≠ g         → species-mu
   any key with two bits among cargo-nested α (deep through
   slices) and RS frames     → key-alias  [deep bit coherence at
                                the boundary: a fire must never
                                erase or bury a disagreement]
   CERTIFIED boundary (pos ∈ certificate, INSTANCE-DIRECTED):
       the certificate names popkeys(pos); frames split into
       P = RS ∩ popkeys (erased) and Q = RS \ popkeys (retained
       SPECTATORS — which-path data of unrelated instances, e.g.
       an outer coin's frame around an inner interference)
       any P frame with bit ≠ b → pop-err
       erase (l, P); rs' = Q; leave ('KD', keys) — one tagged
       bundle, emitted on EVERY certified fire; target storage is
       always new-bundle · incoming, so incoming KS strips off,
       naming every key that died with NO surviving
       bit-carrying representation ANYWHERE in the target:
         keys = (α-keys(l) ∪ keys(P))
                \ keys(Q) \ burial-keys(ks)
                \ α-keys(T) \ α-keys(log)
       a cargo ticket whose frame is retained in Q stays answerable
       through the frame (the decode arm's frame-skip, lifted); a
       popped frame whose replay-re-emitted ticket rides in the
       surviving tape tail T or the log stays answerable through
       that ticket; a key buried in a retained-whole K(l′) record
       keeps the burial as its bit-carrying dead record (refire
       consults burials via the dead-key set). An empty bundle is
       EMITTED, never omitted. [sound under fibre conditions
       (a)–(f) plus the always-emit discipline, §5/§7.4]
   else, l = α_g′(i, b, e) with bit = slot (DECODE, any producer g′):
       retain ('K', g′, i) — bit-free, branch-equal — UNLESS a
       same-key frame exists (the ticket was replay-re-emitted;
       the frame remains the answerable representation) or a
       same-key burial exists (the buried ticket remains the
       bit-carrying dead record); in the suppressed case no DEAD
       RECORD is created (W8 exclusivity by construction) but
       the arm still appends its one history head ('KA', g′, i).
       The key distinguishes suppressed decodes from retain-whole
       fires and from one another. KA feeds no guard: ks_dead_keys and
       ks_bitfree_keys exclude it, so a replay off the surviving
       frame stays legal
   else (RETAIN-WHOLE): keep ('K', l) — same-slot arrivals with
       different which-path data stay orthogonal
   then fire: targets (pos, ↑, γ_g·L, A_g(b′)·T, rs′, ks′),
   coefficients the Q_g row for input b:
       g = h (fire-h, dk = 1): b = 0 → (+1, +1), b = 1 → (+1, −1)
                               over b′ = 0, 1
       g = t (dk = 0):         b = 0 → A_t(0), coefficient 1 (fire-t0)
                               b = 1 → A_t(1), coefficient ω (fire-t1)

retrace      bt1g: (pos, ↑, γ_g·L, A·T) → (parent+'f', ↓, L,
             γ_g·A·T)      [bt1's action on the γ head]
species      any other tape at a gate boundary → RunDone(err, res)
```

A ticket's gate tag names its PRODUCER, not the consuming gate: decode keys
the record by the producer, and the consumer is carried by `A_g(b′)` and the
boundary's `γ_g`. Cross-gate composition (T after H and conversely) therefore
decodes like same-gate composition; a foreign-producer guard would make
Clifford+T composition impossible (wf.py's cross-gate regression).

**Root and classical error rows:**

```text
rootdone     (root, ↑, ε, P_b·ρ)  → RunDone(b̂, res)
             (root, ↑, ε, l·•·ρ)  → RunDone(I, res)     (l ∈ lp | α)
rooterr      any other root arrival → RunDone(err, res)
shape-err    λ (↓) with μ or ρ at the tape head — too many head
             lambdas for the question
species-binder  λ (↓) with γ, A, or α at the tape head (foreign-lp
             and empty-tape finals stay classical finals — typing
             them would diverge from the λIAM substrate)
species-transport  ↑ at an f-position with μ, ρ, or A at the tape
             head
halt/ticks   halt: RunDone → Halt(nf, res, 0); tick: Halt(…, t) →
             Halt(…, t+1)
```

The guard family — `no-instance`, `alien-ticket`, `frame-conflict`,
`recall-err`, `replay-err`, `pop-err`, `species-mu`, `species-ans`,
`species-binder`, `species-leaf`, `species-transport`, `refire`, `key-alias`
(`suite.GUARD_RULES`, the set the battery reports as structurally reached
guards) — is the machine's answer to aliasing and misuse. Seven further rows
type outputs and shapes outside the boolean protocol: `verr`, `stuck-vb`,
`rootneutral`, `species-neutral`, `species`, `shape-err`, and `rooterr`. All
twenty enter the err sector with a source-retaining residue: **every
detectable manifestation is a typed error, never a silent reinterpretation.**
The dynamic side of §5 requires zero err amplitude at every step, so any of
them fails admission once it carries amplitude.

## 4. Instance identity and the selection lifecycle

One `vvar` emits one fresh-epoch ticket per interrogation. The ticket then
rests in exactly one of FOUR places: consumed by **recall** (→ the key's
replay frame, bit kept, epoch extended), consumed by **decode** (→ bit-free
`K` record, dead), erased by **certified erasure** (→ `KD` bundle, dead), or
**buried whole** inside a retained `K(l)` record (bit present but
unreachable — dead for recall/replay, adjudicated by deep W3).
Replay re-emits a ticket carrying the frame's epoch; a re-emitted ticket
that decodes leaves no record while its frame lives. The key-state algebra:

    answerable + bit-free dead        → typed (key-alias)
    answerable + bit-carrying burial  → allowed iff bits agree
                                        (deep W3; conflict typed)
    two bit-carrying burials          → allowed iff bits agree
    bit-free + bit-carrying same key  → NEVER CREATED (fire and
                                        decode subtract keys with a
                                        surviving bit-carrying
                                        representation; the burial
                                        or frame stays the sole
                                        record); leaf encounters
                                        with pre-existing bit-free
                                        storage remain typed
    fresh call of ANY dead key        → typed (refire)
    two live tickets, one key         → alias state, excluded
                                        statically (W9)

Two agreeing live tickets for one key pass deep W3 (one bit) and
W8 (no dead record), yet decoding one would leave the other
answerable beside the fresh bit-free record — the algebra is
therefore complete over W9-clean states, and W9 makes that
hypothesis checkable rather than assumed. The duplicate-ticket
configuration is the agreeing-alias gap's ticket-dimension face;
no reachable state of the twenty-program battery or of the thirty
composed Gate-1 sectors exhibits it.

A bit-carrying burial blocks a fresh call conservatively. An explicit burial
decoder could widen admission, but is not part of the current machine.

**Load-bearing derivations** (from the literal-boolean ground
truth, not stipulated): classical transport is the whole delivery
protocol — `call` only flips ↑ at the leaf and the untouched
classical rules carry the probe through arbitrary dereference
plumbing, dually for retrace (bideterminism); the +1 bullet in
`vvar`/`recall` pays the gate-application crossing a literal
boolean's real `•3`/`•4` pairs would pay; balance needs no padding
(the slot-2 bullet is consumed by the arrival classifier, not a
step); re-interrogation is real and store-free — the outcome of a
fired gate lives only in the tokens the machine already carries.

## 5. Certificates: instance-directed erasure and the hybrid pipeline

A certificate is a map from fire positions to **popkeys** — the
instance keys whose frames it erases there; other frames are
retained spectators. Admission conditions, checked over the
STRUCTURAL certified graph's arrivals (with P = frames in popkeys,
Q = the spectators):

- **(a)** every popped frame's bit equals its arrival slot
  (slot-correlation = the redundancy erasure needs);
- **(b)** the retained key `(slot, T, log, ks, Q)` determines the
  erased tuple `(l, P)` — the fibre is a function;
- **(c)** non-vacuous: something is actually erased;
- **(d)** erased cargo is γ-free (W5);
- **(e)** cross-slot decode-bundle equality per retained-spectator
  group `(T, log, ks, Q)` — the fibre function property is
  per-slot, and divergent bundles across one H fibre would
  silently decohere the interference the certificate buys,
  invisible to Gram;
- **(f)** deep bit coherence: cargo-nested α bits and frame bits
  agree per key (a conflicted arrival is never admitted; the
  kernel also types it).

**The canonical pipeline** (`discover_total`, the hybrid —
"amplitudes decide whether a run succeeds, never whether the
machine is an isometry"):

1. **Conservative structural fixpoint**: admit only
   boundaries whose every frame key is slot-correlated
   (pop-everything), iterated under hard caps. Amplitude support
   never drives admission (self-supporting certificate cycles).
2. **Spectator admission, validation-adjudicated**: boundaries
   admissible only in instance-directed mode are tried joint-first
   then greedily, with per-key exclusion refinement
   (slot-correlation makes a key poppable, not always safe — an
   erased selection re-sought later reaches `refire`, loud, and
   the trial is dropped). Every acceptance requires the full
   validation to stay clean. Deterministic and bounded.
3. **Final validation with GREEDY RESCUE**: the assembled map is
   validated; on failure it is NOT discarded whole — the
   validated-greedy discipline re-runs from scratch over the FULL
   candidate pool (phase-1 fixpoint positions plus every phase-2
   candidate, including candidates rejected against a dirty
   phase-1 base), joint-first with per-key exclusion refinement,
   then sorted singles, so one bad phase-1 boundary cannot veto
   the clean rest (`palpha`'s certificate exists exactly this
   way: its one poppable key is excluded to spectator and all
   three boundaries certify cargo-only). None arises in exactly
   three ways: a cap or nonconvergence exit in phases 1–2 (the
   conservative fallback, before any pool pass exists); an empty
   admission (no position ever structurally admissible — the
   empty map IS the plain reading); or this validated-greedy
   pass over the pool accepting nothing — greedy, NOT complete
   over subsets of the pool. (Measured: on all nineteen
   certificate-bearing programs the pool equals the final
   domain, and every phase-2 candidate is accepted;
   `dupcall`'s three-position phase-1 pool is discarded whole
   by validation — its plain run carries typed err mass. The
   pool completion is behavior-identical on the suite; it makes
   the three-way None statement exact.) A None result IS the
   fallback (the plain reading); its coverage verdict is
   `validate(term, None)`, which runs the same reachable-WF sweep
   with an empty certified domain (W7 and disjointness vacuous,
   the WF check itself never skipped).

The canonical certificate is **deterministic** (measured seed- and
order-independent) and **validation-adjudicated greedy — neither
maximal nor minimal is claimed**. Smaller clean certificates with
identical physics exist (measured: `W` reaches `{halt1: 1}` with
the single ∅-pop boundary `ffbbafffa`, basis 734 vs the canonical
498; `B` likewise with `ffbbfffa` alone), and the greedy order can
leave admissible boundaries unexplored. What is claimed: every spectator and rescue acceptance
passed full validation at acceptance, NO certificate is ever
returned without the assembled map passing full validation, the
map is a deterministic function of the program, and the frozen
values reproduce bit-for-bit.

**Validation** (`validate`) separates two obligations.
The STRUCTURAL side — totality (no structural stuck state), the
complete-carrier direct RRI certificate (§7.5), Gram orthonormality
on the structural reachable basis, unconditional transparency at
certified positions, no reachable `pop-err`, no per-state `(g, i)`
bit aliasing, reachable ⊆ WF (W0–W9) ∧ W7, mechanized disjointness,
and NON-VACUITY at both levels (a certified position must be reached
and every popkey must occur in an arrival frame there;
`machine_coverage` refuses vacuous maps, and `settle()` recomputes
keys from reached arrivals) — is mandatory and isometry-bearing
(orbit-norm preservation alone is NOT isometry: a map `V` with
`V|0⟩ = V|1⟩ = |1⟩` holds norm 1 forever from `|0⟩` while
collapsing columns). The DYNAMIC side — exact evolution of the
frozen candidate with **zero guard/err amplitude at every step**
(residue-injectivity prevents cancellation masking a guard fire),
termination, zero final err mass — decides run success, so
zero-amplitude structural branches cannot veto
coherence-restoring certificates (the `B` witness).
`machine_coverage` is the conjunction; it claims machine soundness
and clean execution, **never** agreement with an external ideal
semantics — no such total reference exists for bare λ-terms (the
eliminator's physical reading — wire, measurement, garbage,
promised uncomputation — is absent from the syntax); per-program
physics expectations live in the suite's written-first table, each marked
hand-derived or — for `dupcall` only — machine-measured: no circuit reading exists for the untyped
refusal row, so it pins the measurement, not an ideal. What
certification proves
is: **every admitted erasure has a checked reversible decoding
from the retained coordinate and spectator state, and the
resulting columns remain orthonormal** — not that the certificate
found the maximally coherent placement.

**Measured facts that pin the design**: the certificate is
semantically load-bearing for HNH (certified `{halt0: 1}` = the
physics vs plain `{1/2, 1/2}`); `B` and `W`'s coherence-restoring
certificates are admitted by the hybrid (structural `refire` at
amplitude exactly zero — verified per-step, all refire sources at
exact amplitude 0 — canonical `{halt1: 1}` for both). Nineteen of
the twenty programs freeze exact canonical dicts reproduced
bit-for-bit by `discover_total`; `dupcall` canonically returns
None (its plain run carries typed err mass `1/2` through
`alien-ticket`, so no certificate can reach `machine_coverage` —
the refusal working as designed) and runs the plain reading. In
the frozen maps most certified boundaries pop nothing (cargo-only
certification, every frame retained); `q`, `qprime`, `q2`, `B`,
and `W` pop inner-coin instances; `palpha` certifies via the
greedy rescue, guard-silent, basis 474 → 275 with its marginal
unchanged. No identity between the unrestricted pop-everything
reading and the canonical dicts is claimed.

## 6. The invariant catalog (WF, the well-formed subtype)

For Run states; reachable ⊆ WF is machine-checked per program, and
the machine's unitarity claims quantify over the subtype:

- **W0** (total state grammar): exact built-in node and tuple types only;
  bits are exact integers in range; gates are in `{h,t}`; tuple arities are
  exact (tickets and frames are 5-tuples); ticket epochs follow
  `F | EA(e) | EP(e, e′)` and frame epochs exclude `F`; every logged position
  — standalone, in slices, and as a ticket, frame, or storage instance —
  resolves to a bound variable of the closed, 1-indexed source term and
  satisfies `len(slice) = level(occurrence) - level(binder)`. Logs, tapes,
  replay frames, storage heads, VB phases, directions, and positions must
  match the grammar of §2 (RS order is W2's clause). Validation is
  iterative, hash-free until purity is established, cycle-safe, and
  representation-linear on finite stable object graphs. A W0 failure returns
  immediately, so W1-W9 never index malformed values. After W0, the checker
  uses only the hash, equality, and canonical-repr operations also required by
  machine state identity; inputs beyond the host's limits for those operations
  are outside the representable machine carrier. Instrument helpers accept
  configured term/certificate inputs, while `wf()` and `wf7()` own the
  raw-state totality claim.
- **W1** (log discipline): `|log| = level(pos)`.
- **W2** (record uniqueness + canonicity): at most one frame per
  `(g, i)` in RS; RS canonically sorted (state identity is
  order-free).
- **W3** (bit coherence, deep): one bit per `(g, i)`
  across ALL bit-carrying representations — frames, top-level and
  slice-suspended tickets on tape and log, and tickets buried in
  retained-whole `K(l)` records.
- **W4** (first-interrogation exclusivity): a
  VB-active state at instance `i` holds NO other representation
  of its key in ANY of the four classes — no `i`-frame in RS
  (`W4-frame`), no live `i`-ticket anywhere on tape or log deep
  through slice cargo (`W4-ticket`), no same-key bit-free storage
  (`W4-storage`), and no same-key burial with a CONFLICTING bit
  (`W4-burial`); an AGREEING burial is admissible — its `vvar` target is
  WF. The four exclusions close `vvar` preservation **by
  enumeration**: the emitted ticket `α_g(i,b′,F)` can only violate
  W3, W8, or W9 in the target, and each violating partner class
  is excluded at the source (frame or conflicting ticket/burial
  → W3; bit-free record → W8; second live ticket → W9); `vb2`
  preserves the region trivially (KS untouched). ENTRY into the
  VB region (`anshead`) is guarded on reachable states by the
  lifecycle — no representation of a key exists before its first
  `vvar`, and re-interrogation of a dead key is refire-typed —
  and raw-entry closure is deliberately NOT claimed: W4 encodes
  a reachability fact (first interrogation), strictly stronger
  than raw-state closure at the region's entry. W4 excludes no
  reachable state of the twenty programs.
- **W5** (probe pairing): deep-counted γ (through lp slices and
  retained `K(l)` records; instance KEYS are frozen names, never
  counted) = #μ(tape) + #A(tape) — every in-flight probe's γ is
  matched by its μ or its answer token.
- **W6** (root frame): exactly one ρ, at the tape bottom.
- **W7** (certificate fibre coherence): at a certified boundary,
  the erased `(l, P)` equals the certificate's frozen fibre value
  at the retained key `(pos, slot, T, log, ks, Q)` — the full
  retained spectator including incoming dead storage and retained
  frames. States outside the fibre relation are outside the
  certified domain subtype; the domain lemma (reachable certified
  arrivals are in-domain) is the per-program sweep.
- **W8** (representation exclusivity): per `(g, i)`, bit-free dead
  storage (K/KD records) coexists with NEITHER answerable
  representations (live α anywhere in tape/log including suspended
  slice cargo; RS frames) NOR bit-carrying burials — in both cases
  the bit-free record has discarded exactly the bit that would
  adjudicate aliasing. Answerable + burial coexistence is
  legitimate under deep W3. The fire and decode arms preserve W8
  by construction on W9-clean sources (the KD subtraction and
  record-skips of §3); a duplicate-ticket alias source would
  decode into a W8 violation, which is exactly what W9 excludes
  statically. Leaf encounters with bit-free storage are typed
  (`key-alias`).
- **W9** (live-ticket key uniqueness): at most one live α ticket
  per `(g, i)` across tape and log, deep through slice cargo. Two
  agreeing live tickets pass W3 and W8 yet are an alias state —
  the agreeing-alias gap's ticket-dimension face, made checkable.
  Zero violations on every reachable state of the twenty-program
  battery and of the thirty composed Gate-1 sectors (projected
  carrier); ticket+frame (replay re-emission) and ticket+burial
  remain legitimate, adjudicated by W2/W3/W8.

## 7. Theorems

### 7.1 The coloring (closed form + uniform flip)

```text
φ(s) = depth(pos) + [d = ↑] + Σ w(tape) + Σ w(log) + Σ w(RS)
       + Σ w(KS) + k_VB  (mod 2)
w(•) = w(γ) = w(μ) = w(α) = w(ρ) = w(R) = 0;  w(A) = 1
w(l) for l = (occ, slice) = (depth(occ) − depth(binder)) + Σ w(slice)
w(K₂(l)) = w(l)  — a retained-whole spectator record carries its
                   lp's weight;  w(K₃) = w(KD) = w(KA) = 0
                   (KA is part of the pinned alphabet)
```

**Theorem (uniform flip).** Every Run→Run rule flips φ —
INCLUDING the conservative retain-whole fire — EXCEPT
CERTIFIED-erasure fire, whose delta in the pinned gauge is
exactly `1 − w(l)` for the erased arrival lp (the sweep's
parametrized form is `1 − w(l) − F·w(R)` with `F` the popped
frame count; `w(R) = 0` in the pinned gauge). Proof is per-row
algebra; the load-bearing case is `var`/`bt2` (the teleport's
distance is absorbed by the lp carrying it as weight).
`polarity.py` verifies it on every reachable Run→Run edge of the
battery, zero violations. The separating witnesses are `Ccoll`'s two reachable
conservative fires have `w(l) = 1` and delta 1 — an ordinary
flip, not a `1 − w(l)` defect — and the Σ w(KS) term decides six
reachable edges (two in `Ccoll`, four in `dupcall`). The weight
assignment is **gauge-pinned**: of all 1024 assignments over the
mark alphabet INCLUDING the KD and KA weights (ten swept
parameters), exactly the 4-element
orbit generated by two symmetries survives — every survivor
fixes KD and KA at 0 — and the orbit fixes every deployed
consequence. The KA pinning requires a DISCLOSED instrument: KA
never occurs on a reachable edge (the suppressed arm is
reachably dead code), so the reachable sweep alone leaves it
free (8/1024, measured and printed); one raw suppressed-decode
fire (the frame-skip fixture of wf.py's fire prefix-freeness
regression — WF, uncertified, reachably unmintable) adds its two
edges and pins it (4/1024). Both readings print, and the verdict
gates on both.

### 7.2 The branch-offset law

Two branches created at one fire, meeting at a common later
boundary with no interior fires:
`len₀ − len₁ ≡ w(l₀) − w(l₁) (mod 2)`. Corollary: gate-free pads
shift branch-relative time evenly; synchrony requires *equal*
erased weights (H–NOT′–H fires with `w = 1` on both branches).
Interior fires shift parity by exactly the fire defect.

### 7.3 The conservation theorem

**Lemma A (attribution ledger).** In a pure λIAM run from a
k-probe start `(pos, ↓, L₀, •^k·base)` surfacing at
`(pos′, ↑, L₀, tape·base)`: `t ≡ k + b + 1 (mod 2)`, `b` = ALL
surface-tape bullets. *Proof:* every rule is the birth, death, or
transport of exactly one tape/log individual; slice
capture/release is zero-cost suspension preserving location parity
`p = 1`; the invariant `count(x) ≡ B(x) + p(x)` live,
`≡ B(x) + 1` dead/suspended, summed at the surface with
`−r ≡ r (mod 2)` absorbing probe-bullet survival. (Position-blind;
lps recirculate tape→log→tape, and the ledger is indifferent.)

**Lemma B (coloring).** `t ≡ (|pos′| − |pos|) + 1 + w(l)` — the
depth term is real (`λ1` probed from its body surfaces at the root
in one step with `w = 1`).

**Theorem.** `w(l) ≡ k + b + |pos′| − |pos| (mod 2)`. Deployed
specializations launch and surface at the same position, so
`w(l) ≡ k + b`: the boolean protocol (k = 2) gives
**`w(l) ≡ exit slot`**; the haltI sector gives `w ≡ 1`.

**Corollary (kernel transfer).** A fire-free, VB-free, mark-free
probe segment is literally a pure λIAM run of the argument (no
`var` can cross the log's γ without capturing it), so `w ≡ slot`
transfers to the kernel. Each hypothesis is load-bearing and each
failure mode is a named mechanism: interior fires (the defect
law), VB pattern births (one-step-one-individual breaks — why gate
routing is the parity escape), mark capture (segment closure
breaks — why `w(α) = 0` decouples weight from step count).
Mark-free geometric readback of classical data therefore has odd
branch offset — **intrinsic decoherence; coherent routing is
exactly gate-mediated**.

**Mechanization.** `conservation.py` asserts the ledger invariant
after every step of every run in lockstep conformance with the
uninstrumented stepper, over every closed pure term up to its size
bound with k ∈ {1,2,3} probes (probes exceeding 4,096 steps count as
timeouts, not surfacings). The Gate-1 battery runs bound 10: 10,180
terms, 14,452 surfacings, three timeouts per k, zero failures.
`python conservation.py 11` covers 41,272 terms: 55,727 surfacings,
zero failures. Battery cross-check: zero mark-free arrivals violate
`w ≡ slot`; marked arrivals split both ways as virtual ancestry
predicts.

### 7.4 Range disjointness (on WF∧W7)

**Storage-history discipline:** every fire arm
appends EXACTLY ONE storage head, and the head species names the
arm — `('KD', keys)` certified, `('K', g, i)` decode-recorded,
`('KA', g, i)` decode-suppressed, `('K', l)` retain-whole — so
incoming KS is always the tail after stripping one head, and the
head species can never be forged across arms: KD is confined to
certified positions (certification is a program-level property
of the position), the other three have pairwise-distinct
tags/arities, and suppressed-vs-recorded at one target is doubly
impossible (distinct tags, and the suppression condition is a
function of the target's RS and KS-tail). Within one arm the
head content plus the slot recovers the cargo key (certified:
the fibre condition; decode/suppressed: the head's key;
retain-whole: the head's lp). Regression fixtures pin the collisions that the
one-head-per-fire discipline excludes: suppressed decode versus retain-whole,
two-key double suppression, and omitted empty certified bundles.

For two certified-fire sources at one boundary:

```text
different retained spectator (pos, log, T, incoming KS, retained Q)
    ⇒ disjoint targets. For pos/log/T/Q the targets embed the
      coordinate verbatim. For incoming KS the embedding is
      new-bundle · incoming with the bundle ALWAYS present:
      equal targets force equal bundle heads (branch-
      equal by condition (e)) and hence equal incoming tails;
      always emitting the bundle separates a fresh decode from a
      carried-in record;
same spectator, same slot
    ⇒ the SAME source (W7: the fibre is a function; state identity);
same spectator, opposite slots
    ⇒ identical target pair — requires equal decode bundles, which
      is admission condition (e) — carrying the two H rows:
      orthogonal columns (computed inner product 0). This case IS
      the interference mechanism, not a defect.
```

Mechanized: `wf.cert_disjointness` collects reachable sources with
full state, constructs their fire targets via the step function,
compares decode bundles cross-slot (bundles computed with the §3
subtraction — the bundle actually left), and computes column inner
products. Zero violations over every certified graph. Permanent regression
fixtures (§10) cover the extra-frame collision (W7-excluded at the domain
clause — an added frame is a retained-spectator coordinate that
leaves the certified fibre domain — with disjoint targets), the
doctored bundle-divergent fibre (rejected by condition (e)), and
the retained-Q collision (two WF, transparent, same-slot sources
differing only in a retained frame's bit — zero shared targets,
true Gram entry 0).

### 7.5 Gate-copy identity, recall injectivity, and the reachable lifecycle boundary

The fixed invocation shell gives the needed localized theorem: at
either gate leaf, W1 forces the complete log to be `(i)`, and the
gate kind selects the unique leaf path. Thus `(g,i)` reconstructs
the complete gate-copy address `(q_g,(i))`; two distinct copy
addresses cannot alias one key. General logged-position uniqueness
is false and is not claimed. The proof and its exact scope are in
`instance-identity.md`.

**Recall injectivity is structural.** A recall target stores `EA(e)` or
`EP(e, e_old)` — exactly the predecessor coordinate (ticket epoch, optional
old-frame epoch) — and every other source coordinate is either transported
verbatim or fixed by the row: the leaf fixes the gate, the log head the
instance, the frame the bit, and `j = b′ + 1` the bullet run. The recall row is
therefore injective on every source with canonical RS (W2), with no
reachability premise (`RecallEpoch.lean`: `recallTarget_injective`,
`decode_recall_epoch`, `recall_epoch_fibre_exact`). The same coordinate
separates the three landing pairs that frame-idempotent insertion would merge:

- frame-absent versus agreeing-frame recall: canonical `negative` has a
  reachable frame-free recall source whose raw clone with the agreeing frame
  `R_h(i, b′, EA(F))` is WF∧W7 and unreachable; their targets differ
  (`instance_identity.raw_recall_boundary`; `raw_recall_targets_disjoint` in
  `QalcConcreteCertificateAudit.lean`);
- the certified-pop rider: a certified fire may pop a frame while its
  replay-emitted ticket survives in the tape tail or log (the WF-clean
  `popped-frame/riding-ticket` regression); the rider's recall writes `EA(e)`
  and the framed recall `EP(e, ·)` (`rider_and_framed_targets_disjoint`);
- `vvar` versus `replay` landings: `vvar` emits epoch `F`, replay a frame
  epoch, which is never `F` (`vvar_replay_ranges_disjoint`).

**Complete-carrier RRI is an admission condition.**
`rri_direct.direct_certificate` enumerates the complete nonterminal carrier
(cap 100,000 states; hitting the cap is rejection), recomputes closure,
requires every recall source to have exactly one row, rejects matching-frame
multiplicity, and checks (i) source-projection RRI — no two recall sources
with one full key `(g, i, b′)` share a frame-erased projection in opposite
phases (matching frame absent/present) — and (ii) actual-target
factorization. Under the epoch-bearing row a common recall target forces a
common source, so no target bucket mixes phases or projections and (ii) fails
only on a pair that (i) already rejects; (i) is strictly stronger than row
injectivity and is the binding predicate of `validate`. The concrete Lean
replay proves both forms (`RRIOn`, `RecallTargetRRIOn`) on the 17 canonical
typed sectors (`../../qalc/QalcConcreteCertificate.md`). The Python checker and
its Rust port (`../../src/qalc/admission.rs`) identify the matching frame as
`R_g(i, b′, EA(F))`; the Lean `recallView?` accepts a same-key, same-bit frame
of any epoch.

**Open and optional.** No theorem derives (i) from typing or W0–W9 on an
arbitrary unbounded reachable graph; a uniform proof would factor through a
reachable no-rider lemma, unique α ancestry, and a cross-phase separation
lemma stable under Hadamard/certified-fibre reconvergence. `rri.py` is a
finite falsification instrument only: on the twenty-program suite (6,392
states; 110 frame-absent and 53 frame-present recall sources) it finds zero
projected collisions and zero rider fires. Neither architecture gate depends
on the uniform theorem. Every detectable divergent manifestation remains
typed.

## 8. The typed fragment

The judgment (`typecheck.py`): programs have the shell form
`(λh.λt. body) h t` with shell arguments syntactically exactly
`Gate('h')` then `Gate('t')` and **no gate literal inside the
body**; the shell binders are SIGNATURE bindings —
`h, t : ∀a. (a→a→a) → (a→a→a)` instantiated fresh at every
occurrence (rank-2 with respect to the shell); the body is
inferred by first-order unification with occurrence-polymorphic
signature constants (no lets, no generalization); the result type
is free (haltI-sector programs are function-typed). **h-only**
additionally requires no occurrence resolve to the `t` binder.

Fragment table (twenty-program suite): **17 typable h-only**
(including `B` and `W`). Outside, each rejected by the occurs check:
`dup` (self-application — deliberately, the untyped copy regression),
`q` (its `E = λz.Iz` and `N` branches do not unify — the wire imbalance
`qprime` was built to repair; `qprime` types clean), and `dupcall`
(`NOT′`/`EP` do not unify). All escapes — `h h`, gate literals in bodies,
swapped or doubled shell arguments — are rejected.

## 9. Accepted claim and optional stronger theorem

For programs that are typable h-only under the fixed-shell signature judgment
and whose canonical pipeline reports `machine_coverage`, the kernel is total
and Gram-clean on the complete structural reachable basis. Every admitted
erasure is reversibly decodable from its retained fibre coordinate; the frozen
run carries zero guard/error amplitude; every rejected or malformed case is
typed and visible; the complete carrier passes the direct RRI certificate,
an independent admission condition, not a consequence of Gram cleanliness.
The h-only scope matches the instruments: `validate` evaluates real
coefficients, exact precisely when no T row fires. T-bearing sectors are
evaluated exactly by `dw_machine.py` and admitted at the composed Gate-1 layer
(`../../qalc/GATE1.md`).

`machine_coverage` is a machine theorem, not automatic agreement with an
ideal circuit reading for an arbitrary lambda term. Physics claims are pinned
program by program. Gate 2 supplies the separate clean-compilation theorem for
the typed H/T/CNOT compiler image.

The fixed-shell gate-copy theorem proves that `(gate, instance)` identifies a
complete dynamic gate-copy address. The epoch-bearing recall row is injective
on every W2-canonical source; admission additionally checks the stronger
source-projection RRI predicate over each complete finite carrier, and
concrete Lean replay closes both source-projection and actual-target RRI for
all 17 canonical typed sectors. A uniform derivation from typing or W0-W9
remains optional and is not a premise of either architecture gate.

Standing typed fences: gate literals in a program body and malformed shells
lie outside the typed fragment (§8); open terms fail W0; kernel outputs outside
`{0̂, 1̂, I}` and every transition-table guard enter the err sector. The
composed Gate-1 machine adds arbitrary full-normal-form output and exact
terminal adapters beyond this kernel's root-output scope.

## 10. Verification state

`../../qalc/gate1_check.py` runs the kernel instruments below inside the
Gate-1 runtime battery; its durable log is `../../qalc/out_gate1_runtime.txt`.

- `suite.py`: all twenty frozen kernel programs are total (no stuck state),
  exact-Gram clean, and match the written-first physics table (nineteen
  hand-derived rows; `dupcall` machine-measured). Its negative controls reach
  `pop-err` (`pstar` under a wrong certificate) and `refire` with all-err
  dynamics (`dupcall` under a deliberately invalid `ffbbaaa` certificate);
- `certify.py`: `discover_total` reproduces the nineteen frozen certificate
  dictionaries and returns `None` for `dupcall`; `h Ω` is conservatively
  rejected. Nineteen programs reach `machine_coverage`, and all twenty pass the
  direct RRI certificate;
- `wf.py`: reachable ⊆ WF on all twenty programs under both the plain and the
  certified reading; reachable ⊆ WF∧W7 and mechanized range disjointness on
  the nineteen certified graphs; thirty-two permanent regression predicates
  (two raw-state collision pairs and thirty named fixtures). These fixtures
  pin the stated predicates and known coarse mutant classes, not arbitrary
  implementation strategy;
- `polarity.py` (uniform flip, branch-offset law, gauge pinning, terminal-chain
  degrees), `conservation.py` (§7.3), and `typecheck.py` (§8);
- `rri.py` (§7.5); `instance_identity.py`: gate-copy reconstruction on the
  canonical suite (6,392 states, 1,196 keyed gate states, 58 keys) and on all
  41,272 closed pure programs through size 11 — one fresh call per key, zero
  guard hits, zero nonorthogonal one-step columns, ten programs truncated at
  the 30,000-state cap, none of them with a call — plus the raw-recall
  distinct-target control;
- `dw_machine.py`: exact `ℤ[ω]/√2^k` Gram on all twenty programs, and exact
  `T0`, `T1`, and `HTH0` amplitudes;
- the generated concrete Lean replay covers the 17 canonical typed sectors:
  5,220 nonterminal `Run` states, 5,279 rows, 142 recall sources, 59 H-fire
  sources (53 certified), and 18 exact H-reconvergent targets. The exporter is
  untrusted; Lean rechecks row equality, closure, and both RRI formulations.
  `QalcConcreteCertificateAudit.lean` proves the raw `negative` pair's recall
  targets disjoint, rejects an initial prefix as nonclosed, and pins `qprime`'s
  certified-H reconvergence with both arms;
- the Rust port is pinned by the complete-carrier column fixtures and trace
  digests under `../../tests/qalc/` and by `../../tests/qalc_kernel.rs`,
  including the HH trace of §11.

The transition/WF battery and the composed Gate-1 battery cover distinct
surfaces. Neither proves the optional uniform RRI theorem.

## 11. Reference HH step-indexed trace

HH's certificate is `{ffbbaa: ∅}`. The inner fire (t=22) is certified
cargo-only and leaves `KD()`; the outer fire (t=33) is an uncertified decode
that appends `K(h, i₁)`, identically on both branches, where `i₁` is the
inner occurrence's logged position `L(ffbbaf|1)` (slice `γ_h`). KS is
omitted from the lines below. HH never recalls, so RS stays empty, and every
ticket carries the fresh epoch `F`; the suppressed-decode `KA` head is
absent.

Notation: `b` = bullet, `L(path|n)` = logged position (slice length
n), `gh/mh` = `γ_h`/`μ_h`, `Ahb′` = `A_h(b′)`, `ahb′` = `α_h(·, b′, F)`
(instance elided), `R` = ρ. Amplitude `m/r2^k` = `m·2^(−k/2)`. Term paths:
wrapper `(λh.λt. h (h 0̂)) h t`; `fa` = the h leaf, `ffbbf`/`ffbbaf` = outer/
inner `h` occurrences, `ffbba` = `h 0̂`, `ffbbaa` = `0̂`. HH enters the halt
sector at t=49; t=50 shows the first tick.

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
t= 23 bt1g    (both branches, lockstep)   ffbbaf D  tape[gh Ahb′ …]
t= 24 var     both    ff    U  …
t= 25 arg     both    fa    D  log[L(ffbbaf|1)] tape[gh Ahb′ b b mh b b R]
t= 26 anshead both    fa VB(h,b′,0)             tape[b b mh b b R]
t= 27 vb2     both    fa VB(h,b′,1)             tape[b mh b b R]
t= 28 vb2     both    fa VB(h,b′,2)             tape[mh b b R]
t= 29 vvar    ————— balanced emission: b′=0: [b ah0 mh …]; b′=1: [b b ah1 mh …]
t= 30 bt1     both    ff    D  …
t= 31 bt2     both    ffbbaf U …
t= 32 b3      both    ffbba U  b′=0: tape[ah0 mh b b R]; b′=1: tape[b ah1 mh b b R]
t= 33 fire-h  ————— outer δ: branches arrive as a clean fibre (equal
              log, position, T, KS, time; slots differ; both decode to
              K(h, i₁)) — H fires, the A_h(1) amplitudes cancel
              exactly, support returns to 1:
        1     ffbba  U log[gh] tape[Ah0 b b R]
t= 34 bt1g    1       ffbbf  D …
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
t= 48 rootdone 1      RunDone(0̂, residue (ε, ah0·R, ∅, K(h,i₁)·KD()))
t= 49 halt     1      Halt(0̂, residue, 0)     [separate U step]
t= 50 tick     1      Halt(0̂, residue, 1) …
      Mass 1 on 0̂, amplitude 2/√2² = 1 exactly.
```
