#!/usr/bin/env python3
"""`blam blc ACTION` against Tromp's `blc ACTION`, byte for byte, for every
non-run action on every .lam program in ref/AIT.

Build the oracle first (tools/ait/build_blc.sh). Each pair runs under a
timeout; a pair counts as agreeing when both print the same bytes, and the
summary separates out pairs where one side timed out or stopped at a budget
while the other finished. Run it on a frozen copy of the blam binary.

    actions.py --blc PATH [--blam PATH] [--timeout SEC] [--jobs N] [--only SUBSTR]
"""
import argparse
import os
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[2]
ACTIONS = ("print db printlc nf hnf nf_size blc blc2 size size2 size0 comb combOK comb_nf "
           "bcw bcl blcOK diagram Diagram boxchar Boxchar pbm Pbm tex html nfhtml").split()
ENV = dict(os.environ, LANG="en_US.UTF-8", LC_ALL="en_US.UTF-8")


def run(cmd, timeout):
    try:
        r = subprocess.run(cmd, stdin=subprocess.DEVNULL, capture_output=True,
                           timeout=timeout, env=ENV, cwd=ROOT)
        return ("ok" if r.returncode == 0 else "err", r.stdout)
    except subprocess.TimeoutExpired:
        return ("timeout", b"")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--blc", required=True)
    ap.add_argument("--blam", default=str(ROOT / "target/release/blam"))
    ap.add_argument("--timeout", type=float, default=20)
    ap.add_argument("--jobs", type=int, default=6)
    ap.add_argument("--only", default="")
    a = ap.parse_args()
    files = sorted(str(p.relative_to(ROOT)) for p in (ROOT / "ref/AIT").rglob("*.lam")
                   if a.only in str(p))

    def job(fa):
        f, act = fa
        return f, act, run([a.blc, act, f], a.timeout), run([a.blam, "blc", act, f], a.timeout)

    tally, diffs = {}, []
    with ThreadPoolExecutor(a.jobs) as ex:
        for f, act, t, b in ex.map(job, [(f, x) for f in files for x in ACTIONS]):
            if t[0] == b[0] == "ok":
                key = "identical" if t[1] == b[1] else "DIFFERENT"
            elif t[0] == "ok":
                key = f"tromp finished, blam {b[0]}"
            elif b[0] == "ok":
                key = f"blam finished, tromp {t[0]}"
            else:
                key = "neither finished"
            tally[key] = tally.get(key, 0) + 1
            if key == "DIFFERENT" or key.startswith("tromp finished"):
                diffs.append((f, act, key))
    print(f"{len(files)} programs x {len(ACTIONS)} actions")
    for k, v in sorted(tally.items()):
        print(f"  {v:6d}  {k}")
    for f, act, key in diffs:
        print(f"  {key}: blc {act} {f}")


if __name__ == "__main__":
    main()
