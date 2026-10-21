# Reasoning lanes on the 165: floors and fusions

Twelve parallel reasoning lanes (2026-10-21) on a sub-165 BLC
self-interpreter or a proof that 165 is optimal, each told to reason first
and to run only light, targeted checks (`BRIEF.md` is the shared brief; each
directory keeps its own `PROMPT.md`). Codex ran `global`, `remainder`, `knot`,
`env`, `blind` and `scratch`; Claude ran `reader-proof`, `nextfuse`,
`dispatch` and `lean-floor`; `gemini` and `grok` are single consults from
those vendors. `verify/` holds the independent adversarial reviews.

The night produced the **162-bit self-interpreter** (`origin162/`): a
reviewer refuting a step of the reader-optimality proof built the affine
44-bit reader `s I (λu. s (λq. cont) (s s u)) next` (`verify/vreaderS_codex.md`,
witness B44); spliced into the 165 it gave a correct 166 (`origin162/b44.lam`),
and `tools/self-interpreter/polish.py` (letopt) inlined NEXT into the reader's
operand slot, Grok's idea from `grok/`, giving 162. An independent review
(`verify/v162_codex.md`) re-derived its contract; Lean proves it
(`lean/Blc/Selfint162.lean`). What else the record keeps:

| lane | result | where it lives now |
|---|---|---|
| global | handwritten 37-bit global floor (34–36 excluded); literal continuation-headed source ≥ 70; remainder extractors ≥ 24 | `docs/classical/self-interpreter/global-floor.md`, `head-decomposition.md` |
| verify | two independent reviews of the 37 (Codex, Gemini) and one of the remainder 27 and the continuation-headed bound, all correct; the latter review combined them into ≥ 73 | `global-floor.md`, `head-decomposition.md` |
| remainder | remainder extractors ≥ 27; incomparable nonlinear binders, the transfer `|E| ≥ Rmin − 8`, the 45-bit tower reader, pending-source obligations, a 647-bit extractor with two nonlinear binders (all Lean) | `remainder.md`; `lean/Blc/SelfintRemainderChain`, `SelfintTower45`, `SelfintResidualControl`, `SelfintSharedS647`, `SelfintFixedResiduals` |
| knot | opaque fixed points cost ≥ 20 bits, so the 165's 31 bits of recursion overhead are minimal (Lean); the generic diagonal carrier ≥ 12; two reset bootstraps at 192 | `interpreter.md` §4, §6; `lean/Blc/SelfintKnot.lean` |
| lean-floor | kernel-checked `SelfintSizeBound 27` (from 18) | `structural-bounds.md`; `lean/Blc/SelfintFloor*.lean` |
| env | cell ≥ 24 and lift ≥ 19 with borrowed raw data, then under only the Boolean lookup laws (handwritten, unreviewed); a 171 with a curried cell | `interpreter.md` §5, §6 |
| reader-proof | a residual-tracing attempt to prove that, with the 165's knot and NEXT fixed, every reader body costs ≥ 43. Gemini found two local gaps (repaired); Codex found false steps — one source node can serve several output roles, an uncovered non-dispatch-cell case, a wrong 64-bit sub-bound (a valid 59-bit reader) — so the claim stays a conjecture, with no reader below 43 found by three investigators | `reader-proof/REPORT.md`, `verify/vreader_*.md` |
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

Later lanes: `next-proof-codex` (any interpreter embeds into the NEXT slot
at +44 bits; NEXT ≥ 92 under rigid canonical laws, normal source and two-arm
tag uses; reviewed correct, `verify/vnext_codex.md`; now in
`protocol-obstructions.md`) and `interface` (paired interface changes,
181–240 bits, and a value-collision obstruction). The reader-proof lane's
narrowed "Theorem S" was also refuted in review (`verify/vreaderS_codex.md`),
which is where the 162's reader came from.
Golf lanes on the 162 (`golf162`, Codex; `golf162-claude`): no sub-162;
variants 163–196, refuted 157/161 attempts, the `s I` family's operand
forcing and a conditional minimality map (now in `interpreter.md` §3).
