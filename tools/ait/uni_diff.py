#!/usr/bin/env python3
"""`blam uni` against Tromp's Python universal machine (ref/AIT/uni.py),
byte for byte, in both modes: every closed term up to --exhaustive bits and
--random larger random terms as programs, each followed on stdin by a few
inputs (bit mode reads the program and input as one ASCII bit per byte;
byte mode packs the program MSB-first).

uni.py reports a program whose output is not a list of bits or bytes by
raising; blam by exiting nonzero. Both count as errors, and outputs are
compared up to the error. Run it on a frozen copy of the blam binary.

    uni_diff.py [--blam PATH] [--exhaustive N] [--random N] [--jobs N]
"""
import argparse
import subprocess
import sys
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from programs import sample  # noqa: E402

ROOT = Path(__file__).resolve().parents[2]
BIT_INPUTS = [b"", b"0", b"1", b"0110", b"10111"]
BYTE_INPUTS = [b"", b"ab"]


def pack(bits):
    bits += "0" * (-len(bits) % 8)
    return bytes(int(bits[i:i + 8], 2) for i in range(0, len(bits), 8))


def run(cmd, stdin, timeout):
    try:
        r = subprocess.run(cmd, input=stdin, capture_output=True, timeout=timeout)
        return ("ok" if r.returncode == 0 else "err", r.stdout)
    except subprocess.TimeoutExpired as e:
        return ("timeout", e.stdout or b"")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--blam", default=str(ROOT / "target/release/blam"))
    ap.add_argument("--exhaustive", type=int, default=20)
    ap.add_argument("--random", type=int, default=1000)
    ap.add_argument("--timeout", type=float, default=3)
    ap.add_argument("--jobs", type=int, default=10)
    a = ap.parse_args()
    uni_py = str(ROOT / "ref/AIT/uni.py")
    cases = []
    for bits in sample(a.exhaustive, a.random):
        cases += [("-b", bits, bits.encode() + i) for i in BIT_INPUTS]
        cases += [("", bits, pack(bits) + i) for i in BYTE_INPUTS]

    def job(c):
        mode, bits, stdin = c
        flag = [mode] if mode else []
        t = run([sys.executable, uni_py] + flag, stdin, a.timeout)
        b = run([a.blam, "uni"] + flag + ["--steps", "20000000", "--live", "4000000"],
                stdin, 10 * a.timeout)
        return mode, bits, stdin, t, b

    tally, odd = {}, []
    with ThreadPoolExecutor(a.jobs) as ex:
        for mode, bits, stdin, t, b in ex.map(job, cases, chunksize=8):
            if t[0] == b[0] and t[0] != "timeout":
                key = f"both {t[0]}, " + ("same output" if t[1] == b[1] else "OUTPUT DIFFERS")
            elif t[0] == "timeout" and b[0] == "err":
                key = "neither finished"
            else:
                key = f"uni.py {t[0]}, blam {b[0]}"
            tally[key] = tally.get(key, 0) + 1
            if "DIFFERS" in key or (key.startswith("uni.py ok") and b[0] != "ok") \
                    or (b[0] == "ok" and t[0] == "err"):
                odd.append((key, mode or "bytes", bits, stdin[-8:], t[1][:60], b[1][:60]))
    print(f"{len(cases)} uni runs")
    for k, v in sorted(tally.items()):
        print(f"  {v:7d}  {k}")
    for o in odd[:40]:
        print("  ", *o)


if __name__ == "__main__":
    main()
