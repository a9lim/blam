# Blc — Lean 4 formalization

The first BLC formalization in Lean (none existed as of 2026-07).
Current flagship, fully proved, zero sorries, axioms `propext` +
`Quot.sound` only:

```
theorem loop32_headDiverges : HeadDiverges loop32
```

— the head reduction from the famous 32-bit term is infinite, with
the exact cycle arithmetic of the machine-verified trace (OPEN 1 +
DESC×n lifted 2n + BASE 1 = 2n+2 steps per tower level; milestone
positions defined recursively so no closed-form arithmetic enters).

Layout:
- `Blc/Term.lean` — de Bruijn terms (0-indexed; wire format is our
  index + 1), one-pass β-substitution, closedness with decidability,
  shift/subst-on-closed lemmas.
- `Blc/Step.lean` — executable `headStep` mirroring the trusted Rust
  checker, the `HeadStep` relation, soundness/completeness/
  determinism, step-indexed `HeadReds`, chain splitting, and
  `HeadDiverges` with the unboundedness sufficient condition.
- `Blc/Loop32.lean` — A, W, C0, the tower, and the ratchet assembly
  (OPEN proven for ALL arguments — not even closedness is needed;
  DESC and BASE lifted through right-spine contexts via `appL`).

Staging (per the Codex-reviewed plan, tools/cert/SPEC.md §7):
head standardization (no hnf ⇒ no β-nf) is the next stage, giving
`¬ HasNormalForm loop32`; then the symbolic checker layer (the
commuting square as the one primitive rule). Discovery stays outside
the formal surface entirely.

Build: `cd lean && lake build` (Lean 4.32.2 via elan; no mathlib).
