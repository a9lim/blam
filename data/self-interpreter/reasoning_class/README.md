# Round 4: the separated class and the reader weight

The fourth round of reasoning lanes (2026-10-21/22) on a sub-162
self-interpreter or a proof that 162 is optimal. No interpreter below 162 was
found. The results are in `docs/classical/self-interpreter/class-bound.md`
(§2–5), `interpreter.md` §6 and `global-floor.md` §10, and the Lean the lanes
wrote is in `lean/Blc/` (`lake build Blc`).

The full lane archives (prompts, notes, reports, consult transcripts, the
generated Lean of the normalizer-exception refutations, certificate
manifests and logs) are in git history at commit `703f50d`:
`git show 703f50d:data/self-interpreter/reasoning_class/<lane>/<file>`. A
result `class-bound.md` attributes to a lane by name was established there.

What the tree keeps:

| path | what it is |
|---|---|
| `types/`, `coord/rd.py` | the needed-narrowing search behind "every β-normal reader has `w ≥ 46`": `REPORT.md` gives the five runs (`narrow.py` for `j` at depth ≥ 2, `narrow2.py` and `narrow3.py` by root arity at depth 1; the depth-1 runs take about 70 s together, each under 0.5 GB) |
| `pending/X_REMAINING.json`, `X_REMAINING.tsv` | the 51 listed x-headed pending sources; `tools/self-interpreter/theory/rootlet_pending.py --check` pins each to `lean/Blc/SelfintRootLetPending.lean` |
| `pending/x_overcap.json` | the eight still-over-cap x cells after the hand-off rules (2,102,856 sources) |
| `simplify/extension_summary.json`, `*.tsv` | rootnl's over-cap cells after the hand-off simplifications (2,343,026 sources, 184,628 non-minimum); the simplifications are `lean/Blc/SelfintSimplify*.lean` |
| `arch/` | the 201-bit value/thunk/token architecture and the two variants priced on paper (`REPORT.md` and its fixed checks) |
| `.lam`, `.blc` in `arch`, `chead`, `escape`, `fresh`, `global`, `knot`, `nextctor`, `widen` | the constructions of `interpreter.md` §6 ("Variants of the 162"); `tools/self-interpreter/battery.py` checks any of them |

The scripts resolve paths from their own location and the repository's
`tools/`.
