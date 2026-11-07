# Round 2: floors and fusions on the 165

Twelve parallel reasoning lanes (2026-10-21) on a sub-165 self-interpreter or
a proof that 165 is optimal. They produced the 162 (`origin162/`): a reviewer
refuting a step of a reader-optimality proof built the 44-bit reader
`s I (λu. s (λq. cont) (s s u)) next`; spliced into the 165 it gave a correct
166 (`origin162/b44.lam`), and letopt inlined NEXT into the reader's operand
slot, Grok's idea, giving 162. Lean proves it (`lean/Blc/Selfint162.lean`).
The rest of the round is in `docs/classical/self-interpreter/`
(`global-floor.md`, `head-decomposition.md`, `remainder.md`, `interpreter.md`
§3–6, `protocol-obstructions.md`); its Lean is in `lean/Blc/`.

The full lane archives (prompts, reports, the independent reviews of
`verify/`, consult transcripts and logs) are in git history at commit
`703f50d`: `git show 703f50d:data/self-interpreter/reasoning_floor/<lane>/<file>`.

What the tree keeps:

| path | what it is |
|---|---|
| `origin162/` | the 162, the 164 dual-operand variant, and the review-witness readers spliced into the 165 (167–198) |
| `golf162/`, `golf162-claude/` | the 28-bit case analysis of the `s I` family and the 162's variants 163–196 (`REPORT.md` and checks) |
| `next-proof-codex/` | Codex's handwritten NEXT results (`protocol-obstructions.md`: any interpreter fills the NEXT slot at +44 bits; NEXT ≥ 92 under rigid canonical laws), including the nine-form classification that `next_bound_of_rigid_laws` formalizes |
| `env/` | Codex's handwritten cell (≥ 24) and lift (≥ 19) bounds, not yet independently reviewed (`REPORT.md`, `boolean-section.md`, `borrowed-data-bound.md` and checks) |
| `knot/` | the let-sinking price and the two 192-bit reset bootstraps (`REPORT.md` and checks) |
| `remainder/audit.py` | the 33 fixed equations of `remainder.md`'s 27-bit extractor floor, with its candidate checker |
| `.lam`, `.blc` in every lane | about forty further correct interpreters of 166–220 bits, and the 59-bit counterexample reader of `interpreter.md` §5 (`verify/vreader_codex_splice/alpha_dual_operand.lam`, spliced) |

Scripts ran from the lanes' scratch directories and may need their paths
adjusted; several expect a frozen copy of `target/release/blam` beside them.
