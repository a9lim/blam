#!/usr/bin/env python3
"""The 70-bit remainder parser and five fixed symbolic head clauses.

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


def counts(term):
    if term[0] == "V":
        return 0, 0, term[1]
    if term[0] == "L":
        lambdas, apps, tax = counts(term[1])
        return lambdas + 1, apps, tax
    left, right = counts(term[1]), counts(term[2])
    return left[0] + right[0], left[1] + right[1] + 1, left[2] + right[2]


def main():
    start = time.monotonic()
    named = (ROOT / "data/self-interpreter/machines/rem70.lam").read_text()
    source = battery.compile_lam(named)
    bits = lc.enc(source)
    assert bits == (ROOT / "data/self-interpreter/machines/rem70.blc").read_text().strip()
    assert len(bits) == 70

    proof = (ROOT / "lean/Blc/SelfintRemainder.lean").read_text()
    literal = re.search(r"def rem70Wire : List Bool := \[([^]]+)\]", proof)[1]
    proof_bits = "".join("1" if b.strip() == "true" else "0" for b in literal.split(","))
    assert bits == proof_bits

    context = battery.compile_lam(r"\b\r.r (b (\t\u\d.t u (u d d) d d) r)")
    adapter = battery.compile_lam(r"\s\d.s d d")
    assert source == ("L", app(adapter[1], context))
    assert lc.size(context) == 53
    assert lc.size(adapter) + 2 == 17
    next_term = battery.compile_lam(r"\t\u\d.t u (u d d) d d")
    assert lc.size(next_term) == 36

    def parse(stream):
        return app(app(stream, context), context)

    r = ("V", 0)
    false_selection = app(app(lc.FALSE, next_term), r)
    true_selection = app(app(lc.TRUE, next_term), r)
    clauses = {
        "unfold": check_clause(app(source, r), parse(r), 2),
        "variable_head": check_clause(parse(lc.pair(lc.FALSE, r)),
                                      app(app(r, false_selection), context), 3),
        "zero_head": check_clause(parse(lc.pair(lc.TRUE, r)),
                                  app(app(r, true_selection), context), 3),
        "variable_argument": check_clause(false_selection, r, 2),
        "zero_argument": check_clause(true_selection, next_term, 2),
        "abstraction": check_clause(app(app(lc.pair(lc.TRUE, r), next_term), context), parse(r), 6),
        "application": check_clause(app(app(lc.pair(lc.FALSE, r), next_term), context), parse(parse(r)), 6),
    }
    lambdas, apps, tax = counts(source)
    assert 2 * lambdas + 4 * apps + 2 + tax == len(bits)
    report = {
        "bits": len(bits),
        "source_counts": {"lambdas": lambdas, "applications": apps, "index_tax": tax},
        "context_bits": lc.size(context),
        "next_bits": lc.size(next_term),
        "adapter_and_application_bits": lc.size(adapter) + 2,
        "symbolic_head_clause_steps": clauses,
        "formal_contract": "forall M N, rem70 (streamOf (blcCode M) N) ->* N",
        "source_restrictions": "none: open and divergent source syntax included",
        "seconds": round(time.monotonic() - start, 4),
    }
    (ROOT / "data/self-interpreter/theory/remainder.json").write_text(
        json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
