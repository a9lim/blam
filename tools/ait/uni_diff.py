#!/usr/bin/env python3
"""`blam uni` against Tromp's universal machine in Rust (ref/AIT/uni.rs),
in both modes: every closed term up to --exhaustive bits and --random
larger random terms as programs, each followed on stdin by a few inputs
(bit mode reads the program and input as one ASCII bit per byte; byte mode
packs the program MSB-first).

uni.rs panics on output that breaks uni's protocol, which makes it the
contract's reference (docs/classical/programs.md §3):

- uni.rs prints and exits → blam prints the same bytes and exits;
- uni.rs fails → blam fails, having written no more than uni.rs did (a
  prefix: uni.rs prints a bit as soon as its handler receives it, blam once
  the cell is sure).

Anything else is listed. Pairs run under pairs.py's caps and adaptive
limits; run it on a frozen copy of the blam binary (a fresh file: on macOS,
`cp` over a binary that has run gets every launch killed).

    uni_diff.py [--ref UNI_RS_BINARY] [--blam PATH] [--exhaustive N] [--random N] [--jobs N]
"""
import argparse
import subprocess
import sys
import tempfile
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import pairs  # noqa: E402
from programs import sample  # noqa: E402

ROOT = Path(__file__).resolve().parents[2]
BIT_INPUTS = [b"", b"0", b"1", b"0110", b"10111"]
BYTE_INPUTS = [b"", b"ab"]


def pack(bits):
    bits += "0" * (-len(bits) % 8)
    return bytes(int(bits[i:i + 8], 2) for i in range(0, len(bits), 8))


def rust_kind(rc, err):
    # A panic is uni.rs's verdict on broken output; a signal (its deep
    # recursion overflowing) or a timeout is no verdict.
    if rc is None or rc < 0:
        return "unfinished"
    return "ok" if rc == 0 else "err"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--ref", help="a uni.rs binary (default: build one with rustc)")
    ap.add_argument("--blam", default=str(ROOT / "target/release/blam"))
    ap.add_argument("--exhaustive", type=int, default=20)
    ap.add_argument("--random", type=int, default=1000)
    ap.add_argument("--jobs", type=int, default=pairs.JOBS)
    a = ap.parse_args()
    ref = a.ref
    if ref is None:
        ref = str(Path(tempfile.mkdtemp(prefix="uni-rs-")) / "uni")
        subprocess.run(["rustc", "--edition", "2021", "-O", str(ROOT / "ref/AIT/uni.rs"),
                        "-o", ref], check=True)
    cases = []
    for bits in sample(a.exhaustive, a.random):
        cases += [("-b", bits, bits.encode() + i) for i in BIT_INPUTS]
        cases += [("", bits, pack(bits) + i) for i in BYTE_INPUTS]

    def job(c):
        mode, bits, stdin = c
        flag = [mode] if mode else []
        # uni.rs: any argument selects bit mode.
        rc, out, err = pairs.run([ref] + flag, stdin, 3)
        t = (rust_kind(rc, err), out)
        rc, out2, err2 = pairs.run([a.blam, "uni"] + flag + ["--live", pairs.LIVE], stdin, 3)
        b = (pairs.blam_kind(rc, err2), out2)
        if t[0] != "unfinished" and b[0] == "unfinished":
            rc, out2, err2 = pairs.run([a.blam, "uni"] + flag + ["--live", pairs.RETRY_LIVE],
                                       stdin, 20)
            b = (pairs.blam_kind(rc, err2), out2)
        return mode, bits, stdin, t, b

    tally, odd = {}, []
    with ThreadPoolExecutor(a.jobs) as ex:
        for mode, bits, stdin, t, b in ex.map(job, cases, chunksize=8):
            if t[0] == "unfinished" or b[0] == "unfinished":
                key = "unfinished: " + ("neither" if t[0] == b[0] else
                                        "uni.rs" if t[0] == "unfinished" else "blam")
                bad = t[0] != "unfinished"
            elif t[0] == "ok":
                bad = b[0] != "ok" or b[1] != t[1]
                key = "uni.rs ok: " + ("blam same" if not bad else f"blam {b[0]}, DIFFERS")
            else:
                bad = b[0] == "ok" or not t[1].startswith(b[1])
                key = "uni.rs err: " + ("blam err, a prefix" if not bad else f"blam {b[0]}, DIFFERS")
            tally[key] = tally.get(key, 0) + 1
            if bad:
                odd.append((key, mode or "bytes", bits, stdin[-8:], t[1][:60], b[1][:60]))
    print(f"{len(cases)} uni runs")
    for k, v in sorted(tally.items()):
        print(f"  {v:7d}  {k}")
    for o in odd[:40]:
        print("  ", *o)


if __name__ == "__main__":
    main()
