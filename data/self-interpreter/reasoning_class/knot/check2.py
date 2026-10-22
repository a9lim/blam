#!/usr/bin/env python3
"""Full battery contract (programs <= 18 bits + extras) with 2 threads."""
import sys
from pathlib import Path
sys.path.insert(0, '/Users/a9lim/Work/blam/tools/self-interpreter')
sys.path.insert(0, '/Users/a9lim/Work/blam/tools')
import battery
for p in sys.argv[1:]:
    E = battery.compile_lam(Path(p).read_text())
    ok, skip, bad = battery.check(E, threads=2)
    print(f"{len(battery.enc(E)):5d} bits  ok={ok} skip={skip} fail={len(bad)}  {p}")
