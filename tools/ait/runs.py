#!/usr/bin/env python3
"""`blam blc run|run8|runO|runf` against Tromp's `blc`, byte for byte, with
every closed term up to --exhaustive bits and --random larger random terms
as programs, each on a spread of inputs (including a byte that is not 0/1,
which `blc` turns into a lazy error). Pairs run under pairs.py's caps and
adaptive limits; run it on a frozen copy of the blam binary (a fresh file:
on macOS, `cp` over a binary that has run gets every launch killed).

    runs.py --blc PATH [--blam PATH] [--exhaustive N] [--random N] [--jobs N]
"""
import argparse
import sys
import tempfile
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import pairs  # noqa: E402
from programs import sample, to_lam  # noqa: E402

ROOT = Path(__file__).resolve().parents[2]
CASES = [("run", b""), ("run", b"0"), ("run", b"1"), ("run", b"0110"), ("run", b"10111"),
         ("run", b"01x1"), ("run8", b"ab"), ("run8", b""), ("runO", b"01"), ("runf", b"1")]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--blc", required=True)
    ap.add_argument("--blam", default=str(ROOT / "target/release/blam"))
    ap.add_argument("--exhaustive", type=int, default=20)
    ap.add_argument("--random", type=int, default=2500)
    ap.add_argument("--jobs", type=int, default=pairs.JOBS)
    a = ap.parse_args()
    progs = sample(a.exhaustive, a.random)
    tmp = Path(tempfile.mkdtemp(prefix="blam-runs-"))
    paths = []
    for k, bits in enumerate(progs):
        p = tmp / f"p{k}.lam"
        p.write_text(to_lam(bits))
        paths.append((str(p), bits))

    def job(arg):
        (p, bits), (act, stdin) = arg
        t, b = pairs.pair([a.blc, act, p], [a.blam, "blc", act, p], stdin, short=1.5, long=10)
        return bits, act, stdin, pairs.verdict(t, b), t[1], b[1]

    tally, odd = {}, []
    with ThreadPoolExecutor(a.jobs) as ex:
        for bits, act, stdin, key, to, bo in ex.map(job, [(p, c) for p in paths for c in CASES],
                                                     chunksize=8):
            tally[key] = tally.get(key, 0) + 1
            if pairs.suspicious(key):
                odd.append((key, act, stdin, bits, to[:80], bo[:80]))
    print(f"{len(progs)} programs x {len(CASES)} cases")
    for k, v in sorted(tally.items()):
        print(f"  {v:7d}  {k}")
    for o in odd[:40]:
        print("  ", *o)


if __name__ == "__main__":
    main()
