"""Pinned-gauge coloring check for the accepted native-CNOT rows.

The raw-kernel weights remain fixed. This file enumerates
every binary weight assignment for the new raw mark species and checks the
Run-to-Run flip/encoded-fire law on the compiled Toffoli and nonlinear-reuse
carriers.  Full-NF port delivery is a composed-controller boundary and is
excluded from this raw polarity theorem; its exact inverse and Gram are
checked in ``gate2_compiler_check.py``.
"""

from itertools import product

from kernel import classify_arrival
from polarity import phi, w
import readback
import readback_certify

import gate2_cnot_shadow as shadow
from gate2_compiler import (Circuit, Kind, Op, compile_circuit,
                            compiler_certificate, toffoli)


MARKS = ("CG", "CM", "CP", "CH", "CQ",
         "CD0", "CD1", "CA", "CR", "CV", "CS")


def entry_profile(entry, out):
    if shadow.is_cgam(entry):
        out[0] ^= 1
        return
    if shadow.is_cmu(entry):
        out[1] ^= 1
        return
    if shadow.is_cp(entry):
        out[2] ^= 1
        return
    if shadow.is_ch(entry):
        out[3] ^= 1
        return
    if shadow.is_cquery(entry):
        out[4] ^= 1
        return
    if shadow.is_cdead(entry):
        out[5 + entry[5]] ^= 1
        return
    if shadow.is_cstage(entry):
        out[10] ^= 1
        return
    if (isinstance(entry, tuple) and len(entry) == 5
            and entry[0] == "AL" and entry[1] in ("c1", "c2")):
        out[7] ^= 1
        return
    if (isinstance(entry, tuple) and len(entry) == 5
            and entry[0] == "R" and entry[1] in ("c1", "c2")):
        out[8] ^= 1
        return
    # Logged positions are the sole recursively nested carrier alphabet.
    # Instance keys and the new CP/CH/CQ/CD records are atomic predecessor
    # coordinates, as in the accepted profile's treatment of alpha/K/KD.
    if (isinstance(entry, tuple) and len(entry) == 3
            and entry[0] == "L"):
        for nested in entry[2]:
            entry_profile(nested, out)


def state_profile(state):
    token = readback._kernel_token(state.token)
    out = [0] * len(MARKS)
    for register in (token.tape, token.log, token.rs, token.ks):
        for entry in register:
            entry_profile(entry, out)
    if (token.vb is not None and token.vb[0] in ("c1", "c2")):
        out[9] ^= 1
    for residue in state.zipper.residues:
        if (isinstance(residue, readback.VirtualScopeResidue)
                and residue.gate in ("c1", "c2")):
            # Child RETURN moves, rather than kills, the virtual alpha
            # individual into exact readback residue.
            out[7] ^= 1
    return tuple(out)


def descriptor_weight(term, descriptor):
    if descriptor[0] == "DL":
        return w(term, descriptor[1])
    if descriptor[0] == "DA":
        return 0
    raise ValueError(("CNOT descriptor", descriptor))


def residue_base(term, state):
    """Fixed predecessor-fibre weight, analogous to accepted K2=w(lp)."""
    total = 0
    token = readback._kernel_token(state.token)
    for entry in token.ks:
        if shadow.is_cp(entry):
            total += descriptor_weight(term, entry[3])
        elif shadow.is_ch(entry):
            total += descriptor_weight(term, entry[2])
            total += descriptor_weight(term, entry[4])
        elif shadow.is_cquery(entry):
            total += w(term, entry[3])
        elif shadow.is_cdead(entry):
            total += w(term, entry[4])
    return total % 2


def edge_equations(compiled, certificate, state_cap):
    readback.step = shadow.step
    readback.nf_step = shadow.nf_step
    readback_certify.nf_step = shadow.nf_step
    carrier = readback_certify.composed_carrier(
        compiled.term, certificate, state_cap=state_cap)
    equations = []
    rule_counts = {}
    base_failures = []
    for target, incoming in carrier["incoming"].items():
        for source, rule in incoming:
            if not isinstance(source, readback.NFRun) \
                    or not isinstance(target, readback.NFRun):
                continue
            left = readback._kernel_token(source.token)
            right = readback._kernel_token(target.token)
            delta = tuple(a ^ b for a, b in zip(
                state_profile(source), state_profile(target)))
            # Accepted composed/readback rows with no new-mark delta cannot
            # constrain the extension gauge; their own coloring is already a
            # Gate-1 obligation checked by the accepted battery.
            if rule not in shadow.CUSTOM_RULES and not any(delta):
                continue
            base = (phi(compiled.term, right)
                    - phi(compiled.term, left)) % 2
            if rule in shadow.CUSTOM_RULES:
                expected = 1
            elif rule == "fire-h" and certificate \
                    and left.path in certificate:
                arrival = classify_arrival(left.tape)
                expected = (1 - w(compiled.term, arrival[1])) % 2
            else:
                expected = 1
            equations.append((delta, (expected - base) % 2, rule))
            rule_counts[rule] = rule_counts.get(rule, 0) + 1
            if not any(delta) and base != expected:
                base_failures.append((rule, left, right, base, expected))
    return carrier, equations, rule_counts, base_failures


def passing_weights(equations):
    passing = []
    for weights in product((0, 1), repeat=len(MARKS)):
        if all(sum(weight * bit for weight, bit in zip(weights, delta)) % 2
               == rhs for delta, rhs, _rule in equations):
            passing.append(weights)
    return passing


def main():
    circuits = (
        Circuit(3, toffoli(0, 1, 2)),
        Circuit(4, toffoli(0, 1, 2) + (Op(Kind.CX, 2, 3),)),
    )
    equations = []
    bases = []
    excluded_counts = {}
    for circuit in circuits:
        compiled = compile_circuit(circuit)
        certificate = compiler_certificate(compiled)
        carrier, local, counts, failures = edge_equations(
            compiled, certificate, 2_000_000)
        assert not failures
        raw_rules = {
            "call-c", "park-c-1", "park-c-2",
            "fire-c-1", "fire-c-2",
            "deliver-c-1", "deliver-c-2", "return-c",
            "fire-h", "fire-t0", "fire-t1", "vvar",
        }
        equations.extend(row for row in local if row[2] in raw_rules)
        for rule, count in counts.items():
            if rule not in raw_rules:
                excluded_counts[rule] = excluded_counts.get(rule, 0) + count
        bases.append(len(carrier["states"]))
    # These are composed full-NF controller rows.  The accepted raw polarity
    # potential does not model the zipper, so they are intentionally outside
    # this theorem and must stay on the exact inverse + full-column-Gram path.
    assert set(excluded_counts) <= {
        "answer-c-port-1", "answer-c-port-2", "deliver-c-output"
    }
    passing = passing_weights(equations)
    expected = [
        (common, common, 0, 0, port,
         dead0, dead1, port, port, port, 1)
        for common in (0, 1)
        for port in (0, 1)
        for dead0 in (0, 1)
        for dead1 in (0, 1)
    ]
    assert sorted(passing) == sorted(expected)
    assert (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1) in passing
    print("QALC GATE2 CNOT COLORING: PASS")
    print("marks:", MARKS)
    print("passing gauge orbit:", passing)
    print("carrier bases:", bases, "equations:", len(equations))
    print("composed rows discharged by inverse+Gram:", excluded_counts)


if __name__ == "__main__":
    main()
