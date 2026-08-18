"""Finite check of structurally recognized Gate-2 programs.

This complete-carrier validator remains an independent regression oracle for
small compiler images.  It is deliberately absent from canonical selection:
the unbounded compiler theorem, structural recognizer, and syntax-directed
certificate generator own live admission, so a state cap can never change the
semantics of a compiled sector.
"""

from kernel import classify_arrival, is_gam
import readback
import readback_certify
import readback_checks
from readback import NFDone, NFRun
from certify import transparent

import gate2_cnot_shadow as shadow
import gate2_shadow_wf


def configure():
    readback.step = shadow.step
    readback.nf_step = shadow.nf_step
    readback_certify.nf_step = shadow.nf_step
    readback_checks.nf_step = shadow.nf_step


def _certificate_fibres(states, certificate):
    fibres = {}
    for state in states:
        if not isinstance(state, NFRun):
            continue
        token = readback._kernel_token(state.token)
        if not (token.vb is None and token.path in certificate
                and token.path and token.path[-1] == "a"
                and token.d == "U" and token.log
                and is_gam(token.log[0])):
            continue
        arrival = classify_arrival(token.tape)
        if arrival is None:
            continue
        bit, logged, tail = arrival
        popkeys = certificate[token.path]
        popped = tuple(frame for frame in token.rs
                       if (frame[1], frame[2]) in popkeys)
        retained = tuple(frame for frame in token.rs
                         if (frame[1], frame[2]) not in popkeys)
        key = (token.path, bit, tail, token.log, token.ks, retained)
        value = (logged, popped)
        if key in fibres and fibres[key] != value:
            return None
        fibres.setdefault(key, value)
    return fibres


def validate(compiled, certificate, state_cap=300_000):
    """Return a complete finite safety report for one compiler sector."""
    configure()
    carrier = readback_certify.composed_carrier(
        compiled.term, certificate, state_cap=state_cap)
    arrivals = carrier["arrivals"]
    transparent_all = all(
        position in arrivals and transparent(arrivals[position], popkeys)
        for position, popkeys in certificate.items())
    vacuous_positions = sum(position not in arrivals
                            for position in certificate)
    vacuous_keys = 0
    for position, popkeys in certificate.items():
        if position not in arrivals:
            continue
        available = {
            (frame[1], frame[2])
            for (_bit, _logged, _tail, _log, records, _storage)
            in arrivals[position]
            for frame in records
        }
        vacuous_keys += len(popkeys - available)

    fibres = _certificate_fibres(carrier["states"], certificate)
    wf_violations = sum(
        bool(gate2_shadow_wf.wf(compiled, state))
        for state in carrier["states"])

    range_violations = 0
    inverse_violations = 0
    for target, incoming in carrier["incoming"].items():
        distinct_sources = {source for source, _rule in incoming}
        if len(distinct_sources) > 1:
            rules = {rule for _source, rule in incoming}
            if rules != {"fire-h"} or len(distinct_sources) != 2:
                range_violations += 1
        for source, rule in incoming:
            if rule not in shadow.CUSTOM_RULES:
                continue
            try:
                predecessor = shadow.custom_predecessor(
                    compiled.term, rule, target)
                forward = shadow.nf_step(
                    compiled.term, predecessor, certificate)
                if predecessor != source or not any(
                        row_rule == rule and row_target == target
                        for _sign, _denominator, row_rule, row_target
                        in forward):
                    inverse_violations += 1
            except (AssertionError, IndexError, TypeError, ValueError):
                inverse_violations += 1

    gram = readback_checks.reachable_gram(
        compiled.term, certificate, state_cap=state_cap)
    rules = carrier["rules"]
    adapter_errors = sum(
        rule in {"error-pop-err", "error-stuck",
                 "error-machine-exception", "error-invalid-kernel-target"}
        for rule in rules)
    error_terminals = sum(
        isinstance(state, NFDone) and state.kind != ("halt",)
        for state in carrier["states"])
    output_violations = sum(
        isinstance(state, NFDone) and state.kind == ("halt",)
        and not readback_certify._output_is_closed_nf(state.output)
        for state in carrier["states"])

    certified = (
        transparent_all and fibres is not None
        and not carrier["stuck"]
        and not carrier["recall_collisions"]
        and not carrier["pop_collisions"]
        and not wf_violations and not range_violations
        and not inverse_violations and not adapter_errors
        and not error_terminals and not output_violations
        and not gram["nonunit"] and not gram["nonorthogonal"]
        and vacuous_positions == 0 and vacuous_keys == 0)
    return {
        "certified": certified,
        "basis": len(carrier["states"]),
        "transparent": transparent_all,
        "w7_fibre_function": fibres is not None,
        "stuck": len(carrier["stuck"]),
        "recall_collisions": len(carrier["recall_collisions"]),
        "pop_collisions": len(carrier["pop_collisions"]),
        "wf_violations": wf_violations,
        "range_violations": range_violations,
        "inverse_violations": inverse_violations,
        "adapter_errors": adapter_errors,
        "error_terminals": error_terminals,
        "output_violations": output_violations,
        "nonunit": len(gram["nonunit"]),
        "nonorthogonal": len(gram["nonorthogonal"]),
        "vacuous_positions": vacuous_positions,
        "vacuous_keys": vacuous_keys,
    }
