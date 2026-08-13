"""Independent batteries for the qALC full-normal-form controller."""

from collections import deque
from fractions import Fraction
from functools import lru_cache

from dw import ONE, ZERO
from dw_machine import edge_coefficient
from kernel import Gate
from lam_iam import App, Lam, Var, show
from readback import (ExactScopeResidue, NFApp, NFDone, NFGate, NFLam,
                      NFRun, NFRunDone, NFVar, TerminalGarbage, Zipper,
                      enter_predecessor, evolve_nf, nf_init, nf_show, nf_step,
                      neutral_probe_predecessor, return_predecessor,
                      terminal_predecessor)


class ReductionLimit(Exception):
    pass


def probability_string(value):
    value = value.reduce()
    if value.b or value.c or value.d or value.k % 2:
        raise AssertionError(("non-rational probability", value))
    return str(Fraction(value.a, 2 ** (value.k // 2)))


def shift(term, amount, cutoff=0):
    if isinstance(term, Var):
        return Var(term.i + amount) if term.i > cutoff else term
    if isinstance(term, Lam):
        return Lam(shift(term.body, amount, cutoff + 1))
    if isinstance(term, App):
        return App(shift(term.f, amount, cutoff),
                   shift(term.a, amount, cutoff))
    if isinstance(term, Gate):
        return term
    raise TypeError(term)


def substitute_top(body, argument):
    """Remove the outer binder from ``body`` using 1-indexed de Bruijn."""
    def walk(term, depth):
        if isinstance(term, Var):
            if term.i == depth + 1:
                return shift(argument, depth)
            if term.i > depth + 1:
                return Var(term.i - 1)
            return term
        if isinstance(term, Lam):
            return Lam(walk(term.body, depth + 1))
        if isinstance(term, App):
            return App(walk(term.f, depth), walk(term.a, depth))
        if isinstance(term, Gate):
            return term
        raise TypeError(term)
    return walk(body, 0)


def normal_form(term, budget=20_000):
    """Independent leftmost-outermost reducer for pure λ-terms."""
    remaining = [budget]

    def spend():
        remaining[0] -= 1
        if remaining[0] < 0:
            raise ReductionLimit

    def whnf(current):
        while isinstance(current, App):
            function = whnf(current.f)
            if not isinstance(function, Lam):
                return App(function, current.a)
            spend()
            current = substitute_top(function.body, current.a)
        return current

    def strong(current):
        current = whnf(current)
        if isinstance(current, Var):
            return current
        if isinstance(current, Lam):
            return Lam(strong(current.body))
        if isinstance(current, App):
            return App(strong(current.f), strong(current.a))
        if isinstance(current, Gate):
            return current
        raise TypeError(current)

    return strong(term)


def as_output(term):
    if isinstance(term, Var):
        return NFVar(term.i)
    if isinstance(term, Lam):
        return NFLam(as_output(term.body))
    if isinstance(term, App):
        return NFApp(as_output(term.f), as_output(term.a))
    if isinstance(term, Gate):
        return NFGate(term.name)
    raise TypeError(term)


@lru_cache(None)
def closed_terms(size, depth=0):
    terms = []
    if size == 1:
        terms.extend(Var(index) for index in range(1, depth + 1))
    if size >= 2:
        terms.extend(Lam(body) for body in closed_terms(size - 1, depth + 1))
    for function_size in range(1, size - 1):
        argument_size = size - 1 - function_size
        for function in closed_terms(function_size, depth):
            for argument in closed_terms(argument_size, depth):
                terms.append(App(function, argument))
    return tuple(terms)


def pure_conservativity(max_size=11):
    checked = 0
    for size in range(2, max_size + 1):
        for term in closed_terms(size):
            try:
                expected = as_output(normal_form(term))
            except (ReductionLimit, RecursionError):
                continue
            _time, final = evolve_nf(term, max_steps=20_000)
            if len(final) != 1:
                raise AssertionError(("branched pure term", show(term), final))
            done = next(iter(final))
            if done.kind != ("halt",) or done.output != expected:
                raise AssertionError((show(term), nf_show(expected), done))
            checked += 1
    return checked


def pure_orthonormality(max_size=9):
    checked = 0
    basis = 0
    for size in range(2, max_size + 1):
        for term in closed_terms(size):
            try:
                normal_form(term)
            except (ReductionLimit, RecursionError):
                continue
            result = reachable_gram(term, state_cap=10_000)
            if result["nonunit"] or result["nonorthogonal"]:
                raise AssertionError((show(term), result))
            checked += 1
            basis += result["basis"]
    return checked, basis


def reachable_gram(term, certificate=None, tick_depth=2,
                   state_cap=300_000):
    start = nf_init(term)
    seen, todo = {start}, deque([start])
    incoming = {}
    nonunit = []
    while todo:
        source = todo.popleft()
        if isinstance(source, NFDone) and source.tick >= tick_depth:
            continue
        rows = nf_step(term, source, certificate)
        column = {}
        for sign, denominator, rule, target in rows:
            coefficient = edge_coefficient(sign, denominator, rule)
            column[target] = column.get(target, ZERO) + coefficient
            if rule == "rootdone":
                rebuilt = terminal_predecessor(target.output, target.garbage)
                if rebuilt != source:
                    raise AssertionError(
                        ("rootdone inverse", source, target, rebuilt))
            if rule == "enter":
                rebuilt = enter_predecessor(term, target)
                if rebuilt != source:
                    raise AssertionError(
                        ("enter inverse", source, target, rebuilt))
            if rule == "return":
                rebuilt = return_predecessor(term, target)
                if rebuilt != source:
                    raise AssertionError(
                        ("return inverse", source, target, rebuilt))
            if rule == "head-neutral-gate":
                rebuilt = neutral_probe_predecessor(term, target)
                if rebuilt != source:
                    raise AssertionError(
                        ("neutral inverse", source, target, rebuilt))
            if target not in seen:
                seen.add(target)
                todo.append(target)
        norm = ZERO
        for target, coefficient in column.items():
            norm += coefficient.norm_sq()
            incoming.setdefault(target, []).append((source, coefficient))
        if norm != ONE:
            nonunit.append((source, norm))
        if len(seen) > state_cap:
            raise ReductionLimit(("state cap", len(seen)))

    dots = {}
    for columns in incoming.values():
        for index, (left, left_coefficient) in enumerate(columns):
            for right, right_coefficient in columns[index + 1:]:
                if left == right:
                    continue
                pair = tuple(sorted((left, right), key=repr))
                dots[pair] = (dots.get(pair, ZERO)
                              + left_coefficient.conj() * right_coefficient)
    nonorthogonal = [(left, right, value)
                     for (left, right), value in dots.items()
                     if value != ZERO]
    return {"basis": len(seen), "nonunit": nonunit,
            "nonorthogonal": nonorthogonal}


def halt_distribution(final):
    distribution = {}
    for state, amplitude in final.items():
        if isinstance(state, NFDone) and state.kind == ("halt",):
            distribution[state.output] = (
                distribution.get(state.output, ZERO) + amplitude.norm_sq())
    return distribution


def canonical_battery():
    from suite import CERTS, PHYSICS, PROGRAMS

    zero = as_output(Lam(Lam(Var(2))))
    one = as_output(Lam(Lam(Var(1))))
    identity = as_output(Lam(Var(1)))
    dup_zero = as_output(Lam(Lam(Lam(Var(2)))))
    dup_one = as_output(Lam(Lam(Lam(Var(1)))))
    full_nf_physics = {
        name: ({zero: wanted.get("halt0", "0"),
                one: wanted.get("halt1", "0"),
                identity: wanted.get("haltI", "0"),
                "err": wanted.get("err", "0")})
        for name, (wanted, _provenance) in PHYSICS.items()
    }
    # The kernel's one-bit root observer names the two noncanonical normal
    # forms of `dup` halt0/halt1. Full readback exposes what they actually are.
    full_nf_physics["dup"] = {
        dup_zero: "1/4", dup_one: "1/4", identity: "1/2", "err": "0"}

    count = 0
    for name, term in PROGRAMS.items():
        result = reachable_gram(term, CERTS.get(name))
        if result["nonunit"] or result["nonorthogonal"]:
            raise AssertionError((name, result))
        _time, final = evolve_nf(term, CERTS.get(name))
        observed_nf = {}
        for state, amplitude in final.items():
            if not isinstance(state, NFDone):
                raise AssertionError((name, "nonterminal", state))
            if state.kind[0] == "error":
                output = "err"
            else:
                output = state.output
            observed_nf[output] = (observed_nf.get(output, ZERO)
                                   + amplitude.norm_sq())
        observed_nf = {output: probability_string(mass)
                       for output, mass in observed_nf.items()}
        wanted_nf = {output: mass
                     for output, mass in full_nf_physics[name].items()
                     if mass != "0"}
        if observed_nf != wanted_nf:
            raise AssertionError(
                (name, "full-NF readback physics", observed_nf, wanted_nf))

        kernel_projection = {
            zero: "halt0", one: "halt1", identity: "haltI",
            dup_zero: "halt0", dup_one: "halt1", "err": "err"}
        observed_kernel = {}
        for output, mass in observed_nf.items():
            label = kernel_projection[output]
            observed_kernel[label] = str(
                Fraction(observed_kernel.get(label, "0")) + Fraction(mass))
        wanted_kernel = PHYSICS[name][0]
        if observed_kernel != wanted_kernel:
            raise AssertionError((name, "kernel-output projection",
                                  observed_kernel, wanted_kernel))
        count += result["basis"]

    zero = Lam(Lam(Var(2)))
    one = Lam(Lam(Var(1)))
    invoke = lambda body: App(App(Lam(Lam(body)), Gate("h")), Gate("t"))
    phase_zero = invoke(App(Var(1), zero))
    phase_one = invoke(App(Var(1), one))
    hth_zero = invoke(App(Var(2), App(Var(1), App(Var(2), zero))))
    expected = {
        "T0": {as_output(zero): ONE},
        "T1": {as_output(one): ONE},
    }
    # T's phase is invisible to the output probability but remains exact in
    # the terminal amplitude.  HTH has probabilities |1±omega|²/4.
    from dw import Dw, OMEGA
    for name, term in (("T0", phase_zero), ("T1", phase_one),
                       ("HTH0", hth_zero)):
        result = reachable_gram(term)
        if result["nonunit"] or result["nonorthogonal"]:
            raise AssertionError((name, result))
        _time, final = evolve_nf(term)
        distribution = halt_distribution(final)
        amplitudes = {state.output: amplitude
                      for state, amplitude in final.items()
                      if isinstance(state, NFDone)
                      and state.kind == ("halt",)}
        if name in ("T0", "T1"):
            wanted = expected[name]
            wanted_amplitudes = ({as_output(zero): ONE} if name == "T0"
                                 else {as_output(one): OMEGA})
        else:
            wanted = {
                as_output(zero): Dw(1, 1, 0, 0, 2).norm_sq(),
                as_output(one): Dw(1, -1, 0, 0, 2).norm_sq(),
            }
            wanted_amplitudes = {
                as_output(zero): Dw(1, 1, 0, 0, 2),
                as_output(one): Dw(1, -1, 0, 0, 2),
            }
        if distribution != wanted:
            raise AssertionError((name, distribution, wanted))
        if amplitudes != wanted_amplitudes:
            raise AssertionError((name, amplitudes, wanted_amplitudes))
        count += result["basis"]
    return count


def divergence_battery(steps=1000):
    omega_body = App(Var(1), Var(1))
    omega = App(Lam(omega_body), Lam(omega_body))
    terms = (omega, Lam(omega))
    for term in terms:
        state = {nf_init(term): ONE}
        for _ in range(steps):
            out = {}
            for basis, amplitude in state.items():
                if isinstance(basis, (NFRunDone, NFDone)):
                    raise AssertionError(("divergence entered terminal", term,
                                          basis))
                for sign, denominator, rule, target in nf_step(term, basis):
                    coefficient = edge_coefficient(sign, denominator, rule)
                    out[target] = out.get(target, ZERO) + amplitude * coefficient
            state = {basis: amplitude for basis, amplitude in out.items()
                     if amplitude != ZERO}
    return len(terms) * steps


def terminal_battery():
    from readback import NFRunDone

    # p = λh.λt. h h: the gate interrogates a non-boolean gate constant.
    bad_program = Lam(Lam(App(Var(2), Var(2))))
    invocation = App(App(bad_program, Gate("h")), Gate("t"))
    _time, final = evolve_nf(invocation)
    if len(final) != 1:
        raise AssertionError(("error branch count", final))
    done, amplitude = next(iter(final.items()))
    if (not isinstance(done, NFDone) or done.kind[0] != "error"
            or amplitude.norm_sq() != ONE):
        raise AssertionError(("typed error", done, amplitude))
    first = nf_step(invocation, done)[0][3]
    second = nf_step(invocation, first)[0][3]
    if (first.kind != done.kind or first.garbage != done.garbage
            or first.tick != done.tick + 1
            or second.tick != first.tick + 1):
        raise AssertionError(("error invariant", done, first, second))

    identity = Lam(Var(1))
    _time, halt = evolve_nf(identity)
    halted = next(iter(halt))
    first_halt = nf_step(identity, halted)[0][3]
    if (first_halt.kind != halted.kind
            or first_halt.output != halted.output
            or first_halt.garbage != halted.garbage
            or first_halt.tick != halted.tick + 1):
        raise AssertionError(("halt invariant", halted, first_halt))

    # The root guard must remain total on a noncanonical binder tuple.  The
    # virtual compression branch is then forbidden and the exact predecessor
    # prefix/binders are retained.  This is a fallback, not a reachable-shape
    # claim.
    from suite import CERTS, PROGRAMS
    term = PROGRAMS["lone"]
    seen, todo = {nf_init(term)}, deque([nf_init(term)])
    checked_fallback = False
    while todo and not checked_fallback:
        source = todo.popleft()
        for _sign, _denominator, rule, target in nf_step(
                term, source, CERTS.get("lone")):
            if (rule == "rootdone" and isinstance(source, NFRun)
                    and len(source.zipper.binders) >= 2):
                reversed_zipper = Zipper(
                    source.zipper.tree, source.zipper.cursor,
                    tuple(reversed(source.zipper.binders)),
                    source.zipper.residues)
                noncanonical = NFRun(source.token, reversed_zipper)
                rows = nf_step(term, noncanonical, CERTS.get("lone"))
                if len(rows) != 1 or rows[0][2] != "rootdone":
                    raise AssertionError(("noncanonical root not total", rows))
                fallback = rows[0][3]
                if (not isinstance(fallback.garbage, TerminalGarbage)
                        or not isinstance(
                            fallback.garbage.carrier, ExactScopeResidue)):
                    raise AssertionError(("noncanonical root compressed",
                                          fallback.garbage))
                if terminal_predecessor(
                        fallback.output, fallback.garbage) != noncanonical:
                    raise AssertionError("noncanonical root inverse")
                checked_fallback = True
                break
            if target not in seen:
                seen.add(target)
                todo.append(target)
    if not checked_fallback:
        raise AssertionError("missing noncanonical root fixture")
    return 3


def semantic_battery(max_steps=10_000):
    """The canonical, term-determined U is norm conserving and monotone."""
    from semantics import error_mass, evolve, halt_mass, running_mass, select
    from suite import PROGRAMS

    def rational(value):
        value = value.reduce()
        if value.b or value.c or value.d or value.k % 2:
            raise AssertionError(("non-rational mass", value))
        return Fraction(value.a, 2 ** (value.k // 2))

    transitions = 0
    for name, term in PROGRAMS.items():
        sector = select(term)
        if sector.admission is None:
            raise AssertionError((name, "canonical sector not admitted"))
        prior_halt = Fraction(0)
        terminated = False
        for time, vector in evolve(sector, max_steps):
            halt = rational(halt_mass(vector))
            error = rational(error_mass(vector))
            running = rational(running_mass(vector))
            if halt + error + running != 1:
                raise AssertionError((name, time, halt, error, running))
            if halt < prior_halt:
                raise AssertionError((name, "halt mass decreased", time,
                                      prior_halt, halt))
            prior_halt = halt
            certificate = sector.admission.certificate()
            for state in vector:
                if not isinstance(state, NFDone):
                    continue
                wanted = NFDone(state.kind, state.output, state.garbage,
                                state.tick + 1)
                if nf_step(term, state, certificate) != [
                        (1, 0, "tick", wanted)]:
                    raise AssertionError((name, "terminal block moved",
                                          time, state))
            if all(isinstance(state, NFDone) for state in vector):
                transitions += time
                terminated = True
                break
        if not terminated:
            raise AssertionError((name, "canonical U did not terminate"))
    return len(PROGRAMS), transitions


def coherence_battery():
    from semantics import rho
    from suite import CERTS, PROGRAMS
    from dw import INV_SQRT2

    _time, lone = evolve_nf(PROGRAMS["lone"], CERTS.get("lone"))
    lone_rho = rho(lone)
    zero = as_output(Lam(Lam(Var(2))))
    one = as_output(Lam(Lam(Var(1))))
    half = INV_SQRT2.norm_sq()
    expected_lone = {(left, right): half
                     for left in (zero, one) for right in (zero, one)}
    if lone_rho != expected_lone:
        raise AssertionError(("lone H dephased", lone_rho))

    _time, selector = evolve_nf(
        PROGRAMS["selector"], CERTS.get("selector"))
    selector_rho = rho(selector)
    if selector_rho != {(zero, zero): half, (one, one): half}:
        raise AssertionError(("selector failed to decohere", selector_rho))
    return 2


def neutral_gate_battery():
    from gate1_programs import (NEUTRAL_CERTIFICATES, NEUTRAL_PROGRAMS)
    from readback_certify import composed_carrier, validate_nf

    # Bare and applied gate constants are ordinary normal forms.  These three
    # sectors cover both HEAD-GATE and HEAD-NEUTRAL-GATE and are exported to
    # Lean alongside the delta/readback sectors.
    expected = {
        "neutral-bare-t": "t",
        "neutral-H1": "\\(h 1)",
        "neutral-H2": "\\\\((h 2) 1)",
    }
    for name, invocation in NEUTRAL_PROGRAMS.items():
        certificate = NEUTRAL_CERTIFICATES[name]
        gram = reachable_gram(invocation, certificate)
        if gram["nonunit"] or gram["nonorthogonal"]:
            raise AssertionError(("neutral Gram", gram))
        carrier = composed_carrier(invocation, certificate)
        wanted_rule = ("head-gate" if name == "neutral-bare-t"
                       else "head-neutral-gate")
        if wanted_rule not in carrier["rules"]:
            raise AssertionError((name, "missing neutral row", wanted_rule))
        validation = validate_nf(invocation, certificate)
        if not validation["certified"]:
            raise AssertionError((name, "neutral validation", validation))
        _time, final = evolve_nf(invocation, certificate)
        if len(final) != 1:
            raise AssertionError(("neutral branch count", final))
        done = next(iter(final))
        if done.kind != ("halt",) or nf_show(done.output) != expected[name]:
            raise AssertionError(("neutral gate", expected[name], done))

    # A closed non-boolean argument is a semantic error, not a neutral.
    bad = Lam(Lam(App(Var(2), Lam(Var(1)))))
    invocation = App(App(bad, Gate("h")), Gate("t"))
    gram = reachable_gram(invocation)
    if gram["nonunit"] or gram["nonorthogonal"]:
        raise AssertionError(("error Gram", gram))
    _time, final = evolve_nf(invocation)
    done = next(iter(final))
    if done.kind[0] != "error":
        raise AssertionError(("closed nonboolean gate argument", done))
    return len(NEUTRAL_PROGRAMS) + 1


def mixed_gate_readback_battery():
    """Exercise delta, ENTER, RBL/RB, RETURN, and halt in one sector."""
    from dw import INV_SQRT2, OMEGA
    from gate1_programs import (MIXED_CERTIFICATES, MIXED_PROGRAMS,
                                STRESS_CERTIFICATES, STRESS_PROGRAMS)
    from readback_certify import composed_carrier, validate_nf

    expected_rules = {
        "mixed-H-arg": {"fire-h", "enter", "return", "rootdone", "halt"},
        "mixed-T-arg": {"fire-t1", "enter", "return", "rootdone", "halt"},
    }
    expected_amplitudes = {
        "mixed-H-arg": {
            "\\(1 \\\\2)": INV_SQRT2,
            "\\(1 \\\\1)": INV_SQRT2,
        },
        "mixed-T-arg": {"\\(1 \\\\1)": OMEGA},
    }
    total_basis = 0
    for name, term in MIXED_PROGRAMS.items():
        certificate = MIXED_CERTIFICATES[name]
        carrier = composed_carrier(term, certificate)
        missing = expected_rules[name] - carrier["rules"]
        if missing:
            raise AssertionError((name, "missing mixed rules", missing))
        validation = validate_nf(term, certificate)
        if not validation["certified"]:
            raise AssertionError((name, "mixed validation", validation))
        _time, final = evolve_nf(term, certificate)
        amplitudes = {
            nf_show(state.output): amplitude
            for state, amplitude in final.items()
            if isinstance(state, NFDone) and state.kind == ("halt",)
        }
        if amplitudes != expected_amplitudes[name]:
            raise AssertionError((name, amplitudes, expected_amplitudes[name]))
        total_basis += validation["basis"]
    required = {"enter", "return", "rootdone", "halt"}
    for name, term in STRESS_PROGRAMS.items():
        certificate = STRESS_CERTIFICATES[name]
        carrier = composed_carrier(term, certificate)
        if not ({"fire-h", "fire-t1"} & carrier["rules"]):
            raise AssertionError((name, "no delta fired", carrier["rules"]))
        missing = required - carrier["rules"]
        if missing:
            raise AssertionError((name, "missing stress rules", missing))
        validation = validate_nf(term, certificate)
        if not validation["certified"]:
            raise AssertionError((name, "stress validation", validation))
        total_basis += validation["basis"]
    return len(MIXED_PROGRAMS) + len(STRESS_PROGRAMS), total_basis


if __name__ == "__main__":
    pure = pure_conservativity()
    pure_gram, pure_basis = pure_orthonormality()
    basis = canonical_battery()
    divergence = divergence_battery()
    terminals = terminal_battery()
    semantic_programs, semantic_steps = semantic_battery()
    coherence = coherence_battery()
    neutral = neutral_gate_battery()
    mixed, mixed_basis = mixed_gate_readback_battery()
    print(f"QALC READBACK CHECKS: PASS pure={pure} "
          f"pure_gram={pure_gram}/{pure_basis} basis={basis} "
          f"divergence_steps={divergence} terminal_sectors={terminals} "
          f"coherence={coherence} neutral={neutral} "
          f"mixed={mixed}/{mixed_basis} "
          f"semantic={semantic_programs}/{semantic_steps}")
