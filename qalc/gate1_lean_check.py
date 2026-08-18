#!/usr/bin/env python3
"""Explicit qALC Gate-1 Lean proof check; not part of runtime gates or CI."""

from __future__ import annotations

from concurrent.futures import ThreadPoolExecutor
import hashlib
import os
from pathlib import Path
import subprocess
import sys


ROOT = Path(__file__).resolve().parent
LEAN = Path.home() / ".elan" / "bin" / "lean"
ENV = os.environ.copy()
ENV["LEAN_PATH"] = "."

CORE_LEAN = (
    "PredecessorFiber",
    "RecallEpoch",
    "DeltaFibers",
    "ReadbackController",
    "RootClosure",
    "TerminalAdapters",
    "ApplicationMarker",
    "ConservativeFallback",
    "FiniteGram",
    "FiniteMachine",
    "Gate1Assembly",
)
GRAM_PREFIX = "QalcReadbackGram_p_"
GATE2_GRAM_PREFIX = f"{GRAM_PREFIX}gate2_"
EXPECTED_GRAMS = 30


def run(*arguments: str) -> None:
    subprocess.run(arguments, cwd=ROOT, env=ENV, check=True)


def compile_lean(stem: str) -> None:
    run(str(LEAN), "-q", "-o", f"{stem}.olean", f"{stem}.lean")


def gram_paths() -> tuple[Path, ...]:
    return tuple(
        path
        for path in sorted(ROOT.glob(f"{GRAM_PREFIX}*.lean"))
        if not path.name.startswith(GATE2_GRAM_PREFIX)
    )


def generated_gram_sources() -> dict[str, bytes]:
    return {path.name: path.read_bytes() for path in gram_paths()}


def source_set_digest(sources: dict[str, bytes]) -> str:
    digest = hashlib.sha256()
    for name, content in sources.items():
        digest.update(name.encode())
        digest.update(b"\0")
        digest.update(content)
    return digest.hexdigest()


def main() -> None:
    run(sys.executable, "QalcReadbackGramExport.py")
    first = generated_gram_sources()
    run(sys.executable, "QalcReadbackGramExport.py")
    second = generated_gram_sources()
    if first != second:
        raise AssertionError("Gate-1 Lean carrier generation is not stable")
    if len(second) != EXPECTED_GRAMS:
        raise AssertionError(
            f"expected {EXPECTED_GRAMS} Gate-1 Gram files, found {len(second)}"
        )
    print(
        "Gate 1 Lean generation: PASS "
        f"({len(second)} files, sha256={source_set_digest(second)})"
    )

    for stem in CORE_LEAN:
        compile_lean(stem)
    print("Gate 1 handwritten Lean compilation: PASS")

    gram_stems = [path.stem for path in gram_paths()]
    with ThreadPoolExecutor(max_workers=4) as executor:
        list(executor.map(compile_lean, gram_stems))
    print(f"Gate 1 composed Lean Gram compilation: PASS ({len(gram_stems)} files)")

    run(sys.executable, "QalcConcreteBuild.py", "--jobs", "4")
    print("QALC GATE1 LEAN PROOF BATTERY: PASS")


if __name__ == "__main__":
    main()
