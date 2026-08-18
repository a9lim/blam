# qALC executable reference and proofs

This directory is the accepted Python/Lean reference surface for qALC. The
Rust implementation in `src/qalc/` is an independently executable,
fixture-pinned port; neither surface replaces the other as evidence.

The authoritative entry points are:

- `GATE1.md` and `gate1_check.py`: composed full-NF semantics, finite
  admission, and the Gate-1 runtime battery;
- `GATE2.md` and `gate2_check.py`: native-CNOT clean compilation and the
  Gate-2 runtime battery;
- `gate1_lean_check.py` and `gate2_lean_check.py`: explicit manual proof
  checks, run only when the Lean/generated-proof surface intentionally moves;
- `kernel.py`, `wf.py`, `certify.py`, and `rri_direct.py`: the kernel and
  admission surface;
- `readback.py`, `readback_certify.py`, and `semantics.py`: composed readback,
  conservative fallback, and semantic objects;
- `gate2_cnot_shadow.py`, `gate2_compiler.py`, `gate2_admission.py`, and
  `gate2_semantics.py`: the clean compiler sector;
- `QalcComposedMachine.lean`, `Gate2PhysicalCompiler.lean`, the
  `Gate2Contextual*.lean` chain, `Gate2TerminalGarbage.lean`, and
  `Gate2CleanCompilation.lean`: the universal physical proof path; and
- `QalcConcreteCertificate.md` and `QalcConcreteBuild.py`: concrete Gate-1
  reachable-recall replay and rebuild entry point.

Run the authoritative runtime battery from the repository root:

```bash
python qalc/gate1_check.py
python qalc/gate2_check.py
```

When the proof surface changes, run its separate manual checks explicitly:

```bash
python qalc/gate1_lean_check.py
python qalc/gate2_lean_check.py
```

The path-scoped qALC workflow intentionally runs neither the exhaustive Python
batteries nor Lean. Its unique job is to check all four Rust fixture exporters
under two Python hash seeds; the ordinary CI release suites already exercise
the Rust differential tests on Linux and macOS. Generated `.lean` files and
the historical full Gate-1 log are proof evidence; `.olean` files and
`__pycache__/` are ignored build products.

The semantic contract is
[`docs/quantum-algebraic/architecture.md`](../docs/quantum-algebraic/architecture.md),
the transition register is
[`docs/quantum-algebraic/kernel.md`](../docs/quantum-algebraic/kernel.md), and
the Rust implementation contract is
[`docs/quantum-algebraic/rust-pillar.md`](../docs/quantum-algebraic/rust-pillar.md).
This tree keeps only current sources, claims, and evidence.
