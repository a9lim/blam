"""Exact circuit-level evidence for the native-CNOT Gate-2 route.

This is deliberately above the token machine.  It establishes that one clean
CNOT delta plus the already-native H/T blocks suffices for the required
Toffoli-class circuit grammar; it does *not* establish that the proposed
two-port token schedule is isometric or coherently compositional.
"""

from dataclasses import dataclass
from enum import Enum

from dw import INV_SQRT2, ONE, OMEGA, ZERO


class Kind(Enum):
    H = "H"
    T = "T"
    CX = "CX"


@dataclass(frozen=True)
class Gate:
    kind: Kind
    first: int
    second: int | None = None


def _check_gate(width, gate):
    assert 0 <= gate.first < width
    if gate.kind is Kind.CX:
        assert gate.second is not None
        assert 0 <= gate.second < width
        assert gate.first != gate.second
    else:
        assert gate.second is None


def apply_gate(width, state, gate):
    _check_gate(width, gate)
    assert len(state) == 1 << width
    out = [ZERO] * len(state)
    if gate.kind is Kind.H:
        wire = gate.first
        for source, amplitude in enumerate(state):
            bit = (source >> wire) & 1
            target = source ^ (1 << wire)
            out[source] = out[source] + amplitude * (
                -INV_SQRT2 if bit else INV_SQRT2)
            out[target] = out[target] + amplitude * INV_SQRT2
    elif gate.kind is Kind.T:
        wire = gate.first
        for source, amplitude in enumerate(state):
            out[source] = out[source] + amplitude * (
                OMEGA if (source >> wire) & 1 else ONE)
    else:
        control, target = gate.first, gate.second
        for source, amplitude in enumerate(state):
            image = source ^ (((source >> control) & 1) << target)
            out[image] = out[image] + amplitude
    return tuple(out)


def run(width, circuit, basis):
    state = tuple(ONE if index == basis else ZERO
                  for index in range(1 << width))
    for gate in circuit:
        state = apply_gate(width, state, gate)
    return state


def tdg(wire):
    # omega^7 = omega^-1; the source language needs no T-dagger primitive.
    return (Gate(Kind.T, wire),) * 7


def toffoli(control1, control2, target):
    # Exact no-ancilla Clifford+T synthesis.  T-dagger is expanded to T^7.
    return (
        Gate(Kind.H, target),
        Gate(Kind.CX, control2, target),
        *tdg(target),
        Gate(Kind.CX, control1, target),
        Gate(Kind.T, target),
        Gate(Kind.CX, control2, target),
        *tdg(target),
        Gate(Kind.CX, control1, target),
        Gate(Kind.T, control2),
        Gate(Kind.T, target),
        Gate(Kind.H, target),
        Gate(Kind.CX, control1, control2),
        Gate(Kind.T, control1),
        *tdg(control2),
        Gate(Kind.CX, control1, control2),
    )


def basis_image(width, circuit, source):
    state = run(width, circuit, source)
    support = [(index, amplitude) for index, amplitude in enumerate(state)
               if amplitude != ZERO]
    assert len(support) == 1 and support[0][1] == ONE
    return support[0][0]


def main():
    tof = toffoli(0, 1, 2)
    assert len(tof) == 33
    for source in range(8):
        expected = source ^ (
            (((source >> 0) & 1) & ((source >> 1) & 1)) << 2)
        assert basis_image(3, tof, source) == expected

    bell_uncompute = (
        Gate(Kind.H, 0),
        Gate(Kind.CX, 0, 1),
        Gate(Kind.CX, 0, 1),
        Gate(Kind.H, 0),
    )
    assert run(2, bell_uncompute, 0) == (ONE, ZERO, ZERO, ZERO)
    bell = run(2, bell_uncompute[:2], 0)
    assert bell == (INV_SQRT2, ZERO, ZERO, INV_SQRT2)

    # Nonlinear sequential reuse: a Toffoli target becomes a later control.
    reuse = tof + (Gate(Kind.CX, 2, 3),)
    for source in range(16):
        after_tof = source ^ (
            (((source >> 0) & 1) & ((source >> 1) & 1)) << 2)
        expected = after_tof ^ (((after_tof >> 2) & 1) << 3)
        assert basis_image(4, reuse, source) == expected

    print("QALC GATE2 ABSTRACT CNOT CIRCUIT: PASS")
    print("Toffoli synthesis: 2 H + 25 T + 6 CNOT; no ancilla")
    print("Bell uncompute and nonlinear target-as-control reuse: PASS")


if __name__ == "__main__":
    main()
