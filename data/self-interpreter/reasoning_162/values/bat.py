#!/usr/bin/env python3
"""Two-thread wrapper around the repository battery (same verdicts, capped workers).

    bat.py FILE.lam...            exact contract, 2 threads, max-bits 18
    bat.py --max-bits 21 FILE.lam
"""
import sys
from pathlib import Path

ROOT = Path("/Users/a9lim/Work/blam")
sys.path.insert(0, str(ROOT / "tools"))
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery

args = sys.argv[1:]
max_bits = 18
if "--max-bits" in args:
    i = args.index("--max-bits")
    max_bits = int(args[i + 1])
    del args[i:i + 2]
for p in args:
    E = battery.compile_lam(Path(p).read_text())
    ok, skip, bad = battery.check(E, False, max_bits, threads=2)
    print(f"{len(battery.enc(E)):5d} bits  ok={ok} skip={skip} fail={len(bad)}  {p}")
    for b in bad[:5]:
        print("        ", *b)
