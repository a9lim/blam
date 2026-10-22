# Reasoning lanes on the 162: the separated class and the global floor

The third round of parallel reasoning lanes (2026-10-21) on a sub-162 BLC
self-interpreter or a proof that 162 is optimal, coordinated by a Claude
seat. `BRIEF.md` is the shared brief; each directory keeps its own
`PROMPT.md` (and `FOLLOWUP*.md` where a lane was continued) and `REPORT.md`.
Codex ran `recursion`, `next`, `env`, `floor`, `adversary`, `archzoo`,
`lean138`, `floor38`, `pumps`, `prove46` and the Codex reviews; Claude ran `proof`,
`fusion`, `values`, `handoff`, `outside`, `refute46` and the `review39`/`review40`
second reviews; `grok`, `gemini` and `puzzle` are single consults.

**No interpreter below 162 was found.** The round's results are lower
bounds, recorded in `docs/classical/self-interpreter/class-bound.md` and
`global-floor.md`, and about forty further correct interpreters of 163–297
bits, tabulated in `interpreter.md` §6 ("Variants of the 162").

| lane | result | where it lives now |
|---|---|---|
| floor, lean138, review138, review146 | the separated class: `|E| ≥ 116 + w(R)` exactly, `≥ 138` kernel-checked including the 92-bit NEXT classification; reader weight `w ≥ 30`, hence 146 (two reviews); two-λ readers `≥ 50`; hoisting identity; the serial form with literal abstractions `≥ 46`; the open families of `w ≥ 46` (`floor/STATE46.md`) | `class-bound.md`, `lean/Blc/SelfintClass.lean` |
| floor, floor38, review38, review39, review40 | the literal interface `λc.B` costs at least 39; no interpreter of 37, 38 or 39 bits (two reviews each): the global floor is 40 | `global-floor.md` §6–8; Lean in `floor38/` |
| prove46 | an independent attempt at `w ≥ 46`: 151 of 1,098 count profiles excluded; the one-callback theorem (Lean, unbounded); serial (2,2) `≥ 52`; the role-sharing factory `λx. x (λq. c)` | `class-bound.md` §4 |
| refute46 | the constructive side of `w ≥ 46`: cheapest other readers 47, 48, 49; complete bounded checks (normal operands ≤ 18 at depths 1 and 0; 1,251,361 three-λ redex pairs) find nothing; the obstruction is a `j`/`N` operand | `class-bound.md` §4 |
| recursion | knotless two-head skeleton `≥ 165` under the identity cut, unshared generator `≥ 167` (attained) | `interpreter.md` §4, `lean/Blc/SelfintRecursion.lean` |
| adversary | every standing local claim scoped to its working hypothesis; the identity cut is not forced (312-bit parent-replay witness); dual operands with a 10-bit variable operand (172) | `interpreter.md` §4, §6 |
| next | any interpreter embeds in the 162's NEXT slot at `+17`; variable mode exact at 177 in its family; markers 182–191 | `class-bound.md` §5, `interpreter.md` §6 |
| env, values | whole-prefix cells `λu r. r H` need `≥ 27` bits; the value modules are forced to cost `≥ 81` with raw values and root transparency; 163-bit cells | `class-bound.md` §5, `interpreter.md` §6 |
| handoff | with NEXT opaque, the `s I A j` middle operand is exactly the 162's family through 30 bits (1,313,478 terms); dual reader 169 | `interpreter.md` §3, `class-bound.md` §4 |
| proof | the reduction to reader weight 46 from the other side; an enumeration of the 162's variable arm with the real NEXT through 27 bits — **not a result**: `pumps/` found that its checker mis-binds the knot's generator and that its comparison cache can reject β-equal terms (both reproduced in Lean) | `interpreter.md` §3 |
| pumps | certificates for 11,077 of the 11,109 arms the proof lane's checker capped; 29 distinct residuals | `interpreter.md` §3 |
| archzoo, fusion, outside | architectures priced on paper before building (all priced ≥ 170 outside the class); constant-continuation 188; boxes 265, two-field values 276, Church syntax 297 | `interpreter.md` §6, `class-bound.md` §5 |
| grok, gemini, puzzle | idea consults; every proposed sub-162 term fails the battery or the reader laws (`CHECK.md` in each) | — |

Reproduction notes. Scripts resolve the repository root from their own
location; several still name `tmp/round3/<lane>/` paths from where they
ran and need those adjusted. The generated Lean of `floor/` (the 3,484
reader refutations, `ReaderChecks.lean`, 2.2 MB) is not kept: regenerate it
with `floor/reader29_lean.py` from `floor/reader29.json`. The floor Lean
development in `floor38/` builds with `python3 floor38/check_lean.py`
(about a minute on two threads). Frozen `blam` binaries, compiled Lean and
raw consult transcripts are omitted.
