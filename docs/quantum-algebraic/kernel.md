# qALC three-program kernel — current register (v1.9)

**Status: v1.9.** The kernel is a scratch superposition evolver for
qALC's quantum-control fragment (λIAM lineage, `h`-only, exact
ℚ[√2]): the eight classical token rules plus gate probes that FIRE
at boundaries with H-row amplitudes, instance-keyed
ticket/frame/record machinery for re-interrogation, per-program
transparency certificates with a self-validating canonical
analysis, an eight-invariant well-formedness subtype, a typed
h-only fragment judgment, and every failure mode typed — never
silent. Two fresh-context independent audits and two working
reviews have shaped it (chronicle, §12); the standing PASS
re-claim is **gated on fresh audit #2**, whose verdict will be
registered here.

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
KS      ::= stack of decode records — inert dead storage:
            ('K', g, i)      one decoded ticket (fire's α-decode)
            ('KD', {keys})   certified erasure's tagged bundle
            ('K', l)         a retained-whole which-path spectator
RunDone ::= RunDone(nf, residue)            nf ∈ {0̂, 1̂, I, err}
Halt    ::= Halt(nf, residue, tick)
residue = the COMPLETE pre-entry state (injectivity of terminals)

tape/log entries: • | logged position l | γ_g | μ_g | A_g(b′)
                  | α_g(i, b′) | ρ
```

`γ_g` (gate boundary marker), `μ_g` (probe frame), `A_g(b′)` (fired
answer token), `α_g(i, b′)` (answer ticket, instance-tagged), `ρ`
(root frame). **Instance** `i` = the invoking occurrence's logged
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
              dead := every (g, i) in KS (decoded records, KD
              bundles, and tickets nested in retained-whole cargo).

(head ticket) tape = •^j · α_g(i′, b′) · T:
   i′ ≠ i                    → alien-ticket        [foreign copy]
   (g, i) ∈ dead             → key-alias           [live ticket must
                                never shadow a dead record: the
                                bit-free record has discarded the
                                bit that would detect divergent
                                aliasing]
   same-key records with a different bit
                             → frame-conflict
   j = b′+1  → recall: consume bullets+ticket, emit •·•·•·T,
              record R_g(i, b′) — IDEMPOTENT (the record is a
              function of the instance; a re-seek cycle's
              re-recording is a no-op)
   other j                   → recall-err

(frame)      R_g(i, b′) anywhere in RS (deep keyed lookup — LIFO
             position was never semantic):
   (g, i) ∈ dead             → key-alias
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
   CERTIFIED boundary (pos ∈ certificate):
       any RS frame with bit ≠ b → pop-err
       erase (l, RS); leave ('KD', keys) — one tagged bundle
       naming every live α nested in l and every popped frame's
       (g, i)  [sound under fibre conditions (a)–(e), §6]
   else, l = α_g(i, b) with bit = slot (DECODE):
       retain ('K', g, i) — bit-free, branch-equal — UNLESS a
       same-key frame exists (the ticket was replay-re-emitted;
       the frame remains the answerable representation, no record:
       W8 exclusivity by construction)
   else (RETAIN-WHOLE): keep ('K', l) — same-slot arrivals with
       different which-path data stay orthogonal
   then fire: targets (pos, ↑, γ_g·L, A_g(b′)·T′), amplitudes the
   Q_g row for input b; Q_h = H. Other shapes → species.

retrace      (pos, ↑, γ_g·L, A_g(b′)·T) → (parent+'f', ↓, L,
             γ_g·A_g(b′)·T)      [bt1's action on the γ head]

anshead      (g, ↓, L, γ_g·A_g(b′)·T) → (g, VB(g, b′, 0), L, T)
vb2          (g, VB(g,b′,k<2), L, •·T) → (g, VB(g,b′,k+1), L, T)
vvar         (g, VB(g,b′,2), L, T) → (g, ↑, L, •^(b′+1)·α_g(i,b′)·T)
             one bullet pays the gate application, the rest encode
             the slot; the ticket carries the instance.

root         (root, ↑, ε, P_b·ρ)  → RunDone(b̂, res)
             (root, ↑, ε, l·•·ρ)  → RunDone(I, res)
             other ρ arrivals     → RunDone(err, res)
halt/ticks   RunDone → Halt(nf, res, 0) → tick → …
errors       VB with a non-• non-classifier tape top; ↓-stuck on
             μ/ρ; neutral constants under μ/ρ — all typed, complete
             residue.
```

The guard family — `no-instance`, `alien-ticket`, `frame-conflict`,
`recall-err`, `replay-err`, `pop-err`, `species-mu`, `refire`,
`key-alias` — is the machine's whole answer to aliasing and misuse:
**every detectable manifestation is a typed error, never a silent
reinterpretation.**

## 4. Instance identity and the selection lifecycle

One `vvar` emits one ticket per fire. The ticket is consumed by
exactly one of: **recall** (→ replay frame, bit kept), **decode**
(→ bit-free `K` record, dead), or **certified erasure** (→ `KD`
bundle, dead). Replay re-emits fresh tickets off the frame; a
re-emitted ticket that decodes leaves no record while its frame
lives (W8). So per instance, the selection has at most one
*answerable* representation (ticket and/or frame, bit-carrying)
XOR *dead storage* (bit-free record) — and the leaf's guard order
makes every cross-class encounter typed (`key-alias`) and every
dead-key fresh call typed (`refire`).

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

## 5. Certificates: the fibre conditions and the canonical pipeline

A certificate is a set of fire positions where erasure of `(l, RS)`
is proven transparent. Admission conditions, checked over the
certified reachable graph's arrivals:

- **(a)** every RS frame's bit equals its arrival slot;
- **(b)** the retained key `(slot, T, log)` determines the entire
  erased tuple `(l, RS)` — the fibre is a function;
- **(c)** non-vacuous: certification erases something the
  conservative fire would retain;
- **(d)** erased cargo is γ-free (deleting an in-flight probe's γ
  would break W5 — its μ survives unpaired);
- **(e)** **cross-slot bundle equality**: whenever both slots are
  present at one `(T, log)`, the dead-key bundles agree —
  `Dead(l₀, RS₀) = Dead(l₁, RS₁)`. The fibre function property is
  per-slot, so nothing else forces the two H columns of one
  intended fibre to leave equal decode bundles; divergent bundles
  would silently decohere the interference the certificate exists
  to buy, invisible to Gram (disjoint columns read as orthogonal).

**The canonical pipeline.** `discover_total` iterates admission to
a fixpoint under hard caps (any cap hit or non-convergence → None)
and then **validates its own fixpoint**: the certified graph must
pass totality, zero guard reachability, clean Gram, zero err mass,
unconditional transparency at certified positions, reachable ⊆
WF∧W7∧W8, and the mechanized disjointness check — else None. None
selects the conservative machine: total, unitary, typed — sound as
a machine, not ideal-preserving. U is total and well-defined on
every program (`h Ω` → None); the certificate is frozen machine
metadata, a deterministic function of the program.

**The certificate is semantically load-bearing** (measured): HNH
certified computes `{halt0: 1}` — the physics, H·X·H|0⟩ = |0⟩ —
while its plain run decoheres to `{1/2, 1/2}`. A refused
certificate degrades coherence, never soundness; that is exactly
why admission must refuse rather than admit an unsound one.

## 6. The invariant catalog (WF, the well-formed subtype)

For Run states; reachable ⊆ WF is machine-checked per program, and
the machine's unitarity claims quantify over the subtype:

- **W1** (log discipline): `|log| = level(pos)`.
- **W2** (record uniqueness + canonicity): at most one frame per
  `(g, i)` in RS; RS canonically sorted (state identity is
  order-free).
- **W3** (bit coherence): all instance-keyed entries with one
  `(g, i)` — frames, tickets — carry one bit.
- **W4** (first-interrogation exclusivity): a VB-active state at
  instance `i` holds no `i`-frame and no `i`-ticket (the guard
  chain forces this).
- **W5** (probe pairing): deep-counted γ (through lp slices and
  retained `K(l)` records; instance KEYS are frozen names, never
  counted) = #μ(tape) + #A(tape) — every in-flight probe's γ is
  matched by its μ or its answer token.
- **W6** (root frame): exactly one ρ, at the tape bottom.
- **W7** (certificate fibre coherence): at a certified boundary,
  the erased `(l, RS)` equals the certificate's frozen fibre value
  at the retained key `(pos, slot, T, log)`. States outside the
  fibre relation are outside the certified domain subtype; the
  domain lemma (reachable certified arrivals are in-domain) is the
  per-program sweep.
- **W8** (representation exclusivity): per `(g, i)`, answerable
  representations (live α anywhere in tape/log including suspended
  slice cargo; RS frames) never coexist with dead storage (K/KD
  records). Preserved by construction (§4); its boundary is the
  typed `key-alias`.

## 7. Theorems

### 7.1 The coloring (closed form + uniform flip)

```text
φ(s) = depth(pos) + [d = ↑] + Σ w(tape) + Σ w(log) + Σ w(RS) + k_VB  (mod 2)
w(•) = w(γ) = w(μ) = w(α) = w(ρ) = w(R) = 0;  w(A) = 1
w(l) for l = (occ, slice) = (depth(occ) − depth(binder)) + Σ w(slice)
```

**Theorem (uniform flip).** Every Run→Run rule flips φ EXCEPT
`fire`, whose defect is exactly `1 − w(l)` for the erased/decoded
arrival lp. Proof is per-row algebra; the load-bearing case is
`var`/`bt2` (the teleport's distance is absorbed by the lp carrying
it as weight). Mechanically verified on every reachable Run→Run
edge of the battery, zero violations; every fire edge's measured
defect equals `1 − w(l)`. The weight assignment is **gauge-pinned**:
of all 256 assignments over the mark alphabet, exactly the
4-element orbit generated by two symmetries survives, and the orbit
fixes every deployed consequence.

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
k ∈ {1,2,3} probes — 55,727 surfacings at ≤10, 14,452 at the
current sweep tier, zero failures. Battery cross-check: zero
mark-free arrivals violate `w ≡ slot`; marked arrivals split both
ways as virtual ancestry predicts.

### 7.4 Range disjointness (on WF∧W7, corrected statement)

For two certified-fire sources at one boundary:

```text
different retained spectator (pos, log, T, incoming KS)
    ⇒ disjoint targets (targets embed all of it verbatim);
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
compares decode bundles cross-slot, and computes column inner
products. Zero violations over every certified graph. Two audit
countermodels are permanent regressions here: the extra-frame
collision (W7-excluded AND target-disjoint — the popped frame
leaves its record) and the doctored bundle-divergent fibre
(rejected by condition (e)).

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

Fragment table (18-program suite): **15 typable h-only**. Outside:
`dup` (self-application — deliberately, the untyped copy
regression), `q` (E = λz.Iz vs N branch types ununifiable — the
wire imbalance `qprime` was built to repair; `qprime` types
clean), `dupcall` (NOT′/EP ununifiable). All escapes — `h h`,
gate literals in bodies, swapped or doubled shell arguments —
rejected.

## 9. The claim

Over programs that are (i) typable h-only under the signature
judgment and (ii) whose canonical pipeline reports
`semantic_coverage`: **the kernel is total and Gram-clean (U an
isometry on the reachable basis), certified erasure is transparent
(fibre-proven, W7-coherent, disjointness mechanized), and every
failure mode is typed and visible — never silent.**
Marginal-correctness against ideal quantum semantics is
established per-program against hand-computed physics for the
eighteen (independently recomputed by audit #1 for the
interleaving set); the *general* agreement theorem is explicitly
the compilation theorem's obligation (STATUS docket), not claimed
here. The claim is conditional on the alias gap (§7.5), stated as
such.

Standing fences, all typed: literal gate application (untypable),
the `t` gate (ℤ[ω] reserved), outputs beyond {0̂, 1̂, I} (readback
controller's job), and every guard in §3.

**The PASS re-claim is gated on fresh-context independent audit
#2; the verdict will be registered here.**

## 10. Verification state

Eighteen-program suite (twelve sectors + the audit witnesses
`buried`/`palpha`/`dupcall` + stressors `weave`/`hweave`/`qq`):

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
| palpha | 474 | ¼ / ¾, sup 3 | audit-2 witness: cert refused, physics via fallback |
| dupcall | 632 | typed err ½ + ¼/¼ | untyped; refire positive control |

All: zero stuck / non-unit / non-orthogonal columns; guards silent
except `dupcall` (expected). `discover_total` == frozen CERTS on
all 18; `h(Ω)` → None. Negative controls: pstar × wrong
certificate reaches `pop-err`; dupcall × v1.7-era certificate
reaches `refire`, all-err. WF/W7/W8 sweeps + disjointness: zero
violations; three permanent collision regressions. Conservation:
zero failures. Polarity/terminal chains/gauge: zero violations,
orbit exact. Audit #1's independent reproducer, rerun: all probes
clean or typed; fuzz 250/250 no violation (66 conservatively
refused). Basis counts vs v1.2 reference: `negative` 103→83,
`selector` 173→106, `pstar` 458→242 — v1.7-era, real, owned
(canonical RS sorting + replay-arm restructure merge order-variant
states); marginals and supports never moved. All measurements
seconds-scale on the M5 Max.

## 11. Chronicle

Full narratives: `docs/ledger/2026-08.md` (and 2026-07); complete
superseded registers: this file's git history (through commit
`ed85767`).

| version | one line | verdict that shaped it |
|---|---|---|
| v1.0–v1.2 | three-program kernel; review killed store-shaped replay; inert replay stack | Codex review: transparency, not inertness |
| v1.3 | instance-indexed tickets/frames, replay, certified pop, time register | review registered |
| v1.4 | polarity coloring closed form, canonical certificates, conservation conjecture | C-collapse countermodel |
| v1.5 | encoded fire: conservative decode default, certified erasure | ratified amendment |
| v1.6 | conservation theorem proved + mechanized; gauge pinned; discover_total | fresh review: math CONFIRMED, scope FAILED (Q) |
| v1.7 | the replay record (idempotent recall, deep keyed replay); WF subtype; cargo conditions | **fresh audit #1: FAIL** (WF collision, Pα, alias gap, honesty) |
| v1.8 | decode records + refire guard; self-validating admission; W7; typed fragment | working review: two structural holes |
| v1.9 | KD bundles + condition (e); key-alias guard + W8; real disjointness checker; syntactic fragment boundary; docs current-only | **fresh audit #2: pending** |

## 12. Appendix — HH step-indexed trace

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
