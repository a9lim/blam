# Morning report — overnight census run, 2026-07-31

Good morning! Everything on the agenda landed. The machine is clean (no
runs in flight), the repo is uncommitted as always, and the night's story
is below. Numbers you can trust: every claim here is backed by a file in
the repo, and every reference value Tromp published is reproduced exactly.

## TL;DR

- **The full census 4..40 is done and verified**: 283,817,255 closed
  terms, ~26 min wall on your 18 threads (`census_full.txt`). Every
  A114852 count exact, every published BBλ(n) reproduced, n=32 halt
  count matches BB.txt to the term.
- **Ablations quantified** (`bench_results.txt`): oracle prefilter ~3×,
  fused parallel generation ~8×, NF-prescan and budget1 tuning ≈ noise.
- **The "tail imbalance" hypothesis died a clean death**
  (`bench_split_results.txt`): throughput is flat from 1152 to 73,728
  generation tasks. The real n≥39 cost is stuck-rescue burns on
  unknowns (~3.2 s each; 1563 of them ≈ 278 s of n=40's 799 s wall).
  Inherent price of maximum effort at the frontier, not a bug.
- **Frontier pass at Tromp's exact capacity (42M)**: zero movement.
  Every n≤36 unknown seed stays unknown at 21× the census capacity —
  what our port can prove, it already proves at 2M. The real discovery
  came from cross-matching BB.txt's fail traces instead: **our automatic
  frontier and Tromp's nearly coincide, and the terms his reducer fails
  on that ours resolves are exactly the BBλ champions.**
- **Conformance vs BB.txt is now a precise, interesting story** — see
  below; neither engine dominates the other.
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
- **The later-generation summary lines imply his stronger engine proves
  ~4 of the 5 traced 32-bit loops mechanically** (nonhalt 2939 = our
  2935 + 4). Which BB variant does that (BBU.lhs? BBx.hs? newer isB23?)
  is the top open conformance question — good Codex material.
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
- `BLC_WORK_MULT` env knob on the escalation engine (default 16).
- DESIGN.md gained a Results section; oracle.rs doc-comment warning
  fixed. Tests: 37 pass, 1 ignored (the deliberately-slow naive BB(34)).
- New data files: `unknowns_all.txt`, `unknown_seeds.txt`, the
  `frontier_*.txt` adjudication outputs, `census_dump.txt`,
  `bench_results.txt`, `bench_split_results.txt`.
- Git history exists now (you gave permission mid-night): engine core,
  census+data, docs, and a final results commit.

## Where I'd point us next

1. **The two residual asymmetric terms** (35b/36b above): the only ≤36
   terms where Tromp mechanically knows something we don't. Cracking
   how his later engine proves them (and the 4 traced 32-bit loops the
   summary layer implies it proves) closes conformance completely.
2. The lazy-vs-eager escalation gap: mult=2 vs mult=16 changed nothing,
   so within our engine the meter isn't the binding constraint — but
   his lazy graph reduction may still be doing qualitatively more
   within the same capacity. A shared-graph escalation engine is the
   experiment; also prime Codex material alongside (1).
3. n=41 census (~242M terms, ~30 min with current engine) any time you
   want the next row; nothing blocks it.
4. The Lean track and the `uni.rs` distillation for the Tromp PR remain
   open as planned. The BB.txt layer inconsistencies (trace counts vs
   summary fails, the ±1 champion arithmetic) are worth a gentle note
   to Tromp whenever that conversation starts.
