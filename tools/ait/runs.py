#!/usr/bin/env python3
"""`blam blc run|run8|runO|runf` against Tromp's `blc`, byte for byte, with
every closed term up to --exhaustive bits and --random larger random terms
as programs, each on a spread of inputs (including a byte that is not 0/1,
which `blc` turns into a lazy error).

Pairs where Tromp's tool times out and blam stops at its budget are
"neither finished"; any pair where one side finishes and the other does not
is listed. Run it on a frozen copy of the blam binary.

    runs.py --blc PATH [--blam PATH] [--exhaustive N] [--random N] [--jobs N]
"""
import argparse
import os
import subprocess
import sys
import tempfile
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from programs import sample, to_lam  # noqa: E402

ROOT = Path(__file__).resolve().parents[2]
CASES = [("run", b""), ("run", b"0"), ("run", b"1"), ("run", b"0110"), ("run", b"10111"),
         ("run", b"01x1"), ("run8", b"ab"), ("run8", b""), ("runO", b"01"), ("runf", b"1")]
ENV = dict(os.environ, LANG="en_US.UTF-8", LC_ALL="en_US.UTF-8")


def run(cmd, stdin, timeout):
    try:
        r = subprocess.run(cmd, input=stdin, capture_output=True, timeout=timeout, env=ENV)
        return ("ok" if r.returncode == 0 else "err", r.stdout)
    except subprocess.TimeoutExpired as e:
        return ("timeout", e.stdout or b"")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--blc", required=True)
    ap.add_argument("--blam", default=str(ROOT / "target/release/blam"))
    ap.add_argument("--exhaustive", type=int, default=20)
    ap.add_argument("--random", type=int, default=2500)
    ap.add_argument("--timeout", type=float, default=1.5)
    ap.add_argument("--jobs", type=int, default=10)
    a = ap.parse_args()
    progs = sample(a.exhaustive, a.random)
    tmp = Path(tempfile.mkdtemp(prefix="blam-runs-"))
    paths = []
    for k, bits in enumerate(progs):
        p = tmp / f"p{k}.lam"
        p.write_text(to_lam(bits))
        paths.append((p, bits))

    def job(arg):
        (p, bits), (act, stdin) = arg
        t = run([a.blc, act, str(p)], stdin, a.timeout)
        b = run([a.blam, "blc", act, str(p), "--steps", "20000000", "--live", "4000000"],
                stdin, 10 * a.timeout)
        return bits, act, stdin, t, b

    tally, odd = {}, []
    with ThreadPoolExecutor(a.jobs) as ex:
        for bits, act, stdin, t, b in ex.map(job, [(p, c) for p in paths for c in CASES],
                                             chunksize=8):
            if t[0] == b[0] and t[0] != "timeout":
                key = f"both {t[0]}, " + ("same output" if t[1] == b[1] else "OUTPUT DIFFERS")
            elif t[0] == "timeout" and b[0] == "err":
                key = "neither finished"
            else:
                key = f"tromp {t[0]}, blam {b[0]}"
            tally[key] = tally.get(key, 0) + 1
            if "DIFFERS" in key or (key.startswith("tromp ok") and b[0] != "ok") \
                    or (b[0] == "ok" and t[0] == "err"):
                odd.append((key, act, stdin, bits, t[1][:80], b[1][:80]))
    print(f"{len(progs)} programs x {len(CASES)} cases")
    for k, v in sorted(tally.items()):
        print(f"  {v:7d}  {k}")
    for o in odd[:40]:
        print("  ", *o)


if __name__ == "__main__":
    main()
