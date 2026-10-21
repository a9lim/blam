#!/usr/bin/env python3
"""Structural translation through one shared self-application combinator.

This is a compiler, not a search. Every lambda except the shared d and the
closed Delta is affine in its own argument. Introduced binders are marked so
the exact administrative beta reduction back to the source can be replayed.
"""
from collections import Counter
import json
from pathlib import Path
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
MACHINES = ROOT / "data/self-interpreter/machines"
RESULTS = ROOT / "data/self-interpreter/theory"
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import battery as bt


def V(x):
    return ("V", x)


def A(f, a):
    return ("A", f, a)


def apps(*terms):
    result = terms[0]
    for term in terms[1:]:
        result = A(result, term)
    return result


def L(x, b, admin=False):
    return ("L", x, b, admin)


serial = 0


def fresh():
    global serial
    serial += 1
    return f"v{serial}"


def named(t, env=()):
    if t[0] == "V":
        return V(env[t[1]])
    if t[0] == "A":
        return A(named(t[1], env), named(t[2], env))
    x = fresh()
    return L(x, named(t[1], (x,) + env))


def count(t, x):
    if t[0] == "V":
        return int(t[1] == x)
    if t[0] == "L":
        return 0 if t[1] == x else count(t[2], x)
    return count(t[1], x) + count(t[2], x)


def split(t, x, first, rest):
    """Replace the first x by first, and every remaining x by rest."""
    seen = False

    def go(u):
        nonlocal seen
        if u[0] == "V":
            if u[1] != x:
                return u
            y = rest if seen else first
            seen = True
            return V(y)
        if u[0] == "L":
            assert u[1] != x
            return L(u[1], go(u[2]), u[3])
        return A(go(u[1]), go(u[2]))

    return go(t)


def affine_lambda(x, body, d, admin):
    if count(body, x) <= 1:
        return L(x, body, admin)
    u, v, f, b, k = (fresh() for _ in range(5))
    split_body = split(body, x, u, v)
    fn = L(u, affine_lambda(v, split_body, d, True), True)
    # W_d = lambda f x. d (lambda b. b (lambda k. f) x).
    # After d := Delta, W_d f x -> f x x.
    w = L(f, L(x, A(V(d), L(b, A(A(V(b), L(k, V(f), True)), V(x)), True)),
               admin), True)
    return A(w, fn)


def translate(t, d):
    if t[0] == "V":
        return t
    if t[0] == "A":
        return A(translate(t[1], d), translate(t[2], d))
    return affine_lambda(t[1], translate(t[2], d), d, t[3])


def debruijn(t, env=()):
    if t[0] == "V":
        return V(env.index(t[1]))
    if t[0] == "A":
        return A(debruijn(t[1], env), debruijn(t[2], env))
    return ("L", debruijn(t[2], (t[1],) + env), t[3])


def plain(t):
    if t[0] == "V":
        return t
    if t[0] == "A":
        return A(plain(t[1]), plain(t[2]))
    return ("L", plain(t[1]))


def shift(t, n, c=0):
    if t[0] == "V":
        return V(t[1] + n) if t[1] >= c else t
    if t[0] == "A":
        return A(shift(t[1], n, c), shift(t[2], n, c))
    return ("L", shift(t[1], n, c + 1), t[2])


def subst(t, s, j=0):
    if t[0] == "V":
        if t[1] == j:
            return s
        return V(t[1] - 1) if t[1] > j else t
    if t[0] == "A":
        return A(subst(t[1], s, j), subst(t[2], s, j))
    return ("L", subst(t[1], shift(s, 1), j + 1), t[2])


def admin_step(t):
    """Find the leftmost introduced redex; original redexes are preserved."""
    if t[0] == "V":
        return None
    if t[0] == "L":
        h = admin_step(t[1])
        return None if h is None else ([0] + h[0], ("L", h[1], t[2]))
    if t[1][0] == "L" and t[1][2]:
        return ([], subst(t[1][1], t[2]))
    h = admin_step(t[1])
    if h is not None:
        return ([1] + h[0], A(h[1], t[2]))
    h = admin_step(t[2])
    return None if h is None else ([2] + h[0], A(t[1], h[1]))


def free_indices(t, depth=0):
    if t[0] == "V":
        return Counter({t[1] - depth: 1}) if t[1] >= depth else Counter()
    if t[0] == "A":
        return free_indices(t[1], depth) + free_indices(t[2], depth)
    return free_indices(t[1], depth + 1)


def nonlinear_binders(t, path=(), depth=0):
    if t[0] == "V":
        return []
    if t[0] == "A":
        return (nonlinear_binders(t[1], path + (1,), depth)
                + nonlinear_binders(t[2], path + (2,), depth))
    fv = free_indices(t[1])
    here = []
    if fv[0] > 1:
        here = [dict(path=list(path), uses=fv[0],
                     captures=[i - 1 for i in fv if 0 < i <= depth])]
    return here + nonlinear_binders(t[1], path + (0,), depth + 1)


def lam_source(t):
    if t[0] == "V":
        return t[1]
    if t[0] == "A":
        return f"({lam_source(t[1])} {lam_source(t[2])})"
    return f"(\\{t[1]}. {lam_source(t[2])})"


def lean_term(t):
    if t[0] == "V":
        return f"(.var {t[1]})"
    if t[0] == "A":
        return f"(.app {lean_term(t[1])} {lean_term(t[2])})"
    return f"(.lam {lean_term(t[1])})"


def lean_trace(trace):
    return "[" + ", ".join(
        "[" + ", ".join([".under", ".left", ".right"][d] for d in path) + "]"
        for path in trace) + "]"


def build():
    original = bt.compile_lam((ROOT / "data/self-interpreter/machines/int165.lam").read_text())
    d, a = fresh(), fresh()
    named_term = A(L(d, translate(named(original), d), True),
                   L(a, A(V(a), V(a)), True))
    marked = debruijn(named_term)
    result = marked
    trace = []
    while (step := admin_step(result)) is not None:
        path, result = step
        trace.append(path)
        assert len(trace) < 10000, "administrative compiler failed to terminate"
    assert plain(result) == original
    term = plain(marked)
    nonlinear = nonlinear_binders(term)
    assert len(nonlinear) == 2
    assert all(not b["captures"] for b in nonlinear)
    return term, named_term, trace, nonlinear


def normal(t):
    if t[0] == "V":
        return True
    if t[0] == "L":
        return normal(t[1])
    return t[1][0] != "L" and normal(t[1]) and normal(t[2])


def build_normal(term):
    """Normalize only the affine body, keeping its free d rigid."""
    def mark_all(t):
        if t[0] == "V":
            return t
        if t[0] == "A":
            return A(mark_all(t[1]), mark_all(t[2]))
        return ("L", mark_all(t[1]), True)

    body = mark_all(term[1][1])
    trace = []
    while (step := admin_step(body)) is not None:
        path, body = step
        trace.append([1, 0] + path)
        assert len(trace) < 1000
    body = plain(body)
    assert not nonlinear_binders(body) and normal(body)
    d, c, s, b, r, k, x, y = (fresh() for _ in range(8))
    code = L(d, named(body, (d,)))
    true = L(x, L(y, V(x)))
    identity = L(x, V(x))
    delta = L(x, A(V(x), V(x)))
    rebuilt = L(k, apps(V(k), true, V(r)))
    root = L(c, L(s, A(V(s),
        L(b, L(r, apps(V(b), code, identity, delta, V(c), rebuilt))))))
    normal_term = plain(debruijn(root))
    nonlinear = nonlinear_binders(normal_term)
    assert normal(normal_term) and len(nonlinear) == 2
    assert all(not binder["captures"] for binder in nonlinear)
    return normal_term, root, plain(debruijn(code)), trace, nonlinear


def main():
    start = time.monotonic()
    term, named_term, trace, nonlinear = build()
    bits = bt.enc(term)
    proof = (ROOT / "lean/Blc/SelfintSharp.lean").read_text()
    assert f"def intL584 : Term := {lean_term(term)}\n" in proof
    assert f"def trace584 : List (List Direction) := {lean_trace(trace)}\n" in proof
    assert bt.compile_lam(lam_source(named_term)) == term
    (MACHINES / "int584_two_nonlinear.lam").write_text(
        "-- A direct affine translation of int165 with exactly two nonlinear binders.\n"
        + lam_source(named_term) + "\n")
    (MACHINES / "int584_two_nonlinear.blc").write_text(bits + "\n")
    ok, skipped, bad = bt.check(term, threads=2)
    assert (ok, skipped, len(bad)) == (667, 1, 0), bad
    report = dict(bits=len(bits), nonlinear=nonlinear,
                  administrative_beta_steps=len(trace),
                  reduces_to="literal int165",
                  battery=dict(ok=ok, skipped=skipped, failures=len(bad)),
                  seconds=round(time.monotonic() - start, 4))
    (RESULTS / "two_nonlinear.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))
    start_normal = time.monotonic()
    term742, root742, code742, trace742, nonlinear742 = build_normal(term)
    bits742 = bt.enc(term742)
    assert len(bits742) == 742
    assert f"def code742 : Term := {lean_term(code742)}\n" in proof
    lean742 = lean_term(term742).replace(lean_term(code742), "code742")
    assert f"def intL742 : Term := {lean742}\n" in proof
    assert f"def trace742 : List (List Direction) := {lean_trace(trace742)}\n" in proof
    assert bt.compile_lam(lam_source(root742)) == term742
    (MACHINES / "int742_two_nonlinear_normal.lam").write_text(
        "-- A beta-normal self-interpreter with exactly two closed nonlinear lambda subterms.\n"
        + lam_source(root742) + "\n")
    (MACHINES / "int742_two_nonlinear_normal.blc").write_text(bits742 + "\n")
    ok742, skipped742, bad742 = bt.check(term742, threads=2)
    assert (ok742, skipped742, len(bad742)) == (667, 1, 0), bad742
    report742 = dict(bits=len(bits742), beta_normal=True, nonlinear=nonlinear742,
                     affine_normalization_steps=len(trace742),
                     battery=dict(ok=ok742, skipped=skipped742, failures=len(bad742)),
                     seconds=round(time.monotonic() - start_normal, 4))
    (RESULTS / "two_nonlinear_normal.json").write_text(json.dumps(report742, indent=2) + "\n")
    print(json.dumps(report742, indent=2))


if __name__ == "__main__":
    main()
