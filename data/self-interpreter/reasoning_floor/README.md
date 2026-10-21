# Reasoning lanes on the 165: floors and fusions

Twelve parallel reasoning lanes (2026-10-21) on a sub-165 BLC
self-interpreter or a proof that 165 is optimal, each told to reason first
and to run only light, targeted checks (`BRIEF.md` is the shared brief; each
directory keeps its own `PROMPT.md`). Codex ran `global`, `remainder`, `knot`,
`env`, `blind` and `scratch`; Claude ran `reader-proof`, `nextfuse`,
`dispatch` and `lean-floor`; `gemini` and `grok` are single consults from
those vendors. `verify/` holds the independent adversarial reviews.

No lane found an interpreter below 165. What the record keeps:

| lane | result | where it lives now |
|---|---|---|
| global | handwritten 37-bit global floor (34–36 excluded); literal continuation-headed source ≥ 70; remainder extractors ≥ 24 | `docs/classical/self-interpreter/global-floor.md`, `head-decomposition.md` |
| verify | two independent reviews of the 37 (Codex, Gemini) and one of the remainder 27 and the continuation-headed bound, all correct; the latter review combined them into ≥ 73 | `global-floor.md`, `head-decomposition.md` |
| remainder | remainder extractors ≥ 27; incomparable nonlinear binders, the transfer `|E| ≥ Rmin − 8`, the 45-bit tower reader, pending-source obligations, a 647-bit extractor with two nonlinear binders (all Lean) | `remainder.md`; `lean/Blc/SelfintRemainderChain`, `SelfintTower45`, `SelfintResidualControl`, `SelfintSharedS647`, `SelfintFixedResiduals` |
| knot | opaque fixed points cost ≥ 20 bits, so the 165's 31 bits of recursion overhead are minimal (Lean); the generic diagonal carrier ≥ 12; two reset bootstraps at 192 | `interpreter.md` §4, §6; `lean/Blc/SelfintKnot.lean` |
| lean-floor | kernel-checked `SelfintSizeBound 27` (from 18) | `structural-bounds.md`; `lean/Blc/SelfintFloor*.lean` |
| env | cell ≥ 24 and lift ≥ 19 with borrowed raw data, then under only the Boolean lookup laws (handwritten, unreviewed); a 171 with a curried cell | `interpreter.md` §5, §6 |
| reader-proof | handwritten theorem: with the 165's knot and NEXT fixed, every reader body costs ≥ 43, uniquely attained; a Gemini review found two local gaps, repaired in the report (a Codex review was pending when archived) | `reader-proof/REPORT.md`, `verify/vreader_gemini.md` |
| nextfuse | a catalogue of second-bit dispatch placements (166–188); its "NEXT is 92" is a measured construction and heuristic, and its shared-argument lemma was refuted by review | `interpreter.md` §6, `verify/vdispatch_codex.md` |
| dispatch | the zero arm's duplicate is forced for every application-only whole-stream skip; surplus reader arguments reach the rigid continuation; one re-entrant reader cannot read both tag bits (proof replaced by the reviewer's stronger one); a 176 without a `next` let | `protocol-obstructions.md`, `interpreter.md` §6, `verify/vdispatch_codex.md` |
| grok | a correct 168 passing NEXT as the reader's third operand (proposed as 164; miscounted) | `interpreter.md` §6 |
| blind, scratch, gemini | rediscoveries 166–214; an independent from-scratch design at 220 | `interpreter.md` §6 |

The `.lean` files these lanes wrote now live in `lean/Blc/` under the
`Selfint*` names above, with renamed namespaces; the lane copies are not kept
here. The 37's checker moved to `tools/self-interpreter/theory/floor37/`.
Other scripts ran from the lanes' scratch directories and may need their
paths adjusted to rerun; several expect a frozen copy of
`target/release/blam` beside them.
