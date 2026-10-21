#!/usr/bin/env python3
"""Exact checks of a hand-derived applicative retraction; no search.

All equations bind their symbolic parameters outside both sides, so the
Rust KN normalizer checks them with those parameters rigid. The obstruction
identity leaves the representation constructor rigid as well.
"""
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
import json
import sys
import time

sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery as b


K = r"(\a\b.a)"
F = r"(\a\b.b)"
I = r"(\x.x)"
TAG = r"(\r\y\x\a.a r (x y))"
BOX = rf"(\x\a.a {TAG} x)"
DECODE = rf"(\v.v {F})"


def pair(head, tail):
    return rf"(\h.h ({head}) ({tail}))"


def stream(bits, tail):
    for bit in reversed(bits):
        tail = pair(K if bit == "0" else F, tail)
    return tail


def cell(value, tail):
    # These binders must not capture the outer semantic variables a,b,c.
    return rf"(\cb\cr.cb (box {value}) (cr ({tail})))"


def normalize(source):
    term = b.compile_lam(source)
    result = b.normalize(b.enc(term), 1 << 14)
    assert result is not None, source
    return result


def main():
    start = time.monotonic()
    helpers = {}
    for name, source, expected in [
        ("tag", TAG, 28), ("box", BOX, 41), ("decode", DECODE, 12),
    ]:
        wire = b.enc(b.compile_lam(source))
        assert len(wire) == expected, (name, len(wire))
        helpers[name] = {"bits": len(wire), "wire": wire}

    # At the application var1 var2, the left selector's suffix is the
    # *whole* right operand's code, while the right selector lacks its
    # first 1. These correlations are retained in the exact equation.
    right_code = stream("110", "n")
    left_value = pair(K, right_code)
    right_value = stream("10", "n")
    environment = cell("c", cell("b", cell("a", "z")))
    alias = rf"({environment}) ({left_value}) ({right_value})"
    lost_middle = rf"(box c) {K} ({right_code}) (box a)"

    cases = [
        ("retraction", rf"\x.{DECODE} ({BOX} x)", r"\x.x"),
        ("application", rf"\x\y.({BOX} x) ({BOX} y)",
         rf"\x\y.{BOX} (x y)"),
        ("identity_image_is_idempotent", rf"({BOX} {I}) ({BOX} {I})",
         rf"{BOX} {I}"),
        ("lookup_preserves_first_variable",
         rf"\box\a\b\c\z\n.({stream('0', 'n')}) ({environment})",
         r"\box\a\b\c\z\n.box c"),
        ("lookup_preserves_middle_variable",
         rf"\box\a\b\c\z\n.({stream('10', 'n')}) ({environment})",
         r"\box\a\b\c\z\n.box b"),
        ("lookup_preserves_third_variable",
         rf"\box\a\b\c\z\n.({stream('110', 'n')}) ({environment})",
         r"\box\a\b\c\z\n.box a"),
        ("alias_loses_middle_variable",
         rf"\box\a\b\c\z\n.{alias}",
         rf"\box\a\b\c\z\n.{lost_middle}"),
    ]
    sources = [source for _, left, right in cases for source in (left, right)]
    with ThreadPoolExecutor(max_workers=2) as pool:
        results = list(pool.map(normalize, sources))
    checks = []
    for index, (name, _, _) in enumerate(cases):
        assert results[2 * index] == results[2 * index + 1], name
        checks.append(name)

    # The proper embedding does not coincide with the identity and, unlike
    # the transparent closure for I, its image of I is not Boolean false.
    distinct_pairs = [
        ("box_is_not_identity", BOX, I),
        ("identity_image_is_not_false", rf"{BOX} {I}", F),
    ]
    sources = [source for _, left, right in distinct_pairs for source in (left, right)]
    with ThreadPoolExecutor(max_workers=2) as pool:
        results = list(pool.map(normalize, sources))
    distinct = []
    for index, (name, _, _) in enumerate(distinct_pairs):
        assert results[2 * index] != results[2 * index + 1], name
        distinct.append(name)

    report = {
        "search_performed": False,
        "helpers": helpers,
        "rigid_equations": checks,
        "distinct_normal_forms": distinct,
        "elapsed_seconds": round(time.monotonic() - start, 3),
    }
    path = ROOT / "data/self-interpreter/theory/applicative_retraction.json"
    path.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
