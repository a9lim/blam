# Blc — Lean 4 formalization

The first BLC formalization in Lean (none existed as of 2026-07).
All fully proved — zero sorries, no mathlib:

```
theorem loop32_noNormalForm : ¬ HasNormalForm loop32     -- axioms: propext
theorem headDiverges_not_hasNormalForm :
    HeadDiverges t → ¬ HasNormalForm t                   -- propext, Quot.sound
theorem loop32_headDiverges : HeadDiverges loop32        -- propext, Quot.sound
```

— the famous 32-bit term, hand-excluded even in the reference
busy-beaver ledger, provably has no normal form under arbitrary
β-reduction; and the **general bridge** holds for every term, so any
head-divergence certificate (all 257 ratchet kills) concludes
no-normal-form with no side conditions.

Two independent routes to the flagship:

1. **The one-way street** (`Blc/NoNf.lean`): loop32 needs no
   standardization — A, F, C0 and every tower Wⁿ[C0] are themselves
   β-normal, so every reachable state carries exactly one redex and
   β-reduction from loop32 is deterministic. An invariant family
   closed under β whose members always step. This is why the ratchet
   certificate works at all.
2. **Head factorization** (`Blc/Subst.lean`, `Blc/Par.lean`,
   `Blc/Factor.lean`): the Accattoli–Faggian–Guerrieri indexed
   route. Parallel reduction indexed by contracted-redex count; the
   split exposes at most ONE head step per application with the
   index strictly dropping (no head chain is ever absorbed into a
   parallel step — the failure of the naive factorization); internal
   steps (`IPar`, with the `redexShell` constructor) reflect
   head-normality backward and merge with a following head step into
   a fresh parallel step; the pullback runs on the lexicographic
   measure (head steps remaining, split index).

Layout:
- `Blc/Term.lean` — de Bruijn terms (0-indexed; wire format is our
  index + 1), one-pass β-substitution, closedness with decidability,
  shift/subst-on-closed lemmas.
- `Blc/Step.lean` — executable `headStep` mirroring the trusted Rust
  checker, the `HeadStep` relation, soundness/completeness/
  determinism, step-indexed `HeadReds`, `HeadDiverges`.
- `Blc/Subst.lean` — the five Nipkow–Berghofer shift/substitution
  equations for one-pass substitution.
- `Blc/Par.lean` — occurrence counting with its shift/subst
  interaction lemmas; `ParN` indexed parallel reduction; the
  substitution theorem at the exact index `n + occ j t' · m`.
- `Blc/Loop32.lean` — A, W, C0, the tower, and the ratchet assembly
  (OPEN proven for ALL arguments; DESC and BASE lifted through
  right-spine contexts; the exact 2n+2 cycle arithmetic).
- `Blc/Beta.lean` — full β-reduction, normal forms, the decidable
  syntactic normal-form predicate, the single-redex `Spine`
  discipline.
- `Blc/NoNf.lean` — tower/state invariant families; the flagship by
  route 1.
- `Blc/Factor.lean` — `IPar`, the indexed split, merge, the
  pullback, the general bridge; the flagship re-derived by route 2.

Next stages: the symbolic checker layer (STerm with metavariables,
instantiation, the commuting square as the one trusted rule — so any
ratchet certificate exports a Lean proof mechanically);
prefix-freeness/Kraft; machine-checked K upper bounds. Discovery
stays outside the formal surface entirely.

Build: `cd lean && lake build` (Lean 4.32.2 via elan; no mathlib).
