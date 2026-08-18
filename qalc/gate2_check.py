"""Authoritative runtime battery for closed qALC Gate 2."""

from pathlib import Path
import subprocess
import sys


ROOT = Path(__file__).resolve().parent
PYTHON = sys.executable

PYTHON_CHECKS = (
    "gate2_cnot_circuit.py",
    "gate2_cnot_shadow_check.py",
    "gate2_cnot_coloring.py",
    "gate2_compiler_check.py",
)

def run(*arguments):
    subprocess.run(arguments, cwd=ROOT, check=True)


def main():
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
