"""Independent replay of the supplied fixed clauses; no term enumeration."""
import json
import re
import time
from pathlib import Path

BASE = Path(__file__).resolve().parents[1] / "global"
V = lambda n: ("v", n)
L = lambda b: ("l", b)
A = lambda f, a: ("a", f, a)


def named(src):
    tokens = re.findall(r"\\|\.|\(|\)|[A-Za-z_][A-Za-z_0-9]*", src)
    pos = 0

    def expr(env):
        nonlocal pos
        if tokens[pos] == "\\":
            name = tokens[pos + 1]
            pos += 2
            assert tokens[pos] == "."
            pos += 1
            return L(expr([name] + env))
        t = atom(env)
        while pos < len(tokens) and tokens[pos] != ")":
            t = A(t, atom(env))
        return t

    def atom(env):
        nonlocal pos
        token = tokens[pos]
        if token == "(":
            pos += 1
            t = expr(env)
            assert tokens[pos] == ")"
            pos += 1
            return t
        if token == "\\":
            return expr(env)
        pos += 1
        return V(env.index(token))

    t = expr([])
    assert pos == len(tokens)
    return t


def lean_term(src):
    tokens = re.findall(r"\(|\)|\.var|\.lam|\.app|\d+", src)
    pos = 0

    def parse():
        nonlocal pos
        assert tokens[pos] == "("
        kind = tokens[pos + 1]
        pos += 2
        if kind == ".var":
            t = V(int(tokens[pos]))
            pos += 1
        elif kind == ".lam":
            t = L(parse())
        else:
            assert kind == ".app"
            t = A(parse(), parse())
        assert tokens[pos] == ")"
        pos += 1
        return t

    t = parse()
    assert pos == len(tokens)
    return t


def shift(t, amount, cut=0):
    if t[0] == "v":
        return V(t[1] + amount if t[1] >= cut else t[1])
    if t[0] == "l":
        return L(shift(t[1], amount, cut + 1))
    return A(shift(t[1], amount, cut), shift(t[2], amount, cut))


def subst(body, arg, cut=0):
    if body[0] == "v":
        n = body[1]
        return arg if n == cut else V(n - (n > cut))
    if body[0] == "l":
        return L(subst(body[1], shift(arg, 1), cut + 1))
    return A(subst(body[1], arg, cut), subst(body[2], arg, cut))


def step(t, full=False):
    if t[0] == "v":
        return None
    if t[0] == "l":
        u = step(t[1], full)
        return None if u is None else L(u)
    if t[1][0] == "l":
        return subst(t[1][1], t[2])
    u = step(t[1], full)
    if u is not None:
        return A(u, t[2])
    if full:
        u = step(t[2], full)
        if u is not None:
            return A(t[1], u)
    return None


def nf(t):
    seen = set()
    for _ in range(1000):
        if t in seen:
            return None
        seen.add(t)
        u = step(t, True)
        if u is None:
            return t
        t = u
    return None


def spine(t):
    binders = 0
    while t[0] == "l":
        binders += 1
        t = t[1]
    args = []
    while t[0] == "a":
        args.append(t[2])
        t = t[1]
    return binders, t, args[::-1]


def size(t):
    if t[0] == "v":
        return t[1] + 2
    if t[0] == "l":
        return 2 + size(t[1])
    return 2 + size(t[1]) + size(t[2])


def invoke_identity(e):
    tail = V(0)
    # The literal BLC code for I is 0010; a Scott cell is lambda k.k bit tail.
    for bit in reversed("0010"):
        value = L(L(V(1 if bit == "0" else 0)))
        tail = L(A(A(V(0), value), shift(tail, 1)))
    return L(L(A(A(e, V(1)), tail)))


def main():
    started = time.monotonic()
    clauses = {}
    pattern = r"theorem (\w+) : headSteps (\d+) (.*?) = some (.*?) := by decide"
    for name, n, source, target in re.findall(pattern, (BASE / "FiniteChecks.lean").read_text()):
        source, target = lean_term(source), lean_term(target)
        t = source
        for _ in range(int(n)):
            t = step(t)
            assert t is not None, name
        assert t == target, name
        clauses[name] = (source, target, int(n))
    assert len(clauses) == 152

    rows = json.loads((BASE / "verified.json").read_text())["layouts"]
    delta = named(r"\x.x x")
    groups = {}
    payload_rows = []
    for i, row in enumerate(rows):
        body, group, kind = row["body"], row["group"], row["kind"]
        groups[str(group)] = groups.get(str(group), 0) + 1
        if group == 34:
            e = A(delta, named(r"\a.\b.a (\c." + body + ")"))
        elif group == 35:
            e = A(delta, named(r"\a.\b.\c." + body))
        elif group == 36:
            e = A(delta, named(r"\a.a (\b.\c." + body + ")"))
        else:
            assert group == "36open"
            e = named(r"\a.(\x.x x) (\b.b (\c." + body + "))")
        assert size(e) == (36 if group == "36open" else group)
        if kind == "handwritten_growth_invariant":
            continue
        name = f"g{group}_{i}"
        if kind == "exact_head_cycle":
            assert clauses[name + "_prefix"][0] == e
            mid = clauses[name + "_prefix"][1]
            assert clauses[name + "_cycle"][0] == mid == clauses[name + "_cycle"][1]
            assert clauses[name + "_cycle"][2] > 0
            continue
        if kind.startswith("identity_"):
            name += "_I"
            expected_source = invoke_identity(e)
        else:
            expected_source = e
        source, target, _ = clauses[name]
        assert source == expected_source, name
        b, h, args = spine(target)
        if kind in ("at_least_three_lambdas", "identity_extra_lambda"):
            assert b >= 3, name
            continue
        assert step(target) is None, name
        if kind == "wrong_interface_arity":
            assert b != 2, name
        elif kind == "wrong_continuation_spine":
            assert (b, h) == (2, V(1)) and len(args) != 2, name
        elif kind == "identity_wrong_spine":
            assert (b, h, len(args)) != (2, V(1), 2), name
        else:
            assert kind == "identity_wrong_payload", name
            assert (b, h, len(args)) == (2, V(1), 2)
            j = row["payload"]
            result = nf(args[j])
            assert result is not None and result != (L(L(V(0))) if j == 0 else V(0)), name
            payload_rows.append(i)
    assert groups == {"34": 12, "35": 60, "36": 18, "36open": 18}
    print(json.dumps({"fixed_clauses_replayed": len(clauses),
                      "fixed_layouts_matched": groups,
                      "finite_refutations_checked": len(rows) - 6,
                      "payload_mismatches_normalized": payload_rows,
                      "seconds": round(time.monotonic() - started, 4)}, indent=2))


if __name__ == "__main__":
    main()
