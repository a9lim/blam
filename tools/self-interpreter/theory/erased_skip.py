#!/usr/bin/env python3
"""Targeted erased-skip equations and four hand-derived complete variants.

No search is performed.  The optional finite battery is capped at the existing
18-bit battery and two workers; the algebra checks use rigid lambda binders.
"""
from pathlib import Path
import json
import sys
import time

sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
MACHINES = ROOT / "data/self-interpreter/machines"
RESULTS = ROOT / "data/self-interpreter/theory"
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery as b

K = r"(\u\v.u)"
F = r"(\u\v.v)"
I = r"(\u.u)"


def z(t):
    return rf"(\u\r.r {t})"


def h(q, c):
    return rf"(\b.b {z(q)} {c})"


def reader(q, c, a):
    return rf"(\s.s {h(q, c)} (s s {a}))"


def equation(name, lhs, rhs):
    left = b.normalize(b.enc(b.compile_lam(lhs)), 4096)
    right = b.normalize(b.enc(b.compile_lam(rhs)), 4096)
    assert left is not None and right is not None and left == right, name
    return {"name": name, "equal_normal_form_bits": len(left)}


def app(*terms):
    out = terms[0]
    for t in terms[1:]:
        out = ("A", out, t)
    return out


def main():
    started = time.monotonic()
    eqs = [
        equation("R_a F = a",
                 rf"\q\c\a.{reader('q', 'c', 'a')} {F}",
                 r"\q\c\a.a"),
        equation("R_a Z_t = a t t",
                 rf"\q\c\a\t.{reader('q', 'c', 'a')} {z('t')}",
                 r"\q\c\a\t.a t t"),
        equation("R_a K = H",
                 rf"\q\c\a.{reader('q', 'c', 'a')} {K}",
                 rf"\q\c\a.{h('q', 'c')}"),
        equation("R_a I = a Z_q c",
                 rf"\q\c\a.{reader('q', 'c', 'a')} {I}",
                 rf"\q\c\a.a {z('q')} c"),
        equation("skip-erasure on a leading zero",
                 rf"\r\a.(\s.s s a) (\f.f {K} r)",
                 r"\r\a.r"),
        equation("skip-erasure through two leading ones",
                 rf"\r\a.(\s.s s a) (\f.f {F} (\g.g {F} (\h.h {K} r)))",
                 r"\r\a.r"),
    ]
    original = (ROOT / "data/self-interpreter/machines/int165.lam").read_text()
    needle = "(list list list)"
    assert original.count(needle) == 1
    variants = []
    for label, erased in [
        ("next", "next"), ("continuation", "cont"),
        ("parser", "intL"), ("generator", "x"),
    ]:
        source = original.replace(needle, f"(list list {erased})")
        term = b.compile_lam(source)
        (MACHINES / f"int_skip_{label}.lam").write_text(source)
        (MACHINES / f"int_skip_{label}.blc").write_text(b.enc(term) + "\n")
        record = {"variant": label, "bits": len(b.enc(term))}
        # On the off-domain input F, the reader exposes the erased operand.
        cont = ("V", 0)
        off_domain = ("L", app(b.shift(term, 1), cont, b.FALSE))
        if label == "continuation":
            assert b.normalize(b.enc(off_domain), 4096) == "0010"
            record["off_domain"] = "E C F -> C"
        elif label == "parser":
            # Applying a rigid observer would require normalizing E itself.
            # Compare head reductions through a terminating chosen call.
            identity = ("L", ("V", 0))
            lhs = ("L", ("L", app(
                b.shift(term, 2), ("V", 1), b.FALSE, ("V", 1),
                b.bitlist(b.enc(identity), ("V", 0)))))
            rhs = b._probe(term, identity, False)
            assert rhs == "ok"
            got = b.normalize(b.enc(lhs), 16384)
            expected = ("L", ("L", app(
                ("V", 1), ("L", b.shift(identity, 3)), ("V", 0))))
            assert got == b.normalize(b.enc(expected), 4096)
            record["off_domain"] = "E C F -> E (paper); checked on I"
        if "--battery" in sys.argv:
            ok, skipped, bad = b.check(term, max_bits=18, threads=2)
            record["battery"] = {"ok": ok, "skipped": skipped, "failures": bad}
            assert not bad
        variants.append(record)
    result = {
        "equations": eqs, "variants": variants,
        "elapsed_seconds": round(time.monotonic() - started, 3),
        "search_performed": False,
    }
    if "--battery" in sys.argv:
        (RESULTS / "erased_skip.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
