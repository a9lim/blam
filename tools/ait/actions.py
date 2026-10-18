#!/usr/bin/env python3
"""`blam blc ACTION` against Tromp's `blc ACTION`, byte for byte, for every
non-run action on every .lam program in ref/AIT.

Build the oracle first (tools/ait/build_blc.sh, which builds it with
-rtsopts so the heap can be capped). Pairs run under pairs.py's caps and
adaptive limits; run it on a frozen copy of the blam binary (a fresh file:
on macOS, `cp` over a binary that has run gets every launch killed).

    actions.py --blc PATH [--blam PATH] [--jobs N] [--only SUBSTR]
"""
import argparse
import sys
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import pairs  # noqa: E402

ROOT = Path(__file__).resolve().parents[2]
ACTIONS = ("print db printlc nf hnf nf_size blc blc2 size size2 size0 comb combOK comb_nf "
           "bcw bcl blcOK diagram Diagram boxchar Boxchar pbm Pbm tex html nfhtml").split()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--blc", required=True)
    ap.add_argument("--blam", default=str(ROOT / "target/release/blam"))
    ap.add_argument("--jobs", type=int, default=pairs.JOBS)
    ap.add_argument("--only", default="")
    a = ap.parse_args()
    files = sorted(str(p.relative_to(ROOT)) for p in (ROOT / "ref/AIT").rglob("*.lam")
                   if a.only in str(p))

    def job(fa):
        f, act = fa
        t, b = pairs.pair([a.blc, act, f], [a.blam, "blc", act, f], cwd=ROOT)
        return f, act, pairs.verdict(t, b)

    tally, odd = {}, []
    with ThreadPoolExecutor(a.jobs) as ex:
        for f, act, key in ex.map(job, [(f, x) for f in files for x in ACTIONS]):
            tally[key] = tally.get(key, 0) + 1
            if pairs.suspicious(key):
                odd.append((key, act, f))
    print(f"{len(files)} programs x {len(ACTIONS)} actions")
    for k, v in sorted(tally.items()):
        print(f"  {v:6d}  {k}")
    for o in odd:
        print("  ", *o)


if __name__ == "__main__":
    main()
