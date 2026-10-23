#!/usr/bin/env python3
"""Pin the 165-bit parser/continuation bundle and its fixed service clauses.

No candidate enumeration or program battery. Lean proves the full directed
self-interpreter contract in Blc/SelfintArchitecture5Bundle.lean. This script
derives the named source from the canonical 162, verifies the Lean wire pin,
and replays nine finite symbolic head reductions. Use --source to print the
complete named source instead of the check report.
"""
from pathlib import Path
import json
import re
import sys

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery
import lc
from remainder import check_clause, counts, head_step


def apps(function, *arguments):
    for argument in arguments:
        function = ("A", function, argument)
    return function


def main():
    canonical = (ROOT / "data/self-interpreter/machines/int162.lam").read_text()
    canonical = "\n".join(line for line in canonical.splitlines()
                          if not line.lstrip().startswith("--")).strip()
    assert canonical.count("(list list u)") == 1
    source = canonical.replace("(list list u)", "(list list intL)")
    if sys.argv[1:] == ["--source"]:
        print("-- 165-bit interpreter with off-domain continuation/parser services.")
        print(source)
        return
    assert not sys.argv[1:], "usage: architecture5_bundle.py [--source]"

    term = battery.compile_lam(source)
    bits = battery.enc(term)
    assert len(bits) == 165
    proof = (ROOT / "lean/Blc/SelfintArchitecture5Bundle.lean").read_text()
    literal = re.search(r"def bundleWire : List Bool := \[([^]]+)\]", proof)[1]
    assert bits == "".join("1" if value.strip() == "true" else "0"
                           for value in literal.split(","))

    parser = head_step(term)
    original_parser = head_step(battery.compile_lam(canonical))
    assert parser is not None and original_parser is not None
    identity = ("L", ("V", 0))
    cont = ("V", 0)
    next_template = battery.compile_lam(
        r"\p\c.\b.p (\f.b (c (\e\a.f (\x\y.x a (y e))))"
        r" (p (\g.c (\e.f e (g e)))))")

    def next_for(p):
        return lc.beta(lc.beta(next_template, p), cont)

    clauses = {
        "bundle_identity": check_clause(apps(parser, cont, identity), cont, 9),
        "bundle_reset": check_clause(apps(parser, cont, lc.FALSE), parser, 11),
        "bundle_next": check_clause(apps(parser, cont, lc.TRUE), next_for(parser), 7),
        "bundle_select_parser": check_clause(
            apps(parser, cont, apps(lc.TRUE, identity)), parser, 14),
        "bundle_select_continuation": check_clause(
            apps(parser, cont, apps(lc.FALSE, identity)), cont, 11),
        "baseline_identity": check_clause(apps(original_parser, cont, identity), cont, 9),
        "baseline_false_next": check_clause(
            apps(original_parser, cont, lc.FALSE), next_for(original_parser), 11),
        "baseline_true_next": check_clause(
            apps(original_parser, cont, lc.TRUE), next_for(original_parser), 7),
        "public_identity": check_clause(apps(term, cont, identity), cont, 10),
    }
    lambdas, applications, index_tax = counts(term)
    assert (lambdas, applications, index_tax) == (16, 24, 35)
    print(json.dumps({
        "bits": len(bits),
        "L_A_X": [lambdas, applications, index_tax],
        "wire_matches_lean": True,
        "symbolic_head_steps": clauses,
        "formal_contract": "forall closed M, all C N: P C (<M> ++ N) ->beta* C (lambda z.M) N",
        "boundary": "larger than 162; no optimality claim or candidate search",
    }, indent=2))


if __name__ == "__main__":
    main()
