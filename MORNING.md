# Morning report — overnight census run, 2026-07-31

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
