# Blc — Lean 4 formalization

The first BLC formalization in Lean (none existed as of 2026-07).
All fully proved — zero sorries, no mathlib:

```
theorem loop32_noNormalForm : ¬ HasNormalForm loop32     -- axioms: propext
theorem headDiverges_not_hasNormalForm :
    HeadDiverges t → ¬ HasNormalForm t                   -- propext, Quot.sound
theorem loop32_headDiverges : HeadDiverges loop32        -- propext, Quot.sound
theorem RatchetCert.noNormalForm :
    c.Valid → ¬ HasNormalForm c.T                        -- propext, Quot.sound
```

— the famous 32-bit term, hand-excluded even in the reference
busy-beaver ledger, provably has no normal form under arbitrary
β-reduction; the **general bridge** holds for every term, so any
head-divergence certificate concludes no-normal-form with no side
conditions; and the **generic ratchet assembly** turns certificate
*data* into that conclusion mechanically. `Certs/` holds **248
generated kernel-checked `¬HasNormalForm` theorems** — every RATCHET
line through the generic v1.2 assembly and every RATCHET2 line
through the HeadTowerRatchet (v2) assembly, emitted by the untrusted
`certlean` tool and replayed obligation-by-obligation by the kernel
(`by decide`; the whole batch checks in ~1.6 s), each with a
`wire_*` theorem pinning the certified term to its named bits.

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
- `Blc/Sym.lean` — the symbolic checker layer: `STerm` (terms with
  opaque metavariables, mirroring the Rust checker's `PTerm`),
  grafting instantiation sound under closed environments, the
  executable `symHeadStep` (an opaque head aborts), and the ONE
  trusted rule — the commuting square `symHeadStep_sound`
  transporting each symbolic step to a concrete `HeadStep` under
  every closed instantiation. `LiftReds`/`symStepsApp` package the
  proper-source-nonlam condition for lifting chains through
  application contexts.
- `Blc/Ratchet.lean` — the generic v1.2 ratchet assembly:
  `RatchetCert` (triple + obligation counts + INIT landing, with
  under-binder and trailing-vector extensions), `Valid` as seven
  decidable obligations packaged into one `decide` via
  `check`/`valid_of_check`, and the glue theorem — OPEN opens the
  descent, DESC peels a tower layer per round inside the left spine,
  BASE relights the engine, everything lifted through the trailing
  vector and under the leading binders — ending in `HeadDiverges`
  and, through the bridge, `noNormalForm`. loop32's certificate as
  literal data is the in-file proof of concept (the flagship's third
  derivation).
- `Blc/HeadTower.lean` — the HeadTowerRatchet (v2) assembly:
  `HTRCert` with the six obligations (BASE may be zero-step), the
  `OnlyMVar 0` wrapper gate (SPREAD instantiates two metavariable
  slots), the rank step as a literal seven-lemma lifted composition,
  and recursive descent costs — the quadratic closed form is never
  trusted glue.
- `Blc/Wire.lean` — the kernel-computable BLC encoder; each
  generated certificate carries a `wire_*` theorem pinning its term
  to the bits in its name (the emitter is untrusted, the kernel
  vouches for the decoding).
- `Certs/` — GENERATED (by `cargo run --release --bin certlean`,
  untrusted): one module per term size, 248 certificate literals
  (214 `RatchetCert` + 34 `HTRCert`) each with its `¬HasNormalForm`
  and wire theorems. Separate lake target (`lake build Certs`); the
  default build stays lean.

Next stages: the rigid-head bridge for the 9 `*-ARG` kills
(divergent spine argument under a rigid head); prefix-freeness/
Kraft; machine-checked K upper bounds. Discovery stays outside the
formal surface entirely.

Build: `cd lean && lake build` (Lean 4.32.2 via elan; no mathlib).
Certificates: `lake build Certs`.
