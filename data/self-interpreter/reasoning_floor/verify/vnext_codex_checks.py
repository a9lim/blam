#!/usr/bin/env python3
"""Independent fixed checks for REPORT.md; no enumeration and no lane imports.

Uses only blcc's source parser/encoder. Beta substitution, normalization,
size statistics, and the tag-spine checker below are separate implementations.
All outputs stay in this review directory.
"""
from concurrent.futures import ThreadPoolExecutor
import hashlib
import json
from pathlib import Path
import re
import subprocess
import sys
import time

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "tools"))
import blcc

FRAME = ("c", "p", "x")


def parse(s, frame=()):
    s = re.sub(r"\\([A-Za-z_]\w*(?:\s+[A-Za-z_]\w*)+)\.",
               lambda m: "\\" + "\\".join(m[1].split()) + ".", s)
    p = blcc.P(blcc.strip_comments(s))
    t = blcc.p_lc(p)
    p.ws()
    assert p.i == len(p.t)
    return blcc.to_db(t, frame)


def app(t, *args):
    for a in args:
        t = ("A", t, a)
    return t


def shift(t, n, depth=0):
    if t[0] == "V":
        return ("V", t[1] + n) if t[1] >= depth else t
    if t[0] == "L":
        return ("L", shift(t[1], n, depth + 1))
    return ("A", shift(t[1], n, depth), shift(t[2], n, depth))


def replace_bound(t, value, depth=0):
    if t[0] == "V":
        if t[1] == depth:
            return shift(value, depth)
        return ("V", t[1] - 1) if t[1] > depth else t
    if t[0] == "L":
        return ("L", replace_bound(t[1], value, depth + 1))
    return ("A", replace_bound(t[1], value, depth),
            replace_bound(t[2], value, depth))


def nf(t, fuel=None):
    fuel = [30000] if fuel is None else fuel

    def whnf(u):
        while u[0] == "A":
            f = whnf(u[1])
            if f[0] != "L":
                return ("A", f, u[2])
            fuel[0] -= 1
            assert fuel[0] >= 0, "fixed-check fuel exhausted"
            u = replace_bound(f[1], u[2])
        return u

    t = whnf(t)
    if t[0] == "L":
        return ("L", nf(t[1], fuel))
    if t[0] == "A":
        return ("A", nf(t[1], fuel), nf(t[2], fuel))
    return t


def hnf(t):
    def step(u):
        if u[0] == "V":
            return None
        if u[0] == "L":
            body = step(u[1])
            return None if body is None else ("L", body)
        if u[1][0] == "L":
            return replace_bound(u[1][1], u[2])
        head = step(u[1])
        return None if head is None else ("A", head, u[2])
    for _ in range(1000):
        after = step(t)
        if after is None:
            return t
        t = after
    raise AssertionError("fixed head-normalization cap")


def stats(t):
    if t[0] == "V":
        return (0, 0, t[1])
    if t[0] == "L":
        l, a, x = stats(t[1])
        return l + 1, a, x
    a, b = stats(t[1]), stats(t[2])
    return a[0] + b[0], a[1] + b[1] + 1, a[2] + b[2]


def measure(s, frame=FRAME):
    t = parse(s, frame)
    l, a, x = stats(t)
    bits = len(blcc.encode(t))
    assert bits == 2 * l + 4 * a + 2 + x
    return {"L": l, "A": a, "X": x, "bits": bits}


def respects_D(n):
    assert n[0] == "L"

    def walk(t, tag):
        if t[0] == "L":
            return walk(t[1], tag + 1)
        args = []
        h = t
        while h[0] == "A":
            args.append(h[2])
            h = h[1]
        if h == ("V", tag):
            return len(args) == 2 and all(walk(a, tag) for a in args)
        return (h[0] == "V" or walk(h, tag)) and all(walk(a, tag) for a in args)

    return walk(n[1], 0)


K = r"(\a b.a)"
F = r"(\a b.b)"
I = r"(\a.a)"
A = r"(\e a.f (\u r.u a (r e)))"
B = r"(\g.c (\e.f e (g e)))"
K0 = rf"(\f.c {A})"
K1 = rf"(\f.p {B})"
T0 = rf"(p {K0})"
T1 = rf"(p {K1})"
NEXT = rf"\b.p (\f.b (c {A}) (p {B}))"


def machine(n):
    return rf"(\x.x x) (\x.(\p c.(\j s.s (\v.v (\u r.r j) c) (s s s)) ({n})) (x x))"


def cons(b, t):
    return rf"(\h.h ({b}) ({t}))"


def reader(j, c, s):
    return rf"({s}) (\v.v (\u r.r ({j})) ({c})) (({s}) ({s}) ({s}))"


def stream(bits, tail):
    for b in reversed(bits):
        bit = parse(K if b == "0" else F)
        tail = ("L", app(("V", 0), shift(bit, 1), shift(tail, 1)))
    return tail


EQUATIONS = []


def eq(label, a, b, equal=True):
    EQUATIONS.append((label, parse(a), parse(b), equal))


def branches(label, src):
    for bit, rhs in [(K, T0), (F, T1)]:
        eq(label + (" K" if bit == K else " F"),
           rf"\x p c t.({src}) {bit} t", rf"\x p c t.{rhs} t")


def run_check(item):
    label, a, b, equal = item
    aa, bb = nf(a), nf(b)
    assert (aa == bb) == equal, label
    # Independently replay every fixed input using the existing Rust engine.
    for side, term, normal in [("lhs", a, aa), ("rhs", b, bb)]:
        proc = subprocess.run(
            [str(ROOT / "target/release/blam"), "normalize", blcc.encode(term),
             "--beta", "30000"], text=True, capture_output=True, timeout=5)
        assert proc.returncode == 0, (label, side, proc.stderr)
        assert proc.stdout.split()[0] == blcc.encode(normal), (label, side)
    return {"label": label, "equal": equal}


def main():
    start = time.monotonic()
    forms = [
        rf"\b.b {T0} {T1}",
        rf"\b.p (b {K0} {K1})",
        NEXT,
        rf"\b.b {T0} (\r.{T1} r)",
        rf"\b.b (\r.{T0} r) {T1}",
        rf"\b.b (\r.{T0} r) (\r.{T1} r)",
        rf"\b r.b ({T0} r) ({T1} r)",
        rf"\b r.p (b {K0} {K1}) r",
        rf"\b r.p (\f.b (c {A}) (p {B})) r",
    ]
    expected = [(9,14,23,99), (9,13,21,93), (8,13,22,92),
                (10,15,26,108), (10,15,25,107), (11,16,28,116),
                (10,16,29,115), (10,14,26,104), (9,14,27,103)]
    prices = []
    for i, (s, want) in enumerate(zip(forms, expected), 1):
        m = measure(s)
        assert tuple(m.values()) == want
        assert respects_D(parse(s, FRAME)) and nf(parse(s, FRAME)) == parse(s, FRAME)
        prices.append(m)
        branches(f"table row {i}", s)

    repeated = [
        (rf"\b.b {T0} (b x {T1})", forms[0]),
        (rf"\b.p (\f.b (c (\e a.f (\u r.u a (r (b e x)))) )"
         rf" (p (\g.c (\e.f e (g (b x e))))))", NEXT),
        (rf"\b r.p (\f.b (c {A}) (p {B})) (b r r)", forms[8]),
    ]
    for i, (s, target) in enumerate(repeated, 1):
        assert respects_D(parse(s, FRAME))
        assert nf(parse(s, FRAME)) == parse(s, FRAME)
        assert measure(s)["bits"] > measure(target)["bits"]
        branches(f"repeated test example {i}", s)
    split = rf"\b.p (\f.(b c p) (b {A} {B}))"
    assert not respects_D(parse(split, FRAME))
    branches("selected head plus payload is excluded by D", split)

    eq("generic constructor handoff", rf"\j c b t.{reader('j','c',cons(K,cons('b','t')))}",
       r"\j c b t.j b t")
    for n in (1, 2, 4):
        u, prev = cons(K, "t"), cons(K, "t")
        for _ in range(n):
            prev, u = u, cons(F, u)
        eq(f"raw variable {n}", rf"\j c t.{reader('j','c',u)}", rf"\j c t.c ({prev}) t")
    for name, s, out in [("K", K, r"\v.v (\u r.r j) c"),
                         ("F", F, F), ("I", I, r"\r.r j"),
                         ("constant", r"\u v.w", "w")]:
        eq("off-stream " + name, rf"\j c w.{reader('j','c',s)}", rf"\j c w.({out})")

    bare_c = rf"\b.p (\f.b c (\z.p {B}) {A})"
    bare_p = rf"\b.p (\f.b (\z.c {A}) p {B})"
    assert measure(bare_c)["bits"] == 97
    assert measure(bare_p)["bits"] == 96
    branches("bare c", bare_c)
    branches("bare p", bare_p)

    ret = rf"\b.p (\f.b (p f (\u v.c {A})) (p {B}))"
    assert measure(ret)["bits"] == 111
    assert respects_D(parse(ret, FRAME)) and nf(parse(ret, FRAME)) == parse(ret, FRAME)
    eq("ret violates rigid ABS law", rf"\x p c t.({ret}) {K} t", rf"\x p c t.{T0} t", False)
    eq("actual changed parser returns constants", rf"\c v.({machine(ret)}) c (\u w.v)", r"\c v.v")

    original = parse((ROOT / "data/self-interpreter/machines/int165.lam").read_text())
    assert parse(machine(NEXT)) == original
    generator = original[2]
    parser = app(generator, generator)
    j = app(parse(rf"\x p c.{NEXT}"), generator, parser, ("V", 0))
    head = hnf(j)
    lambdas, arguments = 0, 0
    while head[0] == "L":
        lambdas += 1
        head = head[1]
    while head[0] == "A":
        arguments += 1
        head = head[1]
    assert (lambdas, head, arguments) == (2, ("V", 0), 2)
    embed = rf"\b t.({machine(NEXT)}) c {cons(K,cons('b','t'))}"
    assert measure(embed)["bits"] == 209
    assert measure(machine(embed), ())["bits"] == 282
    for q in (I, K, machine(NEXT)):
        adapter = rf"\b t.({q}) c {cons(K,cons('b','t'))}"
        assert measure(adapter)["bits"] - measure(q, ())["bits"] == 44
    adapter = rf"\b t.q c {cons(K,cons('b','t'))}"
    eq("generic embedding forwarding", rf"\q c v s.{reader(adapter,'c',cons(K,cons('v','s')))}",
       rf"\q c v s.q c {cons(K,cons('v','s'))}")

    witnesses = {"reference": machine(NEXT), "ret": machine(ret), "embedded": machine(embed)}
    witness_prices = {name: measure(src, ()) for name, src in witnesses.items()}
    programs = {"I": I, "I I": rf"{I} {I}", "self apply": r"\a.a a",
                "open body app": r"\a b.a b"}
    for name, src in witnesses.items():
        for pname, psrc in programs.items():
            m = parse(psrc)
            inp = stream(blcc.encode(m), ("V", 0))
            lhs = ("L", ("L", app(parse(src), ("V", 1), inp)))
            rhs = ("L", ("L", app(("V", 1), ("L", m), ("V", 0))))
            EQUATIONS.append((name + " contract " + pname, lhs, rhs, True))
        omega = parse(r"(\a.a a) (\a.a a)")
        for pname, m in [("Omega", omega), ("lambda Omega", ("L", omega))]:
            inp = stream(blcc.encode(m), ("V", 0))
            lhs = ("L", app(parse(src), parse(F), inp))
            EQUATIONS.append((name + " divergent suffix " + pname, lhs, parse(I), True))

    with ThreadPoolExecutor(max_workers=2) as pool:
        checks = list(pool.map(run_check, EQUATIONS))
    report = ROOT / "tmp/overnight/next-proof-codex/REPORT.md"
    result = {"report_sha256": hashlib.sha256(report.read_bytes()).hexdigest(),
              "nine_prices": prices, "bare_c": measure(bare_c), "bare_p": measure(bare_p),
              "witnesses": witness_prices, "checks": checks,
              "reference_actual_J_head": {"lambdas": lambdas, "head_index": head[1],
                                          "arguments": arguments},
              "seconds": time.monotonic() - start,
              "scope": "Fixed checks only. General claims reviewed by structural arguments."}
    out = Path(__file__).with_suffix(".json")
    out.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({"passed": len(checks), "seconds": result["seconds"],
                      "witness_bits": {k:v["bits"] for k,v in witness_prices.items()},
                      "output": str(out)}, indent=2))


if __name__ == "__main__":
    main()
