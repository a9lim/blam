# qALC kernel — current register

**Status: v1.40.** The kernel is a scratch superposition evolver
for qALC's quantum-control fragment (λIAM lineage, `h`-only, exact
ℚ[√2]): the eight classical token rules plus gate probes that FIRE
at boundaries with H-row amplitudes, instance-keyed
ticket/frame/record machinery for re-interrogation,
**instance-directed** per-program transparency certificates with a
hybrid canonical pipeline — structural admission and structural
isometry mandatory, exact-amplitude dynamic cleanliness deciding
run success ("amplitudes decide whether a run succeeds, never
whether the machine is an isometry") — a ten-invariant
well-formedness subtype (the W0 token grammar plus W1-W9), a
typed h-only fragment judgment with a
syntactic language boundary, a written-first per-program physics
table, and every failure mode typed — never silent. Shaped by a
fresh-context adversarial audit loop and three working reviews;
the round-by-round history, including the healing of audit #2's
fatal witness `W`, lives in the chronicle (§11) and the ledger.
The standing PASS re-claim is **gated on fresh audit #33**, whose
verdict will be registered here. Kernel-arm provenance is the
chronicle's per-row "what changed" column — summaries of it have
been refuted twice by literal diff (audit #13 killed "unmoved
since v1.11"; audit #14 showed the corrected two-wave summary
still omitted v1.12's ordinary-decode burial-suppression change
and mislabeled v1.21's binder/transport arms as "leaf" guards) —
so this register states arms exactly: §11's rows for every
version, and here the CURRENT delta only:
v1.40 changes COMMENTS, CLAIM SCOPE, AND THIS REGISTER — the
fixtures untouched, zero executable changes, the wf.py delta
comment-only (AST-identical to v1.39): audit #32 (machine
clean a SIXTEENTH round; charge 1 CONFIRMED-SOUND — both
audit-#31 mutants independently rebuilt exit 1, carrier
removal exit 1, cargo31's full drain traced 12/12 with the
unbound lp popped last; C1 confirmed including a full fresh
recapture; C5 fresh corpus zero-hit; the v1.38 marking
verified complete and both corrected sentences verified true
as rewritten) REFUTED C4's coverage wording with a
FIXTURE-AWARE mutant: canning every long all-'b' occurrence
EXCEPT the exact length-13 corrupt, and skipping every long
slice EXCEPT a position-0 peek for the exact deep value,
passes the complete suite at exit 0 with neither deep
mechanism running on the fixture families. The finding is a
BOUNDARY, not a defect to out-fixture: no finite fixed public
fixture pins a fixture-aware implementation (a mutant can
agree on any finite tested set and diverge elsewhere), so the
claim now says exactly what the gates prove — §10's
sensitivity-scope statement — and the mutant is registered as
the standing boundary witness (the auditor's kit joins the
roster; its mutant row exits 0 BY CONSTRUCTION). Two wording
defects corrected everywhere current: the blanket "placed
where the LIFO walker arrives LAST" was true only for
shells30-rs/ks and cargo31 — comp28 and both occ29 corrupts
are last in ordinary LEFT-TO-RIGHT rs/ks loops, and the KD
corrupt is the last key of a left-to-right all(); and
"locally valid lp" contradicted w0lp_shape's own docstring,
whose LOCAL predicate includes the occurrence walk (the
corrupt values FAIL it) — the accurate phrase is
"tuple-well-shaped lp whose sole W0 defect is an unbound
occurrence." This round also returns this file to its
charter: the preamble's per-version history stack is deleted
— §11's rows and the ledger carry every round.

This file is the current contract and register only. The
round-by-round history — countermodels, corrections, verdicts —
lives in `docs/ledger/2026-08.md` and this file's git history;
§12 is the map. The scratch implementation lives outside the tree
(the §9-gate no-code rule of `architecture.md` governs); the
machine designs behind it are `token.md` (active) and `machine.md`
(read-only failures).

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
separate `U` application. The ring is `ℤ[1/√2]` — `h` only; `t` is
the same table with `Q_t = diag(1, ω)` over `ℤ[ω]/√2^d` and its
own tags, deliberately left unexercised. Classical substrate: the
eight λIAM rules exactly as pinned in `token.md` §2.

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
legacy pop-everything reading and the canonical dicts is claimed.

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

### 7.5 What is NOT claimed (the alias gap)

No injectivity theorem for logged-position instance keys is
claimed or assumed. If two dynamic copies alias one `(g, i)`:
divergent selections between bit-carrying representations are
typed (`frame-conflict`); cross-class encounters are typed
(`key-alias`); dead-key fresh calls are typed (`refire`). What
remains open: an **alias-tolerant local transition theorem** —
that agreeing-bit aliases cannot silently merge histories that
should stay orthogonal. λIAM logged-position uniqueness (which
would close this outright) is a **conjecture**; until one of the
two is proven, the soundness claims are conditional on it, stated
as such, with every *detectable* manifestation typed.

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

## 9. The claim and the alias gap

**The coverage claim.** Over programs that are (i) typable
h-only under the signature judgment (with the syntactic boundary:
shell args exactly `Gate(h)` then `Gate(t)`, no gate literals in
bodies, closed bodies) and (ii) whose canonical pipeline reports
`machine_coverage`: **the kernel is total and Gram-clean on the
structural reachable basis (U an isometry there), every admitted
erasure is reversibly decodable from its retained fibre
coordinate, the frozen certificate's exact run carries zero
guard/err amplitude at every step, and every failure mode is
typed and visible — never silent.** The claim is conditional on
the instance-alias gap below, stated as such.

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

**The instance-alias gap.** No injectivity theorem for
logged-position keys is claimed. Every detectable manifestation
is typed (`frame-conflict`, `alien-ticket`, `key-alias`,
`refire`; deep W3 adjudicates bit-carrying coexistence; W9
excludes duplicate live tickets statically). Open: an
alias-tolerant local transition theorem — that agreeing-bit
aliases cannot silently merge histories that should stay
orthogonal — or λIAM logged-position uniqueness. The soundness
claims are conditional on it.

Standing fences, all typed: literal gate application and open
bodies (untypable), the `t` gate (ℤ[ω] reserved), outputs beyond
{0̂, 1̂, I} (readback controller), and every §3 guard.

**The PASS re-claim is gated on fresh-context independent audit
#33; the verdict will be registered here.** (Audit #16 caught
this sentence stale; audit #19 caught it stale AGAIN despite the
parenthetical promising otherwise — the promise is now an
ASSERTION: the pack assembly script verifies §1 and §9 name the
same audit number and refuses to build the pack otherwise.)

## 10. Verification state

Twenty-program suite (twelve sectors + the audit witnesses
`buried`/`palpha`/`dupcall`/`B`/`W` + stressors
`weave`/`hweave`/`qq`):

| program | basis | dynamics | note |
|---|---|---|---|
| HH | 82 | 0̂: 1 | earned coherence (inner cert + decode) |
| HNH | 104 | 0̂: 1 | certificate load-bearing (plain: ½/½) |
| negative | 83 | I: 1 | haltI sector; recall regression |
| selector | 106 | ½ / ½ | |
| lone | 53 | ½ / ½ | |
| pstar | 242 | ½ / ½, sup 4 | replay regression |
| 3coin | 180 | ½ / ½, sup 4 | |
| q | 218 | ½ / ½, sup 4 | untyped (battery-only); time offset 35 |
| qprime | 246 | ½ / ½, sup 4 | q's typed repair; offset 7 |
| q2 | 115 | ½ / ½, sup 4 | offset 3 |
| dup | 90 | ¼ / ¼ / I ½ | untyped copy-discrimination regression |
| Ccoll | 143 | ½ / ½ | C-collapse class (decoheres, correctly) |
| buried | 432 | ½ / ½, sup 4 | audit-1 witness, healed (replay record) |
| weave | 290 | ½ / ½, sup 4 | interleaving stressor |
| hweave | 225 | ½ / ½, sup 4 | coherence across an interleaving |
| qq | 2,192 | ½ / ½, sup 8 | Q in Q, double-crossed re-seeks |
| palpha | 275 | ¼ / ¾, sup 3 | audit-2 witness; certified via the greedy rescue (one poppable key excluded to spectator), guard-silent, marginal unchanged from plain (474-state) reading |
| dupcall | 632 | typed err ½ + ¼/¼ | untyped; refire positive control |
| B | 186 | 1̂: 1 | audit-2 decomposition witness, healed (structural refire at amplitude 0) |
| W | 498 | 1̂: 1 | audit-2 fatal witness, healed (inner boundary pops the inner coin's two instances; outer frames retained spectators; structural refire at amplitude 0, verified per-step) |

All twenty: zero stuck / non-unit / non-orthogonal columns; guards
silent except `dupcall` (expected: `alien-ticket`) and `B`/`W`
(expected: structural `refire` at amplitude exactly zero — the
hybrid's core case). The written-first physics table passes on all
twenty. `discover_total` == frozen CERTS on all 20: nineteen exact
canonical dicts compared bit-for-bit; `dupcall` canonically None
(plain run carries typed err mass; plain-reading fallback);
`h(Ω)` → None. Negative controls: pstar × wrong certificate
reaches `pop-err`; dupcall × v1.7-era certificate reaches
`refire`, all-err. WF/W7/W8/W9 sweeps + mechanized disjointness:
zero violations; **thirty-two permanent regressions** (the v1.6 pair;
extra-frame collision, W7-excluded with disjoint targets;
doctored bundle divergence; K+frame alias; retained-Q
disjointness — spectator-bit columns share zero targets;
duplicate-ticket W9; retained-Q KD — a cargo key with a retained
frame leaves an EMPTY bundle, targets WF-clean; bitfree-burial —
a buried key stays the sole bit-carrying record, the key OUT of
the (explicitly present, v1.23) bundle beside it; popped-frame +
surviving ticket — the T-riding ticket stays the answerable
representation, the key out of the explicit bundle, targets
WF-clean;
vacuous-position — a certificate entry at an unreachable
position must fail `machine_coverage` while the canonical map
passes; ghost-key — an inert popkey occurring in no arrival
frame at its certified position must fail `machine_coverage`,
key-level non-vacuity; deep-W4 — a slice-suspended
same-instance ticket in a VB-active state must be flagged while
the stripped control stays clean; W4 storage/burial — same-key
bit-free K/KD storage and a conflicting-bit burial in a
VB-active state must be flagged (`W4-storage`/`W4-burial`)
while the clean and AGREEING-burial sources stay WF and the
agreeing burial's vvar target measures WF, the built-in
no-over-tightening control; answer-species — mismatched and
matched-foreign γ/A markers at a leaf must be typed
`species-ans`, the matched-own anshead intact, and the retrace
chain typed one step after `bt1g` with no crash anywhere;
grammar/stall — W0 flags and species-ans types all five bad
answers (bits 2/-1/7 and both malformed arities), the VB-domain
violation is W0-flagged, the three stall arms fire exactly on
their cases, and the classical final plus the deeper-pair chain
stay untouched; state-language — the numeric/bool aliases are
W0-flagged AND species-ans-typed (no halt1.0/haltTrue from any
WF state), the malformed productions (bullet/answer K(l) cargo,
shallow ticket instances, non-lp frame/K/KD instances) and the
coordinate violations (alien d, alien path component, off-tree
path, non-Var lp occurrence) all W0-flagged, with the exact-int
bits and the kit-exact foreign-lp classical final as intact
controls; log-sort/slice-equation — bullet/answer/mu/rho log
entries W0-flagged, the slice-length violation and the
open-term state W0-flagged, an lp log entry intact; KS
prefix-freeness — audit #15's fresh-decode/carried-in pair
produces DISJOINT targets with the empty bundle explicit, and
the t boundary is typed with the h-fire control intact; fire
prefix-freeness — audit #16's frame-skip and burial-skip pairs
AND the author two-key double-suppression pair each produce
disjoint targets with the `('KA', g, i)` head explicit in every
suppressed target, the decode-recorded arm an intact control;
W0 totality II — the `Var(0)` state and the list-tape state are
W0-flagged at source, a hostile-hash tuple-subclass is
W0-flagged WITHOUT crashing the checker, and the
tuple-everything control stays WF; checker totality III — the
bare-`('AL',)`, bare-`('L',)`, and empty-frame states return
exactly `['W0']` with no exception, and an in-language
multi-violation control still lists its W1-W9 flags (the gate
must not over-collapse); alien-gate — foreign-gate tickets at
the fire boundary are WF and typed `alien-gate` at both bit
polarities, the same-gate decode control fires unchanged;
totality IV — an exact-pure empty tuple in EACH of the four
registers returns exactly `['W0']` with no exception, a
1,500-deep exact tuple returns `['W0']`, and a 1,500-lambda
closed term's root state passes wf in full — the deep-term
no-over-rejection control; totality V — junk-string and
`object()` terms W0-rejected, the cyclic Lam graph W0-rejected
promptly, the hostile Run subclass declined without raising,
the 2^24 shared-DAG state W0-rejected promptly, wf7 declines
the malformed-frame source, with the deep-term and genuine-Run
adjudications as controls; totality VI — the hostile TERM
subclass W0-rejected with no hostile code executed, the three
invalid-Gate terms W0-rejected, wf7's hostile-subclass and
unhashable sources declined without raising, and the
WF-source-reaches-fibre plus 800-node-chain controls intact;
totality VII — the five scalar-root states and the
hostile-`__eq__`-in-d state W0-rejected with nothing executing,
wf7 declining, and the n=8,000 valid deep-lp walk inside the
linear band; composition linearity — the n-frames-one-lp family
W0 at both sizes inside the linear band, with a distinct-lps
no-aliasing control and a traversal-sensitivity pair (v1.38:
in-language genuine 'W0'-free; the corrupt frame — v1.39,
after audit #31's canned-count mutant defeated the shallow
sentinel — is the LAST entry of the left-to-right rs loop, a
tuple-well-shaped all-'b' lp whose sole W0 defect is its
unbound occurrence, which the shipped checker rejects via
the occurrence walk, exactly ['W0']); occurrence-memo — the distinct-shells/
shared-occurrence families inside the linear band, the
stale-interleaving verdict pinned ['W0'], the fresh-call
isolation control, and sensitivity pairs for both storage
variants; shared-substructure — the shared-slice
rs/K-storage families and the shared-KD-keys family W0 inside
the linear band on the auditor's exact term shape, with
sensitivity pairs for all three kinds; big-index/
slice-cargo — the Var(1<<n) family W0 and the carrier
slice-cargo family WF-CLEAN inside the linear band —
in-language as of v1.38, with the corrupt-shell control
(exactly ['W0']; v1.39 — the corrupt element at slice position
0, popped LAST under the LIFO walker so a full drain is
required, a tuple-well-shaped lp whose sole W0 defect is an
unbound occurrence that the shipped checker rejects via the
deep walk) as the positive traversal gate, so
audit #30's carrier-removal countermodel and both of audit
#31's checker mutants now exit 1
(n−1 runtime-built DISTINCT
shells — one per 'a' of the carrier occurrence, which is what
the slice equation requires; the count corrected in v1.37
after audit #29 caught v1.36's own "n" off by one — sharing
ONE occurrence object; v1.36, after audit #28 proved the first
fixture's shells constant-folded to one object, with
distinctness gated as a conjunct of the flag and
forced-falsifiable alone), the bound-big-index control
WF; fieldless — the four undefaulted hollow Runs W0 without
raising, the defaulted trio pinned to its class-default
fallback, hollow Lam/Var terms W0, wf7 declining, constructor
controls intact).

**Sensitivity scope (v1.40 — audit #32's boundary).** The
corruptions are last in their relevant enclosing scans:
comp28/occ29 in sequential rs/ks traversal; shells30-rs/ks and
cargo31 at LIFO-last slice position 0; KD at the last
left-to-right key. The fixed pairs force these verdicts and
defeat the exhibited mutants, but do not characterize every
fixture-aware checker implementation. What the pairs prove:
the SHIPPED checker's extensional verdicts on the six fixed
families and the slice-cargo control, and the death of audit
#31's family-oblivious mutant class (slice-skipping,
canned-count — both exit 1). What no finite fixed public
fixture can prove: that an arbitrary PASSING implementation
runs the machinery — audit #32's fixture-aware mutant (canning
every long all-'b' occurrence except the exact length-13
corrupt; skipping every long slice except a position-0 peek
for the exact deep value) passes the complete suite at exit 0,
and is registered as the standing boundary witness: its row in
the auditor's kit reads exit 0 BY CONSTRUCTION, permanently.
Machinery coverage past the extensional gates would need
instrumentation, generated hidden variants, or differential
testing — deliberately out of scope for a fixed public suite;
the sentinel arms race terminates in this statement.

The
gating structure, stated exactly
(audits #6 and #7 each caught a computed-but-non-gating
verdict; audit #8 forced all eleven then-regressions
individually and confirmed each drives exit 1; audit #12
independently forced all thirteen then-flags plus every
instrument component — fourteen forcings — each to exit 1;
audit #13 confirmed the fifteen-gate structure 15/15; audit
#14 confirmed sixteen-for-sixteen with independent forcings
including ok_gr; audit #15 confirmed seventeen-for-seventeen;
audit #16 confirmed nineteen-for-nineteen plus fourteen
instrument components, every mutation exit 1; audit #17
confirmed twenty-one-for-twenty-one plus the fourteen
components likewise; audit #18 confirmed
twenty-three-for-twenty-three plus the fourteen components,
the two polarity readings forced separately, and the raw gauge
instrument REMOVED → exit 1; audit #19 confirmed
twenty-four-for-twenty-four plus the fourteen components with
warnings promoted to errors; audit #20 confirmed
twenty-five-for-twenty-five plus the fourteen components plus
the three polarity-reading mutations; audit #21 confirmed
twenty-six-for-twenty-six likewise, plus conservation at size
11 and the max-free validator against an independent reference
over 50,000 randomized graphs incl. 5,349 cycle mutations with
zero mismatches, plus wf7 old-vs-new over 5,508 reachable
states with zero verdict differences; audit #22 confirmed
twenty-seven-for-twenty-seven plus the fourteen components plus
the three polarity-reading controls, the reconciled boundary on
an independent family, and all four v1.29 repairs individually
linear) — audit #23 confirmed twenty-eight-for-twenty-eight plus the
fourteen components plus the three polarity readings, and the
v1.30 honesty repairs including a FOURTH observed cert_*
behavior class (a certificate subclass's __contains__ executing
before a quiet return) covered by the UNSPECIFIED wording — audit #24 confirmed twenty-nine-for-twenty-nine plus the
fourteen components plus the three polarity readings, and
CONFIRMED the memo doctrine by static enumeration — audit #25 confirmed thirty-for-thirty plus the fourteen
components plus the three polarity readings, extend-once and
the KD memo mechanically — audit #26 confirmed thirty-one-for-thirty-one and the clamp
lemma by 60,000-graph differential; audit #27 confirmed
thirty-two-for-thirty-two plus the fourteen components plus
the three polarity readings, raw-object totality in scope, and
the defaulted-field fallback by 110,232 comparisons — audit
#28 re-confirmed thirty-two-for-thirty-two plus the components
and readings by fresh AST-derived forcing, noting the
slice-cargo subcomponent then gated a misconstructed shape
(repaired and identity-gated in v1.36): the v1.6 pair
gates `collisions_under_wf()`; the other thirty gate
`cert_sweep()`'s return; the module `__main__` conjoins all
three sweeps in its printed total AND ITS EXIT CODE, so any
single regression failure exits nonzero (measured: forcing the
pair false → exit 1; forcing cert_sweep flags false → exit 1,
including the v1.20 through v1.35 flags; the
emulated-old-arm probe flips `cert_sweep` to FAIL). Three
v1.12/v1.13-era regression mechanizations were updated in v1.23
to the always-emit discipline (their targets now carry the
explicit empty bundle; the theorems they guard — no key with a
surviving representation enters the bundle — are unchanged and
still measured True), and two hand-built fixture lps (the v1.11
tcargo pair and the deep-W4 stripped control) were corrected to
satisfy the lambda-IAM slice equation, countermodel essence
untouched in every case. Old kits' hand-built subtraction
MATRICES now exercise fewer cases under the tightened language
(the v116/v117 kits: 33 originally, 6 surviving) — their
historical confirmations stand as records of then-language
runs, and the subtraction code they verified is diff-identical
since v1.13 (the v1.23 arm change touches only the bundle's
EMISSION, not its computation).
Conservation:
exhaustive ≤ size 11, 14,452 surfacings at ≤10 / 55,727 at ≤11,
zero failures. Polarity/terminal chains/gauge: zero violations,
orbit exact — 4/1024 with the KD and KA weights enumerated
(audit #9 caught the 8-parameter sweep asserting KD's zero
rather than enumerating it; audit #17 caught the 9-parameter
sweep omitting KA entirely), every survivor fixing KD and KA at
0, the KA pinning via the disclosed raw suppressed edge with
the reachable-only 8/1024 reading printed beside it. All prior audits' independent reproducers
rerun clean or typed (audit #1's fuzz 250/250; audit #2's kit
clean on every lifecycle, its term-evaluator mismatches
adjudicated as that evaluator's non-normalization; audit #3's
spectator columns share zero targets; audit #4's countermodel
pair healed; audit #5's popped-frame countermodel healed; audit
#6's gate probe flips as it must; audit #7's vacuity probe now
refused, its cap counterexample matching the three-way None
sentence; audit #8's ghost-key probe now refused at the key
level; audit #9's COLORING probe stands as evidence of the
pre-v1.17 §7.1 phrasing — its six witness edges are decided
correctly by the mechanized theorem, which §7.1 now states;
audit #10's F-parity probe stands as evidence that popped and
total frame counts differ on 38 spectator-retaining edges —
the recording now takes the register's popped count; audit
#11's deep-W4 countermodel now flagged at its source; audit
#12's storage/burial sources now flagged `W4-storage`/
`W4-burial` and its answer-species cases typed `species-ans`
with no exception anywhere on its kit rerun; audit #13's
grammar countermodels W0-flagged and species-ans-typed, its
stall states typed by the three new guards; the v114 kit's
`nested-ticket-in-other-K` probe now W0-flags — ADJUDICATED:
that probe's placeholder storage keys ("x", "y") are outside
the machine's gate/instance language, its subtraction columns
unchanged — the same evidence class as the v116 kit's frozen
formula; audit #14's ten countermodels all W0-flagged and, for
the numeric aliases, species-ans-typed. Two v1.22 kit-delta
classes ADJUDICATED: (a) hand-built matrix states in six kits
(v113/v114/v116/v117/v118/v119) carry helper lps whose
occurrences name non-Var positions — outside the lp language
the machine actually mints, audit #14's own binder_path-crash
class — so their wf-display columns move while every failure
counter stays 0, every gate field True, all exits 0; the one
such fixture in wf.py's OWN v1.12 regression was corrected to
a Var-naming carrier, countermodel essence untouched; (b) the
v121 kit CRASHES by construction under v1.22 — its numeric
probe dereferences the Run fields of a countermodel target
that is now a species-ans RunDone; its completed first section
shows all six production countermodels W0-flagged, and
regression seventeen carries the gated form). ALL SIX
instruments carry exit-code verdicts — wf, polarity,
conservation (audit #10 flagged their print-only totals), and
as of v1.19 suite, certify, and typecheck too (audit #11
flagged those; typecheck also gained its printed fragment
total, 17/20 typable-h-only + every escape rejected);
forced-false on any gated component of any instrument measured
exit 1, and the §7.2 branch-offset rows gate the polarity
verdict. The F recording was confirmed by audit #11 on 116
certified-fire edges (target.rs exactly Q; len difference
exactly |P|; zero recording mismatches). Output identity across code changes is claimed for
DETERMINISTIC fields only: `conservation.py` prints a wall-clock
suffix that varies run to run (audit #7 caught "byte-identical"
overclaiming this), and adding a declared validation field
changes every printed validation dict by exactly that field.
Standing audit-confirmed lemmas carried
forward: refire amplitudes of `B`/`W` verified zero per-step; 46
generated programs identical across the v1.11/v1.12 arms and
zero transition differences over 54 reachable certified
arrivals; 1,146-program W9 fuzz clean; burials never consumed
(incoming ks an exact suffix of the target's across 13,693 suite
edges); within a retained group, divergent subtraction results
are impossible (condition (b) plus the group key fix every
subtraction input); the two v1.12 regressions fail under an
emulated v1.11 arm (genuine, not vacuous); the completed
subtraction CONFIRMED-SOUND by exhaustive enumeration of
post-fire bit-carrying storage (audit #6: retained Q frames,
tape/log tickets incl. LP slice cargo, burials — P and l erased,
vb None, ANS not instance-keyed, K/KD bit-free); `palpha`
CONFIRMED against the hand calculation; the 18 pre-v1.13 graphs
have zero transition diffs vs the emulated v1.12 arm; rescue
determinism held under reversed traversal and six hash seeds;
the subtraction re-confirmed over audit #7's extended matrix
(recursively slice-nested tape/log tickets, tickets inside
unrelated `K` burials, ANS carrying no instance, frozen instance
names not traversed, `vb` None at every fire target) and a
fourth time by audit #8's 24-combination cross of every death
mode against every retained compartment; the full-pool
construction verified correct (candidates captured before
phase-2 mutation, phase-1 entries persistent, sorted order); the
three-way None sentence traced return-by-return and CONFIRMED
(audit #8 — the two trailing defensive re-validations are
unreachable-failure by determinism of validate); all eleven
then-regression gates individually forced (audit #8); the
F recording re-confirmed by audit #12 on the same 116
certified-fire edges with zero split or collect() mismatches;
`token.md` §2 vs the classical substrate confirmed row-for-row
by audit #12's independent lockstep — 2,622 closed terms, 7,866
runs, 47,420 steps, all eight rules exercised, zero mismatches;
the deep-W4 clause confirmed with zero reachable
over-tightening on audit #12's 300-generated-program corpus
(206 typable h-only, 363 graphs, 218,546 states), the same
corpus that measures zero `W4-storage`/`W4-burial` hits under
v1.20 and zero W0 hits under v1.21; the v1.20 W4 closure
CONFIRMED-SOUND by audit #13's own nine-row source/target
enumeration, with the agreeing-burial admission verified
non-leaking through direct recall/replay/decode probes and
full injected cones (43/43/13/13 states, zero violations, zero
guards) and the raw-entry caveat verified as honestly
disclosed; audit #13's excavations of the certificate rescue
(reversed traversal), polarity (13,520 states, 116 fires,
gauge 4/512), and conservation (131,335 intermediate-start
surfacings) all clean at symbol level; reachable anshead edges
verified species-exact across 13,504 states / 242 edges;
audit #14 confirmed §8 against typecheck.py sentence by
sentence (17/20, exactly q/dup/dupcall rejected, every escape),
§12's HH trace at every load-bearing anchor by fresh replay,
gram()/run_dyn() as exactly what §10's numbers claim
(amplitude-blind canonical BFS; exact-amplitude evolution with
zero-amplitude pruning), the classical-final exemptions REAL
against lam_iam.step_classical, and the v114 placeholder-key
adjudication in both directions; audit #15 confirmed the
exact-int repair sound against Fraction(1), int-subclass, and
-0.0 probes, the v1.21→v1.22 one-condition diff, and all
seventeen then-forcings — and its two countermodel classes
(prefix-freeness, language sorting) are healed and gated as
regressions eighteen and nineteen, with the fresh-decode/
carried-in pair measured disjoint and the 39 reachable
empty-bundle fires (of 58 certified) now emitting explicitly;
audit #16 confirmed the v1.23 hinge INDEPENDENTLY (re-executed
the extracted v1.22 sources: four instruments byte-identical;
tracked certified-fire counts over 5,760 states of all 19
certified graphs plus 300 generated bodies — zero mixed-count
merges — and derived the stronger v1.23 form: KS is
append-only and each certified fire adds exactly one entry, so
different-fire-count histories cannot merge), the certified-arm
prefix-freeness narrowly sound (tuple-head/tail injectivity
undefeatable by nested bundles or keys), the binder equation
against `lam_iam.binder_path` on every reachable lp (14,136
states, 100,763 occurrences, 166 program/lp pairs, zero
mismatches), the blast radius independently reproduced (39
empty of 58), and the disclosed v1.23 mechanization/fixture
updates theorem-preserving — and its two countermodel classes
(cross-arm fire-history forgery, W0 totality holes) are healed
and gated as regressions twenty and twenty-one, with the
suppressed arm's reachable-dead-code status measured by the
arm census (0 suppressed fires among 137 reachable). The v1.24
kit deltas, adjudicated: the v113/v114 kits' raw
suppressed-decode fire displays gain the KA head (ks-display
relabels; every semantic column — surviving/bitfree/overlap,
marginals, W results — unchanged); the v118/v119 kits'
changed-source line counts grow with the diff (their
capture-identity verdicts unchanged); the v121 kit's crash
byte-identical; all other kits byte-identical. Audit #17
confirmed the KA repair OUTRIGHT (no remaining storage-history
collision: the four KS-writing arms enumerated from source,
non-fire Run→Run paths verified KS-preserving, the three healed
pairs re-derived at state-space inner product 0 with clean
evolutions, KA's guard exclusions verified coherent through the
replay/recall/refire/key-alias lifecycle), extended the arm
census to the corpus (367 certified / 465 retain-whole / 222
decode-recorded / 0 suppressed over 218,546 states), confirmed
C1 at the AST level (exactly one executable kernel change), and
independently validated the registered wrong prediction, the
KA display adjudication, and the positional-inner-product
caveat — its three countermodel classes (checker
non-totality on exact-pure malformed states, the cross-gate
silent decode, the KA-less gauge sweep) are healed and gated as
regressions twenty-two and twenty-three plus the ten-mark
sweep. The v1.25 kit deltas, adjudicated: kits displaying
multi-flag W0 lists on out-of-language fixtures collapse to
`['W0']` under the W0 gate (v113's emulation columns, v119's
W4_STORAGE fixture rows — those fixtures were already the
out-of-language helper-lp class, and the in-language W4
demonstrations live in wf.py's own regression fourteen, still
flagging; v122's bt2-target row); the v117/v118 kits' orbit
displays recompute with the current ten-mark profiler and print
the 8-entry KA-free reachable orbit — independent confirmation
of the unconstrained-mark fact — with `orbits_equal` still
True; the v118/v119 line counts as always; the v121 crash and
the v123 kit byte-identical. Audit #18 confirmed the alien-gate
repair on its full semantic surface (top-level foreign tickets
typed at both polarities, plain and certified; nested foreign
tickets, foreign frames, and foreign burials verified CARRIED —
explicitly tagged in lp cargo, KD keys, spectator frames, and
burial history, never reinterpreted — a strictly stronger
adjacent-representation check than the round claimed), upgraded
the gauge confirmation to the universal equation (every
suppressed-decode edge, frame or burial, either slot, forces
w(KA) = 0 given the reachable orbit — via an independent
profiler and GF(2) solver), and independently verified the two
polarity readings and the raw instrument's own gating; its
totality countermodels (the empty log tuple, the two
RecursionError classes) are healed and gated as regression
twenty-four, with every wf traversal now iterative and the
host-identity boundary registered in §6. Its harness
(audit_v125_fresh.py) joins the kit rerun set — its TOTALITY
rows now report the healed values, its ALIEN_GATE and GAUGE
tables reproduce, and its forcing inventory (its own 23-flag
snapshot) reports all exit 1. Audit #19 verified the closure
sweep EQUIVALENT to v1.25's recursive grammar by differential
testing (100,000 randomized soups, 1,181 acceptances each,
zero mismatches; the optimistic-memo aggregate argument
verified; the AL-instance kind requirement confirmed
lp-shaped), the iterative kernel helpers equivalent to
recursive references (92,961 entries, zero mismatches), C1's
delta exact at the definition level, and C4/C5 in full — its
layer-five countermodels are healed and gated as regression
twenty-five, its harness (audit_v126_layer5.py) joins the kit
set (rerun at its full 100,000 samples, exit 0, healed
readings), and the 8,000-deep repr measurement stands as the
structural-operation boundary's empirical face (§6). Two
caught-in-implementation equivalence hazards this round,
both registered in the predictions file before any
measurement: the v1.26 closure sweep's AL-instance kind
requirement, and v1.27's closed() memo order (an App-cycle
re-enters at the SAME depth, so the memo must be consulted
only after the on-path cycle check). Audit #20 verified
kernel.py BYTE-IDENTICAL, the boundary's one-way statement by
dedicated equal-state probes (depths 1,000–4,000 clean; no
in-boundary state crashes a post-gate scan), the assemble
assertion genuinely refusing a simulated mismatch, and the term
differential surgically isolating the Gate defect (20,000
graphs; zero mismatches once the reference leaves Gate
payloads unconstrained) — its additional "cross together at
6,000" reading did NOT replicate: audit #21 measured hash clean
through depth 32,000 on the nested-lp family while equality and
repr fail at 6,000, so the three operation limits DIFFER
(family-dependently), the boundary is their per-family MINIMUM,
and the claimed fact is the one-way statement alone —
twice-confirmed: no state inside the intersection of all three
limits crashes any post-gate scan. Its layer-six countermodels are
healed and gated as regression twenty-six, its harness
(audit_v127_layer6.py) joins the kit set CRASHING BY
CONSTRUCTION on the healed build (it asserts the broken Gate
behavior as a precondition; the 576-byte capture is the
healing evidence, the v121 pattern), and the max-free
rewrite's linearity is measured (n=3,000 chains in 2 ms
versus 300 ms at n=800 under the old memo). Basis counts vs v1.2 reference: `negative` 103→83,
`selector` 173→106, `pstar` 458→242 — v1.7-era, real, owned;
marginals and supports never moved. All measurements
seconds-scale on the M5 Max.

## 11. Chronicle

Full narratives: `docs/ledger/2026-08.md` (and 2026-07); complete
superseded registers: this file's git history (v1.11's last full
text at `b995df7`, v1.10's at `1c81b64`, v1.9's at `0193b65`, the
layered pre-v1.9 registers through `ed85767`). Audit verdicts in
one line each: audit #1 (v1.7): FAIL — Pα + WF-collision
countermodels, alias gap, honesty defects. Audit #2 (v1.9): FAIL
— the `W` fatal witness (validated certificate, wrong physics),
W8 preservation, (e) over-rejection. Audit #3 (v1.10): FAIL — the
fire arm discarded the P/Q split it computed (spectators erased
bit-free; isometry countermodel), which also refuted the W
registration's causal story (W heals under the literal rule);
plus the validate(None) contract gap, the duplicate-ticket W8
row, and six honesty defects. Audit #4 (v1.11): FAIL — the KD
bundle recorded bit-free death for keys with surviving
bit-carrying representations (retained-Q frame and burial
countermodels, both W8 hazards); the parsimony claim refuted
(single-boundary ∅-pop W certificate reaches the physics);
W-healing and all physics CONFIRMED. Audit #5 (v1.12): FAIL — the
subtraction missed live tickets surviving in the tape tail/log
(popped-frame + riding-ticket W8 countermodel); "maximal-
certified" refuted on shipped `palpha` (phase 3 discarded a whole
map containing one bad boundary while clean sub-certificates
existed); version-string cruft; W-healing, physics, regressions
(verified genuine against the old arm), burial-suffix lemma, and
subtracted-bundle safety all CONFIRMED. Audit #6 (v1.13): FAIL —
the first round with ZERO machine countermodels: the completed
subtraction CONFIRMED-SOUND by exhaustive storage enumeration,
`palpha` and `W` confirmed by hand calculation; the failure was
scaffolding and language — regression ten computed but
non-gating (runnable countermodel), the rescue's "None only when
nothing admits" stronger than its position pool, "nothing
reachable moved" false as written (`palpha` deliberately moved),
residual version cruft. Audit #7 (v1.14): FAIL — zero machine
countermodels again (the subtraction CONFIRMED a third time over
an extended storage matrix; Pα and W hand-recomputed; the
full-pool construction verified correct): the None sentence
omitted cap exits (`state_cap=20` returns None from phase 1);
`validate()` accepted certificate entries at unreachable
positions (vacuously); only eight of ten regressions gated
`cert_sweep` (the v1.6 pair bound nothing mechanical);
"byte-identical" was false against `conservation.py`'s timing
suffix; two register phrases stale (the pool-equals-domain
parenthetical vs `dupcall`; the "three-program" title). Working
reviews: v1.8 design (two structural holes), v1.10 design fork
(the hybrid verdict: amplitudes decide success, never isometry;
no bare-term ideal oracle).

| version | one line | verdict that shaped it |
|---|---|---|
| v1.0–v1.2 | three-program kernel; review killed store-shaped replay; inert replay stack | Codex review: transparency, not inertness |
| v1.3 | instance-indexed tickets/frames, replay, certified pop, time register | review registered |
| v1.4 | polarity coloring closed form, canonical certificates, conservation conjecture | C-collapse countermodel |
| v1.5 | encoded fire: conservative decode default, certified erasure | ratified amendment |
| v1.6 | conservation theorem proved + mechanized; gauge pinned; discover_total | fresh review: math CONFIRMED, scope FAILED (Q) |
| v1.7 | the replay record (idempotent recall, deep keyed replay); WF subtype; cargo conditions | **fresh audit #1: FAIL** (WF collision, Pα, alias gap, honesty) |
| v1.8 | decode records + refire guard; self-validating admission; W7; typed fragment | working review: two structural holes |
| v1.9 | KD bundles + condition (e); key-alias guard + W8; real disjointness checker; syntactic fragment boundary; docs current-only | **fresh audit #2: FAIL** (the `W` fatal witness — clean validation, wrong physics via a zero-amplitude structural veto on `B`-class certificates; W8 preservation refuted; (e) over-rejection; checker totality) |
| v1.10 | the hybrid pipeline (structural isometry mandatory; dynamic cleanliness decides success); instance-directed erasure with validation-adjudicated spectator admission; deep W3 + the key-state algebra; machine_coverage rename + the physics table; `B` healed, `W` registered placement-open | **fresh audit #3: FAIL** (the fire arm computed P/Q and discarded it — retained spectators erased bit-free; retained-Q isometry countermodel; W's "limitation" was this defect and heals under the literal rule; validate(None) gap; duplicate-ticket W8 row; six honesty defects) |
| v1.11 | the P/Q spectator transition implemented literally (KD from P, rs′ = Q); certificates re-discovered and frozen as exact dicts; `W` HEALED at {halt1: 1}, the staged-uncomputation retraction; W9 + the algebra's duplicate-ticket row; validate(None) runs the real sweep; two new permanent regressions; honesty corrections | **fresh audit #4: FAIL** (KD bundle bit-free-records keys with surviving bit-carrying representations — retained-Q frame + burial countermodels; parsimony refuted; W healing + physics CONFIRMED) |
| v1.12 | the KD subtraction (Q frames + burials); W8 extended to bitfree ∩ burial; condition (e) compares the bundle actually left; register decrufted current-only; two new permanent regressions (nine total) | **fresh audit #5: FAIL** (subtraction missed T/log-surviving tickets; "maximal-certified" false on palpha; version cruft; healing + physics + regressions CONFIRMED) |
| v1.13 | the COMPLETE subtraction (bundle names only keys with no surviving bit-carrying representation anywhere in the target — Q frames, burials, T/log tickets); phase-3 GREEDY RESCUE (a failing map is re-admitted greedily, not discarded — palpha certifies, guard-silent, marginal unchanged); "maximal" retracted to validation-adjudicated greedy; version strings unified (the register alone carries the version); tenth regression | **fresh audit #6: FAIL** (zero machine countermodels — subtraction CONFIRMED-SOUND by exhaustive storage enumeration, palpha + W hand-confirmed, 18 graphs zero diffs; regression ten non-gating; rescue claim stronger than its pool; "nothing reachable moved" false as written; version cruft) |
| v1.14 | regression ten GATES the aggregate; rescue pool completed to phase-1 ∪ all phase-2 candidates (measured behavior-identical on the suite — the completion makes the None sentence exact); claim language restricted (moved-graphs claim scoped to the prior 18 + palpha at its certified values); stale version/audit text purged; every prediction of the round held byte-for-byte | **fresh audit #7: FAIL** (zero machine countermodels again — subtraction confirmed third time over an extended matrix, Pα + W hand-recomputed, pool construction verified; None sentence omitted cap exits; validate() vacuously satisfiable at unreachable positions; v1.6 pair non-gating; "byte-identical" false vs the conservation timing suffix; two stale register phrases) |
| v1.15 | NON-VACUITY joins the structural side (`vacuous_positions`, machine_coverage refuses unreachable entries — canonical maps never vacuous by settle()'s guarantee); the None sentence exact in three disjuncts (cap/nonconvergence; empty admission; pool pass accepting nothing); eleventh regression (vacuous-position) gated; the module verdict is the EXIT CODE (any single regression failure exits nonzero, measured); title de-cruffed to "qALC kernel"; output-identity claims scoped to deterministic fields; every prediction held with exactly the declared deltas | **fresh audit #8: FAIL** (zero machine countermodels, third straight — None sentence and all eleven gates CONFIRMED, subtraction fourth confirmation, Pα + W hand-recomputed; non-vacuity position-level only: ghost popkeys validate clean; settle() proof wrong for phase-1-only maps; four honesty findings) |
| v1.16 | KEY-level non-vacuity (`vacuous_keys`: every popkey must occur in an arrival frame at its position; ghost popkeys refused; canonical maps carry zero by the corrected two-case proof — phase-1 maps take keys from the converged arrivals, all other acceptances via settle()); twelfth regression (ghost-key), gated; the admission claim stated honestly (phase-2/rescue validate at acceptance, phase 1 is structural, nothing returns unvalidated); physics-table preamble names the machine-measured row; inventory and contract docstrings corrected; every prediction held with exactly the declared deltas | **fresh audit #9: FAIL** (zero machine countermodels, fourth straight — every mechanical charge CONFIRMED incl. all twelve gates and both non-vacuity levels; §7.1 misstated the mechanized coloring theorem: formula omitted Σw(KS), defect sentence conflated conservative fire with certified erasure, gauge sweep asserted rather than enumerated KD) |
| v1.17 | §7.1 restated to the theorem the checker enforces (φ gains Σw(KS) with w(K₂(l)) = w(l), w(K₃) = w(KD) = 0; uniform flip INCLUDING conservative fire, certified erasure the sole exception at 1 − w(l) pinned-gauge, parametrized form named; Ccoll's separating witnesses registered); the gauge sweep enumerates KD — 4/512, orbit unchanged, KD pinned 0 by measurement; the ghost regression prints its nonzero count; phi(), w(), and every certificate untouched | **fresh audit #10: FAIL** (fifth straight clean-machine round; §7.2 + §7.3 CONFIRMED symbol-level incl. a 131k-surfacing independent conservation check; the inversion: the register was right, the checker wrong — F recorded total frames, not popped; instrument prose + print-only verdicts) |
| v1.18 | the checker catches up to the register: collect() records F as the POPPED count ((len(src.rs) − len(tgt.rs)) mod 2 — §7.1's text stands unchanged); polarity and conservation gain exit-code verdicts (branch-offset rows gating; forced-false measured exit 1); instrument docstrings/comments/pointers corrected (the HH/HNH weight comment now states 0/0 and 1/1); pack labels version-neutral; popped-F sweep 4/512, same orbit; every prediction held with the v117-kit caveat resolved on inspection | **fresh audit #11: FAIL** (F correction CONFIRMED on 116 edges; machine clean; W4 under-implemented — slice-suspended ticket passes the top-level check, subtype not preserved by vvar; "all four instruments gate" overcounted; three stale doc lines) |
| v1.19 | W4 goes DEEP (live same-instance tickets through tape/log slice cargo; the unreachable countermodel excluded from the subtype; stripped control proves no over-tightening); thirteenth gated regression; ALL SIX instruments carry exit-code verdicts (typecheck gains its printed fragment total); kernel.py cert/rs doc lines and two invalid docstring escapes fixed (one long-standing, surfaced by recompile); full decruft sweep per a9's directive; every prediction held, the v118 kit's no-op suite probe adjudicated | **fresh audit #12: FAIL** (first audit-found kernel-arm defect since audit #5's fire-arm countermodel — the anshead species check was an untyped ASSERT and never consulted the leaf, silently accepting matched foreign markers; W4 still leaked on same-key bit-free storage (→W8 target) and conflicting burials (→W3 target); reachable rootval rows and answer-species behavior absent from §3's table; C2's "exactly" missed the SyntaxWarning removal; stale "twelve regressions" pack label; Run.ks docstring incomplete. CONFIRMED: C4 by fully independent forcing of fourteen components, all thirteen gates, machine diff-clean vs the v1.18 snapshot, token.md §2 lockstep 2,622 terms/47,420 steps zero mismatches, deep-W4 zero over-tightening on 218,546 generated states, F on 116 edges) |
| v1.20 | W4 CLOSED by enumeration (`W4-storage` + `W4-burial` join frame/ticket; the four classes exhaust what the vvar-emitted ticket can collide with; agreeing burial admissible, its target measured WF; entry-vs-region closure stated honestly); `species-ans` types the anshead species check — leaf = γ = A — the ONE kernel-arm change since v1.11, bit-identical on every covered output; regressions fourteen (five-case storage/burial table) and fifteen (four-case species incl. the retrace chain) gated; §3 gains the species-ans, rootval, and verr rows; GUARD_RULES, guard docstrings, Run.ks docstring corrected; pack WF label count-neutral; zero storage/burial hits on the audit's own 300-program corpus; every prediction held (one wrong detail registered: wf prints no count line) | **fresh audit #13: FAIL** (the W4 closure CONFIRMED-SOUND by the auditor's own nine-row enumeration, agreeing-burial verified non-leaking, gating 15/15, cert/polarity/conservation excavations clean; the findings: the answer-bit DOMAIN was nowhere stated or enforced — ANS('h',2) was WF and flowed through anshead to an out-of-alphabet halt2, malformed tuples satisfied is_ans and crashed untyped, a γ/A pair meeting a binder stalled silently; and the honesty catch that "one kernel-arm change since v1.11" was FALSE — v1.12/v1.13 changed the fire arm's KD subtraction, as this chronicle's own rows document; plus two stale counts and C2's "seven kits" for eight) |
| v1.21 | W0 joins the subtype (state/token grammar: bits {0,1}, gates {h,t}, exact arities, deep through slice/burial cargo, VB phase in domain — position-appropriateness stays the other invariants' job); anshead hardens to arity + domain (species-ans, never ValueError, never halt2); the untyped-stall class closes with three typed guards (species-binder, species-leaf, species-transport; foreign-lp and empty-tape finals stay classical finals by design); regression sixteen gated; kernel-arm provenance restated exactly (two waves since v1.11: v1.12/v1.13 KD subtraction, v1.20/v1.21 leaf guards — each measured no-op/bit-identical on covered outputs); counts go count-neutral in the standing prose; the v114 kit's placeholder-key probe adjudicated (out-of-language tokens, W0 working as specified); zero W0 hits on the 218,546-state corpus; every prediction held | **fresh audit #14: FAIL** (C5 CONFIRMED 16/16 with independent forcings; §8, §12's trace anchors, gram/run_dyn, the classical-final exemptions, and the v114 adjudication all CONFIRMED. The findings: W0's bit check used Python equality — 1.0/True/0.0/False are ==-equal to bits, so ANS('h',1.0) was WF and rootval string-formatted it into the out-of-alphabet terminal KINDS halt1.0/haltTrue; W0 never checked K(l) cargo shape, ticket/frame/storage instance fields recursively, or the state coordinates at all — d='X' and alien paths were WF and silently stalled, off-tree paths and non-Var lp occurrences were WF and crashed in subterm/binder_path; the "position-appropriateness is the other invariants' job" sentence was refuted (no other invariant does d/path/lp validity); C2 missed the diag capture's own label delta; and the corrected two-wave provenance summary was STILL incomplete — v1.12 also changed the ordinary decode arm, and "leaf-guard wave" mislabeled the binder/transport arms) |
| v1.22 | W0 becomes the FULL state language: exact-int bits (bool refused — the terminal-kind minting), recursive lp productions with occurrences resolving to Vars of the term, arrival-lp K(l) cargo, coordinates d/path in language, VB phase exact-int; anshead's bit check exact-int (the one arm change, bit-identical on covered outputs); regression seventeen (state-language: ten countermodels + exact-int and kit-exact foreign-lp controls) gated; provenance summaries abolished — the register names arms per version only and defers history to these rows; the wf.py v1.12 fixture's App-naming carrier lp corrected (countermodel essence untouched); six kits' helper-lp wf-columns and the v121 kit's crash-by-construction adjudicated; stale W1-W9 phrases updated; zero W0 hits on the corpus; every prediction held in substance with the kit-delta count wrong and registered | **fresh audit #15: FAIL** (C1/C2/C4/C5 CONFIRMED — the v1.21→v1.22 diff exactly the exact-int condition, the delta set exact with the crash scoped, all seventeen forcings, the exact-bit repair itself sound against Fraction/int-subclass/-0.0 probes. The findings: THE FIRST RAW-SUBTYPE UNITARITY BREAK SINCE AUDIT #3 — §7.4's incoming-KS disjointness is false because the certified fire omitted empty KD bundles: a fresh decode and a carried-in record produced IDENTICAL targets, inner product 1, norm 2; W0 admitted BULLET in the log (bt1 transported it into a b1 collision, norm 2 again), never checked the lambda-IAM slice equation (a bad slice stepped to a W1-invalid target), and accepted open terms whose current position crashes binder_path; the t boundary raised NotImplementedError from WF states; "full state language" and the placement sentence refuted with them) |
| v1.23 | The certified fire emits its bundle UNCONDITIONALLY — ('KD', ()) when empty — restoring storage-history prefix-freeness (§7.4 restated to the strip-the-head injectivity); the t boundary becomes the typed scope fence t-unimplemented; W0 gains the log SORT (lp-like entries only), the lambda-IAM slice equation with a bound-finding binder walk, and the closed-term conjunct; regressions eighteen (log-sort/slice-equation) and nineteen (KS prefix-freeness + t fence) gated; three v1.12/v1.13-era regression mechanizations updated to the always-emit form and two fixture lps corrected to the slice equation (theorems and countermodel essences unchanged, all disclosed); THE HINGE PREDICTION, written first, HELD: suite, certify, typecheck, and polarity byte-identical — no reachable interference crosses fire histories, so the machine change is invisible on every covered output; ten kits' ks-display deltas and the matrix-coverage shrink adjudicated; zero W0 hits on the corpus | **fresh audit #16: FAIL** (C1 CONFIRMED independently — the two-arm diff exact, four instruments byte-identical against the re-executed v1.22 sources, the hinge reason verified by a 5,760-state fire-history search plus 300 generated bodies with zero mixed-count merges, and the stronger v1.23 form derived: append-only KS makes different-fire-count merges impossible; C2 CONFIRMED narrowly for certified fires — nested bundles cannot defeat tuple-head injectivity; C4/C5 CONFIRMED — nineteen forcings + fourteen instrument components all exit 1, zero reachable W0 fires, the corpus rerun independently; the binder equation confirmed on 100,763 reachable lp occurrences with zero binder_path mismatches. The findings: THE AUDIT-#15 SIBLING — the suppressed-decode arm appends ZERO storage heads, so a suppressed decode with incoming [K(l)] and a retain-whole fire with incoming [] produce IDENTICAL targets, norm 2, through BOTH the same-key-frame and agreeing-burial variants — legal lifecycle configurations, not the alias gap; W0 accepted Var(0) (`i <= depth` under the 1-INDEXED convention — binder_path IndexError one step inside WF) and never sorted the CONTAINERS (a list tape passed WF, the fire TypeError'd); three stale register/docstring lines, including the §9 gate sentence still naming audit #15) |
| v1.24 | The suppressed-decode fire appends the inert arm-typed history head ('KA', g, i) — EVERY fire arm now appends exactly one head, §7.4 restated to the all-arms one-head discipline; the head carries its key because the author two-key double-suppression sibling (both tickets suppressing over a shared two-frame RS) also collided at norm 2 pre-fix, and a contentless marker would have left it alive; KA excluded from ks_dead_keys/ks_bitfree_keys by design (refire/key-alias/W8/W4-storage blind; replays off the surviving frame stay legal); W0 gains exact-type PURITY (registers exact tuples of exact tuples/str/int, checked without hashing before any scan — hostile __hash__/__eq__ can neither crash nor poison the checker; list containers refused) and the 1-indexed closedness (Var(0) refused); regressions twenty (fire prefix-freeness, three pairs + recorded-arm control) and twenty-one (W0 totality II incl. the hostile-hash probe) gated; the three stale lines fixed; THE HINGE, cheaper this round: suite/certify/typecheck/polarity byte-identical because the suppressed arm is REACHABLY DEAD CODE on the whole canonical suite (arm census measured first: 58 certified / 69 retain-whole / 10 decode-recorded / 0 suppressed); v113/v114 kit ks-displays gain the KA head (relabels, semantic columns unchanged — a kit-delta class my predictions MISSED and registered as the round's wrong call); zero W0/W4 hits on the corpus | **fresh audit #17: FAIL** (the KA repair itself CONFIRMED-SOUND — no remaining storage-history collision; the four KS-writing arms enumerated from source, non-fire paths KS-preserving, the three healed pairs re-derived at state-space inner product 0, the guard-exclusion lifecycle verified coherent — and the reachability hinge confirmed with an independent census matching 58/69/10/0 and EXTENDED to the corpus, 367/465/222/0; C1 confirmed at the AST level; C4/C5 confirmed, 21 forcings + 14 components all exit 1. The findings: wf() NOT TOTAL over exact-pure malformed states — bare ('AL',)/('L',) tape tokens and an empty () frame pass purity, get W0-flagged, then IndexError the W1-W9 deep scans; a WF-clean FOREIGN-GATE ticket silently decoded — α_t at an h boundary with matching bit fires and records ('K','t',i) under an H row, the register's decode subscript dropped by the implementation; the gauge sweep OMITS KA — nine parameters, KA implicitly weight 0 and unconstrainable by reachable edges (the auditor's own repaired sweep: 8/1024 reachable-only KA-free, 4/1024 with a raw suppressed edge, KA pinned 0); plus the stale "inert dead storage" docstring phrase) |
| v1.25 | ONE machine guard added, no arm's storage behavior moves: alien-gate types foreign-gate cargo tickets at the fire boundary at both bit polarities (the decode row's subscript restored to the implementation; reachably unmintable — α_t's only mint site is behind the t-fire fence — so suite/certify/typecheck byte-identical, measured); wf() made TOTAL by the W0 GATE (out-of-language states early-return ['W0']; W1-W9 adjudicated only over the language's carrier; the in-language multi-flag control proves no over-collapse); the gauge sweep goes TEN-mark — 8/1024 reachable-only with KA free (printed), 4/1024 with the disclosed raw suppressed-decode edge, every survivor pinning w(KA)=0, verdict gating on both readings; §7.1 restated; regressions twenty-two (checker totality III) and twenty-three (alien-gate) gated, twenty-three-for-twenty-three under forcing; the "inert dead storage" phrase corrected; my pre-fix hand-derivation of the fire-edge parity DISAGREED with the auditor's sweep numbers and the measurement adjudicated for the auditor (registered — the mechanized sweep is the theorem, not my head-model); kit deltas: the W0-gate display collapses on out-of-language fixtures and the ten-mark orbit displays (independent confirmation of the unconstrained-mark fact), v121 crash and v123 kit byte-identical | **fresh audit #18: FAIL** (C1/C2/C4/C5 CONFIRMED — the delta exact by source reconstruction, 23 forcings + 14 components + both polarity readings + the raw instrument removed all exit 1, zero W0/alien-gate fires on an independently regenerated corpus; the alien-gate repair CONFIRMED on its full surface including nested/frame/burial foreign representations, all carried, never reinterpreted; the gauge claim UPGRADED — an independent GF(2) solver proved every possible suppressed-decode edge forces w(KA)=0 given the reachable orbit: the pinning is arm-intrinsic, not edge-dependent. The finding: C3's totality broken at LAYER FOUR — an exact-pure EMPTY TUPLE in the log crashes wf() UPSTREAM of the W0 gate (w0log → is_gam → bare e[0] IndexError; the gate only protected states whose W0 clauses already computed safely), plus two RecursionError classes (1,500-deep exact tuple in recursive pure(); 1,500-lambda term in recursive closed()); honesty: "wf() is total" false as written, the pack caption's stale regression count violating its own count-neutral convention, "one raw edge" vs one raw fire with two H successor edges) |
| v1.26 | NO arm, NO guard — the helper-level totality round: the four bare-indexing token predicates (is_gam/is_mu/is_ans/is_alpha) gain the emptiness conjunct is_lp always had; every wf traversal before and during W0 becomes ITERATIVE and pre-gate HASH-FREE (explicit-stack pure/closed; the token grammar as a CLOSURE SWEEP — valid iff every closure node satisfies its local predicate — with an id-keyed per-call memo; iterative deep scans; kernel's alpha_keys_live/alpha_bits_deep iterative too, serving the fire arm's deep-W3 guard identically); the totality claim SCOPED to where it lives — total rejection on the raw-object layer, and past the gate the HOST-IDENTITY BOUNDARY shared with the machine's own superposition layer (§6); regression twenty-four (empty tuple in each register → exactly ['W0']; 1,500-deep tuple → ['W0']; 1,500-lambda term passes in full) gated, twenty-four-for-twenty-four under forcing; one equivalence bug caught DURING implementation before any measurement (the sweep's first draft would have accepted an AL with a non-lp instance — the kind requirement restored, registered in the predictions file); pack captions made count-neutral per their own standing convention; suite/certify/typecheck/polarity byte-identical, conservation timing-suffix only, wf exactly one new line; the auditor's harness joins the kit set and reruns healed | **fresh audit #19: FAIL** (the machine confirmed a THIRD consecutive round — C1 exact at the definition level, C2 with the kernel helpers differential-tested against recursive references over 92,961 entries zero mismatches, C4 in full with warnings-as-errors, C5 on an independently regenerated corpus; the CLOSURE SWEEP verified exactly equivalent to v1.25's recursive grammar over 100,000 randomized soups, 1,181 acceptances each, zero mismatches, the optimistic-memo argument verified. The findings, totality LAYER FIVE, all in wf()'s raw surface: garbage terms SILENTLY ACCEPTED — closed() had no rejecting branch for unknown node kinds; a cyclic term graph HUNG the tree walk; a hostile Run SUBCLASS ran __getattribute__ code from inside wf before purity; a 25-node shared-tuple DAG cost 2^24 purity visits, doubling per node; wf7 IndexError'd on an empty frame; and the host-identity boundary AS STATED was false — hash, repr, and equality have different structural limits: an 8,000-deep in-language state hashes and dict-round-trips, then dies in the W2 canonical-order repr sort, while a 2,000-deep control adjudicates fully; honesty: §9's gate line stale AGAIN, the very line whose parenthetical promised joint updates) |
| v1.27 | CHECKER-ONLY — zero kernel changes: exact-type state dispatch (a Run subclass is not a state of the machine; hostile attribute access never runs); pure() id-visited (representation-linear on shared DAGs); closed() a full TERM VALIDATOR (unknown node kinds rejected — garbage terms now W0, consistent with the v1.23 open-term decision; on-path cycle detection rejects cyclic graphs promptly; an (id,depth) memo makes shared term DAGs polynomial); wf7 declines out-of-language rs and non-tuple paths; §6's boundary RESTATED to the host's structural-operation limits — hash, equality, AND canonical-order repr, exactly the operations the machine's own state discipline performs — with the auditor's 8,000/2,000 measurements as its empirical face; §9's stale-gate promise replaced by an ASSEMBLE-SCRIPT ASSERTION (§1/§9 must name the same audit or the pack refuses to build); regression twenty-five gated, twenty-five-for-twenty-five under forcing; a second caught-in-implementation equivalence hazard registered pre-measurement (closed()'s memo order vs App-cycles, which re-enter at the SAME depth); suite/certify/typecheck/polarity byte-identical, wf exactly one new line; the layer-five harness joins the kit set | **fresh audit #20: FAIL** (the machine clean a FOURTH consecutive round — kernel.py verified BYTE-IDENTICAL, C2/C4/C5 in full with three polarity-reading mutations, and the structural-operation boundary SURVIVED its dedicated charge: equal-state probes at depths 1,000/2,000/4,000 clean, at 6,000 hash/equality/repr cross their host limits TOGETHER, no in-boundary state crashes a post-gate scan; the assemble assertion verified against a simulated mismatch; both implementation catches validated. The findings, totality LAYER SIX: hostile TERM subclasses still ran code inside wf — exact-type dispatch protected only the state; the GATE production was never validated — Gate('x') passed wf and broke W0-preservation one step later, Gate([]) crashed the machine on an unhashable name, isolated surgically by a 20,000-graph term differential with zero non-Gate mismatches; wf7 still raised on a hostile subclass, a list inside the path tuple, and a list in the arrival tail — "declines out-of-language sources" was false as written; and the (id, depth) term memo was Θ(n²) on App/Lam chains — 800 objects, 640,800 validator states — where the register said representation-linear) |
| v1.28 | CHECKER-ONLY again — zero kernel changes: closed() REPLACED by the linear MAX-FREE validator (exact-type node dispatch — the type check precedes every field access, so hostile term subclasses never execute; Gate names validated in {'h','t'} — the production the language always required; Var indices exact-int ≥ 1; closedness = max_free(root) == 0 by iterative post-order with ONE memo entry per node id — measured n=3,000 chains in 2 ms vs 300 ms at n=800 under the old memo, "representation-linear" now TRUE as originally worded rather than weakened; on-path cycle rejection kept), run as an EARLY GATE before any token processing (under v1.27 the rs/ks loops ran even after term failure, so a hostile term could still execute during token checks); wf7 exact-type dispatched and gated by the total wf() itself; regression twenty-six gated, twenty-six-for-twenty-six under forcing; suite/certify/typecheck/polarity byte-identical, wf exactly one new line; two wrong calls registered — the layer6 kit does not "flip to healed" but CRASHES BY CONSTRUCTION (it asserts the broken Gate behavior; the v121 lesson re-learned), and the certified-fibre control was first mis-specified (the synthetic cert's fibre map is empty, so W7-domain is the correct preserved verdict — the control now proves a WF source REACHES the fibre logic through the gate) | **fresh audit #21: FAIL** (the machine clean a FIFTH consecutive round — kernel.py SHA-verified byte-identical, C2/C4/C5 in full; the max-free validator itself SURVIVED: 50,000 randomized graphs incl. 5,349 cycle mutations against an independent reference, zero mismatches; hostile terms/Gate payloads/string subclasses/Var(True) all W0-rejected; chains, ladders, and complete-sharing DAGs measured linear; wf7 old-vs-new over 5,508 reachable states, zero verdict differences. The findings, totality LAYER SEVEN: the five register ROOTS never type-checked — pure(0) True since an int is a valid pure LEAF, so scalar roots crashed the container iteration; d omitted from purity — a hostile __eq__ executed at the membership check; wf7 inheriting both; the binder walk's p[:-1] copying Θ(n²) on a fully VALID deep-lp state; and the register CONTRADICTING ITSELF about the boundary — §10/status's "cross together at 6,000" did not replicate: hash clean through depth 32,000 on the nested-lp family while equality/repr fail at 6,000, siding with §6's "the limits differ"; plus the instrument-helper scope needing explicit statement) |
| v1.29 | CHECKER-ONLY, third consecutive: the five register ROOTS join the purity gate as exact tuples and d as an exact str (scalar roots and hostile-__eq__ d objects → ['W0'] before any iteration or comparison); the binder walk goes INDEX-BASED (no copies; the slice requirement = count of 'a'-components past the binder; measured linear — n=8,000 in 2.9 ms at 7.8× the n=1,000 time, was 21 ms at ~27×); the boundary narrative RECONCILED (the "cross together" coincidence retracted in §6/§10; the limits differ family-dependently, the boundary is their per-family minimum, the twice-confirmed claim is the one-way statement); §6 gains the INSTRUMENT-INPUT SCOPE sentence (wf/wf7 are the raw-total state surface; cert_* helpers trust their term/cert arguments); regression twenty-seven gated, twenty-seven-for-twenty-seven under forcing; suite/certify/typecheck/polarity byte-identical, wf exactly one new line; one declared drift registered (the predictions sketched a 16× timing band, the code uses 24× — both far under quadratic's ~64×, measured 7.8×) | **fresh audit #22: FAIL** (the machine unbroken a SIXTH consecutive round; the RECONCILED BOUNDARY CONFIRMED — an independent slice-nested family reproduces the §6 table, status/§6/§10 verified to agree, residual "cross together" text verified historical-only; the instrument scope verified structurally correct; all four v1.29 repairs individually LINEAR. The findings, layer EIGHT: the COMPOSITION is Θ(n²) — n frames sharing one valid deep lp, 4× per doubling, because w0lp_shape rescans the occurrence before w0tok consults the memo, so "the lpmemo makes it once per lp" was false for standalone rs/ks checks; §6's "a garbage term crashes them" too categorical — the cert_* helpers on object() QUIETLY RETURN meaningless values; and one generously-graded prediction — v129's outcome 1 marked "byte-identical conservation" HELD while the captures differ in the timing suffix: the caveat explains the bytes, it does not make the literal prediction true) |
| v1.30 | CHECKER-ONLY, fourth consecutive, the smallest round: the FULL-LP id-memo in w0lp (shape+closure verified once per lp object, stored only after both conjuncts complete — no optimistic leak; the auditor's family drops 191 ms → 1.4 ms at n=2,000, linear, ~135×; regression twenty-eight measures exactly that family plus a distinct-lps no-aliasing control); §6's scope sentence reworded to UNSPECIFIED with the quiet-return examples registered; the v1.29 conservation-suffix prediction MARKED AS A MISS in its own outcomes appendix (grading it HELD was generous — the predictions discipline exists precisely so the author cannot grade their own homework); twenty-eight-for-twenty-eight under forcing; suite/certify/typecheck/polarity byte-identical, wf exactly one new line | **fresh audit #23: FAIL** (the machine unbroken a SEVENTH consecutive round; the v1.30 honesty repairs CONFIRMED incl. a fourth cert_* behavior class covered by UNSPECIFIED; 28/28 + 14/14 + 3/3 forcings; fresh corpus zero-hit. The findings, layer NINE: VALUE-SHARING WITHOUT OBJECT-SHARING — n distinct lp shells around one shared occurrence tuple, Θ(n) graph, 4× per doubling on rs/K-storage/slice-cargo variants, because the id-memos see objects and the expensive work is per-occurrence; and the full-lp memo's "no optimistic leak" comment LITERALLY FALSE — a tape→rs interleaving stores a stale True in lpfull, with the public verdict verified safe via w0bad's monotonicity) |
| v1.31 | CHECKER-ONLY, fifth consecutive: the OCCURRENCE MEMO (occ_required — walk + binder scan + 'a'-count once per occurrence OBJECT; total pre-gate work Σ O(local) over distinct objects; the auditor's three families drop to ~2× doublings, rs 389 → 2.2 ms at n=2,000); the MEMO DOCTRINE stated honestly (per-entry truth is NOT the invariant — aggregate monotonicity is: a stale-True exists only because an earlier check in the same call already OR'd w0bad True; memos per-call, nothing crosses calls); regression twenty-nine (the auditor's families in the linear band + the stale-interleaving verdict + the fresh-call isolation control) gated, twenty-nine-for-twenty-nine under forcing; one fixture bug caught IN-ROUND by the band failing (the first draft built a fresh occurrence per shell — a genuinely quadratic REPRESENTATION whose quadratic time is correct; the auditor's family shares one object; the wrong draft documented in the regression comment); suite/certify/typecheck/polarity byte-identical, wf exactly one new line | **fresh audit #24: FAIL** (the machine unbroken an EIGHTH consecutive round; AGGREGATE MONOTONICITY CONFIRMED BY STATIC ENUMERATION — all memo call sites inside wf, function-local, every first failure flowing into monotone w0bad, no public escape; 29/29 + 14/14 + 3/3 forcings; fresh corpus zero-hit; the fixture-bug disclosure and 24× band verified honest. The findings, layer TEN: SHARED-SLICE TRAVERSAL unmemoized — n distinct shells sharing one n-entry slice re-push its elements per shell, Θ(n²) on a Θ(n) graph, 3.9× per doubling; and the regression-29 coverage OVERSTATED — rs timed, K-storage verdict-only, slice-cargo absent, against "exactly the auditor's three families" in the register) |
| v1.32 | CHECKER-ONLY, sixth consecutive: EXTEND-ONCE-PER-SLICE (a per-call seen_slices id-set in the closure sweep — the call that first extends a slice either drains it fully or fails with w0bad already set, the doctrine audit #24 just confirmed statically; the auditor's family drops 206 → 2.3 ms at n=1,600); the KD-KEYS SIBLING PREEMPTED before any auditor found it (n KD entries sharing one keys tuple — kdmemo, both verdicts stored so shared-bad tuples still flag); regression thirty times the shared-slice rs/K-storage and shared-KD-keys families on the auditor's exact term shape, thirty-for-thirty under forcing; the regression-29 coverage wording corrected and the overstatement registered; suite/certify/typecheck/polarity byte-identical, wf exactly one new line | **fresh audit #25: FAIL** (the machine clean a NINTH consecutive round; EXTEND-ONCE-PER-SLICE CONFIRMED across three interleavings with fresh-call rechecks; the KD memo confirmed mechanically — 63 false-memo hits each executing the w0bad path; the post-gate W2 quadratic ruled honestly covered by value-semantics; 30/30 + 14/14 + 3/3 forcings. The findings, layer ELEVEN: BIG-INTEGER ARITHMETIC in max-free — Var(1<<n) under n lambdas, Θ(n) representation with an n-bit leaf, n subtractions on n-bit integers, Θ(n²), 454 ms at n=128,000 with the correct ['W0'] verdict; and the provenance defect REPEATED — regression 30's comment claimed four families incl. slice-cargo, the loop had three, and v1.32's outcome graded the four-family prediction HELD, the same unmarked-miss class one round after its correction) |
| v1.33 | CHECKER-ONLY, seventh consecutive: THE CLAMP — closed() counts distinct Lams (id-visited pre-pass), clamps every Var contribution at lam_total+1 (an upward DAG path cannot revisit nodes, so no index above the Lam count is ever bound; min preserves ==0 exactly; propagated values word-sized; the big index never bit-traversed — 454 → 66 ms at n=128,000); regression thirty-one (big-index band + slice-cargo timed at last + the bound-big-index no-over-rejection control) gated, thirty-one-for-thirty-one under forcing; the repeated provenance miss MARKED in v1.32's outcomes and regression 30's comment corrected; one figure miss in this round's OWN outcomes marked immediately (the predicted "under 50 ms" measured 66 ms — the band held, the figure did not); suite/certify/typecheck/polarity byte-identical, wf exactly one new line | **fresh audit #26: FAIL** (the machine clean a TENTH consecutive round; THE CLAMP LEMMA CONFIRMED — 60,000 randomized shared DAGs incl. 1,418 shared-Lam roots and 96 boundary cases against an unclamped reference, zero mismatches; fresh bigint timings linear; the mixed-memo composition family linear at ~2× doublings; all provenance repairs verified literal, both marked misses counted. The findings, layer TWELVE: DELETED FIELDS ON EXACT INSTANCES — object.__delattr__ yields exact-but-hollow Runs/Lams/Vars that pass exact-type dispatch and AttributeError on field access, in scope under the register's own "ANY finite object graph — malformed" sentence; the layer11 kit's hard-coded line number reads 0 reflags after the clamp shifted wf.py — the auditor re-traced the real 63; and the pack note misattributed two rows to the wrong kit) |
| v1.34 | CHECKER-ONLY, eighth consecutive: FIELD-PRESENCE GUARDS — hasattr for the seven Run fields after exact-type dispatch, getattr sentinels for term-node fields in both validator passes; the DEFAULTED-FIELD DISTINCTION discovered in-round by the regression's own failing first draft and pinned (deleting vb/rs/ks exposes the class-level default — the state is extensionally the default Run, adjudicating [] with no crash; deleting path/d/log/tape is W0); regression thirty-two gated, thirty-two-for-thirty-two under forcing; the kit-note misattribution corrected and the stale line-number tracer adjudicated; suite/certify/typecheck/polarity byte-identical, wf exactly one new line | **fresh audit #27: FAIL — documentation/display only; no kernel or checker semantic repair indicated** (C1-C6 SURVIVE MECHANICALLY; raw-object totality CONFIRMED IN SCOPE — all seven fields deleted or __dict__-replaced, hostile values and a hostile dict subclass with zero callback execution, hollow term nodes, weakref/GC pressure all defeated; the TOCTOU sys.settrace and class-descriptor attacks judged out of scope as runtime mutation, exactly the boundary the charge asked to be adjudicated; the defaulted-field fallback CONFIRMED — 110,232 comparisons over 6,124 reachable states across wf/wf7/step/eq/hash/repr, zero mismatches, with the vars() intensionality refinement; 32/32 + 14/14 + 3/3 forcings; the two corrections both TEXT: regression 32's comment still said "all seven → W0" against its own code, and the layer-ten kit's line-302 locator lacked its historical label) |
| v1.35 | COMMENTS AND KIT NOTES ONLY — zero executable changes, all six instruments byte-identical (measured): regression 32's comment rewritten to the four-undefaulted/three-defaulted distinction its code and print line already carried; the guard comment scoped to undefaulted fields with the fallback named; the layer-ten locator adjudicated as historical (v1.31 line numbering) beside the layer-eleven tracer; the auditor's vars() refinement adopted into the fallback sentence | **fresh audit #28: FAIL — permanent-regression coverage and documentation/provenance defects; no kernel or checker semantic countermodel** (the machine clean a TWELFTH consecutive round; C1-C5 confirmed — 33 embedded sources byte-checked with only wf.py's comment delta, all six instruments reproducing stored bytes, fresh AST-derived forcing 32/32 + 14/14 + 3/3, fresh corpus 300/206/363/218,546 zero-hit with arm census 465/367/222/0, gauge 8/1024 + 4/1024, conservation size 11 reproduced; the v1.35 corrections verified correct, the layer-ten locator confirmed truthful at extracted-v1.31 line 302; C3's boundary sentence ruled consistent under the registered stable-runtime scope. The findings: REGRESSION 31's distinct-shell family was ONE constant-folded object — CPython compiles the constant tuple display to a single LOAD_CONST, the gated states held one distinct shell at both sizes, the dead inner31 local confirmed by bytecode capture, and the reconstructed genuine family stayed ['W0'] and linear, so the gate covered the wrong shape without hiding a slowdown; v1.33's outcomes had graded that coverage HELD — a third unmarked provenance miss; two current comments said "no KD" above assertions requiring ('KD', ()); the W8 comment overstated certified pop against the loop's own riding-ticket control; and v1.35's predictions file contradicted its own timing-suffix exception and miscounted five instruments for six) |
| v1.36 | CHECKER FIXTURE AND COMMENTS ONLY, ninth consecutive checker-only round, zero semantic changes: regression 31's slice-cargo family REBUILT FOR REAL — the shells runtime-built from a display referencing a named occurrence local (a name cannot be a code-object constant), genuinely sharing ONE occurrence object, the dead inner31 local deleted, and DISTINCTNESS GATED (len({id}) == n−1 a conjunct of the flag, printed; forced alone → exit 1); the genuine family ['W0'] and linear, 0.103 → 0.680 ms at 8× (~2× per doubling, matching the auditor's reconstruction); the two "no KD" comments → "empty KD bundle"; the W8 comment → subtraction of surviving representations; §6 restates the stable-runtime scope locally; the v1.33 miss MARKED in its outcomes and v1.35's falsifier contradiction plus five-vs-six count marked in its file; suite/certify/typecheck/polarity byte-identical, conservation byte-identical this run, wf exactly the one predicted line; 31/31 direct forcings plus the v1.6 pair via the v125 kit's byte-identical forcing snapshot; one capture error caught in-round by the diff and redone per the header protocol (the v125/v126 kits first rerun without their documented flags) | **fresh audit #29: FAIL — C4/C6 false as written plus one docstring; no kernel-arm or checker-semantic repair indicated** (the machine clean a THIRTEENTH consecutive round; the rebuild verified GENUINE — v1.35 bytecode one LOAD_CONST vs v1.36 LOAD_DEREF + BUILD_TUPLE, gated states independently captured at 99/799 shell identities with ONE occurrence identity and every shell using occ_in31, inner31 confirmed gone, distinct31 force-verified; the SIBLING SWEEP clean — comp28/occ29/shells30 all build exactly their claimed object graphs; the three comment corrections verified accurate with the riding-ticket measurement; fresh gauge 8/1024 + 4/1024 with KA pinned 0; a NEW mixed tape/RS/KS sharing family linear at 1.90/1.93/2.00 doublings; conservation size 11 reproduced; forcing 30/30 + v1.6 pair + W7-aggregate + distinct31 + 14/14 + 3/3; C5 battery and corpus zero-hit. The findings, all documentation: cargo31 builds N−1 shells — range(n−1), the gate proves it, the measurements say 99/799 — while C4, §10, and the regression comment said "n distinct shells", all three sentences fresh from v1.36's own correction; the cert_disjointness docstring omits retained Q from its spectator tuple against its own implementation and §7.4; and the fresh overclaim was unmarked in v1.36's provenance) |
| v1.37 | DOCUMENTATION ONLY, zero executable changes — the loop's second such round: both current n-shell claim sites corrected to n−1 with the reason stated (one shell per 'a' of the carrier occurrence — occ_required returns the 'a'-count past the binder, verified against the code before registering; the historical quotations and regression 30's genuine n-shell family untouched); the cert_disjointness docstring's retained-spectator tuple gains retained Q (matching spec() and §7.4); the v1.36 overclaim and omission MARKED in its predictions file; all six instruments byte-identical INCLUDING conservation's suffix (second consecutive coincidence), all three diagnostics byte-identical, all 22 kits at adjudicated readings with v125/v126 captured under their documented flags on the first attempt; ok_big/ok_fld spot-forced → exit 1 | **fresh audit #30: FAIL — a genuine, runnable regression-coverage countermodel; no kernel-arm or checker-semantic repair indicated** (the machine clean a FOURTEENTH consecutive round; the count correction verified EXACT — 99/799 distinct shells, one occurrence, occ_required returning exactly the post-binder 'a'-count, distinct31 forced alone → exit 1, regression 30 and the historical quotations verified right to leave; the docstring repair verified with every fibre key/value of all 19 certified programs independently rebuilt, 26 same-boundary pairs zero violations; every other docstring swept clean; C1 confirmed — only wf.py changed, docstring-stripped AST identical; forcing 30/30 + W7 aggregate + v1.6 pair + 14/14; C5 fresh corpus zero-hit; one-head held on 137 sources/274 successors; gauge 8/1024 + 4/1024. THE FINDING: regression 31's state used d='X' and W0's conjunction short-circuits on the direction check before the tape — the carrier was NEVER TRAVERSED, 0 w0tok/w0lp_shape/occ_required calls, and the decisive forcing REMOVED THE CARRIER ENTIRELY leaving the complete instrument output byte-identical with the regression printed as passing; the linear timings were purity traversal, not the slice machinery; the v1.37 disclosure was accordingly too generous — a fresh unmarked coverage miss of audit #28's general class) |
| v1.38 | REGRESSION FIXTURES ONLY — zero wf()/wf7()/kernel/instrument-semantic changes: SENSITIVITY BECOMES THE GATE. cargo31 in-language per the auditor's prescription (d='D'; WF-clean [] gated at both sizes; distinctness and the 24× band kept; measured 0.192 → 1.165 ms) with the corrupted-last-shell control gated to exactly ['W0'] — the carrier-removal countermodel now exits 1 with visibly different output; the scoping measurement (counter-instrumented copy) established the rs/ks loops run UNCONDITIONALLY, so comp28/occ29/shells30 genuinely exercise their machinery under 'X' (load-bearing: the early return isolates pre-gate cost from the value-semantics-quadratic W2 duplicate scan) and each gains small-n in-language sensitivity pairs — SIX pairs (this row's original text said five; audit #31's C1 refutation), genuine 'W0'-free / corrupted-element exactly ['W0'], all folded into their flags; conjunct-level and whole-flag forcings all exit 1; fixture comments state the conjunction-structure facts; the v1.37 miss marked; suite/certify/typecheck/polarity byte-identical, conservation byte-identical including its suffix (third consecutive coincidence), wf exactly the four predicted lines | **fresh audit #31: FAIL — the sensitivity-design charge won exactly as posed; no kernel or shipped-checker semantic repair indicated** (the machine clean a FIFTEENTH consecutive round; the literal wiring CONFIRMED — independent first/middle/last corruption battery all detected by the shipped checker, carrier removal exit 1, all 12 sensitivity clauses + six cargo31 conjuncts + 30 flags + allbad + v1.6 pair individually forced, independent traversal tracing matching the registered counts; the 'X' load-bearing claim CONFIRMED by live measurement — 0.182→1.252 ms pre-gate vs 1.729→95.766 ms post-gate at 8×; C5 zero-hit; the v1.37 marking verified complete. THE FINDINGS: the closure walker is LIFO — extend then pop from the END — so the "corrupted-last-shell" was visited FIRST, dying at one w0lp_shape call, and the register's "only a sweep reaching the deepest shell can flip it" was false as written; an in-memory checker mutant skipping slices of length ≥ 10 while special-casing the ('BAD',)-at-[-1] sentinel PASSED the full wf.py at exit 0 with every sensitivity gate True; a second mutant canning occ_required for long all-'b' occurrences passed the comp28/occ29 pairs — the pairs pinned shallow shape rejection, not the machinery; and "five pairs" was SIX, unmarked) |
| v1.39 | FIXTURES ONLY again, zero semantic changes: CORRUPTIONS BECOME DEEP AND TRAVERSAL-LAST. comp28/occ29's corrupt value is a tuple-well-shaped UNBOUND all-'b' lp (this row said "locally valid" until audit #32 caught the phrase contradicting w0lp_shape's own local predicate; corrected in v1.40) — one 'b' beyond the binders, well-shaped, rejected only by the occurrence walk (kills the canned-count mutant); shells30-rs/ks and cargo31's corrupt element moves to slice position 0 — popped LAST under the LIFO order, requiring a full drain, measured at the full traversal count — and is tuple-well-shaped with an unbound occurrence (same v1.40 correction), 'f' stepped at a Var (kills the slice-skipping mutant); the KD kind's last key carries the same deep lp. BOTH reproduced mutants now EXIT 1 (the round's decisive measurement, predicted before the fix); carrier removal still exits 1; conjunct-level (sc28/sc29f/sc30k/rc_x) and whole-flag forcings all exit 1; the false deepest-shell sentence and five-vs-six corrected in the register and marked in the v1.38 file; ALL SIX instruments byte-identical INCLUDING wf (only fixture construction moved; conservation's suffix coincided a fourth consecutive time) | **fresh audit #32: FAIL — C4's coverage wording refuted; no machine or checker-semantic countermodel** (the machine clean a SIXTEENTH consecutive round; charge 1 CONFIRMED-SOUND — both audit-#31 mutants independently rebuilt exit 1, carrier removal exit 1, cargo31's full drain traced 12/12 with the unbound lp popped last; charge 3 GAP with strong negative evidence — 137 fire sources / 274 successors one-head exact, 12,617 non-fire Run edges KS-preserving, arm census 58/69/10/0, fifteen guards, clamp differential 60,000 graphs zero mismatches, hollow-object 110,232 comparisons zero mismatches; C1 CONFIRMED including a full fresh recapture; C5 CONFIRMED 300/206/363/218,546 zero-hit; the v1.38 marking verified complete. THE FINDINGS: a FIXTURE-AWARE mutant — canned long all-'b' occurrences except the exact length-13 corrupt, skipped long slices except a position-0 peek for the exact deep value — passes the complete suite at exit 0, establishing that the pairs pin extensional verdicts and the exhibited coarse mutant class, not implementation strategy, and that NO finite fixed fixture can; the blanket LIFO-last sentence was true only for the slice cases — comp28/occ29 are last in LEFT-TO-RIGHT rs/ks loops, KD the last all() key; and 'locally valid lp' contradicted w0lp_shape's own local predicate, which includes the occurrence walk) |
| v1.40 | COMMENTS, CLAIM SCOPE, AND THE REGISTER ONLY — fixtures untouched, zero executable changes, wf.py AST-IDENTICAL to v1.39 (four comment sites: "locally valid" becomes "tuple-well-shaped, sole W0 defect an unbound occurrence"; the traversal comments name the true enclosing scans and the shipped-checker scope): the SENSITIVITY-SCOPE STATEMENT joins §10 — the auditor's required correction verbatim, what the pairs prove vs what no fixed fixture can, audit #32's fixture-aware mutant registered as the standing boundary witness (its kit row exit 0 BY CONSTRUCTION; the kit audit_v139_fresh.py joins the roster as kit 23); the preamble's per-version history stack DELETED per the file's own charter (253 lines; §11's rows and the ledger carry every round); the v1.39 row's two "locally valid" phrases corrected in place with attribution; ALL SIX instruments byte-identical (conservation's timing suffix moved 1.4s→1.5s, ending the four-round coincidence; the eight other captures byte-identical); both audit-#31 mutants and carrier removal still exit 1 against the edited source; scratchpad decrufted by reference-scan (unreferenced packs, capture generations, headers, assemble scripts, and launch logs to attic/; every kit-read artifact kept — and the post-move battery CAUGHT the scan incomplete: audit_v117_fresh reads assemble_v117.sh, a filename class the scan never grep'd, so a comprehensive re-scan restored it plus assemble_v127.sh and a third full battery pass ran clean; the miss marked in v1.40's own predictions file) | **fresh audit #33: pending** |

## 12. Appendix — HH step-indexed trace

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
