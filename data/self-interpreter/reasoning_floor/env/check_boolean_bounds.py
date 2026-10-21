#!/usr/bin/env python3
"""Fixed equations and witnesses for the Boolean/actual-value bounds.

No term enumeration, candidate generation, battery, or repository writes.
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


def term(source):
    return b.compile_lam(source)


def nf(source):
    answer = b.normalize(b.enc(term(source)), 1 << 16)
    assert answer is not None, source
    return answer


def peel(t, count):
    for _ in range(count):
        assert t[0] == "L"
        t = t[1]
    return t


def cell(a, e):
    return rf"(\b\r.b ({a}) (r ({e})))"


def cons(bit, tail):
    return rf"(\h.h ({bit}) ({tail}))"


def next_value(p, c):
    return rf"(\b.({p}) (\v.b (({c}) (\e\a.v {cell('a', 'e')})) (({p}) (\w.({c}) (\e.v e (w e))))))"


def reader(p, c, s):
    j = next_value(p, c)
    return rf"({s}) (\b.b (\u\r.r ({j})) ({c})) (({s}) ({s}) ({s}))"


def main():
    started = time.monotonic()
    sizes = {
        "canonical_cell": (r"\x\p\c\tag\v\e\a.\b\r.b a (r e)", 7, 24),
        "curried_cell": (r"\x\p\c\tag\v\e\a.\b.b (\n.a) (\r.r e)", 7, 25),
        "post_applied_cell": (r"\x\p\c\tag\v\e\a.\b\r.b (\n.a) r e", 7, 27),
        "nonuniform_parsed_helper_cell": (r"\x\p\c\tag\v\e\a.v a a e", 7, 17),
        "actual_frame_lift": (r"\x\p\c\tag\f\g.\e.f e (g e)", 6, 19),
    }
    measured = {}
    for name, (source, depth, expected) in sizes.items():
        measured[name] = lc.size(peel(term(source), depth))
        assert measured[name] == expected, (name, measured[name])

    equations = [
        ("canonical_K", rf"\e\a\n.{cell('a', 'e')} {K} n", r"\e\a\n.a"),
        ("canonical_F", rf"\e\a\r.{cell('a', 'e')} {F} r", r"\e\a\r.r e"),
        ("curried_K", rf"\e\a\n.(\b.b (\n.a) (\r.r e)) {K} n", r"\e\a\n.a"),
        ("curried_F", rf"\e\a\r.(\b.b (\n.a) (\r.r e)) {F} r", r"\e\a\r.r e"),
        ("post_applied_K", rf"\e\a\n.(\b\r.b (\n.a) r e) {K} n", r"\e\a\n.a"),
        ("post_applied_F", rf"\e\a\r.(\b\r.b (\n.a) r e) {F} r", r"\e\a\r.r e"),
        ("reader_on_K", rf"\p\c.{reader('p', 'c', K)}", rf"\p\c.\b.b (\u\r.r {next_value('p', 'c')}) c"),
        ("reader_on_F", rf"\p\c.{reader('p', 'c', F)}", rf"\p\c.{F}"),
        ("reader_on_I", rf"\p\c.{reader('p', 'c', I)}", rf"\p\c.\r.r {next_value('p', 'c')}"),
        ("reader_on_constant_stream", rf"\p\c\m.{reader('p', 'c', r'(\z.m)')}", r"\p\c\m.m (m (\z.m))"),
        ("raw_cells_cross_apply", rf"\r\s.{cons(K, 'r')} {cons(K, 's')}", rf"\r\s.{K} r"),
        ("nonuniform_parsed_helper_K", rf"\e\a\n.({K} (\u\v\b\r.b u (r v))) a a e {K} n", r"\e\a\n.a"),
        ("nonuniform_parsed_helper_F", rf"\e\a\r.({K} (\u\v\b\r.b u (r v))) a a e {F} r", r"\e\a\r.r e"),
    ]
    tail = "n"
    g = cons(K, tail)
    f = cons(K, cons(F, g))
    env = cell("a", "z")
    equations.append(("actual_variable_APP_witness",
                      rf"\n\z\a.(\f\g\e.f e (g e)) ({f}) ({g}) ({env})",
                      r"\n\z\a.a a"))
    passed = []
    for name, left, right in equations:
        assert nf(left) == nf(right), name
        passed.append(name)

    # These three closed-program probes distinguish the helper-case forms.
    # They are specified witnesses, not a candidate sweep.
    counterexamples = [
        ("nonuniform_parsed_helper_fails_other_body", rf"\e\a\n.{F} a a e {K} n", r"\e\a\n.a"),
        ("head_f_unwrapped_g", rf"\e.{F} ({K} {I}) e", rf"\e.{F} {I}"),
        ("head_f_wrapped_g", rf"\e.{I} ({K} ({K} {I})) e", rf"\e.{I} {I}"),
        ("head_g_unwrapped_f", rf"\e.{I} ({K} {K}) e", rf"\e.{K} {I}"),
        ("head_g_wrapped_f", rf"\e.{I} ({K} ({K} {K})) e", rf"\e.{K} {I}"),
    ]
    separated = []
    for name, left, right in counterexamples:
        assert nf(left) != nf(right), name
        separated.append(name)

    assert nf(r"\e\a.\b.b (\n.a) (\r.r e)") != nf(r"\e\a.\b\r.b a (r e)")
    # Read the actual G from the frozen source, rather than substitute a
    # separately written recursive combinator.
    source = (LANE / "reference165.lam").read_text()
    machine = term(source)
    assert machine[0] == "A"
    G = machine[2]
    app = lambda u, v: ("A", u, v)
    k, ff, ii = term(K), term(F), term(I)
    # G q c F = F; choosing q=c=I keeps this a tiny exact check.
    actual = app(app(app(G, ii), ii), ff)
    assert b.normalize(b.enc(actual), 1 << 16) == b.enc(ff)
    passed.append("actual_G_on_F")

    result = {
        "enumeration_performed": False,
        "machine_checked_lower_bound": False,
        "module_bits": measured,
        "fixed_beta_equalities": passed,
        "fixed_beta_inequalities": separated + ["curried_vs_canonical"],
        "seconds": round(time.monotonic() - started, 3),
    }
    (LANE / "boolean_checks.json").write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
