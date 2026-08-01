# Blc — Lean 4 formalization

The first BLC formalization in Lean (none existed as of 2026-07).
The flagship, fully proved, zero sorries, no mathlib:

```
theorem loop32_noNormalForm : ¬ HasNormalForm loop32   -- axioms: propext
theorem loop32_headDiverges : HeadDiverges loop32      -- axioms: propext, Quot.sound
```

— the famous 32-bit term, hand-excluded even in the reference
busy-beaver ledger, provably has no normal form under arbitrary
β-reduction, and its head reduction is infinite with the exact cycle
arithmetic of the machine-verified trace (OPEN 1 + DESC×n lifted 2n +
BASE 1 = 2n+2 steps per tower level; milestone positions defined
recursively so no closed-form arithmetic enters).

No standardization theorem is needed for the no-normal-form result:
the ratchet is syntactically orthogonal. A, F, C0 and every tower
Wⁿ[C0] are themselves β-normal, so every reachable state carries
exactly one redex — the head redex — and full β-reduction from loop32
is deterministic. `Blc/NoNf.lean` captures this as an invariant state
family closed under β whose members always step: a reduction sequence
from loop32 can never end. The proof formalizes why the ratchet
certificate works at all — the loop is a one-way street.

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
- `Blc/Beta.lean` — full β-reduction, normal forms, the decidable
  syntactic normal-form predicate, and the single-redex `Spine`
  discipline with its key lemma: on a spine, every β step is the
  head step.
- `Blc/NoNf.lean` — the tower/state invariant families and the
  flagship theorem.

Next stages: the symbolic checker layer (the commuting square as the
one primitive rule, so any ratchet certificate exports a Lean proof);
head standardization as the general bridge (head-divergence ⇒ no nf
for terms without the single-redex discipline — Takahashi's
factorization; the internal-parallel-reduction subtlety is recorded in
the ledger); prefix-freeness/Kraft; machine-checked K upper bounds.
Discovery stays outside the formal surface entirely.

Build: `cd lean && lake build` (Lean 4.32.2 via elan; no mathlib).
