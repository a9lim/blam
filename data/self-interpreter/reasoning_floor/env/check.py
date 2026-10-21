#!/usr/bin/env python3
"""Fixed env-lane constructions and symbolic checks. No candidate search.

All writes, including compilation temporaries, stay in this lane. The Rust
normalizer is frozen, and the exact battery runs with only two workers.
"""
from pathlib import Path
import json
import sys
import tempfile
import time

sys.dont_write_bytecode = True
LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[2]
tempfile.tempdir = str(LANE)
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery as b
import lc

b.BLAM = str(LANE / "blam-frozen")

K = r"(\x\y.x)"
F = r"(\x\y.y)"
I = r"(\x.x)"


def compile_source(source):
    return b.compile_lam(source)


def normalize(source):
    ans = b.normalize(b.enc(compile_source(source)), 1 << 16)
    assert ans is not None, source
    return ans


def counts(t):
    if t[0] == "V":
        return 0, 0, t[1]
    if t[0] == "L":
        l, a, x = counts(t[1])
        return l + 1, a, x
    u, v = counts(t[1]), counts(t[2])
    return u[0] + v[0], u[1] + v[1] + 1, u[2] + v[2]


def cell(a, e):
    return rf"(\b\r.b ({a}) (r ({e})))"


def scott(bit, tail):
    return rf"(\h.h {bit} ({tail}))"


def main():
    start = time.monotonic()
    reference = (ROOT / "data/self-interpreter/machines/int165.lam").read_text()
    # The ABS tag is exactly K, so it can supply the head's constant
    # wrapper in the curried cell. This replaces a source lambda by a
    # borrowed Boolean application, but the tag's de Bruijn index is costly.
    borrowed = reference.replace(
        r"\zx \zy. zx arg (zy args)",
        r"\zx. zx (bit1 arg) (\zy. zy args)",
    )
    assert borrowed != reference
    candidates = [
        ("reference165", reference),
        ("borrow_abs_tag", "-- Borrow ABS's known-zero tag as K.\n" + borrowed[borrowed.index("(\\x."):]),
    ]

    reports = []
    lines = []
    for name, source in candidates:
        path = LANE / f"{name}.lam"
        path.write_text(source)
        term = compile_source(source)
        wire = b.enc(term)
        (LANE / f"{name}.blc").write_text(wire + "\n")
        began = time.monotonic()
        ok, skip, bad = b.check(term, threads=2)
        line = f"{len(wire)} bits  ok={ok} skip={skip} fail={len(bad)}  {name}.lam"
        print(line, flush=True)
        lines.append(line)
        reports.append({
            "name": name,
            "bits": len(wire),
            "L_A_X": counts(term),
            "battery_line": line,
            "failures": bad,
            "seconds": round(time.monotonic() - began, 3),
        })

    borrowed_open = rf"(\b.b ({K} a) (\r.r e))"
    equations = [
        ("borrowed_K_cell_head", rf"\e\a\n.{borrowed_open} {K} n",
         r"\e\a\n.a"),
        ("borrowed_K_cell_tail", rf"\e\a\r.{borrowed_open} {F} r",
         r"\e\a\r.r e"),
        ("literal_ABS_tag", r"\e\a.(\tag.\b.b (tag a) (\r.r e)) " + K,
         rf"\e\a.{borrowed_open}"),
        # The two selector equations establish the extension protocol.
        ("head_lookup", rf"\a\e\n.({scott(K, 'n')}) {cell('a', 'e')}",
         r"\a\e\n.a"),
        ("tail_lookup", rf"\a\e\r.({scott(F, 'r')}) {cell('a', 'e')}",
         r"\a\e\r.r e"),
        # Exact cross-cell / diagonal relationships motivating the lane.
        ("diagonal_cell_gives_lift", rf"\f\g\e.{cell('e', 'e')} f g",
         r"\f\g\e.f e (g e)"),
        ("cross_cell", rf"\a\e\d\h.{cell('a', 'e')} {cell('d', 'h')}",
         r"\a\e\d\h.\r.a d (r e h)"),
    ]
    checked = []
    for name, left, right in equations:
        assert normalize(left) == normalize(right), name
        checked.append(name)
    # The curried cell is only selector-equivalent to the standard one.
    # It is not beta-equal on an arbitrary rigid non-Boolean first input.
    assert normalize(rf"\e\a.{borrowed_open}") != normalize(rf"\e\a.{cell('a', 'e')}")

    # Costs in the actual free-variable frames. Peel only these surrounding
    # binders: they establish indices but are not part of the priced module.
    local_cell = compile_source(r"\e\a.\b\r.b a (r e)")[1][1]
    local_lift = compile_source(r"\f\g.\e.f e (g e)")[1][1]
    borrowed_cell = compile_source(
        r"\tag\f\e\a.\b.b (tag a) (\r.r e)"
    )[1][1][1][1]
    assert lc.size(local_cell) == 24
    assert lc.size(local_lift) == 19
    assert lc.size(borrowed_cell) == 30

    # Validate the algebraic claim even on divergent source programs by
    # checking their suffix projections separately. This is supplementary
    # evidence; the tag identity transfers the full structural proof.
    omega = r"(\u.u u) (\u.u u)"
    suffix_checks = []
    borrowed_term = compile_source(borrowed)
    for label, program in [("Omega", omega), ("lambda_Omega", rf"\u.{omega}")]:
        m = compile_source(program)
        # lambda n. E (lambda value tail.tail) (code(M) ++ n)
        got = ("L", ("A", ("A", b.shift(borrowed_term, 1), b.FALSE),
                           b.bitlist(b.enc(m), ("V", 0))))
        result = b.normalize(b.enc(got), 1 << 16)
        assert result == b.enc(compile_source(I)), label
        suffix_checks.append(label)

    report = {
        "search_performed": False,
        "battery_threads": 2,
        "candidates": reports,
        "equations": checked,
        "distinct_normal_forms": ["borrowed_cell_vs_canonical_cell"],
        "module_bits": {"cell": 24, "lift": 19, "borrowed_tag_cell": 30},
        "suffix_checks": suffix_checks,
        "seconds": round(time.monotonic() - start, 3),
    }
    (LANE / "battery.log").write_text("\n".join(lines) + "\n")
    (LANE / "checks.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
