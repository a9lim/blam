#!/usr/bin/env python3
"""Independent source/wire accounting and bounded rigid-term checks for int162.

No optimizer or repository parser is used by parse(), encode(), or decode().
Repository compilation is a cross-check only. Reductions use a frozen copy of
the existing release KN engine; this script does not rebuild it.
"""
import concurrent.futures
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile
import time

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "tools"))
import blcc


def parse(src):
    src = re.sub(r"--[^\n]*", "", src)
    toks = re.findall(r"[A-Za-z][A-Za-z0-9_]*|[\\().]", src)
    assert "".join(toks) == re.sub(r"\s", "", src)
    pos = 0

    def expr(env):
        nonlocal pos
        if toks[pos] == "\\":
            pos += 1
            name = toks[pos]
            pos += 1
            if toks[pos] == ".":
                pos += 1
            return ("L", expr((name,) + env))
        terms = []
        while pos < len(toks) and toks[pos] != ")":
            if toks[pos] == "(":
                pos += 1
                t = expr(env)
                assert toks[pos] == ")"
                pos += 1
            else:
                assert re.fullmatch(r"[A-Za-z][A-Za-z0-9_]*", toks[pos])
                t = ("V", env.index(toks[pos]))
                pos += 1
            terms.append(t)
        assert terms
        t = terms[0]
        for arg in terms[1:]:
            t = ("A", t, arg)
        return t

    t = expr(())
    assert pos == len(toks)
    return t


def encode(t):
    if t[0] == "V":
        return "1" * (t[1] + 1) + "0"
    if t[0] == "L":
        return "00" + encode(t[1])
    return "01" + encode(t[1]) + encode(t[2])


def decode(bits):
    pos = 0

    def term(depth):
        nonlocal pos
        if bits[pos] == "1":
            n = 0
            while bits[pos] == "1":
                pos += 1
                n += 1
            assert bits[pos] == "0" and 1 <= n <= depth
            pos += 1
            return ("V", n - 1)
        tag = bits[pos:pos + 2]
        pos += 2
        if tag == "00":
            return ("L", term(depth + 1))
        assert tag == "01"
        return ("A", term(depth), term(depth))

    t = term(0)
    assert pos == len(bits)
    return t


def counts(t):
    if t[0] == "V":
        return (0, 0, 1, t[1])
    if t[0] == "L":
        l, a, v, x = counts(t[1])
        return (l + 1, a, v, x)
    l, a, v, x = (p + q for p, q in zip(counts(t[1]), counts(t[2])))
    return (l, a + 1, v, x)


def shift(t, d, cutoff=0):
    if t[0] == "V":
        return ("V", t[1] + d) if t[1] >= cutoff else t
    if t[0] == "L":
        return ("L", shift(t[1], d, cutoff + 1))
    return ("A", shift(t[1], d, cutoff), shift(t[2], d, cutoff))


def app(*ts):
    t = ts[0]
    for u in ts[1:]:
        t = ("A", t, u)
    return t


K = parse(r"\x. \y. x")
F = parse(r"\x. \y. y")
I = parse(r"\x. x")


def stream(bits, tail):
    for b in reversed(bits):
        tail = ("L", app(("V", 0), shift(K if b == "0" else F, 1), shift(tail, 1)))
    return tail


def close(t, n):
    for _ in range(n):
        t = ("L", t)
    return t


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    started = time.monotonic()
    src = ROOT / "tmp/overnight/self/int162.lam"
    wire = src.with_suffix(".blc")
    binary = ROOT / "target/release/blam"
    E = parse(src.read_text())
    bits = wire.read_text().strip()
    assert set(bits) <= {"0", "1"}
    assert encode(E) == bits and decode(bits) == E
    _, repo_db, _ = blcc.compile_lam(src)
    assert repo_db == E
    l, a, v, x = counts(E)
    assert (l, a, v, x) == (16, 24, 25, 32)
    assert len(bits) == 2 * l + 4 * a + 2 + x == 162
    reader = parse(r"\c. \j. \s. s (\a. a) (\u. s (\q. c) (s s u)) j")
    # This is exactly the candidate reader with its final NEXT operand opaque.
    tests = []
    # All free parameters are closed by binders and stay rigid during reduction.
    # Inside lambda c j b r: c=3, j=2, b=1, r=0.
    arbitrary_second = ("L", app(("V", 0), ("V", 2), ("V", 1)))
    zero_stream = stream("0", arbitrary_second)
    tests.append(("reader_zero_rigid_bit_and_tail",
                  close(app(reader, ("V", 3), ("V", 2), zero_stream), 4),
                  close(app(("V", 2), ("V", 1), ("V", 0)), 4)))
    for n in list(range(1, 33)) + [63, 64, 127, 128, 255, 256]:
        # Inside lambda c j n: c=2, j=1, n=0.
        tail = ("V", 0)
        s = stream("1" * n + "0", tail)
        r = stream("1" * (n - 1) + "0", tail)
        tests.append((f"reader_variable_{n}",
                      close(app(reader, ("V", 2), ("V", 1), s), 3),
                      close(app(("V", 2), r, tail), 3)))
    omega = parse(r"(\x. x x) (\x. x x)")
    sources = {"Omega": omega, "lambda_Omega": ("L", omega), "Omega_I": app(omega, I)}
    for name, m in sources.items():
        quoted = stream(encode(m), ("V", 0))
        # lambda n. E (lambda v r. r) (<M> ++ n) must be exactly lambda n. n.
        tests.append(("suffix_" + name, close(app(E, F, quoted), 1), I))
    # Check that the fixed-frame version is 166, with a 44-bit reader region.
    fixed_frame = parse(r"""
      (\x. x x) (\x. (\intL. \cont.
        (\next. \list.
          list (\a. a) (\u. list (\q. cont) (list list u)) next)
        (\bit1. intL (\exp. bit1
          (cont (\args \arg. exp (\zx \zy. zx arg (zy args))))
          (intL (\exp2. cont (\args. exp args (exp2 args)))))))
        (x x))
    """)
    assert len(encode(fixed_frame)) == 166
    report = {
        "candidate_sha256": digest(src), "wire_sha256": digest(wire),
        "binary_sha256": digest(binary), "wire": bits, "bits": len(bits),
        "L": l, "A": a, "V": v, "X": x,
        "source_equals_wire": True, "source_equals_repo_unoptimized_ast": True,
        "fixed_frame_version_bits": len(encode(fixed_frame)),
        "sources": {k: {"bits": encode(m), "size": len(encode(m))} for k, m in sources.items()},
    }
    with tempfile.TemporaryDirectory(prefix="v162-codex-") as temp:
        frozen = Path(temp) / "blam"
        shutil.copy2(binary, frozen)

        def check(test):
            name, got, want = test
            t0 = time.monotonic()
            run = subprocess.run([str(frozen), "normalize", encode(got), "--beta", "262144"],
                                 capture_output=True, text=True, timeout=15)
            words = run.stdout.split()
            ok = run.returncode == 0 and bool(words) and words[0] == encode(want)
            return {"name": name, "ok": ok, "returncode": run.returncode,
                    "stdout": run.stdout.strip(), "stderr": run.stderr.strip(),
                    "expected_wire": encode(want), "seconds": time.monotonic() - t0}

        with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
            report["tests"] = list(pool.map(check, tests))
        assert digest(binary) == report["binary_sha256"]
    report["seconds"] = time.monotonic() - started
    report["all_ok"] = all(t["ok"] for t in report["tests"])
    dest = Path(__file__).with_suffix(".json")
    dest.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({k: report[k] for k in ("bits", "L", "A", "V", "X", "all_ok", "seconds")}, indent=2))
    for test in report["tests"]:
        if test["name"].startswith("suffix_") or not test["ok"]:
            print(test["name"], test["ok"], test["stdout"])
    print(f"Passed {sum(t['ok'] for t in report['tests'])}/{len(tests)} checks; evidence: {dest}")
    assert report["all_ok"]


if __name__ == "__main__":
    main()
