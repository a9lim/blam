#!/usr/bin/env python3
"""Explicit qALC Gate-2 Lean proof check; not part of runtime gates or CI."""

from __future__ import annotations

from concurrent.futures import ThreadPoolExecutor
import os
from pathlib import Path
import subprocess
import sys


ROOT = Path(__file__).resolve().parent
LEAN = Path.home() / ".elan" / "bin" / "lean"
ENV = os.environ.copy()
ENV["LEAN_PATH"] = str(ROOT)

LEAN_CHECKS = (
    "Gate2CnotDelta.lean",
    "Gate2CnotCircuit.lean",
    "Gate2ShadowRows.lean",
    "Gate2CompilerTheorem.lean",
    "QalcRule.lean",
    "Gate2PhysicalSchedule.lean",
    "QalcComposedMachine.lean",
    "Gate2PhysicalCompiler.lean",
    "Gate2PhysicalEvolution.lean",
    "Gate2PhysicalRefinement.lean",
    "Gate2PhysicalBoundary.lean",
    "Gate2PhysicalGateTheorems.lean",
    "Gate2BoundaryInvariant.lean",
    "Gate2ContextualCompiler.lean",
    "Gate2ContextualPhysical.lean",
    "Gate2ContextualUnary.lean",
    "Gate2ContextualCircuit.lean",
    "Gate2ContextualOutput.lean",
    "Gate2TerminalGarbage.lean",
    "Gate2CleanCompilation.lean",
    "QalcCompilerPins.lean",
)

GENERATED_GRAMS = (
    "QalcReadbackGram_p_gate2_bell_uncompute.lean",
    "QalcReadbackGram_p_gate2_toffoli.lean",
    "QalcReadbackGram_p_gate2_nonlinear_reuse.lean",
)


def run(*arguments: str) -> None:
    subprocess.run(arguments, cwd=ROOT, env=ENV, check=True)


def compile_lean(source: str) -> None:
    output = str(Path(source).with_suffix(".olean"))
    run(str(LEAN), "-q", "-o", output, source)


def main() -> None:
    run(sys.executable, "QalcGate2GramExport.py")
    first = tuple((ROOT / name).read_bytes() for name in GENERATED_GRAMS)
    run(sys.executable, "QalcGate2GramExport.py")
    second = tuple((ROOT / name).read_bytes() for name in GENERATED_GRAMS)
    if first != second:
        raise AssertionError("Gate-2 Lean carrier generation is not stable")
    print("Gate 2 two-pass Lean generation: PASS")

    run(sys.executable, "QalcComposedDifferentialExport.py", "pins")
    differential_total = 917
    differential = []
    for start in range(0, differential_total, 120):
        stop = start + 120
        run(
            sys.executable,
            "QalcComposedDifferentialExport.py",
            "mixed",
            str(start),
            str(stop),
            str(differential_total),
        )
        differential.append(
            f"QalcComposedDifferential_{start:04d}_{stop:04d}.lean"
        )
    print("Gate 2 complete-carrier differential generation: PASS")

    for source in LEAN_CHECKS:
        compile_lean(source)
    print("Gate 2 handwritten Lean compilation: PASS")

    with ThreadPoolExecutor(max_workers=4) as executor:
        list(executor.map(compile_lean, (*GENERATED_GRAMS, *differential)))
    print("QALC GATE2 LEAN PROOF BATTERY: PASS")


if __name__ == "__main__":
    main()
