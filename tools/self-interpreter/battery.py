#!/usr/bin/env python3
"""Exact semantic battery for self-interpreter candidates.

For each closed program M with a normal form, normalize the closed probe

    \\c \\n. E c (<M> ++ n)            (interpreter contract)
    \\n. U (<M> ++ n)                  (universal-machine contract)

on the Rust KN machine and compare its normal-form bits with those of
\\c \\n. c (\\z. M) n, respectively \\n. M n.  The continuation c and the tail
n stay rigid, so equal normal forms prove the contract for that M, not merely
agreement on a marker.  Programs: every closed term of 4..MAXBITS bits plus a
few deep-index extras.

    battery.py FILE.lam [--uni] [--max-bits N]

Needs target/release/blam (cargo build --release).
"""
from concurrent.futures import ThreadPoolExecutor
import functools
import os
from pathlib import Path
import subprocess
import sys
import tempfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent.parent
sys.path.insert(0, str(HERE))
sys.path.insert(0, str(HERE.parent))
sys.setrecursionlimit(100000)

import blcc
import db as dbparse

BLAM = str(ROOT / "target" / "release" / "blam")
TRUE = ("L", ("L", ("V", 1)))
FALSE = ("L", ("L", ("V", 0)))
EXTRA = [
    "\\\\\\\\\\5", "\\\\\\\\\\1 2 3 4 5", "\\\\\\\\\\5 4 3 2 1", "\\(\\1 2) 1",
    "\\\\2 (2 (2 (2 1)))", "(\\1 1) (\\\\1)", "\\(\\\\\\3 1 (2 1)) 1",
    "\\\\\\\\\\\\\\\\\\9", "(\\\\2 (2 1)) (\\\\2 (2 (2 1)))",
    "\\1 (\\\\\\\\\\\\6) (\\\\2 3)",
]


def enc(t):
    return blcc.encode(t)


def shift(t, d, c=0):
    if t[0] == "V":
        return ("V", t[1] + d) if t[1] >= c else t
    if t[0] == "L":
        return ("L", shift(t[1], d, c + 1))
    return ("A", shift(t[1], d, c), shift(t[2], d, c))


def bitlist(bits, tail):
    for b in reversed(bits):
        x = TRUE if b == "0" else FALSE
        tail = ("L", ("A", ("A", ("V", 0), shift(x, 1)), shift(tail, 1)))
    return tail


def compile_lam(src):
    """Unoptimized compile of .lam source text (lets become redexes)."""
    fd, p = tempfile.mkstemp(suffix=".lam")
    os.write(fd, src.encode())
    os.close(fd)
    try:
        _, db, _ = blcc.compile_lam(p)
    finally:
        os.unlink(p)
    return db


def normalize(bits, beta):
    r = subprocess.run([BLAM, "normalize", bits, "--beta", str(beta)],
                       capture_output=True, text=True)
    out = r.stdout.split()
    if r.returncode or not out or not set(out[0]) <= {"0", "1"}:
        return None
    return out[0]


@functools.lru_cache(None)
def closed_terms(n, k=0):
    """Every DB term of exactly n bits with free indices < k."""
    res = []
    if n >= 2 and n - 2 < k:
        res.append(("V", n - 2))
    if n >= 4:
        res += [("L", b) for b in closed_terms(n - 2, k + 1)]
        for i in range(2, n - 3):
            res += [("A", f, a) for f in closed_terms(i, k)
                    for a in closed_terms(n - 2 - i, k)]
    return tuple(res)


def programs(max_bits=18):
    out = [t for n in range(4, max_bits + 1) for t in closed_terms(n)]
    return out + [dbparse.parse(s) for s in EXTRA]


def _probe(E, M, uni):
    if uni:
        want = ("L", ("A", shift(M, 1), ("V", 0)))
        got = ("L", ("A", shift(E, 1), bitlist(enc(M), ("V", 0))))
    else:
        want = ("L", ("L", ("A", ("A", ("V", 1), ("L", shift(M, 3))), ("V", 0))))
        got = ("L", ("L", ("A", ("A", shift(E, 2), ("V", 1)),
                             bitlist(enc(M), ("V", 0)))))
    w = normalize(enc(want), 1 << 16)
    if w is None:
        return "skip"
    g = normalize(enc(got), 1 << 20)
    return "fuel" if g is None else ("ok" if g == w else "WRONG")


def check(E, uni=False, max_bits=18, threads=10):
    """Returns (ok, skipped, failures); failures lists (program bits, verdict)."""
    progs = programs(max_bits)
    with ThreadPoolExecutor(threads) as ex:
        res = list(ex.map(lambda M: _probe(E, M, uni), progs))
    bad = [(enc(M), r) for M, r in zip(progs, res) if r not in ("ok", "skip")]
    return sum(r == "ok" for r in res), sum(r == "skip" for r in res), bad


def main():
    args = sys.argv[1:]
    uni = "--uni" in args
    max_bits = 18
    if "--max-bits" in args:
        i = args.index("--max-bits")
        max_bits = int(args[i + 1])
        del args[i:i + 2]
    for path in (a for a in args if a != "--uni"):
        E = compile_lam(Path(path).read_text())
        ok, skip, bad = check(E, uni, max_bits)
        print(f"{len(enc(E)):5d} bits  ok={ok} skip={skip} fail={len(bad)}  {path}")
        for b in bad[:5]:
            print("        ", *b)


if __name__ == "__main__":
    main()
