#!/usr/bin/env python3
"""Fixed candidate checks only; two workers and all temporary files in this lane."""
import os
from pathlib import Path
import subprocess
import sys
import tempfile

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
os.environ["TMPDIR"] = str(LANE)
os.environ["PYTHONDONTWRITEBYTECODE"] = "1"
os.environ["RAYON_NUM_THREADS"] = "2"
tempfile.tempdir = str(LANE)
sys.dont_write_bytecode = True
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery

max_bits = 18
args = sys.argv[1:]
if "--max-bits" in args:
    i = args.index("--max-bits")
    max_bits = int(args[i + 1])
    del args[i:i + 2]
polish = "--polish" in args
args = [a for a in args if a != "--polish"]
for name in args:
    path = Path(name)
    E = battery.compile_lam(path.read_text())
    bits = battery.enc(E)
    ok, skip, bad = battery.check(E, max_bits=max_bits, threads=2)
    line = f"{len(bits)} bits  ok={ok} skip={skip} fail={len(bad)}  {path.name}"
    print(line, flush=True)
    lines = [line] + [f"  {b} {why}" for b, why in bad[:5]]
    print("\n".join(lines[1:]), flush=True)
    if polish and not bad:
        configurations = [["--max-cuts", "3"], ["--no-inline", "--max-cuts", "2"]] \
            if len(bits) <= 175 else [["--max-cuts", "2"]]
        for i, flags in enumerate(configurations):
            cmd = [battery.BLAM, "golf", "letopt", "--bits", bits,
                   "--report-le", "164", "--threads", "2", *flags]
            try:
                result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
                log = result.stdout + result.stderr
                if result.returncode:
                    print(log.strip(), flush=True)
                if "inlining the lets does not finish" in log and "--no-inline" not in flags:
                    configurations.append(["--no-inline", "--max-cuts", "2"])
            except subprocess.TimeoutExpired:
                log = "TIMEOUT at 30 seconds; no minimum claimed.\n"
            (LANE / f"{path.stem}.letopt{i}.log").write_text(log)
            summary = [s for s in log.splitlines() if "smallest rendering" in s or s.startswith("best ") or "TIMEOUT" in s]
            print("\n".join(summary), flush=True)
            lines.extend(summary)
    (LANE / f"{path.stem}.check{max_bits}.log").write_text("\n".join(lines) + "\n")
