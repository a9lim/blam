#!/usr/bin/env python3
"""A single-body inherited-environment parser, priced before any search.

The ordinary-value rendering is 241 bits. It parses ABS's body once for its
suffix, discards the provisional semantic value, and reparses that body under
the eventual argument. APP returns ordinary application, with no environment
lift. All traversal uses the same recursive parser.

Fusing unary lookup with suffix recovery appears to save two bits, but the
239-bit rendering is wrong: the ABS suffix pass lacks its new binding. Two
explicit repairs are included: extend by a dummy at ABS (289 bits), or use a
finite total bottom environment (278 bits). The latter is itself 41 bits.

No candidate enumeration, let search, or program battery is run here. The
checks are a fixed collection of symbolic equations, source prices, and the
failed rendering's one closed counterexample. The all-source unary lookup
and total-bottom laws are formalized in SelfintArchitecture5Inherited.lean;
the complete parser induction is not claimed to be kernel-checked here.
"""
from pathlib import Path
import argparse
import json
import re
import sys

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery
import lc
from remainder import counts, head_step


ROOT_ADAPTER = r"\p.\c.p c (\v.c (\z.v))"
ORDINARY_BODY = r"""\e.(\d.\c\s.
  s (\a.a) (\u.s (\q\r.c (r e)) (s s u))
    (\b\t.d (\f.b
      (c (\a.p (\j\r.j a (r e)) b t))
      (d (\g.c (f g)))) t)) (p e)"""
FUSED_BODY = r"""\e.(\d.\c\s.
  s (\a.a) (\u.s (\q\r.r e c))
    (\b\t.d (\f.b
      (c (\a.p (\j\r.j (\k.k a r) (r e)) b t))
      (d (\g.c (f g)))) t)) (p e)"""
SCOPED_BODY = r"""\e\c\s.
  s (\a.a) (\u.s (\q\r.r e c))
    (\b\t.p (b (\j\r.j (\k.k j r) (r e)) e)
      (\f.b
        (c (\a.p (\j\r.j (\k.k a r) (r e)) b t))
        (p e (\g.c (f g)))) t)"""
BOTTOM = r"\b\r\k.k b (b r (r r b))"
PAIR_CELL = r"\a\e\b\r.b (\k.k a r) (r e)"
DUMMY_CELL = r"\e\b\r.b (\k.k b r) (r e)"


def fixed_point(body):
    return r"(\x.x x) (\x.(\p." + body + r") (x x))"


def sources():
    ordinary = "(" + ROOT_ADAPTER + ") (" + fixed_point(ORDINARY_BODY) + ")"
    broken = "(" + ROOT_ADAPTER + ") (" + fixed_point(FUSED_BODY) + ")"
    scoped = "(" + ROOT_ADAPTER + ") (" + fixed_point(SCOPED_BODY) + ")"
    bottom_root = ROOT_ADAPTER.replace("p c ", "p (" + BOTTOM + ") ")
    bottom = "(" + bottom_root + ") (" + fixed_point(FUSED_BODY) + ")"
    return {"ordinary241": ordinary, "failed239": broken,
            "bottom278": bottom, "scoped289": scoped}


def apps(function, *arguments):
    for argument in arguments:
        function = ("A", function, argument)
    return function


def instantiate(source, *arguments):
    term = battery.compile_lam(source)
    for argument in arguments:
        assert term[0] == "L"
        term = lc.beta(term, argument)
    return term


def lean_term(term):
    if term[0] == "V":
        return f"(.var {term[1]})"
    if term[0] == "L":
        return f"(.lam {lean_term(term[1])})"
    return f"(.app {lean_term(term[1])} {lean_term(term[2])})"


def normal_step(term):
    if term[0] == "V":
        return None
    if term[0] == "L":
        body = normal_step(term[1])
        return None if body is None else ("L", body)
    if term[1][0] == "L":
        return lc.beta(term[1], term[2])
    function = normal_step(term[1])
    if function is not None:
        return ("A", function, term[2])
    argument = normal_step(term[2])
    return None if argument is None else ("A", term[1], argument)


def exact_clause(source, target, cap=80, compatible=False):
    """One fixed symbolic reduction; a cap is an error, never a success."""
    term = source
    for step in range(cap + 1):
        if term == target:
            return step
        term = (normal_step if compatible else head_step)(term)
        assert term is not None, (lc.show(source), "stopped before", lc.show(target))
    raise AssertionError(("fixed clause exceeded cap", lc.show(source)))


def main():
    options = argparse.ArgumentParser(description=__doc__)
    options.add_argument("--source", choices=sources())
    args = options.parse_args()
    if args.source:
        print(sources()[args.source])
        return

    terms = {name: battery.compile_lam(source) for name, source in sources().items()}
    expected = {"ordinary241": (241, (22, 33, 63)),
                "failed239": (239, (23, 32, 63)),
                "bottom278": (278, (26, 38, 72)),
                "scoped289": (289, (25, 39, 81))}
    for name, (bits, lax) in expected.items():
        assert len(lc.enc(terms[name])) == bits
        assert counts(terms[name]) == lax
    proof = (ROOT / "lean/Blc/SelfintArchitecture5Inherited.lean").read_text()
    literal = re.search(r"^def failed239 : Term := (.+)$", proof, re.MULTILINE)[1]
    assert literal == lean_term(terms["failed239"])

    a, e, c, r = [("V", n) for n in range(4)]
    cell = instantiate(PAIR_CELL, a, e)
    dummy = instantiate(DUMMY_CELL, e)
    bottom = battery.compile_lam(BOTTOM)
    clauses = {
        "cell_zero": exact_clause(apps(lc.pair(lc.TRUE, r), cell, c), apps(c, a, r)),
        "cell_successor": exact_clause(apps(lc.pair(lc.FALSE, r), cell, c), apps(r, e, c)),
        "dummy_zero": exact_clause(apps(lc.pair(lc.TRUE, r), dummy, c), apps(c, lc.TRUE, r)),
        "dummy_successor": exact_clause(apps(lc.pair(lc.FALSE, r), dummy, c), apps(r, e, c)),
        "bottom_zero": exact_clause(apps(lc.pair(lc.TRUE, r), bottom, c),
                                    apps(c, lc.TRUE, r), compatible=True),
    }
    # The successor bottom clause leaves the diagonal skip in an argument.
    bottom_step = instantiate(r"\c\r.c (\x\y.y) (r r (\x\y.y))", c, r)
    clauses["bottom_successor"] = exact_clause(
        apps(lc.pair(lc.FALSE, r), bottom, c), bottom_step, compatible=True)

    # This is the actual closed source I, closed C=F and closed suffix I.
    identity = battery.compile_lam(r"\x.x")
    code_i = lc.bitlist(lc.enc(identity), identity)
    failed = apps(terms["failed239"], lc.FALSE, code_i)
    wrong_nf = battery.compile_lam(r"\x\y.y")
    fuel = [1000]
    result = lc.nf(failed, fuel)
    assert result == wrong_nf and result != identity

    print(json.dumps({
        "source_prices": {name: {"bits": n, "L_A_X": list(lax)}
                          for name, (n, lax) in expected.items()},
        "total_bottom_bits": len(lc.enc(bottom)),
        "symbolic_steps": clauses,
        "failed_source_matches_lean": True,
        "failed239_closed_counterexample": {
            "source": "I", "continuation": "F", "suffix": "I",
            "actual_normal_form": lc.show(result), "expected_normal_form": lc.show(identity),
            "beta_steps": 1000 - fuel[0]},
        "boundary": "No smaller interpreter or optimality claim; full parser induction not formalized here.",
    }, indent=2))


if __name__ == "__main__":
    main()
