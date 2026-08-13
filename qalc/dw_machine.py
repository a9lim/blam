"""Exact cyclotomic evolution and Gram checks for the qALC reference kernel."""

from collections import deque

from dw import Dw, INV_SQRT2, ONE, OMEGA, ZERO, inner
from kernel import Done, Run, RunDone, init, step


def edge_coefficient(sign, denominator_power, rule):
    coefficient = Dw(sign)
    for _ in range(denominator_power):
        coefficient = coefficient.div_sqrt2()
    if rule == "fire-t1":
        coefficient = coefficient * OMEGA
    return coefficient


def step_dw(term, state, certificate=None):
    return [(edge_coefficient(sign, denominator, rule), rule, target)
            for sign, denominator, rule, target
            in step(term, state, certificate)]


def evolve_dw(term, certificate=None, max_steps=1000):
    start = next(iter(init(term)))
    state = {start: ONE}
    for time in range(max_steps):
        if all(isinstance(basis, Done) for basis in state):
            return time, state
        out = {}
        for basis, amplitude in state.items():
            for coefficient, _rule, target in step_dw(
                    term, basis, certificate):
                out[target] = out.get(target, ZERO) + amplitude * coefficient
        state = {basis: amplitude for basis, amplitude in out.items()
                 if amplitude != ZERO}
        norm = ZERO
        for amplitude in state.values():
            norm = norm + amplitude.norm_sq()
        assert norm == ONE, (time + 1, norm)
    raise RuntimeError("step cap")


def gram_dw(term, certificate=None, tick_depth=2, state_cap=100_000):
    start = next(iter(init(term)))
    seen, todo = {start}, deque([start])
    incoming = {}
    bad_norm = []
    while todo:
        source = todo.popleft()
        if isinstance(source, Done) and source.tick >= tick_depth:
            continue
        rows = step_dw(term, source, certificate)
        column = {}
        for coefficient, _rule, target in rows:
            column[target] = column.get(target, ZERO) + coefficient
            if target not in seen:
                seen.add(target)
                todo.append(target)
        norm = ZERO
        for target, coefficient in column.items():
            norm = norm + coefficient.norm_sq()
            incoming.setdefault(target, []).append((source, coefficient))
        if norm != ONE:
            bad_norm.append((source, norm))
        if len(seen) > state_cap:
            raise RuntimeError("state cap")
    dots = {}
    for target, columns in incoming.items():
        for left_index, (left, left_coefficient) in enumerate(columns):
            for right, right_coefficient in columns[left_index + 1:]:
                if left == right:
                    continue
                key = tuple(sorted((left, right), key=repr))
                dots[key] = dots.get(key, ZERO) + \
                    left_coefficient.conj() * right_coefficient
    nonorthogonal = [(left, right, value) for (left, right), value
                     in dots.items() if value != ZERO]
    return {"basis": len(seen), "nonunit": bad_norm,
            "nonorthogonal": nonorthogonal}


if __name__ == "__main__":
    from suite import CERTS, PROGRAMS
    from lam_iam import App, Gate, Lam, Var

    failures = 0
    for name, term in PROGRAMS.items():
        result = gram_dw(term, CERTS.get(name))
        bad = len(result["nonunit"]) + len(result["nonorthogonal"])
        failures += bad
        print(f"{name:9s} basis={result['basis']:4d} defects={bad}")
    assert failures == 0
    boolean_zero = Lam(Lam(Var(2)))
    boolean_one = Lam(Lam(Var(1)))
    invoke = lambda body: App(App(Lam(Lam(body)), Gate("h")), Gate("t"))
    phase_zero = invoke(App(Var(1), boolean_zero))
    phase_one = invoke(App(Var(1), boolean_one))
    hth_zero = invoke(App(Var(2), App(Var(1), App(Var(2), boolean_zero))))
    for name, term in (("T0", phase_zero), ("T1", phase_one),
                       ("HTH0", hth_zero)):
        result = gram_dw(term)
        assert not result["nonunit"] and not result["nonorthogonal"]
        _time, final = evolve_dw(term)
        amplitudes = {state.kind: amplitude for state, amplitude in final.items()}
        if name == "T0":
            assert amplitudes == {"halt0": ONE}
        elif name == "T1":
            assert amplitudes == {"halt1": OMEGA}
        else:
            assert amplitudes == {
                "halt0": Dw(1, 1, 0, 0, 2),
                "halt1": Dw(1, -1, 0, 0, 2),
            }
        print(f"{name:9s} basis={result['basis']:4d} exact={amplitudes}")
    print("QALC DW GRAM: PASS")
