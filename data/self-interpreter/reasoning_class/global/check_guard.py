#!/usr/bin/env python3
"""One pinned guard witness. No layout/candidate enumeration.

Two battery workers; let-structure normalization has two workers and a
120-second cap. The complete correctness argument is the parametric Lean
guard_contract theorem. The battery only checks the exported named source.
"""
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import time

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
os.environ["TMPDIR"] = str(LANE)
os.environ["RAYON_NUM_THREADS"] = "2"
sys.dont_write_bytecode = True
sys.path.insert(0, str(ROOT / "tools" / "self-interpreter"))
sys.path.insert(0, str(ROOT / "tools"))
import battery
import blcc


def main():
    reference = (ROOT / "data/self-interpreter/machines/int162.lam").read_text()
    source = "\\c \\s. s (\\a \\b. a) ((" + reference + ") c s) s\n"
    path = LANE / "guard192.lam"
    path.write_text(source)
    _, term, _ = blcc.compile_lam(path)
    bits = battery.enc(term)
    assert len(bits) == 192
    (LANE / "guard192.blc").write_text(bits + "\n")
    frozen = LANE / "blam-guard"
    # Always a new executable inode; never overwrite a previously run copy.
    if frozen.exists():
        frozen.unlink()
    shutil.copy2(ROOT / "target/release/blam", frozen)
    battery.BLAM = str(frozen)
    start = time.monotonic()
    ok, skip, bad = battery.check(term, threads=2)
    seconds = time.monotonic() - start
    line = f"192 bits  ok={ok} skip={skip} fail={len(bad)}"
    print(line, flush=True)
    report = {"battery": line, "battery_seconds": seconds, "failures": bad}
    assert not bad
    # Same normalization operation as polish.py, with the brief's tighter cap
    # and without its default 10-worker battery subprocess.
    cmd = [str(frozen), "golf", "letopt", "--bits", bits,
           "--report-le", "192", "--threads", "2", "--max-cuts", "2"]
    start = time.monotonic()
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=120)
        (LANE / "guard-letopt.log").write_text(result.stdout + result.stderr)
        report["letopt_returncode"] = result.returncode
        found = re.search(r"smallest rendering over .*?: (\d+) bits", result.stdout)
        report["polished_bits"] = int(found.group(1)) if found else None
        report["letopt_seconds"] = time.monotonic() - start
        print(f"letopt minimum: {report['polished_bits']}", flush=True)
    except subprocess.TimeoutExpired as exc:
        report["letopt"] = "timeout at 120 seconds; no minimum claim"
        (LANE / "guard-letopt.log").write_text(report["letopt"] + "\n")
        print(report["letopt"], flush=True)
    (LANE / "guard-check.json").write_text(json.dumps(report, indent=2) + "\n")


if __name__ == "__main__":
    main()
