#!/usr/bin/env python3
"""Fixed symbolic checks for the sixth-round control-state obstructions.

No candidate enumeration or source battery. The Lean files prove the
suffix collision and infinite head reduction; this script independently
pins the named 180-bit source and its two finite recurrence clauses.
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


def instantiate(template, *arguments):
    for argument in arguments:
        assert template[0] == "L"
        template = lc.beta(template, argument)
    return template


def main():
    assert not sys.argv[1:], "usage: architecture6_control.py"
    identity = ("L", ("V", 0))
    tail = ("V", 0)
    retag = battery.compile_lam(r"\s.s (\i.i) s")
    assert lc.size(retag) == 14
    left = ("A", ("V", 0), ("V", 0))
    right = ("V", 1)
    extra = ("V", 0)
    assert (lc.enc(left), lc.enc(right), lc.enc(extra)) == ("011010", "110", "10")
    common = lc.bitlist("11010", tail)
    retag_clauses = {
        "true_to_identity": check_clause(apps(retag, lc.TRUE), identity, 3),
        "false_to_false": check_clause(apps(retag, lc.FALSE), lc.FALSE, 3),
        "zero_drops_cell": check_clause(apps(retag, lc.bitlist("0", tail)), tail, 5),
        "one_retains_cell": check_clause(
            apps(retag, lc.bitlist("1", tail)), lc.bitlist("1", tail), 5),
        "left_collision": check_clause(apps(retag, lc.bitlist(lc.enc(left), tail)), common, 5),
        "right_collision": check_clause(
            apps(retag, lc.bitlist(lc.enc(right), lc.bitlist(lc.enc(extra), tail))), common, 5),
    }

    canonical = (ROOT / "data/self-interpreter/machines/int162.lam").read_text()
    canonical = "\n".join(line for line in canonical.splitlines()
                          if not line.lstrip().startswith("--")).strip()
    assert canonical.count(r"(\q. cont)") == 1
    source = canonical.replace(r"(\q. cont)", r"(\b. u b (\i.i) b (\i.i))")
    attempted = battery.compile_lam(source)
    bits = lc.enc(attempted)
    assert len(bits) == 180
    proof = (ROOT / "lean/Blc/SelfintArchitecture6NextService.lean").read_text()
    literal = re.search(r"def attempted180Wire : List Bool := \[([^]]+)\]", proof)[1]
    assert bits == "".join("1" if value.strip() == "true" else "0"
                           for value in literal.split(","))
    parser = head_step(attempted)
    assert parser is not None
    continuation = ("V", 0)
    next_template = battery.compile_lam(
        r"\p\c.\b.p (\f.b (c (\e\a.f (\x\y.x a (y e))))"
        r" (p (\g.c (\e.f e (g e)))))")
    kont_template = battery.compile_lam(
        r"\p\c\b.\f.b (c (\e\a.f (\x\y.x a (y e))))"
        r" (p (\g.c (\e.f e (g e))))")
    next_term = instantiate(next_template, parser, continuation)
    delayed = apps(identity, identity, next_term)
    updated = instantiate(kont_template, parser, continuation, delayed)
    identity_steps = check_clause(apps(parser, continuation, identity),
                                  apps(parser, updated, identity, delayed, identity), 10)
    first = instantiate(kont_template, parser, lc.FALSE, lc.TRUE)
    entry = instantiate(kont_template, parser, first, lc.FALSE)
    variable_stream = lc.bitlist("10", identity)
    entry_args = [lc.FALSE, identity, lc.bitlist("0", identity),
                  apps(variable_stream, variable_stream,
                       instantiate(next_template, parser, first))]
    probe_steps = check_clause(apps(attempted, lc.FALSE, lc.bitlist("0010", identity)),
                               apps(parser, entry, identity, *entry_args), 23)
    assert counts(attempted) == (18, 28, 30)

    print(json.dumps({
        "retag_bits": 14,
        "retag_head_steps": retag_clauses,
        "collision": {"left_source": "011010", "right_source": "110",
                      "extra_right_suffix": "10", "common_stream_prefix": "11010"},
        "attempted_bits": len(bits),
        "attempted_L_A_X": list(counts(attempted)),
        "wire_matches_lean": True,
        "identity_reentry_steps": identity_steps,
        "closed_identity_entry_steps": probe_steps,
        "formal_results": [
            "no_uniform_open_parser",
            "no_shared_closed_prefix_state",
            "identity_head_diverges",
            "attempted180_not_self_interpreter",
        ],
        "boundary": "two specific control mechanisms excluded; no global size lower bound",
    }, indent=2))


if __name__ == "__main__":
    main()
