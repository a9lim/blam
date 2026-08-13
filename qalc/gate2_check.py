"""Authoritative clean-compilation battery for closed qALC Gate 2."""

from pathlib import Path
from concurrent.futures import ThreadPoolExecutor
import os
import py_compile
import subprocess
import sys


ROOT = Path(__file__).resolve().parent
PYTHON = sys.executable
LEAN = Path.home() / ".elan" / "bin" / "lean"

PYTHON_SOURCES = (
    "gate2_cnot_shadow.py",
    "gate2_cnot_circuit.py",
    "gate2_cnot_shadow_check.py",
    "gate2_cnot_coloring.py",
    "gate2_compiler.py",
    "gate2_shadow_wf.py",
    "gate2_admission.py",
    "gate2_semantics.py",
    "gate2_compiler_check.py",
    "QalcGate2GramExport.py",
    "QalcComposedDifferentialExport.py",
)

PYTHON_CHECKS = (
    "gate2_cnot_circuit.py",
    "gate2_cnot_shadow_check.py",
    "gate2_cnot_coloring.py",
    "gate2_compiler_check.py",
)

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


def run(*arguments):
    environment = dict(os.environ)
    environment["LEAN_PATH"] = str(ROOT)
    subprocess.run(arguments, cwd=ROOT, env=environment, check=True)


def main():
    for source in PYTHON_SOURCES:
        py_compile.compile(str(ROOT / source), doraise=True)
    print("Gate 2 Python compilation: PASS")

    # Gate 2 extends rather than replaces the accepted kernel; reclose Gate 1
    # before checking the compiler-specific surface.
    run(PYTHON, "gate1_check.py")
    print("Gate 1 regression reclosure: PASS")

    for check in PYTHON_CHECKS:
        run(PYTHON, check)

    run(PYTHON, "QalcGate2GramExport.py")
    generated = tuple(ROOT / name for name in (
        "QalcReadbackGram_p_gate2_bell_uncompute.lean",
        "QalcReadbackGram_p_gate2_toffoli.lean",
        "QalcReadbackGram_p_gate2_nonlinear_reuse.lean",
    ))
    first = tuple(path.read_bytes() for path in generated)
    run(PYTHON, "QalcGate2GramExport.py")
    second = tuple(path.read_bytes() for path in generated)
    if first != second:
        raise AssertionError("Gate-2 Lean carrier generation is not stable")
    print("Gate 2 two-pass generation: PASS")

    run(PYTHON, "QalcComposedDifferentialExport.py", "pins")
    differential_total = 917
    differential = []
    for start in range(0, differential_total, 120):
        stop = start + 120
        run(PYTHON, "QalcComposedDifferentialExport.py", "mixed",
            str(start), str(stop), str(differential_total))
        differential.append(
            f"QalcComposedDifferential_{start:04d}_{stop:04d}.lean")
    print("Gate 2 complete-carrier differential generation: PASS")

    # The generated Gate-2 Gram cores are already compiled by Gate 1's shared
    # concrete builder above.  Recompiling them here used to run the 30k-state
    # nonlinear native_decide twice; compile only the handwritten Gate-2
    # theorem surface in this phase.
    for source in LEAN_CHECKS:
        output = ROOT / source.replace(".lean", ".olean")
        run(str(LEAN), "-q", "-o", str(output), source)
    with ThreadPoolExecutor(max_workers=4) as pool:
        futures = [pool.submit(run, str(LEAN), "-q", source)
                   for source in differential]
        for future in futures:
            future.result()
    print("Gate 2 917-state Python/Lean differential: PASS")
    print("Gate 2 Lean compilation: PASS")
    print("QALC GATE2 CLEAN COMPILATION BATTERY: PASS")
    print("ARCHITECTURE GATE 2: CLOSED")


if __name__ == "__main__":
    main()
