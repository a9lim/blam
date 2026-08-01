# Lab ledger

Running record of this project's sessions — what was done, what was
measured, what went wrong — newest entry at the end. (Born MORNING.md
after its first overnight; renamed once it became persistent.)

# 2026-07-31 · overnight — the census run

Good morning! Everything on the agenda landed, and then the mandate you
widened at 2am filled the rest of the night. The machine is clean (no
runs in flight), the history is committed (you gave standing permission
mid-night), and the story is below. Numbers you can trust: every claim
here is backed by a file in the repo, and every reference value Tromp
published is reproduced exactly.

## TL;DR

- **The full census 4..40 is done, verified, and sharper than Tromp's
  ledger**: 283,817,255 closed terms (`census_full2.txt`, the canonical
  table). Every A114852 count exact, every published BBλ(n) reproduced,
  halt counts identical under every engine change all night. Unknowns:
  **2,032** (down from 2,903 pre-certificate).
- **The night's theory result — a divergence certificate, co-developed
  with Codex**: for self-applications `A A` where A's behavior feeds
  back into itself, comparing two bounded normal-form probes proves
  divergence outright. It generalizes the mechanism behind BB.txt's
  stronger engine, fires 11,367 times in the census, closes n=32 to
  exact Tromp parity, and *overtakes* his traced engine at 34-36.
- **Ω to nine decimals, exactly**: the new `solomonoff` engine (m(x),
  K(x), Ω in exact 2⁻⁶⁴-unit integer arithmetic) gives
  **Ω|≤40 ∈ [0.123995323359, 0.123995329152]** — the interval width
  *is* the mass of the 2,032 unknowns. Coding theorem visible in the
  tables: K(x) within a bit of −log₂ m(x) for every heavy hitter.
- **The 170-bit self-interpreter is now mapped, and 170 is locally
  optimal**: variables parse for *zero bits* (the −27 heart of the
  2025 record), the 21-bit VAR slot is exhaustively optimal, and
  Codex's design sweep measured every credible restructuring at
  171-179 with the incumbent knot proven unique through 20 bits.
  Sound search spec for the remaining ABS/APP slots is written.
- **A live perf audit paid for itself**: an agent profiled the running
  sweep, found a missing O(1) sink override eating 99.9% of the tail
  (5× on solomonoff), a real n=40 serialization (fixed by bit-reversal
  task interleaving), and a provably redundant census rung. Patch set
  landed, verified bit-identical, resource errors now name their cause.
- **Frontier pass at Tromp's exact capacity (42M)**: zero movement —
  what our port proves, it proves at 2M. The discovery came from
  cross-matching BB.txt's fail traces instead: **the terms his reducer
  fails on that ours resolves are exactly the BBλ champions**, and
  conformance vs BB.txt is now a precise two-layer story (below);
  neither engine dominates.
- **Ablations quantified** (`bench_results.txt`): oracle prefilter ~3×,
  fused parallel generation ~8×, NF-prescan ≈ noise — and the flat
  budget1 ablation turned out to be *explained* by the audit (rung 1
  was redundant; it isn't anymore).
- **The night had a memory-bomb subplot** (three detonations, one of
  them mine and embarrassing) — honest accounting below, all defused.

## The conformance picture (the fun part)

BB.txt was produced by BB.lhs `normalForm 42000000` — the very engine we
ported — so the comparison is apples-to-apples at `--bb-cap 42000000`.
It turns out to have **two layers that disagree with each other**, and
disentangling them was the night's best detective work.

**Layer 1 — the summary lines** (`32: closed … halt … nonhalt 2939
fail 1`). Per size, `his nonhalt/fail` vs `our diverge/unknown` (totals
cross-check exactly on both sides):

| n  | Tromp nonhalt | Tromp fail | our diverge | our unknown |
|----|--------------|-----------|-------------|-------------|
| 32 | 2939         | 1         | 2935        | 5           |
| 33 | 4116         | 4         | **4118**    | **2**       |
| 34 | 9941         | 6         | 9930        | 15          |
| 35 | 16446        | 17        | 16431       | 32          |
| 36 | 36452        | 25        | 36403       | 71          |

**Layer 2 — the `-- TODO:` fail traces** (printed by the engine per
failed term, each with a hand-derived analysis). Encoding those to BLC
bits (`tools/bbtxt.py`) and set-comparing against our unknowns:

| n  | his traced fails | our unknowns | shared |
|----|-----------------|--------------|--------|
| 32 | 5               | 5            | **5**  |
| 33 | 2               | 2            | **2**  |
| 34 | 17              | 15           | 15     |
| 35 | 32              | 32           | 31     |
| 36 | 72              | 71           | 70     |

The layers can't come from one run (5 traced fails at 32 vs "fail 1"),
so BB.txt is multi-generational — summary lines from a later, stronger
engine, traces preserved from earlier runs with his hand analyses
attached. Its internal champion arithmetic is also off by one at 35/36
("11112176 + 3 = 11112179" vs summary halt 11112175; we land on
11112178). All PR-conversation material.

What the trace layer shows (the deep result):

- **The two automatic frontiers nearly coincide.** 123 of 128 traced
  fails are exactly our unknowns; his hand analyses classify 106 as
  loops, and every one of those is unknown for us too. Same engine
  genealogy, same blind spots — a strong conformance check for the port.
- **Every term he fails and we resolve is a champion.** His five
  hand-halt annotations = both 34-bit witnesses of BBλ(34) = 327,686
  (our KN rescue: ~192,757 β, 2 ms each), the 35-bit witness of 98,421
  (= 6+5·3⁹, a Church tower), and their λ-wraps. His pure BB-reducer
  chokes on big-growth halters; our escalation ladder hands them to the
  KN machine and they fall out instantly. The "+2"/"+3" hand corrections
  in BB.txt are precisely these terms.
- **Two residual asymmetries**: `010001101000011001000101…` (35b) and
  `0100011000011001110001…` (36b) are unknown for us but absent from his
  traces — presumably resolved by the later engine generation. The only
  terms ≤36 where he mechanically knows something we don't.
- **The "which engine proves the traced loops" question got ANSWERED
  overnight** — by Codex, then by us in Rust. See the next section.
- **Capacity is not the differentiator for us**: all 103 n≤36 unknown
  seeds were re-adjudicated at bb-cap 42,000,000 (21× census) — 28 at
  the full work meter, 75 at a reduced meter after the memory incident,
  every verdict UNKNOWN either way. Our port's proving power saturates
  by 2M.

Also worth knowing: BB1.lhs's `bb0` records *hand-proven* champions past
the computable frontier — BBλ(35) = 6+5·3³³ ≈ 3.8×10¹³ bits and
BBλ(36) = 6+5·2^256 bits. So for n≥35 our max-computable numbers are
lower bounds on a frontier whose true values are known by analysis to be
astronomically larger. n=34 (= 6+5·2¹⁶ = 327,686) is the last size where
the champion is physically computable — and we compute it.

## Act 3: the redloop port (n=32 conformance closed)

I sent the conformance puzzle to Codex over gaslamp (thread
`blc-conformance`) with the raw evidence. The reply was superb detective
work: the mechanism is **`BBold.lhs`'s `redloop` rule** — present only
in the *old* engine, absent from current BB.lhs. For a redex `D A` with
`D = λx.x x`: walk A's body left-spine to the head-demanded application
`x q`, normalize the small probe `q[A/x]`, and if it comes back exactly
`A`, the demanded `A A` configuration provably recurs forever. Codex
transliterated BBold, confirmed it proves exactly 4 of the 5 traced
32-bit loops (the fifth — outer function `λx.x Kx`-shaped, not
`λx.x x` — is hand-excluded as `loop32` even in Tromp's tree; *nobody*
proves it mechanically). Also settled: the BB.txt summary lines are
editorial (2026 "analyse all TODOs" commit), not output of a hidden
stronger engine; and our two residual 35/36-bit unknowns exit on
*capacity*, not the work meter (Codex ran our Rust to check), via an
old history rule Tromp himself later diagnosed as unsound — correctly
not portable.

So I ported redloop in a narrowed, provably-sound form (exact AST
equality only, `A` closed and ⊥-free, probe on the pure KN machine with
a fixed budget, no oracle re-entry — `redloop` in src/bb.rs, soundness
argument in the doc comment). Results:

- The four loops prove `Diverge` at census capacity; the fifth stays
  `Unknown`; a constructed near-miss (`D (λx.x I)`, which matches the
  spine pattern but halts) correctly doesn't fire.
- Census regression: **halt counts unchanged everywhere** (975,507 at
  n=32 — still exact vs BB.txt); n=32 becomes halt 975507 / diverge
  2939 / unknown **1** — **term-for-term parity with Tromp's best known
  state**.
- Bonus for the optimization thread: n=32 census dropped 2.79s → 1.19s.
  Every proven diverger is a 10⁷-β rescue burn that never happens, so
  the redloop rule is also a *throughput* win at every size (the
  refreshed full table quantifies it).
- Codex then co-reviewed the soundness argument (second gaslamp round):
  no hole; the proof is now phrased via head-behavior invariance under
  β-conversion (the Tₙ₊₁ = Q(Tₙ) recurrence on the demanded head spine
  — the doc comment on `redloop` carries it), exact-equality ≡ `eqfree`
  for closed A is proven, and per his suggestion the rule now counts
  both its proofs and any shape-match rejected solely by probe fuel.

**Act 3b — the generalization (third gaslamp round).** I handed Codex
the two residual 35/36-bit unknowns as a theory problem while the
machine crunched. His answer: they don't need a context-sensitive
history mechanism at all — they need the *semantic* form of redloop.
The 35-bit term's `A = λx.x (T (K x))` isn't syntactically normal (its
dormant `T (K x)` reduces), which is precisely why exact equality
missed it; the sound generalization triggers on literal
self-application `A A` and fires iff **nf(A) = nf(Q(A))** — equal
normal forms witness β-equivalence, and the rigid head variable
guarantees the recurrence stays on the demanded spine. The 36-bit term
reaches `(A A) A` and inherits through the strict head context. I
re-derived the soundness chain independently, ported it, and:

| n  | unknowns before | after redloop v1 | after v2 (final) | Tromp traces |
|----|----------------|------------------|------------------|--------------|
| 32 | 5              | 1                | **1**            | 5            |
| 33 | 2              | 2                | **2**            | 2            |
| 34 | 15             | 15               | **10**           | 17           |
| 35 | 32             | 32               | **23**           | 32           |
| 36 | 71             | 71               | **44**           | 72           |

Halt counts unchanged at every size (a strong regression check — the
soundness *proof* is the recurrence theorem), 709 proof events, and
raising probe fuel 16× produced no additional certificates and no
census changes: no cutoff sensitivity observed through 65,536 β. (The
706 fuel-rejected probes are *plausibly* mostly divergent probes, but
that's inference, not proof — Codex kept me honest here.) As the
night's last act this was extended to the full range: re-adjudicating
**all 2,032 surviving unknowns** (4..40) at 16× probe fuel flipped
nothing (`fuelcheck_65536.txt`) — no unknown anywhere in the table is
one probe-fuel bump away from resolution. The precise
conformance claim: **every identified mechanical asymmetry between our
≤36 frontier and the BB.txt ledger is resolved**; the shared unknown
frontier remains (80 terms ≤36), with `loop32` the sole size-32
unknown. The night started with us behind Tromp's engine at n=32 and
ended at parity there and measurably ahead of his traced engine at
34/35/36.

## Frontier unknowns at 42M

The complete unknown worklist (2903 terms across n=32..40, dumped via
the new `--dump-unknowns`) collapses to 2282 λ-wrap seeds
(`tools/frontier.py`) — only 21% are wraps of smaller seeds; the
frontier population is dominated by genuinely new shapes at each size,
roughly doubling per bit.

- **n≤36 (103 seeds, the BB.txt-comparable range)**: all UNKNOWN at
  42M, both meter settings. See the conformance section — these are the
  same terms Tromp's engine fails; his hand analyses call 106 of the
  matching traces loops.
- **n=37..40 (2179 seeds, memory-bounded meter)**: exactly **3 resolve**
  at 42M — two proven divergers (38b and 39b, plus the 38b one's λ-wrap
  at 40, so 4 terms total move to diverge), and one gem of a halter:
  `010001101000011000011100110011001100010` (39b), whose normal form is
  just `0010` = λ.1 — the escalation engine's simplify collapses it
  while 10⁷ β of KN rescue cannot reach it. The one place all night
  where capacity genuinely bought a verdict. Remaining honest unknowns:
  2176 seeds up here, 2279 of 2282 overall.
- For n≥35, remember the *true* BBλ values are known by hand to be
  astronomical (BB1.lhs `bb0`: BBλ(35) = 6+5·3^27 ≈ 3.8×10¹³ bits,
  BBλ(36) = 6+5·2^256) — the computable census is a lower-bound game
  from n=35 up. n=34 is the last size whose champion physically fits in
  memory, and our engine computes it automatically.

## Act 4: the parallel lanes (while the machine crunched)

When you asked for parallelism I fanned out three compute-light lanes;
all three came back heavy.

**The perf audit** (opus agent, read-only — it `sample`d the live
process) found the solomonoff 5× gap in one profile: `KeySink` never
overrode `Sink::var`, whose *default* is O(n) per emitted variable with
n bounded only by the transition cap — 99.9% of the n=40 tail was
inside that loop, on 2 of 18 cores. Also: the n=40 tail genuinely
serializes (17 workers idle — my n=37 split A/B tested the wrong
size; fix is a bit-reversal task interleave), census rung 1 was
provably redundant (its transition floor equals rung 2's — which
*explains* the flat budget1 ablation), and the VM had an 18 GB/worker
memory exposure of its own. The zero-risk patch set is landed and
verified bit-identical (commit `2cf3a86`); resource errors now say
which resource died (`Why::Capacity` vs `Why::WorkMeter` — first
reading: all 32-33 unknowns are capacity-bound, i.e. missed loops,
matching Tromp's hand analyses). The medium-risk items (bb.rs metadata
caching, est. 2-5× on the escalation tier that is ~98% of census CPU;
rescue-by-cause budgets; λ-wrap memoization) are written up in the
audit for a daytime session.

**The self-interpreter analysis** (opus agent) reverse-engineered the
170-bit interpreter end to end and verified everything by execution:
the `cons'` cell makes a variable's own bitstream act as its de Bruijn
selector, so **variables parse for zero bits** (−27 alone); the
implicit-tail restructure is another −13; and Felgenhauer's classic −4
trick becomes a +8 *liability* post-`cons'` (so the true algorithmic
win is 210→170). It byte-exactly reproduced the classic 206/210-bit
interpreters from BLC.tex and the 232-bit universal machine bitstring.
Then it started *proving optimality*: the 21-bit variable branch is
exhaustively optimal (30,232 candidates, exactly one survivor — the
reference term). The ABS (43-bit) and APP (41-bit) slots need 15.4B
and 4.3B candidates — mapped onto our enumeration engine, **minutes of
compute**; the probe harness and methodology (including a documented
false-positive trap) are preserved in `tools/interp/`. Free
observation for the Tromp conversation: `intL (\z.z z)` is a 180-bit
universal machine for closed programs, vs the published 196. Floor
estimates: 165-168 plausible via micro-tricks, ~150 needs a new
`cons'`-scale idea, below ~140 bet against.

**The Codex lane** produced the self-feedback certificate (Act 3b),
then two interpreter deliverables. First, a *sound* slot-search spec
(`tools/interp/SEARCH_SPEC.md`): close each candidate under rigid
binders and compare full β-normal forms against the reference slot —
a contextual-correctness proof per candidate, replacing the
probe-and-pray harness. Second, a design-theory sweep of every
structural route below 170 (`tools/interp/DESIGN_NOTES.md`): all
eight credible rearrangement classes compiled and measured at 171-179
(the best rival ties the incumbent's structure exactly and loses only
on index depth, X=41 vs 38); the wrong 168-bit `cons'` has a clean
semantic repair — at 171, with a proof the repair class can't reach
169 (binder saves 2, thunk costs 3); and a new exhaustive knot search
(`tools/interp/search_fix.py`) over all 14,803 closed contexts
through 20 bits shows the incumbent `(λa.a a)(λa.H(a a))` is the
*unique* weak-head self-reproducing knot. Verdict: **170 is locally
optimal** — beating it needs a new `cons'`-scale representation idea,
not another binder move. The ABS/APP slot searches stay open as the
mechanical route.

## Act 5: Ω, m(x), K(x) — the AIT payoff

The night's feature request, delivered on the audited engine
(`src/bin/solomonoff.rs`, full sweep 4..40 in **1410 s** — the
pre-audit engine was on pace for hours; outputs `solomonoff_40.txt`,
`solomonoff_table.txt`). All arithmetic is exact: every program's mass
is an integer count of 2⁻⁶⁴ units in u128 accumulators, so the
decimals below are conversions, not float estimates.

**The halting probability.** Over all 283,817,255 closed programs of
4..40 bits: 282,854,928 halt (mass 0.123995323359), 960,295 diverge
(mass 1.72×10⁻⁵), 2,032 unknown (mass 5.79×10⁻⁹). Hence

> **Ω restricted to |p|≤40 ∈ [0.123995323359, 0.123995329152]**

and the interval width *is exactly the unknown mass* — the census
frontier, expressed as bits of Ω. Everything below the ninth decimal
is the 2,032 unresolved terms; everything above it is proven. Two
mass-weighted observations: 99.986% of covered program mass halts
(short programs dominate the measure and overwhelmingly normalize),
and the diverge mass ≈ 4.5×2⁻¹⁸ is consistent with the smallest
loops (the 18-bit (λx.xx)(λx.xx) family) carrying most of it. The
≤24 teaser from earlier in the night (0.120181739330, exact — no
unknowns there) sits inside every later interval, as it must.

**m(x) and the coding theorem, watched live.** The sweep tabulated
3,214,311 distinct nontrivial normal forms (691 of width ≤20 bits
dumped with full masses to `solomonoff_table.txt`). For the heaviest
outputs, K(x) and −log₂ m(x) are within a fraction of a bit — for
`x = I = 0010`: K=4, −log₂ m = 3.91; for `λλ.1 = 000010`: K=6,
−log₂ m = 5.81. That's the coding theorem K(x) = −log₂ m(x) + O(1)
materializing in a table, with the O(1) visibly < 1 for every heavy
hitter in range.

**Compressibility.** The most compressible normal form in range: a
63-bit x with K(x)=31 — a 32-bit gain, i.e. a program that names a
string using half its bits. The whole top-40 table gains 28-32 bits,
and the witnesses are recognizably the census max-nf champions in
compression clothing.

**The monsters.** Normal forms too wide to tabulate get aggregated by
size, and the top is remarkable: a single 38-bit program whose normal
form is **222,333,282 bits** (~26 MB), with its 40-bit λ-wrap at
+2 bits of output — the λ-wrap chains are visible all down the
aggregate table as (|x|, |x|+2) pairs at quarter mass. The 38-bit
figure cross-checks the census exactly (`census_full2.txt` row 38,
max nf 222,333,282), as does the 327,686-bit BBλ(34) champion —
aggregated into the mass totals, below the printed top-40 cutoff.

## The memory subplot (honest accounting)

Three memory events tonight, in escalating comedy:

1. **The 42M full-meter adjudication at 18 threads hit 104 GB RSS**
   before I caught it. Root cause: the work meter bounds *allocations*,
   not *live* graph size — deep escalation recursion holds huge
   intermediates at every frame. Killed, restructured (streaming
   verdicts, fewer threads, watchdog).
2. **My first RAM guard watched the wrong process** — `pgrep -f |
   head -1` matches the shell wrapper whose command line contains the
   pattern. The same trap bit the census monitoring earlier in the
   night. Guards now hold the exact child pid from `$!`.
3. **The 200 GB spike and the macOS popup you saw was *my analysis
   script*, not the census.** BB.txt's TODO lines carry prose like
   "has normal Form of size 46731440"; my parser read prose digits as
   de Bruijn indices and unary-encoded them — an attempted multi-
   terabit Python string, three times, while I was busy blaming the
   Rust process (which was innocently cruising at 8 GB). Fixed by
   cutting the term at the first non-term character and capping var
   indices at 64.

The durable fixes: verdicts stream line-by-line (kills lose nothing),
watchdogs hold real pids, and `BLC_WORK_MULT=2` gives a mathematically
bounded-memory adjudication mode (live ≤ meter × node size) that lost
no verdicts vs the full meter on every seed where both ran.

## The work-meter lesson (three bugs, one family)

The night's engineering moral, written up properly in DESIGN.md: β-fuel
didn't bound the KN machine (the 2-hour hang), redex-size capacity
didn't bound the escalation engine (subst/simplify blowups), and an
allocation-charged meter didn't bound the oracle (it allocates nothing).
Same bug three times in different clothes: **a budget phrased in a
semantic unit will eventually meet a term that is syntactically
expensive in a way the unit can't see.** The fix that stuck: one shared
meter, charged on every primitive operation of every engine.

## What's new in the repo since you went to bed

- `census --dump-unknowns FILE` (complete unknown lists; the per-size
  stdout view truncates at 16) and `census --terms-file FILE` (parallel
  batch adjudication of a list of terms, used for the 42M pass).
- `tools/frontier.py` — groups unknowns by λ-wrap seed, flags verdict
  inconsistencies within a chain (there were none).
- `tools/bbtxt.py` — parses BB.txt's de Bruijn fail traces to BLC bits
  and set-compares them against our unknowns (the conformance engine).
- `src/bin/solomonoff.rs` — the m(x)/K(x)/Ω engine (Act 5); outputs
  `solomonoff_40.txt` + `solomonoff_table.txt`.
- The self-feedback divergence certificate in `src/bb.rs` (`redloop`),
  with proof counters and four targeted tests (Act 3b).
- The audit patch set: O(1) `Sink::var` contract, `normalize_capped`,
  env/stack capacity release, `interleave_tasks`, and typed resource
  errors — `OutOfFuel::{Beta,Transitions}`,
  `NoNf::Unknown(Why::{Capacity,WorkMeter})` — threaded through to
  per-size cause counters in the census output.
- `tools/interp/` — the interpreter lab: probe harness + slot searches
  (`lc.py`, `db.py`, `harness.py`, `search_var.py`, `search_abs.py`),
  Codex's exhaustive knot search (`search_fix.py`), the sound
  parametric search spec (`SEARCH_SPEC.md`), and the design-theory
  notes (`DESIGN_NOTES.md`).
- `BLC_WORK_MULT` env knob on the escalation engine (default 16),
  `BLC_PROBE_FUEL` on the certificate probes (default 4096).
- DESIGN.md gained a Results section; oracle.rs doc-comment warning
  fixed. Tests: 41 pass, 1 ignored (the deliberately-slow naive BB(34)).
- New data files: `census_full2.txt` (canonical), `unknowns_v2.txt`
  (the 2,032 survivors), `unknowns_all.txt`, `unknown_seeds.txt`, the
  `frontier_*.txt` adjudication outputs, `census_dump.txt`,
  `bench_results.txt`, `bench_split_results.txt`.
- Git history exists now (you gave permission mid-night): seven
  commits from engine core through the final results.

## Where I'd point us next

1. **What remains genuinely open ≤36**: the fifth 32-bit loop (no
   mechanical proof exists anywhere — a new certified pattern would be
   novel territory) and the two 35/36-bit capacity-outs (BBold's global
   history "proves" them but that rule is known-unsound; a
   context-sensitive recurrence certificate would be the sound
   version). Both are small, sharply-posed problems now.
2. The lazy-vs-eager escalation gap: mult=2 vs mult=16 changed nothing
   and the residuals are capacity-bound, so the meter isn't the
   binding constraint. A shared-graph escalation engine remains the
   experiment if we ever want the capacity to stretch further.
3. n=41 census (~242M terms, ~30 min with current engine) any time you
   want the next row; nothing blocks it.
4. The Lean track and the `uni.rs` distillation for the Tromp PR remain
   open as planned. The BB.txt layer inconsistencies (trace counts vs
   summary fails, the ±1 champion arithmetic) are worth a gentle note
   to Tromp whenever that conversation starts.

# 2026-07-31 · afternoon — publication, certification, a measured 3.28×

You went to make coffee; the repo went public
([github.com/a9lim/blc](https://github.com/a9lim/blc) — README,
AGENTS.md, MIT with prominent Tromp attribution since tromp/AIT
carries no license; worth asking his preference when that conversation
starts).

## The slot hunt (parallel lane, opus agent + Codex's spec)

All three parser branches of the 170-bit self-interpreter are now
**exhaustively optimal**: VAR (21b, 2,672 pruned candidates), APP
(41b, 10.2M), ABS (43b, **1.43 billion candidates in 32 s** at 9
threads). Reference is the unique survivor in each slot, nothing
smaller survives, and — the elegant part — **zero residual unknowns**:
every candidate that hit a budget cap was affirmatively proven
divergent. The spec's obligation-aware pruning was load-bearing (350×
on APP), and the soundness canaries all held (reference survives its
own harness; a β-equal-but-different-bits decoy passes; splice
round-trips). Stacked with the design-theory sweep, sub-170 now
provably requires a new representation idea, not a better search.
`src/bin/slotsearch.rs`, results in `tools/interp/SEARCH_RESULTS.md`;
the contextual lane (must-mask 0) is the one mechanical route left.

## The optimization arc (main lane): estimate → instrument → measure

The audit estimated 2-5× from bb.rs metadata caching. The honest
final number is **3.28×** (census 4..40: 23.8 → 7.2 min,
`census_full3.txt`), and it took three measured steps to get there —
the estimate's *mechanism* was half wrong and finding out why was the
productive part:

1. **Cached-Meta nodes, 1.37×.** The rewrite carries an invariant I'm
   fond of: every skipped traversal bills the work meter exactly what
   the old walk charged, so verdicts are bit-identical *by
   construction* — falsifiable, and verified anyway on a full sweep.
   Then a live profile showed the remaining wall was idle workers
   behind stuck KN rescues, not the bb engine.
2. **Rescue transition cap 64×β → 32×β.** New VM telemetry measured
   every successful rescue: worst ratio 17.0 trans/β (the n=38
   champion, 9.45M β via 160.4M trans). 32× keeps 1.88× margin;
   verified verdict-identical end to end. En route, the audit's
   rescue-by-`Why` hypothesis died cleanly: ALL successful rescues
   are Capacity — work-meter unknowns never rescue.
3. **Rung-2 floor 1<<22 → 64×β.** Exactly ONE term in the whole
   census ever used that floor (n=39); ~150k stuck attempts per big
   size burned it in full. The one term now reaches the same halt via
   escalation — the sole changed column all afternoon: `escal`
   169,921 → 169,922.

Day's moral, now in DESIGN.md: budget heuristics survive until
someone measures the real ratios. The census prints rescue and rung-2
telemetry permanently so the margins stay observable at n=41+.

Also: this file was MORNING.md until 2pm; renamed when it became
clear it's a ledger, not a sunrise.

# 2026-07-31 · evening — the ratchet: loop32 falls, and 105 more

## The certificate arc

The afternoon ended with `loop32` still the one 32-bit term nobody
proves. The evening closed it, then kept going.

The shape of the thing: `loop32 = F A` with `A = λx. x x (λy. y x)`
never *recurs* — it grows. An independent from-scratch reducer
(`tools/cert/loop32_trace.py`) confirmed the hypothesis exactly: the
head reduction passes through `A Wⁿ[C0]` for `W[Z] = λy. y Z`,
`C0 = λ_.A`, milestones n = 0..76 strictly consecutive, cycle n taking
exactly 2n+2 steps — the machine consumes the whole depth-n tower
every cycle, so no bounded exact-recurrence window (redloop included)
can ever see it. The certificate that *can* is three bounded symbolic
head reductions over a closed opaque metavariable — OPEN, DESC, BASE —
plus a concrete INIT; the glue theorem turns them into an infinite
head chain, and standardization turns that into "no normal form."
Full spec with proof: `tools/cert/SPEC.md`.

Codex reviewed it adversarially on `blc-conformance` before I trusted
it: *"the glue theorem survives — no soundness counterexample."* Two
findings, both fixed same-day — the reference reducer had a latent
argument-descent branch (now head-only by construction), and the
lifting side condition must bind every proper *source* state, start
included (the checker now rejects an abstraction start). Prior art
pinned down too: this is a head-strategy, closed-metavariable
λ-instance of Emmes–Enger–Giesl's non-looping nontermination patterns
(IJCAR 2012); no closer untyped-λ certificate surfaced in the search.

The checker (`src/cert.rs`, 11 unit tests) is the only trusted piece;
discovery is a heuristic that anti-unifies consecutive milestone
arguments and hands the triple over. Garbage in, ABORT out.

## Honest accounting: the memory bomb, again

First sweep launch hit 38 GB RSS inside a minute. Cause: one
β-contraction can *square* the term size, so a between-steps size cap
is a fence checked after the horse. This is the overnight ledger's
"budgets in semantic units" lesson recurring in code I wrote hours
after re-reading it. Fix is structural now: `head_step` computes the
pre-contraction bound |body| + occurrences×|arg| and refuses to
allocate (`Step::TooBig`), plus a regression test that would have
caught it. Killed by exact pid, machine verified clean.

## The sweep: 65, then 106

Pass 1 (top-level spines only): **65 kills**. Three cross-validated by
an independent Python replay (`crosscheck_kill.py`) — including a
38-bit kill with a *different* engine head, so the certificate is
already generalizing beyond loop32's family.

Then the classifier map (opus agent, `tools/cert/CLASSIFY.md`, all
2,032 unknowns): 305 ratchet-candidates, **zero** exactly-periodic
states, and the big structural fact — **1,320 of 2,032 unknowns
present as bare abstractions**, invisible to top-level spine matching.
That motivated v1.1: strip leading binders before milestone matching
(sound because head reduction is defined under leading lambdas and the
certificate gates already force the triple closed).

Sequential re-sweeps were the evening's second lesson: you flagged
pass 2 grinding at two hours (my estimate said minutes — the n=39/40
stragglers burn full budgets). Parallelized `certsearch` with rayon
(~15% CPU → all cores), and the v1.1 sweep of the full frontier now
runs in ~14 min at 16 threads.

Final: **106 certified kills** — 101 top-level + 5 inside closed hnf
arguments (sound descent: a closed spine argument with no normal form
kills the whole term). Strict superset of pass 1. By size: 1×32,
1×34, 1×35, 2×36, 2×37, 26×38, 26×39, 47×40 — the n=40 jump (16→47)
is the under-binder mass, exactly where the classifier pointed.
Fuel-robustness control: all 106 re-certified at 4× budgets,
certificate lines byte-identical.

## What it means for the numbers

- **BBλ(32) is now fully mechanical.** loop32 was the sole 32-bit
  unknown; the n=32 row reads zero. Every term of ≤32 bits is now
  machine-adjudicated with no hand exclusions anywhere.
- **The frontier is `unknowns_v3.txt`: 1,926 terms** (from 2,032).
  Certificates + bits: `tools/cert/ratchet_kills.txt`.
- **Ω narrows 9.47%**: killed mass 603·2⁻⁴⁰ exactly, interval now
  **[0.123995323359, 0.123995328603]**, width 5.24e-9 (was 5.79e-9).
  The lower bound is untouched — certificates only ever move unknowns
  to diverge.

Per-size frontier after the ratchet: n=33: 2, 34: 9, 35: 22, 36: 42,
37: 92, 38: 197, 39: 472, 40: 1090.

## Where this points

The classifier says what v1 leaves on the table, with coordinates:
geometric duplicating wrappers (x→2x+5 towers), spine ratchets (arity
to 8,228 with flat sizes), alternating heads, deeper under-binder
recurrences. The v2 design (SPEC.md §5, Codex-reviewed direction):
finite control graph of indexed state schemas, arbitrary exact lemma
endpoints, several metavariables, replayable proof scripts, a
well-founded measure. That's the next Codex round on `blc-conformance`.
After v2: the Lean track, with this checker as the centerpiece —
Codex's staging is (a) infinite head chain, (b) head standardization,
(c) `¬ HasNormalForm loop32`.

## Round two: v1.2 ships, and v2 arrives with its math done

The 244 surviving ratchet-candidates split under hand diagnosis into
a cheap family and a deep one, and the evening's last act handled
both.

**The cheap family — trailing spine vectors.** Dozens of near-misses
are loop32's exact engine presenting as `λᵏ.(A Wⁿ[C0] y⃗)` — the
tower plus baggage (one exemplar's trailing argument is literally A
itself). v1.2 decomposes the full spine in INIT and discovery;
soundness is iterated lifting, and the subtlety Codex's round-one
strengthening paid for came due here: every state of the certified
chain is a non-abstraction, so any fixed trailing vector — open or
closed — rides along untouched. Swept: **24 new kills, every one
with loop32's head** (2×36, 5×38, 3×39, 14×40). The v1.1 kill set
reproduced byte-identically; the 24 held at 4× budgets.

Codex's round-two verdict: *"v1.2 is sound. Ship it"* — with two
comment corrections, both mine to own: I'd written "each lemma
endpoint is an application," which is false (BASE ends at A, an
abstraction; the assembled chain only ever contains it *applied*),
and my "y⃗ need not be constant across milestones" conflated
untrusted discovery with the proof (INIT selects one state; the
lifted execution preserves that exact vector). Plus one adversarial
test they wanted: `λu. A C0 u`, the trailing argument open in the
stripped body. All applied; 31 tests green.

**The deep family — and Codex did the math.** For the n=35 forcing
term (wrapper perfectly consistent, but OPEN ends `Z W[Z]` — the
tower takes head position, where v1's opacity must abort), they
derived the exact recurrence: rank step `R(m,N)` in 11+3(m+N) steps,
cycle length 1 + (9n²+25n)/2, matching my measured milestone gaps
1, 18, 44, 79, … exactly. And they caught my misread: the
cycle-internal context term is the cycle-local Xₙ₋₁, not a fixed
constant — a schema that opaques it loses the tower correlation.

The v2 design that fell out (SPEC.md §5, now the ratified plan) is
smaller than what I'd sketched: no control graph, no cyclic proof.
`HeadTowerRatchet` — named metavariables `Meta(id)`, indexed towers
unfolded by definitional equality, six replayed obligations
(BASE/OPEN/SPREAD/PEEL/BOUNCE/ERASE), a fixed assembly theorem
proved once, two proof strata (productive CYCLE, terminating
helpers), and the commuting square still the only primitive rule.
Their line worth keeping: the forcing example "does not force
general pattern-headed schemas or cyclic proof graphs. It forces
indexed towers, named closed metavariables, and ordinary
well-founded induction."

**Numbers after v1.2:** frontier 1,926 → **1,902**
(`unknowns_v4.txt`), certificates 106 → **130**
(`tools/cert/ratchet_kills.txt`), killed mass 675·2⁻⁴⁰ total —
**10.6%** of the census width — interval
**[0.123995323359, 0.123995328538]**.

## v2 lands the same night: the HeadTowerRatchet

Implementation turned out to be the smallest part — Codex's design
meant the trusted surface barely grew. `Meta` became `Meta(id)` (same
id ⇒ same closed term; Z and Q display as themselves), `check_reduces`
gained a →ₕ*-variant for the empty BASE, and the six obligations are
literally six calls: no plugging anywhere, since `W[Z]` *is* the
wrapper pattern and Q is just `Meta(1)`. The assembly theorem stays on
paper (SPEC.md §5) where Codex proved it; the checker replays
obligations and runs the same v1.2 INIT. The forcing term certifies
with obligation lengths exactly [0,1,1,3,3,7] — the numbers their
derivation predicted before the code existed.

One real bug: discovery keyed milestone families by head alone, and
the deep family's rank-step interiors (`A I Xₘ Xₙ` — same head A,
different role) polluted the milestone stream, killing the growing
window. The fix is the honest taxonomy: a milestone family is
**(head, spine arity)**. All 130 shipped certificates reproduce
byte-identically under the new keying — checked before anything else.

**Sweep of the 1,902:** 6 HeadTowerRatchet kills — the n=35 forcing
term and its family: 1×35, 1×37, 4×39, one shared head, every eraser
the identity. Zero new v1 kills (the arity keying unlocked nothing
spurious). All 6 byte-identical at 4× budgets. And a new battery
(`tests/cert_battery.rs`): every provable halter ≤28 bits — 196,848
of them — through discovery and BOTH verifiers, zero certificates
fire. First cut probed halting with the naive normalizer on one
thread and wanted ~45 min for ≤26; a9 balked, rightly. The probe
doesn't need the executable spec — any sound engine's Ok is a proof
of halting — so it now uses the KN machine over rayon subtree tasks:
the ≤26 sweep went from ~45 min to 0.17 s (~16,000×), and ≤28 runs
in under a second as a default test. The day's budget moral, once
more: the cost was never the battery, it was probing with the one
deliberately slow component in the repo.

**Where the campaign stands after one day:** 2,032 unknowns → 1,896
(`unknowns_v5.txt`), 136 certificates in `tools/cert/ratchet_kills.txt`
(130 RATCHET + 6 RATCHET2), killed mass 723·2⁻⁴⁰ = **11.35%** of the
census width, Ω|≤40 ∈ **[0.123995323359, 0.123995328494]**, and BBλ(32)
mechanical end to end. The remaining 238 ratchet-candidates are the v3
hunting ground — geometric duplicating wrappers and spine ratchets
first, each needing its own forcing example before we grow the
certificate language again. Then Lean, where the checker's smallness
was the design constraint all along.

# 2026-07-31 · late — the wall-clock survey (a9's rule, then its dividends)

a9 canonized the rule after watching the battery grind: wall-clock is
a UX budget; a 2-hour single-thread run and an instant one are
different products even when the verdicts agree. It's in AGENTS.md
ops lessons now. The survey that followed measured every lane and
paid out in three currencies — speed, coverage, and two fresh kills.

## Measured, lane by lane

- **Battery**: naive-probe single-thread ~45 min (≤26) → KN probe +
  rayon subtree tasks → 0.17 s; default tier extended to ≤28 bits,
  196,848 halters, <1 s. The moral got its own AGENTS bullet: never
  probe with the executable spec.
- **BBλ(34) witness**: was an `#[ignore]`d fat-stack naive test
  nobody ran; now a 0.01 s KN case in the default suite. Zero
  ignored tests remain.
- **Census frontier re-adjudication** (`--terms-file`): 2:53 for all
  1,894 at 16 threads. Fine as-is.
- **certsearch incremental sizing**: head_step now returns the exact
  contraction delta (occ·|arg| − occ − |arg| − 2) so callers track
  size instead of re-walking the tree each step. Honest yield: only
  ~5-10% — substitution *allocation* dominates, not the size walk.
  Kept anyway (exact, free).
- **solomonoff**: ported the census's measured transition caps
  (rungs 64×β, rescue 32×β); output diffed against the shipped
  tables before trusting (see below for the number).

## Codex round three, and the two kills discovery owed us

Their verdict on the v2 transcription: *"faithful … no association
error, role swap, or soundness hole"* — all six RATCHET2 terms
independently re-certified. Three follow-ups, all landed: wrapper-ID
hardening (both trusted verifiers now require every wrapper hole to
be Meta(0) — the plug/match_wrapper all-holes-collapse was a v3
landmine); a 4,096-family cap in discovery (spine ratchets mint a
fresh arity almost every state); and the big one — **first-candidate
masking**. Discovery used to return its first consistent triple and
stop; if both checkers rejected it, every later family died unseen.
Discovery now STREAMS candidates to an accept callback, retiring a
family per rejection.

The unmasking immediately found **2 new kills** on the historical
frontier — both n=39, wrapper λy.y Z, two engine heads never seen
before, independently cross-validated by the Python replay and
byte-identical at 4× budgets. Completeness has a price: the full
2,032-term sweep at 2000/200k went from ~13 to ~50 min (rejected
candidates no longer end the trace). The measured answer: 1000/100k
reproduces the exact 138-kill set with byte-identical certificates
in 12.6 min — now the default; thorough budgets stay a flag away.

## Where the numbers stand

Frontier **1,894** (`unknowns_v6.txt`; the v3-v5 intermediates were
derivable stepping stones, deleted). Certificates **138**. Killed
mass **727·2⁻⁴⁰ = 11.41%** of the census width. Ω|≤40 ∈
**[0.123995323359, 0.123995328490]**. Suite: ~4 s, nothing ignored.

**Solomonoff verification (the gate before this commit):** with the
census caps ported, the full 4..40 sweep runs in **7:19 (was 23.5
min, 3.2×)** — and every exact quantity is identical: halt/diverge/
unknown masses to the last 2⁻⁶⁴ unit, 3,214,311 distinct nfs, the
|x|≤20 table byte-for-byte. The only diff was the "most compressible"
listing permuting within gain-tie classes — a pre-existing
nondeterminism (sort by gain alone, then `take(top)` cutting inside a
tie class in HashMap order), now fixed with a deterministic (gain,
xlen, xenc) key. The shipped solomonoff_40.txt stays canonical until
the tables regenerate at n=41.

# 2026-08-01 · overnight — memoized wraps, uni.rs, the PR kit, Lean

## λ-wrap memoization: correct, beautiful, honest

The last audit docket item. A closed T and its wrap λ.T share a fate —
same β sequence, nf two bits bigger — and the census re-derived it at
every size. Now a cross-size memo keyed (enc, len−2) reuses every
escalation-tier verdict: the bit code being prefix-free means a map
hit PROVES the body is closed (no walk — the key match is the proof),
and memo hits re-insert themselves so λλ-chains stay free.

Measured: **100% hit rate** (every candidate's wrap exists and hits —
462/462 at n=32 through 6,538/6,538 at n=36), halt/diverge/unknown
bit-identical across 4..40, every BBλ and A114852 verify green. And
the honest wall number: **~3%** (7:12 → 6:58). The audit's "escalation
tier ≈98% of CPU" predated the daytime trims; post-trims the wall is
the cheap tiers sweeping 130M terms at n=40. The memo's share grows
with n (the escalated tier grows superlinearly), so n=41+ benefits
more. Canonical table: census_full4.txt (telemetry columns changed by
design; verdict columns identical to full3).

## uni.rs and the corpus that lied by omission

Built the Rust member of Tromp's reference-interpreter family
(tools/uni/): single file, std only, host closures over a persistent
env, Scott/Church I/O. First draft memoized argument suspensions
(call-by-need) and passed the whole corpus byte-identically — quine,
take256, hilbert, primes1k — at ~11× uni.py. Sent to Codex for
adversarial review with the direct question: is call-by-need
observationally equivalent here?

**No.** The review came back with a 51-bit closed witness whose
duplicated argument runs output effects during forcing: uni.py prints
`00`, memoized uni.rs printed `0`. The corpus never duplicated an
effectful argument, so four vectors of byte-identity said nothing
about the case that matters. Two more findings: `read_to_end` made
"lazily consumed input" true only of a buffered Vec (a live producer
deadlocks — uni.py streams via os.read(0,1)), and `as u8` silently
truncated malformed nine-bit output bytes where uni.py raises.

Rebuilt for exact parity: **call-by-name** Name-thunks for program
arguments (uni.py's eta-suspensions — effects replay identically),
**memoized input cells** with uni.py's exact one-byte read-ahead at
destruct (inp[n]), **streaming stdin** one byte at a time, flush per
emission, range-checked output bytes. All three review witnesses are
now regression vectors in verify.sh alongside the corpus — eight
vectors green. The kicker: call-by-name cost nothing measurable.
**0.48 s vs 8.67 s on primes1k — 18× uni.py**, faster than the
unsound draft's claim. The PR kit claims are rewritten to match;
a9 sends the PR.

Lesson canonized: a passing corpus is evidence about the corpus. The
review question that found the bug was the one we asked on purpose —
"is this equivalence actually true?" — and the answer arrived as an
executable witness, which is the only currency that settles such
questions.

## The memo's Unknown was never a verdict

Same review, second finding: reusing a seed's Unknown for its wrap is
conservative but claims too much — Unknown is a resource outcome of
one engine run, not a semantic fate, so copying it (and its Why) does
not prove the wrap would exhaust the same budget. Policy now: **memoize
Halt and Diverge only**; a seed-Unknown wrap runs the ordinary ladder.
Verified: 4..40 verdict-identical to the canonical table post-policy
(7:05), and all 463 n=41 wraps of 39-bit unknowns direct-adjudicate
to Unknown anyway (19 s) — the inherited rows were right, but now
they're right for the stated reason.

# 2026-08-01 · late night — the 41st busy beaver row

The census went one size past every published table. **4..41 in
16:29**: 242,222,714 closed 41-bit terms, 241,372,280 proven halting,
847,934 divergent, 2,500 unknown. **BBλ(41) ≥ 1,074,266,118 bits** —
the busy beaver's first billion-bit row. Every A114852 and BBλ verify
in range green; 4..40 rows bit-identical to census_full4. Canonical
table: census_full5.txt.

The certificate sweep over the 2,500 fresh unknowns killed **119**
(87 ratchet + 3 under-arg, 28 HeadTowerRatchet + 1 under-arg) in
14:25 — the ratchet families keep scaling with the frontier. Kills
file now 257 lines; frontier `unknowns_v7.txt` = 4,275 terms (1,894
at 4..40 + 2,381 at 41). Ω|≤41 ∈ **[0.124105086764, 0.124105092978]**
in exact rational arithmetic — the first Ω bracket at 41 bits.

Rescue margin watch: the n=41 rescue champion needed 9,457,564 β of
the 10⁷ cap — **1.06× headroom**. AGENTS.md now says in bold: raise
--rescue before n=42. An 8× fuel control over the 2,381 unresolved
41-bit terms ran overnight to test kill-completeness at default
budgets.

## The flagship falls without standardization

Set out to close the gap loop32_headDiverges → ¬HasNormalForm via the
staged route (Takahashi: parallel reduction, factorization through
internal reduction, five Nipkow substitution lemmas). Stress-testing
the factorization statement before writing Lean found a real
subtlety: the head chain of an application's function can pass
through a lambda, at which point the naive lifting breaks and the
internal-reduction bookkeeping has to absorb a multi-step head prefix
into a single parallel step — which is false. Takahashi's actual
proof threads this needle with care; formalizing it is a real
project, not an evening.

Then the better observation: **the ratchet doesn't need
standardization at all.** A, F, C0, and every tower Wⁿ[C0] are
themselves β-normal — the only redex any reachable state ever carries
is the head redex. So full β-reduction from loop32 is deterministic
and coincides with the head stepper. Formalized as: `Spine` (the
single-redex discipline; its lemma: on a spine, every β step IS the
head step) + `St` (the ratchet state family: init, engine·tower,
tower-tower descent spines) with two closure theorems — every state
steps to a state, every β step from a state lands in the family. A
normal form reachable from loop32 would be a state with no successor;
there are none.

```
theorem loop32_noNormalForm : ¬ HasNormalForm loop32
-- axioms: [propext]; zero sorries; no mathlib
```

Cleaner axiom footprint than the divergence theorem itself (propext
alone — the Quot.sound dependency of headDiverges comes through Nat
arithmetic that the invariant argument never touches). The proof is
~180 lines across Blc/Beta.lean and Blc/NoNf.lean and formalizes the
reason the certificate approach is sound in the first place: the loop
is a one-way street. Head standardization stays on the docket as the
general bridge (for terms without the single-redex discipline), with
the factorization subtlety recorded above as the entry cost.

## Where the 138 kills actually landed (classification cross-reference)

Joining `ratchet_kills.txt` (the 4..40 rows) against
`tools/cert/classify.csv`:

| trace class | killed | of class |
|---|---:|---:|
| `ratchet-candidate` | 80 | 305 |
| `opaque` | 58 | 594 |
| everything else | 0 | 1,133 |

Two readings. First, the discovery upper bound was honest: the
A-head family is killed **45/45** — the exact set CLASSIFY.md
predicted one certificate triple would discharge. Second, and
better: **58 kills came from `opaque`** — the class defined by the
20,000-step tracer seeing nothing (states spend >90% of their time
as bare abstractions, no spine to measure). The under-binder
milestones (v1.1) and trailing spine vectors (v1.2) reached inside a
class the trace detector is structurally blind to. Certificates are
not just confirming the map; they are proving theorems where the map
is blank.

The sharpened v3 target list: 225 unkilled `ratchet-candidate` terms
(the geometric duplicating-wrapper families — milestone sizes like
13, 31, 67, 139 = 2x+5 — are in checker scope per SPEC §3 but need
anti-unifying discovery), and the 180-term spine-growth axis (`H
t1..tk` with k itself climbing — needs the one-more-argument
obligation shape). The n=41 residue (2,381 terms) is classifying now.

## Codex on the flagship: no soundness hole; and three gifts back

The adversarial review came back clean — verified locally at ff90e63
(build, zero sorries, axioms as claimed), every Beta case of the
Spine argument checked exhaustively. Two wording corrections, both
taken: St is a closure-friendly SUPERSET of the reachable states,
not an exact characterization (the over-approximation strengthens
the proof); and substitution does create off-path material (OPEN
plants the tower under the wrapper's binder) — the proof is safe
because each such object is re-proved a tower, not because
substitution avoids off-path positions. NoNf.lean's comments now say
exactly that.

The review also returned three things better than what it reviewed:

1. **Trailing vectors don't force standardization.** Extend any
   deterministic core invariant P to λᵏ.(core y⃗): a β-step either
   hits the core (closed by st_beta's argument) or one baggage
   coordinate (replace it); no root contraction can consume baggage
   because every core is an application. So v1.2-shaped states with
   arbitrary — even open, even non-normal — trailing baggage keep
   the one-way-street conclusion. What DOES need standardization is
   certificates whose A/W/C0 components are themselves non-normal
   (the checker contract never required normality). Measurable gate:
   how many of the 257 kills have deterministic cores. Queued.
2. **The exact repair for my failed factorization**: an IPar with a
   `redexShell` constructor (root redex preserved while body and
   argument parallel-reduce — the case my naive definition could not
   classify), plus the indexed split of Accattoli–Faggian–Guerrieri:
   ParN counts contracted redexes, and the split exposes AT MOST ONE
   head step per application of the lemma — no head chains through
   lambdas ever arise. Full lemma DAG down to
   HeadDiverges → ¬HasNormalForm, staged and referenced.
3. **The symbolic checker representation**: STerm with a meta
   constructor (the Lean mirror of the Rust checker's PTerm::Meta),
   instantiation maps, the commuting square as the one trusted rule,
   and a LiftPath relation carrying the source-nonlam side condition
   the appL lifting needs.

## The n=41 residue, classified

tracescan over the 2,381 unresolved 41-bit terms (38:30 on 3 threads
while the fuel control held the rest): ratchet-candidate 231,
head-recurrent-other 570, monotone-growth 225, blowup 580, opaque
775. Under-the-binder share still dominant (1,632 with k0_frac>0.9,
68.6%); spine-growth axis 367 terms with max arity ≥100. The 231
fresh ratchet-candidates survived the default-fuel certificate sweep
— same anti-unification gap as the 4..40 residue's 225 (duplicating
wrappers, high arities). The v3 lanes now have 456 mapped candidate
terms across 4..41 to force against.

## The general bridge falls the same night

The morning docket said head standardization was "a real project,
not an evening." It took the rest of the evening. With Codex's
round-five staging in hand (the AFG indexed route and the missing
`redexShell` constructor), the whole tower went up in three files:

- Subst.lean — the five Nipkow shift/substitution equations, each an
  induction with the indices generalized and an omega-driven if-bash
  (`var_bash`) at the leaves.
- Par.lean — occurrence counting (five interaction lemmas mirroring
  the substitution geometry), ParN indexed parallel reduction, and
  the substitution theorem at the exact index n + occ j t' · m —
  the count algebra closes under Nat.mul_add/add_mul/mul_assoc
  normalization plus omega over the product atoms.
- Factor.lean — IPar with redexShell (a root redex held in place
  while body and argument reduce — exactly the case the naive
  factorization could not classify), the indexed split (at most one
  head step exposed, index strictly down; the beta case spends its
  +1 on the root contraction with the substitution theorem supplying
  the remainder), merge (internal-then-head recombines into one
  parallel step, index forgotten), and the pullback on the
  lexicographic measure (head steps remaining, then index). The
  assembly turned out SIMPLER than the staged DAG: no postponement,
  no persistence lemma — the un-indexed merge plus the lex measure
  carry the whole terminal argument.

```
theorem headDiverges_not_hasNormalForm : HeadDiverges t → ¬ HasNormalForm t
-- every term; zero sorries; propext + Quot.sound; no mathlib
```

loop32_noNormalForm now has two independent proofs (the one-way
street, and this bridge via loop32_headDiverges — `loop32_noNormalForm'`),
and every one of the 257 ratchet kills has a Lean-formal path from
its certificate's conclusion to no-normal-form with no side
conditions. What remains for cert-to-Lean export is mechanical: the
symbolic checker layer (STerm metavariables, instantiation, the
commuting square as the one trusted rule).

# 2026-08-01 · morning — the control's verdict, and its tail

The 8× fuel control over the 2,381 unresolved 41-bit terms:
**2,370 processed, zero additional kills.** Default discovery budgets
(1000 steps / 100k nodes) are kill-complete at n=41 on everything
measurable. The remaining 11 terms were killed with the run at the
9-hour mark (exact pid, machine clean): all are classifier blowup
terms (9 of 11 hit the 500k-node cap in 20k trace steps —
`head-recurrent-other` with ~500k-node states), where 8× discovery
budgets thrash allocation rather than approach a certificate. They
are recorded in the scratchpad, not silently dropped; the honest
claim is "kill-complete on 2,370/2,381, 11 blowup terms not
control-swept at 8×."

Ops lesson, canonized as a docket item: certsearch discovery needs a
per-term work meter (the bb.rs pattern) so a control sweep can never
be held hostage by half a percent of pathological terms. Wall-clock
is a UX budget; a control that doesn't terminate isn't a control.

# 2026-08-01 · midday — certificates become theorems

The symbolic checker layer landed in one sitting, and the endgame it
was designed for landed the same hour. Two files and a translator:

- **Blc/Sym.lean** — `STerm` (terms plus opaque metavariables; the
  constructor is `mvar` because `meta` turned out to be a reserved
  Lean keyword, which cost one confusing parse-cascade before `head`
  instead of `tail` on the build log found it). Shift and
  substitution leave holes opaque; instantiation is capture-permitting
  grafting, sound because environments are required closed — exactly
  the Rust checker's contract. The executable `symHeadStep` aborts on
  an opaque head (a `some` transports, a `none` claims nothing), and
  the ONE trusted rule is the commuting square: a symbolic step
  instantiates to a concrete `HeadStep` under every closed
  environment. `LiftReds` packages SPEC.md's "every proper source is
  a non-abstraction"; `symStepsApp` is its symbolic witness.
- **Blc/Ratchet.lean** — the generic v1.2 assembly. `RatchetCert` is
  pure data: the triple, three obligation counts, and the INIT
  landing (binder count, tower height, trailing vector — v1.1 and
  v1.2 both formalized). `Valid` is seven decidable obligations;
  `check`/`valid_of_check` collapse them into ONE kernel `decide`.
  The glue theorem is Loop32.lean's cycle argument run generically —
  OPEN mints the next layer, DESC peels inside the left spine, BASE
  relights, all lifted through the trail and under the binders —
  ending in `HeadDiverges`, then `¬HasNormalForm` through the
  bridge. loop32-as-data is the in-file proof of concept: the
  flagship's third independent derivation.
- **certlean** (src/bin/certlean.rs, UNTRUSTED) — parses
  ratchet_kills.txt, re-runs the trusted Rust verifier for the step
  counts, replays INIT to read off the landing state, emits Lean.

Result: `lean/Certs/` — **214 individually kernel-checked
`¬HasNormalForm` theorems**, one per plain RATCHET line, named by
their bit strings. The whole batch elaborates in **~1.1 s** (the
kernel-decide cost I budgeted minutes for is milliseconds — the
obligations are short traces on small terms). Axioms per theorem:
`[propext, Quot.sound]`. Separate lake target, so `lake build` for
the library stays fast.

Honest scope: 214 of 257. The 34 RATCHET2 kills need the
HeadTowerRatchet assembly formalized (six obligations, same
pattern, more glue); the 9 `*-ARG` kills certify divergence of a
spine ARGUMENT under a rigid head, and that bridge (a normal form
of `λᵏ.(x a⃗)` needs normal forms of every aᵢ) is genuinely new
theory — standardization-adjacent, not a translator afternoon.
Both are docketed.

The trust story is now exactly what the certificate campaign wanted:
discovery untrusted, Rust checkers trusted-but-audited, and for 83%
of the kills the Rust checker is no longer in the trusted base at
all — the Lean kernel replays every obligation from raw data.
