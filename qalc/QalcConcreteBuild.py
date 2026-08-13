#!/usr/bin/env python3
"""Generate and kernel-check the canonical concrete qALC RRI certificates."""

from __future__ import annotations

import argparse
from concurrent.futures import ThreadPoolExecutor
import os
from pathlib import Path
import subprocess
import sys
import time


ROOT = Path(__file__).resolve().parent
LEAN = Path.home() / ".elan" / "bin" / "lean"


def run(command: list[str]) -> None:
    print("+", " ".join(command), flush=True)
    environment = os.environ.copy()
    environment["LEAN_PATH"] = "."
    subprocess.run(command, cwd=ROOT, env=environment, check=True)


def compile_lean(source: Path, *, unlimited: bool = False) -> None:
    command = [str(LEAN), "-q"]
    if unlimited:
        command.append("-DmaxHeartbeats=0")
    command.extend(["-o", source.with_suffix(".olean").name, source.name])
    run(command)


def compile_parallel(sources: list[Path], jobs: int) -> None:
    with ThreadPoolExecutor(max_workers=jobs) as executor:
        list(executor.map(compile_lean, sources))


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--chunk-size", type=int, default=32)
    parser.add_argument("--skip-generate", action="store_true")
    arguments = parser.parse_args()
    if arguments.jobs < 1:
        parser.error("--jobs must be positive")

    started = time.monotonic()
    compile_lean(ROOT / "QalcConcreteKernel.lean")
    compile_lean(ROOT / "RRIDirectCertificate.lean")
    compile_lean(ROOT / "QalcConcreteCertificate.lean")

    if not arguments.skip_generate:
        run([
            sys.executable, "QalcConcreteExport.py", "--split", "--include-rows",
            "--chunk-size", str(arguments.chunk_size),
            "--output", "QalcCanonicalRRI.lean",
        ])
        run([
            sys.executable, "QalcConcreteExport.py", "--program", "qq",
            "--deep-split", "--include-rows",
            "--chunk-size", str(arguments.chunk_size),
            "--output", "QalcCanonicalSector_p_qq.lean",
        ])

    compile_lean(ROOT / "QalcConcreteCertificateAudit.lean")

    ordinary = sorted(
        path for path in ROOT.glob("QalcCanonicalSector_*.lean")
        if not path.name.startswith("QalcCanonicalSector_p_qq")
    )
    compile_parallel(ordinary, arguments.jobs)

    stem = "QalcCanonicalSector_p_qq"
    compile_lean(ROOT / f"{stem}_Core.lean")
    compile_parallel(sorted(ROOT.glob(f"{stem}_Data_*.lean")), arguments.jobs)
    compile_lean(ROOT / f"{stem}_Carrier.lean")
    compile_parallel(sorted(ROOT.glob(f"{stem}_Proof_*.lean")), arguments.jobs)
    compile_lean(ROOT / f"{stem}.lean", unlimited=True)
    compile_lean(ROOT / "QalcCanonicalRRI.lean", unlimited=True)

    elapsed = time.monotonic() - started
    print(f"QALC CONCRETE RRI: PASS ({elapsed:.1f}s)")


if __name__ == "__main__":
    main()
