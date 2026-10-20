#!/usr/bin/env python3
"""Two explicit remainder parsers and fixed symbolic head clauses.

No source or candidate enumeration. Lean proves the all-syntax contract;
this script pins the named source/wire and checks its defining clauses.
"""
from pathlib import Path
import json
import re
import sys
import time

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery
import lc


def app(f, a):
    return ("A", f, a)


def head_step(term):
    if term[0] == "L":
        body = head_step(term[1])
        return None if body is None else ("L", body)
    if term[0] == "A":
        if term[1][0] == "L":
            return lc.beta(term[1], term[2])
        function = head_step(term[1])
        return None if function is None else app(function, term[2])
    return None


def check_clause(source, target, expected_steps):
    result = source
    for _ in range(expected_steps):
        result = head_step(result)
        assert result is not None
    assert result == target, (result, target)
    return expected_steps


def main():
    start = time.monotonic()
    named = (ROOT / "data/self-interpreter/machines/rem93.lam").read_text()
    source = battery.compile_lam(named)
    bits = lc.enc(source)
    assert bits == (ROOT / "data/self-interpreter/machines/rem93.blc").read_text().strip()
    assert len(bits) == 93

    proof = (ROOT / "lean/Blc/SelfintRemainder.lean").read_text()
    literal = re.search(r"def rem93Wire : List Bool := \[([^]]+)\]", proof)[1]
    proof_bits = "".join("1" if b.strip() == "true" else "0" for b in literal.split(","))
    assert bits == proof_bits

    reader = r"(\n.\s.s(\b.b(\u\r.r n)b)(s s s))"
    shared_body = battery.compile_lam(
        r"(\x.x x)(\x.(\p." + reader + r"(\t\u.(t (\i.i) p)(p u)))(x x))")
    factored_inline = battery.compile_lam(
        r"(\x.x x)(\x.(\p.\s.s(\b.b(\u\r.r(\t\u.p(t u(p u))))b)(s s s))(x x))")
    assert factored_inline == source
    variants = {"shared_body": lc.size(shared_body), "factored_inline": lc.size(factored_inline)}
    assert variants == {"shared_body": 97, "factored_inline": 93}

    parser = app(source[2], source[2])
    next_term = lc.beta(battery.compile_lam(r"\p.\t\u.p(t u(p u))"), parser)
    handler = lc.beta(battery.compile_lam(r"\n.\b.b(\u\r.r n)b"), next_term)
    r, suffix = ("V", 0), ("V", 1)
    clauses = {
        "knot": check_clause(source, parser, 1),
        "unfold": check_clause(app(parser, r), app(app(r, handler), app(app(r, r), r)), 3),
        "variable": check_clause(app(app(lc.pair(lc.FALSE, r), handler), suffix), suffix, 6),
        "zero": check_clause(app(app(lc.pair(lc.TRUE, r), handler), suffix), app(suffix, next_term), 6),
        "abstraction_head": check_clause(app(lc.pair(lc.TRUE, r), next_term),
                                          app(parser, app(app(lc.TRUE, r), app(parser, r))), 3),
        "application_head": check_clause(app(lc.pair(lc.FALSE, r), next_term),
                                          app(parser, app(app(lc.FALSE, r), app(parser, r))), 3),
        "abstraction_argument": check_clause(app(app(lc.TRUE, r), app(parser, r)), r, 2),
        "application_argument": check_clause(app(app(lc.FALSE, r), app(parser, r)), app(parser, r), 2),
    }
    report = {
        "bits": len(bits),
        "explicit_variants": variants,
        "symbolic_head_clause_steps": clauses,
        "formal_contract": "forall M N, rem93 (streamOf (blcCode M) N) ->* N",
        "source_restrictions": "none: open and divergent source syntax included",
        "seconds": round(time.monotonic() - start, 4),
    }
    (ROOT / "data/self-interpreter/theory/remainder.json").write_text(
        json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
