# qALC executable reference and proofs

This directory is the accepted Python/Lean reference surface for qALC. The
Rust implementation in `src/qalc/` is an independently executable,
fixture-pinned port; neither surface replaces the other as evidence.

The authoritative entry points are:

- `GATE1.md` and `gate1_check.py`: composed full-NF semantics, finite
  admission, and the Gate-1 battery;
- `GATE2.md` and `gate2_check.py`: native-CNOT clean compilation and the
  Gate-2 battery;
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

Run the complete reference battery from the repository root:

```bash
python qalc/gate1_check.py
python qalc/gate2_check.py
```

The path-scoped qALC workflow runs the same battery and checks all four Rust
fixture exporters under two Python hash seeds. Generated `.lean` files and the
checked-in Gate-1 log are proof evidence; `.olean` files and `__pycache__/` are
ignored build products.

The semantic contract is
[`docs/quantum-algebraic/architecture.md`](../docs/quantum-algebraic/architecture.md),
the transition register is
[`docs/quantum-algebraic/kernel.md`](../docs/quantum-algebraic/kernel.md), and
the Rust implementation contract is
[`docs/quantum-algebraic/rust-pillar.md`](../docs/quantum-algebraic/rust-pillar.md).
This tree keeps only current sources, claims, and evidence.
