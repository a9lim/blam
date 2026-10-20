# Reasoning consults on the 165

Nine Codex consults (2026-10-20), each given one perspective on a sub-165
self-interpreter and told to reason first, with only light targeted checks.
None found one. `BRIEF.md` is the shared brief; each directory holds one
consult's summary (`SUMMARY.md`), its full report, the complete constructions
it built (`.lam`, `.blc`), and the scripts behind its identity checks.

What the record keeps from them is in
`docs/classical/self-interpreter/interpreter.md` (§2 identities, §5 shape
bounds and exclusions, §6 variants) and `universal.md` §1 (the seventh strict
probe). `tools/self-interpreter/merges.py` re-measures every construction.

The proofs are handwritten; none is in Lean. The scripts were run from the
consults' scratch directories with `target/release/blam`; `values/` expects a
frozen copy of it named `blam-frozen` beside the scripts.
