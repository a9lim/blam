"""Authoritative runtime clean-compilation battery for closed qALC Gate 2."""

from pathlib import Path
import py_compile
import subprocess
import sys


ROOT = Path(__file__).resolve().parent
PYTHON = sys.executable

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

def run(*arguments):
    subprocess.run(arguments, cwd=ROOT, check=True)


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

    print("QALC GATE2 RUNTIME BATTERY: PASS")
    print("ARCHITECTURE GATE 2: CLOSED")


if __name__ == "__main__":
    main()
