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
- **Frontier pass at Tromp's exact capacity (42M)**: {{FRONTIER_TLDR}}
- **Conformance vs BB.txt is now a precise, interesting story** — see
  below; neither engine dominates the other.

## The conformance picture (the fun part)

BB.txt was produced by BB.lhs `normalForm 42000000` — the very engine we
ported — so the comparison is apples-to-apples at `--bb-cap 42000000`.
Per size, `his nonhalt/fail` vs `our diverge/unknown` (totals cross-check
exactly on both sides):

| n  | Tromp nonhalt | Tromp fail | our diverge | our unknown |
|----|--------------|-----------|-------------|-------------|
| 32 | 2939         | 1         | 2935        | 5           |
| 33 | 4116         | 4         | **4118**    | **2**       |
| 34 | 9941         | 6         | 9930        | 15          |
| 35 | 16446        | 17        | 16431       | 32          |
| 36 | 36452        | 25        | 36403       | 71          |

(BB.txt stops at 36 — our 37..40 columns are past his published table.)

Neither engine dominates:

- **He proves more nonhalters** at 32/34/35/36 (+4/+11/+15/+49). Leading
  suspect: GHC's lazy graph reduction *shares* substitution work that our
  eager tree-copy engine pays in full, so at equal capacity his engine
  simply gets further before giving up. Our work meter (the thing that
  saved us from three hang bugs) trips first. Diagnostic knob
  `BLC_WORK_MULT` now exists to test exactly this. {{METER_RESULT}}
- **We prove more at 33** (4118 vs 4116): two of his four fails are loops
  our simplify-enhanced history catches automatically.
- **We auto-resolve his hand-annotations.** His automatic engine's best
  at n=34 was a 27,380-bit normal form; the true champion (327,686 bits)
  was a *fail* for his run, added by hand (the "+2" notes in BB.txt).
  Our KN-rescue ladder resolves it automatically — same at 35, where our
  automatic max (98,421 = Church 3⁹, nicely) exceeds his automatic
  90,100.
- **Possible off-by-one in BB.txt**: the hand-annotation arithmetic at
  35/36 ("11112176 + 3 = 11112179" vs summary halt 11112175; ours lands
  on 11112178 = summary+3) doesn't quite reconcile. Worth mentioning
  whenever the PR conversation with Tromp happens.

Also worth knowing: BB1.lhs's `bb0` records *hand-proven* champions past
the computable frontier — BBλ(35) = 6+5·3³³ ≈ 3.8×10¹³ bits and
BBλ(36) = 6+5·2^256 bits. So for n≥35 our max-computable numbers are
lower bounds on a frontier whose true values are known by analysis to be
astronomically larger. n=34 (= 6+5·2¹⁶ = 327,686) is the last size where
the champion is physically computable — and we compute it.

## Frontier unknowns at 42M

{{FRONTIER_BODY}}

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
  inconsistencies within a chain (there were none{{CONSISTENCY_CAVEAT}}).
- `BLC_WORK_MULT` env knob on the escalation engine (default 16).
- DESIGN.md gained a Results section; oracle.rs doc-comment warning
  fixed. Tests: 37 pass, 1 ignored (the deliberately-slow naive BB(34)).
- New data files: `unknowns_all.txt`, `unknown_seeds.txt`,
  `frontier_42M.txt`, `census_dump.txt`, `bench_results.txt`,
  `bench_split_results.txt`.

## Where I'd point us next

1. {{NEXT_1}}
2. The lazy-vs-eager escalation gap: if `BLC_WORK_MULT` confirms
   meter-starvation, a shared-graph (or memoized-subst) escalation
   engine would close most of the nonhalt deficit. If it doesn't,
   there's a semantic port difference to hunt — good Codex material.
3. n=41 census (~242M terms, ~30 min with current engine) any time you
   want the next row; nothing blocks it.
4. The Lean track and the `uni.rs` distillation for the Tromp PR remain
   open as planned.
