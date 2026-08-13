"""Exact Bell-uncompute probes for the accepted native-CNOT extension.

These finite checks remain independent evidence inside the authoritative
Gate-2 battery. The unbounded predecessor, WF, coloring, admission, and clean
compilation obligations are discharged by the Lean theorem surface.
"""

from collections import defaultdict
from dataclasses import dataclass
import hashlib

from dw import Dw
from lam_iam import App, Gate, Lam, Var, show
import readback
from readback import NFDone, nf_show
import readback_certify
import readback_checks
from semantics import rho
from certify import transparent

import gate2_cnot_shadow


@dataclass(frozen=True)
class V:
    name: str


@dataclass(frozen=True)
class L:
    name: str
    body: object


@dataclass(frozen=True)
class A:
    function: object
    argument: object


def apps(function, *arguments):
    for argument in arguments:
        function = A(function, argument)
    return function


def lam(names, body):
    for name in reversed(names):
        body = L(name, body)
    return body


def lower(term, environment=()):
    if isinstance(term, V):
        return Var(environment.index(term.name) + 1)
    if isinstance(term, L):
        return Lam(lower(term.body, (term.name,) + environment))
    if isinstance(term, A):
        return App(lower(term.function, environment),
                   lower(term.argument, environment))
    raise TypeError(term)


ZERO = lam(("x", "y"), V("x"))

# These are emitted structurally by the two-wire witness compiler below.  The
# final H consumes the second CNOT's control handle and must erase exactly its
# matching replay frame.  Different output contexts move the H fire position
# but do not change the CNOT invocation key.
SECOND_CNOT_INSTANCE = (
    "L", tuple("fffbbbabbfff"), ())
SCALAR_FINAL_H = tuple("fffbbbabbabba")
PAIR_FINAL_H = tuple("fffbbbabbabbbfaa")


def final_h_certificate(output_pair):
    position = PAIR_FINAL_H if output_pair else SCALAR_FINAL_H
    return {position: frozenset({("c1", SECOND_CNOT_INSTANCE)})}


def cnot(control, target, continuation):
    return apps(V("c"), control, target, continuation)


def invoke(body):
    shell = lower(lam(("h", "t", "c"), body))
    return App(App(App(shell, Gate("h")), Gate("t")), Gate("c"))


def bell_uncompute(output_pair=False):
    final_control = apps(V("h"), V("a2"))
    if output_pair:
        result = lam(("k",), apps(V("k"), final_control, V("b2")))
    else:
        result = final_control
    second = lam(("a2", "b2"), result)
    first = lam(("a1", "b1"), cnot(V("a1"), V("b1"), second))
    return invoke(cnot(apps(V("h"), ZERO), ZERO, first))


def bell_pair():
    pair = lam(("a", "b"),
               lam(("k",), apps(V("k"), V("a"), V("b"))))
    return invoke(cnot(apps(V("h"), ZERO), ZERO, pair))


def summarize(final):
    blocks = defaultdict(list)
    for state, amplitude in final.items():
        assert isinstance(state, NFDone)
        garbage_hash = hashlib.sha256(
            repr(state.garbage).encode()).hexdigest()[:12]
        blocks[(garbage_hash, state.tick)].append(
            (state.kind,
             None if state.output is None else nf_show(state.output),
             amplitude))
    return blocks


def probe(term, certificate=None, max_steps=20_000):
    # readback.nf_step resolves this module global dynamically.  The accepted
    # Gate-1 kernel remains untouched on disk and every non-c row is delegated
    # by gate2_cnot_shadow.step.
    readback.step = gate2_cnot_shadow.step
    readback.nf_step = gate2_cnot_shadow.nf_step
    readback_certify.nf_step = gate2_cnot_shadow.nf_step
    readback_checks.nf_step = gate2_cnot_shadow.nf_step
    time, final = readback.evolve_nf(
        term, certificate=certificate, max_steps=max_steps)
    blocks = summarize(final)
    print("term chars", len(show(term)))
    print("terminal time", time, "support", len(final), "blocks", len(blocks))
    for block, outcomes in blocks.items():
        print(block, outcomes)
    print("rho entries", len(rho(final)))
    return time, final, blocks


def finite_admission_checks(term, certificate):
    carrier = readback_certify.composed_carrier(
        term, certificate, state_cap=100_000)
    assert not carrier["stuck"]
    assert not carrier["recall_collisions"]
    assert not carrier["pop_collisions"]
    assert all(position in carrier["arrivals"]
               and transparent(carrier["arrivals"][position], popkeys)
               for position, popkeys in certificate.items())
    gram = readback_checks.reachable_gram(
        term, certificate, state_cap=100_000)
    assert not gram["nonunit"] and not gram["nonorthogonal"]
    return len(carrier["states"]), gram["basis"]


def main():
    print("native CNOT Bell state, two-wire output")
    time, final, blocks = probe(bell_pair())
    assert time == 89 and len(final) == 2 and len(blocks) == 1
    assert {nf_show(state.output) for state in final} == {
        "\\((1 \\\\2) \\\\2)", "\\((1 \\\\1) \\\\1)"}
    assert all(state.kind == ("halt",) and state.tick == 0
               for state in final)
    assert all(amplitude == Dw(1, 0, 0, 0, 1)
               for amplitude in final.values())
    assert len(rho(final)) == 4
    assert finite_admission_checks(bell_pair(), {}) == (150, 150)

    print("native CNOT Bell-uncompute, scalar output, no certificate")
    _time, _final, dirty = probe(bell_uncompute(False))
    assert len(dirty) == 2

    print("native CNOT Bell-uncompute, scalar output, compiler certificate")
    time, final, blocks = probe(
        bell_uncompute(False), final_h_certificate(False))
    assert time == 117 and len(final) == 1 and len(blocks) == 1
    state, amplitude = next(iter(final.items()))
    assert state.kind == ("halt",) and nf_show(state.output) == "\\\\2"
    assert state.tick == 0 and amplitude == Dw(1, 0, 0, 0, 0)
    carrier_basis, gram_basis = finite_admission_checks(
        bell_uncompute(False), final_h_certificate(False))
    assert (carrier_basis, gram_basis) == (206, 206)

    print("native CNOT Bell-uncompute, two-wire output, compiler certificate")
    time, final, blocks = probe(
        bell_uncompute(True), final_h_certificate(True))
    assert time == 135 and len(final) == 1 and len(blocks) == 1
    state, amplitude = next(iter(final.items()))
    assert state.kind == ("halt",)
    assert nf_show(state.output) == "\\((1 \\\\2) \\\\2)"
    assert state.tick == 0 and amplitude == Dw(1, 0, 0, 0, 0)
    carrier_basis, gram_basis = finite_admission_checks(
        bell_uncompute(True), final_h_certificate(True))
    assert (carrier_basis, gram_basis) == (242, 242)
    print("QALC GATE2 NATIVE-CNOT BELL UNCOMPUTE: CLEAN SHADOW WITNESS")


if __name__ == "__main__":
    main()
