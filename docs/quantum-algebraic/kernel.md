# qALC kernel — current register

**Architecture status:** Gate 1 closed on 2026-08-11; Gate 2 remains open, so
qALC code stays out of the Rust tree. The complete composed proof record is
`~/Work/qalc-scratch/GATE1.md`; the live Gate-2 proof boundary is
`~/Work/qalc-scratch/GATE2.md`, and the isolated native-CNOT candidate is
specified in `~/Work/qalc-scratch/GATE2_CNOT.md`. That candidate now has an
executable physical schedule, compiler, and complete finite witnesses, but no
universal refinement from the actual composed rows to its ideal compiler
schedule. It is therefore not part of this accepted kernel.

**Kernel status: v1.43.** The transition and W0--W9 well-formedness surface is
v1.42, which passed fresh-context independent audit #35 with no required
correction. v1.43 is validation-only: it adds complete finite nonterminal
carrier closure and a Gram-independent reachable-recall certificate as an
unconditional admission check. It changes no transition, WF predicate, frozen
certificate, physics row, or accepted canonical program. The concrete Lean
mirror rechecks every exported row and proves source-projection and
actual-target RRI on all 17 canonical typed sectors, including certified-H
reconvergence. Raw-WF recall remains noninjective; no ambient uniform lifecycle
theorem is claimed.

The kernel is an exact `h`-only lambda-IAM superposition evolver with
instance-keyed replay records, certificate-controlled erasure, typed guards,
and exact amplitudes in `ℤ[1/√2]`. The accepted Gate-1 layer composes it
with live `t`, full-normal-form zipper readback, exact predecessor fibres,
typed halt/error sectors, a conservative source-history fallback, and the
semantic objects `U`, `μ_p`, `ρ_p`, `M`, and `Ω_qALC`.

This file states the current machine and verification boundary. Audit rounds,
failed claims, and repairs live in `docs/ledger/2026-08.md`, the scratch audit
kits, and git history. The scratch implementation remains at
`~/Work/qalc-scratch/`; `token.md` is the active design and `machine.md` is
read-only history.

## 1. Scope

The kernel machine answers a single **root output question** about
the invocation `p h t`: initial state
`(root, ↓, log ε, tape •·•·ρ)`, output alphabet **{`0̂`, `1̂`, `I`}**
with typed halting sectors for each, an absorbing error sector for
species/guard errors, and root arrivals outside the alphabet also
entering the error sector — a kernel-scope limitation flagged as
such: the architecture permits arbitrary normal-form outputs, and
recognizing them is the readback controller's job, not smuggled in
here. `I` is in the alphabet because the negative witness's output
is a *valid closed normal form*. Terminal entry is the normative
two-step `RunDone(nf, res) → Halt(nf, res, 0) → tick`, each a
separate `U` application. The ring in this kernel is `ℤ[1/√2]` — `h`
only. The Gate-1 composed machine exercises `t` as the same table with
`Q_t = diag(1, ω)` over `ℤ[ω]/√2^d` and its own tags; that extension lives in
the Gate-1 proof surface rather than versioning this kernel. Classical
substrate: the eight λIAM rules exactly as pinned in `token.md` §2.

## 2. State space

```text
Run     ::= (pos, d, log, tape, VB, RS, KS)
VB      ::= ∅ | (g, b′, k)   k ∈ {0,1,2} — virtual-boolean phase
RS      ::= canonically sorted set of replay RECORDS R_g(i, b′)
          — one per (gate, instance); transport-inert; recall's
          push is idempotent, replay reads it wherever it sits
KS      ::= stack of storage heads — inert history; EVERY fire
            appends EXACTLY ONE (v1.24: prefix-freeness across
            all arms — incoming KS is the tail after stripping
            one head):
            ('K', g, i)      one decoded ticket (fire's α-decode)
            ('KD', {keys})   certified erasure's tagged bundle —
                             emitted on EVERY certified fire,
                             empty if no key died bare (v1.23)
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
residue = the COMPLETE pre-entry state (injectivity of terminals)

tape/log entries: • | logged position l | γ_g | μ_g | A_g(b′)
                  | α_g(i, b′) | ρ
```

`γ_g` (gate boundary marker), `μ_g` (probe frame), `A_g(b′)` (fired
answer token), `α_g(i, b′)` (answer ticket, instance-tagged), `ρ`
(root frame). **The state language (v1.21–v1.24, audits
#13–#16 — enforced by W0)**: exact-type PURITY first — the five
registers are exact tuples of exact tuples/str/int, checked
WITHOUT HASHING before any scan (a list-valued tape passed WF
and TypeError'd in the fire; a nested tuple-subclass with a
hostile `__hash__` would crash the checker's own caches, and a
hostile `__eq__` could poison them — impure states early-return
W0 and W1-W9 are not adjudicated over them); every bit an EXACT
int in `{0, 1}` (bool is a Python subclass of int and is
refused — `rootval` string-formats the bit, so `1.0`/`True`
would mint out-of-alphabet terminal kinds `halt1.0`/`haltTrue`);
every gate kind in `{h, t}`; exact tuple arities; lp productions
recursive wherever they appear (slices, ticket/frame instances,
K/KD/KA keys), with path components in `{f, a, b}` and every
occurrence resolving to a BOUND `Var` of the CLOSED term —
1-INDEXED, so `Var(0)` is no variable (audit #16: `i <= depth`
alone accepted it and `binder_path` IndexError'd one step
later — the exact convention the repo's own conventions doc
warns about) — satisfying the λIAM logged-position equation
`len(slice) = level(occ) − level(binder)`; the log a separate
SORT (lp-like entries only); retained-whole `K(l)` cargo an
ARRIVAL lp (`L` or `AL`); the state coordinates in language
(`d ∈ {↓, ↑}`, `pos` resolving in the term); the VB phase
exact-int with `k ∈ {0, 1, 2}`. Machine-PHASE placement of
well-formed tokens is the other invariants' job — W0 is the
language, not the protocol. Before v1.21, `A_h(2)` was WF and
flowed to `halt2`; before v1.22, `A_h(True)` still was, and
off-language coordinates stalled silently or crashed inside WF;
before v1.23, BULLET rode the log into a b1 collision; before
v1.24, `Var(0)` and list containers passed WF and crashed one
step later.
**Instance** `i` = the invoking occurrence's logged
position — always at log head when the token stands at the gate
leaf (arg-entry is structurally forced); a logged position names a
dynamic subterm copy (λIAM lineage). The classical transport rules
(`arg`, `bt1`) treat `γ` and `α` exactly like logged positions;
`bt2` never matches them (no binder). `lp-like := l | γ | α`;
arrival classifiers accept `l | α` as the answer position, never
`γ`.

## 3. The transition table

Classical rules `•1 •2 •3 •4 var arg bt2` are unchanged from
`token.md` §2. `bt1` is restricted to non-`γ` log heads; the
`γ`-head case belongs to the gate boundary (arrive/retrace below).
Every error entry freezes the complete source state as residue.

**At the gate leaf (↓, bullet head), in guard order:**

```text
              i := log-head lp; no lp at log head → no-instance.
              bitfree := (g, i) keys of K/KD records (bit
              discarded); dead := bitfree ∪ keys of tickets buried
              in retained-whole K(l) cargo (bit present but
              unreachable — ks is inert).

(head ticket) tape = •^j · α_g(i′, b′) · T:
   i′ ≠ i                    → alien-ticket        [foreign copy]
   (g, i) ∈ bitfree          → key-alias           [a live
                                representation must never shadow a
                                BIT-FREE record: it has discarded
                                the bit that would detect divergent
                                aliasing; bit-carrying burials are
                                adjudicated by deep W3 instead]
   same-key records with a different bit
                             → frame-conflict
   j = b′+1  → recall: consume bullets+ticket, emit •·•·•·T,
              record R_g(i, b′) — IDEMPOTENT (the record is a
              function of the instance; a re-seek cycle's
              re-recording is a no-op)
   other j                   → recall-err

(frame)      R_g(i, b′) anywhere in RS (deep keyed lookup — LIFO
             position was never semantic):
   (g, i) ∈ bitfree          → key-alias
   conflicting bits          → frame-conflict
   j ≥ 3     → replay: emit •^(b′+1) · α_g(i, b′) · tape[3:]
   j < 3                     → replay-err

(fresh)      neither ticket nor frame:
   (g, i) ∈ dead             → refire              [the selection
                                was erased bit-free; a fresh call
                                would fire the same copy twice —
                                one-fire-per-instance is a MACHINE
                                INVARIANT, enforced here]
   else      → call: (g, ↑, L, γ_g·•·•·μ_g·T)
```

**At a certified/gate boundary (`↑` at an 'a'-position, γ log
head):**

```text
arrive/fire  tape = P_b · μ_g · T,  P_0 = l·  P_1 = •·l·
   μ's gate kind ≠ γ's       → species-mu
   cargo is a ticket of a FOREIGN gate (α with kind ≠ γ's, either
   bit polarity)             → alien-gate  [v1.25, audit #17: the
                                decode row's subscript is
                                load-bearing — α_t at an h
                                boundary with a matching bit was
                                silently decoded into ('K','t',i)
                                under an H row; reachably
                                unmintable (α_t's only mint site
                                is behind the t-fire fence) but
                                detectable, so typed; retain-whole
                                never sees a foreign-gate ticket]
   any (g, i) with two bits among cargo-nested α and RS frames
                             → key-alias  [deep bit coherence at
                                the boundary: a fire must never
                                erase or bury a disagreement]
   CERTIFIED boundary (pos ∈ certificate, INSTANCE-DIRECTED):
       the certificate names popkeys(pos); frames split into
       P = RS ∩ popkeys (erased) and Q = RS \ popkeys (retained
       SPECTATORS — which-path data of unrelated instances, e.g.
       an outer coin's frame around an inner interference)
       any P frame with bit ≠ b → pop-err
       erase (l, P); rs' = Q; leave ('KD', keys) — one tagged
       bundle, emitted on EVERY certified fire (v1.23, audit
       #15: an omitted empty bundle made storage histories
       non-prefix-free — a fresh decode and a carried-in record
       collided on identical targets, norm 2; target storage is
       always new-bundle · incoming, so incoming KS strips off),
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
   else, l = α_g(i, b) with bit = slot (DECODE):
       retain ('K', g, i) — bit-free, branch-equal — UNLESS a
       same-key frame exists (the ticket was replay-re-emitted;
       the frame remains the answerable representation) or a
       same-key burial exists (the buried ticket remains the
       bit-carrying dead record); in the suppressed case no DEAD
       RECORD is created (W8 exclusivity by construction) but
       the arm still appends its one history head ('KA', g, i) —
       v1.24, audit #16: appending nothing let a suppressed
       decode impersonate a retain-whole fire on identical
       targets (norm 2, both suppression variants), and the head
       carries the KEY because two different tickets suppressing
       over a shared two-frame RS collided too (the author
       sibling). KA feeds no guard: ks_dead_keys and
       ks_bitfree_keys exclude it, so a replay off the surviving
       frame stays legal
   else (RETAIN-WHOLE): keep ('K', l) — same-slot arrivals with
       different which-path data stay orthogonal
   then fire: targets (pos, ↑, γ_g·L, A_g(b′)·T′), amplitudes the
   Q_g row for input b; Q_h = H. g = t → t-unimplemented, a
   typed SCOPE FENCE (v1.23, audit #15: h-only is a claim about
   programs, and the machine must be total on WF — the raise
   crashed from WF states; Q_t over ℤ[ω] stays deliberately
   unexercised). Other shapes → species.

retrace      (pos, ↑, γ_g·L, A_g(b′)·T) → (parent+'f', ↓, L,
             γ_g·A_g(b′)·T)      [bt1's action on the γ head]

anshead      (g, ↓, L, γ·A·T): leaf, γ, and A gate kinds must all
             agree, tuple arities exact, answer bit ∈ {0, 1} —
             the answer arriving at a leaf is that leaf's own
             gate's answer — else → species-ans  [v1.20/v1.21,
             audits #12/#13: this was an ASSERT (untyped crash on
             γ/A disagreement) that never consulted the LEAF —
             matched foreign markers γ_t·A_t at an h leaf were
             silently accepted into VB(t,…) — followed by an
             unpack that crashed on malformed tuples while an
             out-of-range bit flowed to an out-of-alphabet halt]
             A second γ/A pair deeper in the tail is accepted
             here and typed `stuck-vb` one step later.
             (g, ↓, L, γ_g·A_g(b′)·T) → (g, VB(g, b′, 0), L, T)
vb2          (g, VB(g,b′,k<2), L, •·T) → (g, VB(g,b′,k+1), L, T)
rootval      (g, VB(g,b′,k<2), L, ρ·T) → RunDone(b̂′, res)
             [the partially-applied answer boolean IS the output;
             REACHABLE — dup reaches two such states]
verr         (g, VB(g,b′,k<2), L, μ·T) → RunDone(err, res)
             [a probed bare boolean value — typed]
vvar         (g, VB(g,b′,2), L, T) → (g, ↑, L, •^(b′+1)·α_g(i,b′)·T)
             one bullet pays the gate application, the rest encode
             the slot; the ticket carries the instance.

root         (root, ↑, ε, P_b·ρ)  → RunDone(b̂, res)
             (root, ↑, ε, l·•·ρ)  → RunDone(I, res)
             other ρ arrivals     → RunDone(err, res)
halt/ticks   RunDone → Halt(nf, res, 0) → tick → …
errors       VB with a non-• non-classifier tape top; ↓-stuck on
             μ/ρ; neutral constants under μ/ρ; and the v1.21
             stall closures (audit #13): γ/A/α meeting a binder
             → species-binder (foreign-lp and empty-tape finals
             stay classical finals — typing them would diverge
             from the λIAM substrate); A/α/l meeting the gate
             leaf without its classifier shape → species-leaf;
             μ/ρ/A unmatched at an f-transport position →
             species-transport — all typed, complete residue.
```

The guard family — `no-instance`, `alien-ticket`, `alien-gate`,
`frame-conflict`, `recall-err`, `replay-err`, `pop-err`,
`species-mu`, `species-ans`, `species-binder`, `species-leaf`,
`species-transport`, `t-unimplemented`, `refire`,
`key-alias` — is the machine's whole answer to aliasing
and misuse: **every detectable manifestation is a typed error,
never a silent reinterpretation.**

## 4. Instance identity and the selection lifecycle

One `vvar` emits one ticket per fire. The ticket then rests in
exactly one of FOUR places: consumed by **recall** (→ replay
frame, bit kept), consumed by **decode** (→ bit-free `K` record,
dead), erased by **certified erasure** (→ `KD` bundle, dead), or
**buried whole** inside a retained `K(l)` record (bit present but
unreachable — dead for recall/replay, adjudicated by deep W3).
Replay re-emits fresh tickets off the frame; a re-emitted ticket
that decodes leaves no record while its frame lives. The key-state
algebra (audit-#2/working-review completion):

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
it has never been reached in any sweep or fuzz run, consistent
with lp-uniqueness (§9).

A bit-carrying burial blocking a fresh call is sound but
conservatively incomplete — in principle an explicit decoder could
support replay from it; registered as future work.

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

1. **Legacy-conservative structural fixpoint**: admit only
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
   domain, and no phase-2 candidate is ever rejected anywhere;
   `dupcall`'s three-position pool is correctly discarded whole
   by validation — its plain run carries typed err mass. The
   pool completion is behavior-identical on the suite; it exists
   to make this sentence exact.) A None result IS the
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
leave admissible boundaries unexplored. What IS claimed (audit
#8 caught the earlier at-admission phrasing overstating phase 1,
which admits structurally): every phase-2 and rescue acceptance
passed full validation at acceptance, NO certificate is ever
returned without the assembled map passing full validation, the
map is a deterministic function of the program, and the frozen
values reproduce bit-for-bit. Minimal (and maximal) canonical
certificates are docketed future work.

**Validation** (`validate`) splits per the working-review verdict:
the STRUCTURAL side — totality, Gram orthonormality on the
structural reachable basis, unconditional transparency, reachable
⊆ WF∧W7∧W8∧W9, mechanized disjointness, and NON-VACUITY at both
levels (audits #7 and #8: a certified position with no boundary
arrival is never consulted, and a popkey occurring in no arrival
frame at its position can never pop anything — either entry
constrains nothing, and `machine_coverage` refuses maps
containing one. Canonical maps are never vacuous, by the two
paths into a frozen map: a phase-1 fixpoint map takes its
positions and keys directly from the converged arrivals, and
every other acceptance goes through `settle()`, which rejects
trials whose positions leave the arrivals and recomputes popkeys
from them) — is mandatory and
isometry-bearing (orbit-norm preservation alone is NOT isometry:
`T|0⟩ = T|1⟩ = |1⟩` holds norm 1 forever from `|0⟩` while
collapsing columns). The DYNAMIC side — exact evolution of the
frozen candidate with **zero guard/err amplitude at every step**
(residue-injectivity prevents cancellation masking a guard fire),
termination, zero final err mass — decides run success and no
longer lets zero-amplitude structural branches veto
coherence-restoring certificates (the audit-#2 `B` witness).
`machine_coverage` is the conjunction; it claims machine soundness
and clean execution, **never** agreement with an external ideal
semantics — no such total reference exists for bare λ-terms (the
eliminator's physical reading — wire, measurement, garbage,
promised uncomputation — is absent from the syntax); per-program
physics expectations live in the suite's written-first table, each
marked hand-derived (audit-confirmed where noted) or — `dupcall`
only — machine-measured: no circuit reading exists for the untyped
refusal row, so it pins the measurement, not an ideal. What
certification proves
is: **every admitted erasure has a checked reversible decoding
from the retained coordinate and spectator state, and the
resulting columns remain orthonormal** — not that the certificate
found the maximally coherent placement (§9).

**Measured facts that pin the design**: the certificate is
semantically load-bearing for HNH (certified `{halt0: 1}` = the
physics vs plain `{1/2, 1/2}`); `B` and `W`'s coherence-restoring
certificates are admitted by the hybrid (structural `refire` at
amplitude exactly zero — verified per-step, all refire sources at
exact amplitude 0 — canonical `{halt1: 1}` for both). Nineteen of
the twenty programs freeze exact canonical dicts reproduced
bit-for-bit by `discover_total`; `dupcall` canonically returns
None (its plain run carries typed err mass, so no certificate can
reach `machine_coverage` — the refusal working as designed) and
runs the plain reading. In the frozen maps most certified
boundaries pop nothing (cargo-only certification, every frame
retained); the q family, `B`, and `W` pop inner-coin instances;
`palpha` certifies via the greedy rescue, guard-silent, basis
474 → 275 with its marginal unchanged. No identity between the
unrestricted pop-everything reading and the canonical dicts is claimed.

## 6. The invariant catalog (WF, the well-formed subtype)

For Run states; reachable ⊆ WF is machine-checked per program, and
the machine's unitarity claims quantify over the subtype:

- **W0** (state grammar — v1.21 tokens, v1.22 the token
  language, v1.23 the SORTED language, v1.24 exact-type purity
  after audits #14–#16's countermodels): the state language of
  §2, mechanized — exact-type PURITY first (the five registers
  are exact tuples of exact tuples/str/int, verified WITHOUT
  HASHING before any scan; impure states early-return W0, so a
  hostile `__hash__`/`__eq__` can neither crash nor poison the
  checker's caches, and list containers no longer pass); exact-
  int bits (bool refused), gates in `{h,t}`, exact arities, lp
  productions recursive with every occurrence resolving to a
  BOUND Var of the CLOSED term — 1-INDEXED: `Var(0)` refused —
  AND satisfying the λIAM logged-position equation `len(slice) =
  level(occ) − level(binder)` via a bound-finding binder walk,
  arrival-lp `K(l)` cargo, the `('KA', g, i)` history-head
  production, coordinates `d`/`pos` in language, VB phase
  exact-int in domain — and SORTED: the log's alphabet is
  lp-like productions only (lp/γ/α — `arg` pushes lp-like heads
  and `bt2` pushes slices; nothing else ever enters; a BULLET in
  the log passed every invariant and `bt1` transported it into a
  `b1` collision at norm 2). Machine-phase placement of
  well-formed tokens within their sorts is the other invariants'
  job — W0 is the language, not the protocol.
  Grounds §1's output alphabet (`rootval` from a WF VB state can
  only produce `halt0`/`halt1` — as exact ints) and closes audit
  #14's stall/crash class: off-language coordinates and
  semantically invalid lps are outside WF, so no WF state stalls
  silently or crashes in `subterm`/`binder_path`. W0 is also a
  GATE (v1.25, audit #17): when it flags, `wf()` returns
  `['W0']` immediately — exact-pure malformed tuples (a bare
  `('AL',)`, an empty `()` frame) were correctly W0-flagged and
  then crashed the W1-W9 deep scans, so W1-W9 are adjudicated
  only over the language's carrier, the same argument that
  justifies the purity early-return; after a clean W0 every
  token has exact shape and the scans index safely. TOTALITY on
  the raw-object layer (v1.26/v1.27, audits #18/#19 — the
  staircase ran: empty tuples through a bare-indexing
  predicate, 1,500-deep recursion, silently accepted garbage
  terms, a cyclic term graph, hostile Run AND term-node
  subclasses, a 2^24 shared-DAG blowup, wf7 crashes, and the
  unvalidated Gate production): dispatch is EXACT-TYPE
  everywhere — `type(s) is Run` for states and per-node
  exact-type for term nodes (a subclass is not a state or a
  term node, and its overridden attribute access never runs:
  the type check precedes every field access); every
  traversal before and during W0 is ITERATIVE, pre-gate
  HASH-FREE, and REPRESENTATION-LINEAR (id-visited purity;
  `closed()` the MAX-FREE term validator — Gate names in
  {'h','t'}, Var indices exact-int ≥ 1, unknown node kinds
  rejected, cycles rejected on-path, ONE memo entry per node
  id, closedness = max_free(root) == 0, measured linear where
  the v1.27 (id, depth) memo was Θ(n²) on App/Lam chains — run
  as an EARLY GATE before any token processing, so no
  downstream walk sees an unvalidated term; the
  token grammar a closure sweep with an id-keyed per-call
  memo), so `wf()` accepts or W0-rejects ANY finite object
  graph — malformed, cyclic, hostile-typed, or shared — without
  crashing or hanging (SCOPE, restated locally per audit #28's
  adopted suggestion: a finite STABLE graph under an unmodified
  runtime — sys.settrace TOCTOU hooks and class-descriptor
  injection mutate the trusted class/runtime mid-call and are
  runtime mutation, not input; the status adjudication, audits
  #27/#28), and `wf7()` is exact-type dispatched and
  gated by the total `wf()` itself: "declines out-of-language
  sources" is enforced, not promised. Past the gate, the W1-W9 scans and the machine share
  the HOST'S STRUCTURAL-OPERATION BOUNDARY: hash, equality, AND
  canonical-order repr — exactly the operations the machine's
  own state discipline performs (evolve keys states by hash;
  state identity is equality; `rs_insert` and the certified
  bundle sort canonically BY REPR) — and these limits DIFFER,
  family-dependently (measured twice: an 8,000-deep in-language
  state hashes and dict-round-trips, then exceeds the repr
  limit in the W2 canonical-order check; audit #21 extended
  this — on the nested-lp family hash stays clean through depth
  32,000 while equality and repr fail at 6,000; audit #20's
  "cross together" reading was that probe family's coincidence
  and is retracted). The boundary is the per-family MINIMUM of
  the three limits, and the claimed, twice-confirmed fact is
  ONE-WAY: no state inside the intersection of all three limits
  crashes any post-gate scan. wf performs no structural
  operation on state content
  that the machine does not, so any state past the boundary is
  one the machine could not itself build, canonically order,
  store, or superpose; post-gate scan cost is value-semantics
  (a shared DAG's value is genuinely exponential in its
  representation). SCOPE: wf() and wf7() are the raw-total
  STATE surface; the instrument helpers (`cert_fibres`,
  `cert_disjointness`, `cert_domain_sweep`) take
  INSTRUMENT-side inputs — term and certificate — on trust, as
  every instrument does its own configuration: their behavior
  on garbage configuration is UNSPECIFIED — they may crash,
  hang, or quietly return meaningless values (measured:
  cert_fibres(object(), {}) returns {}; cert_disjointness
  ([], 0); cert_domain_sweep 1) — and no raw-totality claim
  covers them. Zero reachable
  fires on the twenty programs and the 218,546-state generated
  corpus.
- **W1** (log discipline): `|log| = level(pos)`.
- **W2** (record uniqueness + canonicity): at most one frame per
  `(g, i)` in RS; RS canonically sorted (state identity is
  order-free).
- **W3** (bit coherence, deep): one bit per `(g, i)`
  across ALL bit-carrying representations — frames, top-level and
  slice-suspended tickets on tape and log, and tickets buried in
  retained-whole `K(l)` records.
- **W4** (first-interrogation exclusivity, CLOSED as of v1.20): a
  VB-active state at instance `i` holds NO other representation
  of its key in ANY of the four classes — no `i`-frame in RS
  (`W4-frame`), no live `i`-ticket anywhere on tape or log deep
  through slice cargo (`W4-ticket`, audit #11's countermodel),
  no same-key bit-free storage (`W4-storage`, audit #12), and no
  same-key burial with a CONFLICTING bit (`W4-burial`, audit
  #12); an AGREEING burial is admissible — its `vvar` target is
  WF. The four exclusions close `vvar` preservation **by
  enumeration**: the emitted ticket `α_g(i,b′)` can only violate
  W3, W8, or W9 in the target, and each violating partner class
  is excluded at the source (frame or conflicting ticket/burial
  → W3; bit-free record → W8; second live ticket → W9); `vb2`
  preserves the region trivially (KS untouched). ENTRY into the
  VB region (`anshead`) is guarded on reachable states by the
  lifecycle — no representation of a key exists before its first
  `vvar`, and re-interrogation of a dead key is refire-typed —
  and raw-entry closure is deliberately NOT claimed: W4 encodes
  a reachability fact (first interrogation), strictly stronger
  than raw-state closure at the region's entry. Zero states of
  the twenty programs excluded; zero W4-storage/W4-burial hits
  over 218,546 states of 300 generated programs (the audit-#12
  corpus).
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
  battery and all fuzz sweeps (empirical lp-uniqueness);
  ticket+frame (replay re-emission) and ticket+burial remain
  legitimate, adjudicated by W2/W3/W8.

## 7. Theorems

### 7.1 The coloring (closed form + uniform flip)

```text
φ(s) = depth(pos) + [d = ↑] + Σ w(tape) + Σ w(log) + Σ w(RS)
       + Σ w(KS) + k_VB  (mod 2)
w(•) = w(γ) = w(μ) = w(α) = w(ρ) = w(R) = 0;  w(A) = 1
w(l) for l = (occ, slice) = (depth(occ) − depth(binder)) + Σ w(slice)
w(K₂(l)) = w(l)  — a retained-whole spectator record carries its
                   lp's weight;  w(K₃) = w(KD) = w(KA) = 0
                   (KA joined the alphabet at v1.25, audit #17)
```

**Theorem (uniform flip).** Every Run→Run rule flips φ —
INCLUDING the conservative retain-whole fire — EXCEPT
CERTIFIED-erasure fire, whose delta in the pinned gauge is
exactly `1 − w(l)` for the erased arrival lp (the sweep's
parametrized form is `1 − w(l) − F·w(R)` with `F` the popped
frame count; `w(R) = 0` in the pinned gauge). Proof is per-row
algebra; the load-bearing case is `var`/`bt2` (the teleport's
distance is absorbed by the lp carrying it as weight).
Mechanically verified on every reachable Run→Run edge of the
battery, zero violations. The separating witnesses the previous
phrasing got wrong (audit #9): `Ccoll`'s two reachable
conservative fires have `w(l) = 1` and delta 1 — an ordinary
flip, not a `1 − w(l)` defect — and the Σ w(KS) term decides six
reachable edges (two in `Ccoll`, four in `dupcall`). The weight
assignment is **gauge-pinned**: of all 1024 assignments over the
mark alphabet INCLUDING the KD and KA weights (ten swept
parameters as of v1.25 — audit #17 caught the nine-parameter
sweep omitting the new mark entirely), exactly the 4-element
orbit generated by two symmetries survives — every survivor
fixes KD and KA at 0 — and the orbit fixes every deployed
consequence. The KA pinning requires a DISCLOSED instrument: KA
never occurs on a reachable edge (the suppressed arm is
reachably dead code), so the reachable sweep alone leaves it
free (8/1024, measured and printed); one raw suppressed-decode
fire (wf.py regression twenty's frame-skip fixture — WF,
uncertified, reachably unmintable) joins the edge set and pins
it (4/1024). Both readings print, and the verdict gates on
both.

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

**Mechanization.** The ledger invariant is asserted after every
step of every run in lockstep conformance with the uninstrumented
stepper. Exhaustive: all closed pure terms ≤ size 11 (41,272),
k ∈ {1,2,3} probes — 14,452 surfacings at ≤10 (10,180 terms),
55,727 at ≤11, zero failures. Battery cross-check: zero
mark-free arrivals violate `w ≡ slot`; marked arrivals split both
ways as virtual ancestry predicts.

### 7.4 Range disjointness (on WF∧W7, corrected statement)

**Storage-history discipline (v1.24, all arms):** every fire arm
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
retain-whole: the head's lp). Audit #16's countermodels — a
suppressed decode impersonating a retain-whole fire through
either suppression variant, at norm 2 — and the author's two-key
double-suppression sibling are exactly what the
one-head-per-fire discipline forecloses; audit #15's
empty-bundle collision was the certified arm's instance of the
same defect.

For two certified-fire sources at one boundary:

```text
different retained spectator (pos, log, T, incoming KS, retained Q)
    ⇒ disjoint targets. For pos/log/T/Q the targets embed the
      coordinate verbatim. For incoming KS the embedding is
      new-bundle · incoming with the bundle ALWAYS present
      (v1.23): equal targets force equal bundle heads (branch-
      equal by condition (e)) and hence equal incoming tails.
      Audit #15's countermodel — a fresh decode (bundle {k},
      empty incoming) colliding with a carried-in record (empty
      bundle omitted, incoming {k}) — is exactly what the
      always-emit discipline forecloses;
same spectator, same slot
    ⇒ the SAME source (W7: the fibre is a function; state identity);
same spectator, opposite slots
    ⇒ identical target pair — requires equal decode bundles, which
      is admission condition (e) — carrying the two H rows:
      orthogonal columns (computed inner product 0). This case IS
      the interference mechanism, not a defect.
```

Mechanized for real: the checker collects reachable sources with
full state, constructs their fire targets via the step function,
compares decode bundles cross-slot (bundles computed with the §3
subtraction — the bundle actually left), and computes column inner
products. Zero violations over every certified graph. The audit
countermodels guarding this theorem are permanent regressions
(§10): the extra-frame collision (W7-excluded at the domain
clause — an added frame is a retained-spectator coordinate that
leaves the certified fibre domain — with disjoint targets), the
doctored bundle-divergent fibre (rejected by condition (e)), and
the retained-Q collision (two WF, transparent, same-slot sources
differing only in a retained frame's bit — zero shared targets,
true Gram entry 0).

### 7.5 Gate-copy identity and the reachable lifecycle gap

The fixed invocation shell gives the needed localized theorem: at
either gate leaf, W1 forces the complete log to be `(i)`, and the
gate kind selects the unique leaf path. Thus `(g,i)` reconstructs
the complete gate-copy address `(q_g,(i))`; two distinct copy
addresses cannot alias one key. General logged-position uniqueness
is false and is not claimed. The proof and its exact scope are in
`instance-identity.md`.

The alternative blanket local theorem is also false. In canonical
`negative`, a reachable frame-free `recall` source and its raw-WF
clone with the agreeing frame both pass WF/W7 and map to the same
target because frame insertion is idempotent. The clone is not
reachable. The exact reachable statement is therefore
**reachable-recall injectivity**: no reachable first-return and
replay-return sources may agree in every coordinate after deleting
only the matching frame. The uniform proof attempt found that the
previous two-class provenance slogan is not locally invariant:
certified fire may pop the matching frame while its replay-emitted
ticket survives in the tape tail or log, exactly the WF-clean
`popped-frame/riding-ticket` regression. Even assuming frame survival,
W0--W9 admit a raw `vvar`/`replay` pair with the same frame-erased
landing control. The remaining proof therefore factors through a
reachable no-rider lemma, unique alpha ancestry, and a cross-phase
separation lemma stable under Hadamard/certified-fibre reconvergence.
Simple typing and strong normalization do not supply the last lemma.
Registered exhaustive attacks found no reachable pair, but no uniform
lifecycle proof is known. The local live/dead H case is now reduced exactly:
inside one retained fibre, an opposite-answer child pair can change liveness
asymmetrically only if its earlier routing to the Boolean arrival slot is
non-injective (`RRIParentReturnInterface.lean`). Converting the first such
routing merge into an earlier reachable separator/RFS remains the global gap.
v1.43 instead makes a complete direct check of this predicate mandatory on
every finite carrier admitted by `machine_coverage`.
The local theorem remains useful if an unbounded semantic acceptance theorem
is later wanted; it is no longer an assumption of the current finite-sector
coverage claim. Every detectable divergent manifestation remains typed.

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
(including `B` and `W`). Outside: `dup` (self-application —
deliberately, the untyped copy regression), `q` (E = λz.Iz vs N
branch types ununifiable — the wire imbalance `qprime` was built
to repair; `qprime` types clean), `dupcall` (NOT′/EP ununifiable).
All escapes — `h h`, gate literals in bodies, swapped or doubled
shell arguments — rejected.

## 9. The claim and the reachable lifecycle gap

**The coverage claim.** Over programs that are (i) typable
h-only under the signature judgment (with the syntactic boundary:
shell args exactly `Gate(h)` then `Gate(t)`, no gate literals in
bodies, closed bodies) and (ii) whose canonical pipeline reports
`machine_coverage`: **the kernel is total and Gram-clean on the
structural reachable basis (U an isometry there), every admitted
erasure is reversibly decodable from its retained fibre
coordinate, the frozen certificate's exact run carries zero
guard/err amplitude at every step, and every failure mode is
typed and visible — never silent.** Reachable-recall injectivity is an
independent direct acceptance conjunct, not inferred from the Gram result.

`machine_coverage` does NOT claim agreement with an ideal quantum
semantics — no total reference exists for bare λ-terms; which
eliminations are wires is the compilation theorem's question.
Physics agreement is claimed program-by-program in the suite's
written-first table (hand-derived circuit readings, several
independently confirmed by the audits; `dupcall`'s refusal row is
machine-measured, the one non-hand entry). A user cannot tell from
`machine_coverage` alone whether a program's canonical placement
reaches its circuit ideal — that adjudication lives in the
physics table. Nor is the canonical certificate minimal or
maximal (§5): it is the deterministic validation-adjudicated
greedy fixpoint, nothing more.

**The post-audit identity result and direct finite gate.** The
fixed-shell gate-copy theorem proves `(g,i) ↦ (q_g,(i))`, closing
distinct-copy key aliasing. Every detectable misuse remains typed
(`frame-conflict`, `alien-ticket`, `key-alias`, `refire`; deep W3
adjudicates bit-carrying coexistence; W9 excludes duplicate live
tickets statically). The raw alias-tolerant transition theorem is
false because two agreeing `recall` sources differing only by the
matching frame have the same target. One source of the exact
`negative` witness is unreachable. v1.43 checks the reachable-recall predicate
directly over a complete nonterminal carrier and rejects the registered pair
when synthetically made reachable. The uniform lifecycle derivation and
its phase-sensitive H-history coherence remain open, but neither is used as a
premise of current finite-sector `machine_coverage`. Concrete Lean replay is
closed for all 17 canonical typed sectors.

Standing fences, all typed: literal gate application and open
bodies (untypable), the `t` gate (ℤ[ω] reserved), outputs beyond
{0̂, 1̂, I} (readback controller), and every §3 guard.

**The v1.42 claim PASSED fresh-context independent audit #35
(cx-20260810-105238-1baf, 2026-08-10) with zero required
corrections — C1–C6 confirmed, the alias gap the registered
conditional.** The loop's gate discipline is retired with the
loop: thirty-four FAILs taught that the gate sentence and §1
must name the same audit number (audits #16 and #19 caught it
stale; v1.27 made it a build assertion), and the final pack
asserted both that and the consult size bound. (Audit #16 caught
this sentence stale; audit #19 caught it stale AGAIN despite the
parenthetical promising otherwise — the promise is now an
ASSERTION: the pack assembly script verifies §1 and §9 name the
same audit number and refuses to build the pack otherwise.)

The gate-copy theorem, raw-recall counterexample, and v1.43 direct proof gate
postdate that pack. They change neither its audit verdict nor the v1.42
transition/WF machine. No fresh-context v1.43 verdict is claimed; the targeted
multiagent audit and exact regression surface are recorded in §1 and
`RRIDirectCertificateAudit.md`.

## 10. Verification state

The current kernel battery has one authoritative interpretation:

- all twenty frozen kernel programs are total, exact-Gram clean, and match the
  written-first physics table;
- canonical discovery returns nineteen exact certificate dictionaries and the
  validated no-erasure result for `dupcall`; `h Omega` rejects admission;
- W0--W9, range separation, guard typing, certificate nonvacuity, conservation,
  and the all-arms one-storage-head discipline are executable gates;
- thirty-two permanent regression predicates and both declared coverage-boundary
  witnesses remain in the battery. These fixtures pin the stated predicates and
  known coarse mutant classes, not arbitrary implementation strategy;
- the complete-carrier RRI gate passes all 17 canonical typed sectors and all 73
  deterministic Boolean-100 sectors. Collision, multiplicity, factorization,
  dispatch, cap, initialization, certified-H, and incomplete-carrier controls
  reject as intended;
- the generated concrete Lean replay covers 5,220 nonterminal `Run` states,
  5,279 rows, 142 recall sources, 53 certified-H sources, and 18 exact
  H-reconvergent targets. The exporter is untrusted; Lean rechecks row equality,
  closure, and both RRI formulations.

The v1.42 audit verdict applies to the transition/WF claim. The later composed
Gate-1 audit applies to the accepted full machine. Neither result proves the
optional ambient lifecycle theorem. The 25 rerunnable historical audit kits
and their adjudicated exceptional exits are provenance, not current interface;
the ledger records them without duplicating them here.

## 11. Appendix — HH step-indexed trace

(As of v1.23, every post-fire state additionally carries the
explicit `('KD', ())` bundle in KS — not displayed in these rows;
rules, tape shapes, and timings are unchanged. The v1.24 KA head
appears in NO row of this trace or any reachable state of the
canonical suite — the suppressed-decode arm is reachably dead
code there; only raw-state fixtures and kit probes mint it.)

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
