# Round 3: the separated class and the global floor

The third round of reasoning lanes (2026-10-21) on a sub-162
self-interpreter or a proof that 162 is optimal. No interpreter below 162 was
found. The results are in `docs/classical/self-interpreter/class-bound.md`,
`global-floor.md` §6–8 and `interpreter.md` §3, §4 and §6.

The full lane archives (prompts, reports, reviews, consult transcripts and
logs) are in git history at commit `703f50d`:
`git show 703f50d:data/self-interpreter/reasoning_162/<lane>/<file>`.

What the tree keeps:

| path | what it is |
|---|---|
| `floor38/` | the global floor of 40 bits: the handwritten proofs (`proof.md` at 37, `proof39.md` at 38, `literal40.md`, `inventory38.md`, `inventory39.md` and `proof40.md` at 39), the inventories' generators and ledgers, and 25 Lean modules that kernel-check every finite certificate's predicate and refute every residual. The Lean is outside `lake build`: after `lake build Blc`, `python3 floor38/check_lean.py` rebuilds it (about a minute on two threads) |
| `floor/` | the size-37 inventory (`floor37-progress.md`, with `analyze37.py`, `analyze37_vacuous.py`, `macro_checks.py` and their ledgers) and the 39-bit literal-interface theorem (`literal-interface.md`) |
| `handoff/` | the `s I A j` variable-arm check of `interpreter.md` §3 (`vcheck.py`, `acheck.py`) |
| `pumps/unresolved*` | the 29 uncertified residuals of the proof lane's capped arms (`interpreter.md` §3, §7) |
| `.lam`, `.blc` in `adversary`, `archzoo`, `env`, `fusion`, `grok`, `handoff`, `next`, `outside`, `proof`, `values` | the constructions of `interpreter.md` §6 ("Variants of the 162"); `adversary/identity_cut_counterexample` is the 312-bit parent-replay witness of §4 |

Some scripts still name the `tmp/round3/<lane>/` paths they ran from and need
those adjusted to rerun.
