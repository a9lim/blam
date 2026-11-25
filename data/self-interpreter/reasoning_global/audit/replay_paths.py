#!/usr/bin/env python3
"""Independent replay of finite certificates that are stated in Lean source.

usage: replay_paths.py BITS FILE.lean [FILE.lean ...]

From size 44 a lane's later passes add finite certificates whose reductions
contract redexes at explicit positions, not only head redexes, and which are
recorded in generated Lean modules instead of certs.json:

    def eN : Term := (.lam (.app ...))
    theorem cert_eN : check eN [[.under],[.under,.left], ...] .width = true := by decide

This reads the literal term and the list of positions from the source,
contracts the redex at each position in turn with replay.py's own
substitution, and tests the predicate with replay.py's own code. A position
that is not a redex is a failure. Nothing is imported from the lane.
"""
import pathlib
import re
import sys

sys.setrecursionlimit(200000)
HERE = pathlib.Path(__file__).resolve().parent
SRC = (HERE / "replay.py").read_text()
exec(compile(SRC[:SRC.index("\nwires = ")], "replay.py", "exec"))  # reducer and predicates only

TOKEN = re.compile(r"\(|\)|\.lam|\.app|\.var|\d+")


def term(text):
    toks = TOKEN.findall(text)
    pos = 0

    def go():
        nonlocal pos
        assert toks[pos] == "(", toks[pos]
        pos += 1
        head = toks[pos]
        pos += 1
        if head == ".var":
            t = ("v", int(toks[pos]))
            pos += 1
        elif head == ".lam":
            t = ("l", go())
        else:
            assert head == ".app", head
            f = go()
            t = ("a", f, go())
        assert toks[pos] == ")"
        pos += 1
        return t

    t = go()
    assert pos == len(toks)
    return t


def contract_at(t, path):
    if not path:
        if t[0] != "a" or t[1][0] != "l":
            raise ValueError("not a redex")
        return subst(t[1][1], t[2])
    step, rest = path[0], path[1:]
    if step == "under":
        if t[0] != "l":
            raise ValueError("under: not a lambda")
        return ("l", contract_at(t[1], rest))
    if t[0] != "a":
        raise ValueError(step + ": not an application")
    if step == "left":
        return ("a", contract_at(t[1], rest), t[2])
    if step == "right":
        return ("a", t[1], contract_at(t[2], rest))
    raise ValueError(step)


def holds(kind, t, bits):
    lead, body = strip(t)
    if kind == "smaller":
        return size(t) < bits
    if kind == "three":
        return lead >= 3
    if kind == "chain":
        return chain(body)
    if kind == "width":
        return lead <= 2 and inner_width(body) < 3
    raise ValueError("kind " + kind)


bits = int(sys.argv[1])
defs, certs = {}, []
for name in sys.argv[2:]:
    text = pathlib.Path(name).read_text()
    for m in re.finditer(r"^def (e\d+) : Term := (.*)$", text, re.M):
        defs[m.group(1)] = term(m.group(2))
    for m in re.finditer(r"^theorem cert_(e\d+) : check \1 \[(.*)\] \.(\w+) = true", text, re.M):
        paths = [[s.strip().lstrip(".") for s in p.split(",") if s.strip()]
                 for p in re.findall(r"\[([^\[\]]*)\]", m.group(2))]
        certs.append((m.group(1), paths, m.group(3)))
bad = 0
kinds = {}
for name, paths, kind in certs:
    t = defs[name]
    assert size(t) == bits, name
    try:
        for p in paths:
            t = contract_at(t, p)
        ok = holds(kind, t, bits)
    except ValueError as err:
        ok = False
        print(name, kind, "failed:", err)
    kinds[kind] = kinds.get(kind, 0) + 1
    bad += not ok
print(f"certificates {len(certs)} by kind {dict(sorted(kinds.items()))} not confirmed {bad}")
sys.exit(1 if bad else 0)
