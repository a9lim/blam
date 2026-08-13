"""Accepted native-CNOT reference extension for closed qALC Gate 2.

The filename preserves the construction-era source pin. The v1.43 kernel is
imported unchanged; this module adds the three-argument constant ``c M N K``.
Its inputs are queried in sequence and its persistent outputs bind ``K``'s
first two lambdas. Explicit controller rows, stage splits, predecessors, and
compiler-sector invariants are proved by the Gate-2 Lean surface.
"""

from kernel import (ALPHA, BULLET, FRAME, GAM, MU, Run, RunDone,
                    alpha_keys_live, classify_arrival, instance,
                    is_alpha, is_gam, is_lp, is_mu, rs_insert,
                    step as gate1_step)
from lam_iam import App, Gate, Lam, binder_path, subterm
from readback import (NFRun, _composed_token, _kernel_token,
                      nf_step as gate1_nf_step)


def CGAM(port, invoked, occurrence, first, second, continuation):
    return ("G", "c", port, invoked, occurrence,
            first, second, continuation)


def CMU(port, invoked):
    return ("M", "c", port, invoked)


def is_cgam(entry, port=None):
    return (isinstance(entry, tuple) and len(entry) == 8
            and entry[:2] == ("G", "c")
            and entry[2] in (1, 2)
            and (port is None or entry[2] == port))


def is_cmu(entry, port=None, invoked=None):
    return (isinstance(entry, tuple) and len(entry) == 4
            and entry[:2] == ("M", "c")
            and entry[2] in (1, 2)
            and (port is None or entry[2] == port)
            and (invoked is None or entry[3] == invoked))


def is_cp(entry):
    return isinstance(entry, tuple) and len(entry) == 7 and entry[0] == "CP"


def is_ch(entry):
    return isinstance(entry, tuple) and len(entry) == 8 and entry[0] == "CH"


def CDEAD(port, invoked, epoch, logged, phase=0):
    """Bit-free record for a port consumed by full-NF readback."""
    return ("CD", port, invoked, epoch, logged, phase)


def is_cdead(entry, port=None, invoked=None):
    return (isinstance(entry, tuple) and len(entry) == 6
            and entry[0] == "CD" and entry[1] in (1, 2)
            and entry[5] in (0, 1)
            and (port is None or entry[1] == port)
            and (invoked is None or entry[2] == invoked))


def CQUERY(port, invoked, logged):
    """Bit-free predecessor coordinate for a delivered linear handle."""
    return ("CQ", port, invoked, logged)


def is_cquery(entry, port=None, invoked=None):
    return (isinstance(entry, tuple) and len(entry) == 4
            and entry[0] == "CQ" and entry[1] in (1, 2)
            and (port is None or entry[1] == port)
            and (invoked is None or entry[2] == invoked))


SPLIT_RULES = frozenset(("park-c", "fire-c", "deliver-c",
                         "answer-c-port"))


def CSTAGE(rule):
    if rule not in SPLIT_RULES:
        raise ValueError("unknown CNOT split rule")
    return ("CS", rule)


def is_cstage(entry, rule=None):
    return (isinstance(entry, tuple) and len(entry) == 2
            and entry[0] == "CS" and entry[1] in SPLIT_RULES
            and (rule is None or entry[1] == rule))


def _split_rows(rows):
    out = []
    for sign, denominator, rule, target in rows:
        if rule in SPLIT_RULES and isinstance(target, Run):
            target = Run(target.path, target.d, target.log, target.tape,
                         target.vb, target.rs,
                         (CSTAGE(rule),) + target.ks)
            rule += "-1"
        out.append((sign, denominator, rule, target))
    return out


def _finish_stage(state):
    if not state.ks or not is_cstage(state.ks[0]):
        return None
    rule = state.ks[0][1]
    target = Run(state.path, state.d, state.log, state.tape,
                 state.vb, state.rs, state.ks[1:])
    return [(1, 0, rule + "-2", target)]


def port_gate(port):
    if port not in (1, 2):
        raise ValueError("CNOT port must be 1 or 2")
    return "c" + str(port)


def _c_arguments(term, occurrence):
    """Return the three immutable arguments of ``((c M) N) K``.

    The occurrence itself must be the leftmost leaf of exactly three nested
    applications.  This rejects a malformed signature use before any custom
    state is minted.
    """
    if len(occurrence) < 3 or occurrence[-3:] != ("f", "f", "f"):
        raise ValueError("c occurrence is not applied to three arguments")
    root = occurrence[:-3]
    first = root + ("f", "f", "a")
    second = root + ("f", "a")
    continuation = root + ("a",)
    if not (isinstance(subterm(term, root), App)
            and isinstance(subterm(term, root + ("f",)), App)
            and isinstance(subterm(term, root + ("f", "f")), App)):
        raise ValueError("malformed c application spine")
    return first, second, continuation


def _mu_at(slot, tape):
    return tape[1] if slot == 0 else tape[2]


def _decode_input(bit, logged, records):
    """Decode one redundant handle and its matching replay frame.

    Alpha cargo contributes a bit-free descriptor; an ordinary logged
    position is retained verbatim.  Only the frame for the alpha's own key is
    removed.  Every other record is a spectator and survives literally.
    The output bit of the CNOT reconstructs the removed bit coordinate.
    """
    if is_alpha(logged) and logged[3] == bit:
        key = (logged[1], logged[2])
        descriptor = ("DA", logged[1], logged[2], logged[4])
        popped = tuple(frame for frame in records
                       if (frame[0] == "R" and len(frame) == 5
                           and (frame[1], frame[2]) == key))
        if any(frame[3] != bit for frame in popped):
            raise ValueError("input frame disagrees with arrival bit")
        retained = tuple(frame for frame in records if frame not in popped)
        frame_descriptor = tuple((frame[1], frame[2], frame[4])
                                 for frame in popped)
        return descriptor, frame_descriptor, retained
    # A real lambda-IAM route is allowed only conservatively: its complete
    # logged position remains in the history descriptor.  Compiler-clean
    # superpositions must make this descriptor branch-independent.
    return ("DL", logged), (), records


def _done(rule, state):
    return [(1, 0, rule, RunDone(
        "err", (state.path, state.d, state.log, state.tape,
                state.vb, state.rs, state.ks)))]


def _fresh_c_call(term, state):
    invoked = instance(state)
    if invoked is None:
        return _done("c-no-instance", state)
    occurrence = invoked[1]
    try:
        first, second, continuation = _c_arguments(term, occurrence)
    except (AttributeError, IndexError, TypeError, ValueError):
        return _done("c-arity", state)
    if any((is_ch(entry) or is_cp(entry)) and entry[1] == invoked
           for entry in state.ks):
        return _done("c-refire", state)
    marker = CGAM(1, invoked, occurrence, first, second, continuation)
    tape = (marker, BULLET, BULLET, CMU(1, invoked)) + state.tape[1:]
    return [(1, 0, "call-c", Run(
        state.path, "U", state.log, tape,
        None, state.rs, state.ks))]


def _park_first(state, arrival):
    bit, logged, tail = arrival
    marker = state.log[0]
    _tag, _gate, _port, invoked, occurrence, first, second, continuation = marker
    if not is_cmu(_mu_at(bit, state.tape), 1, invoked):
        return _done("c-species-mu1", state)
    if not tail or tail[0] != BULLET:
        return _done("c-missing-second", state)
    try:
        descriptor, frames, retained = _decode_input(bit, logged, state.rs)
    except ValueError:
        return _done("c-input1-conflict", state)
    parked = ("CP", invoked, bit, descriptor, frames,
              occurrence, continuation)
    marker2 = CGAM(2, invoked, occurrence, first, second, continuation)
    tape2 = (BULLET, BULLET, CMU(2, invoked)) + tail[1:]
    return [(1, 0, "park-c", Run(
        second, "D", (marker2,) + state.log[1:], tape2,
        None, retained, (parked,) + state.ks))]


def _fire_second(term, state, arrival):
    bit2, logged2, tail = arrival
    marker = state.log[0]
    _tag, _gate, _port, invoked, occurrence, first, second, continuation = marker
    if not is_cmu(_mu_at(bit2, state.tape), 2, invoked):
        return _done("c-species-mu2", state)
    parked_matches = [(index, entry)
                      for index, entry in enumerate(state.ks)
                      if is_cp(entry) and entry[1] == invoked]
    if len(parked_matches) != 1:
        return _done("c-missing-park", state)
    if not tail or tail[0] != BULLET:
        return _done("c-missing-continuation", state)
    parked_index, parked_entry = parked_matches[0]
    _cp, _ci, bit1, descriptor1, frames1, cp_occurrence, cp_continuation = \
        parked_entry
    if cp_occurrence != occurrence or cp_continuation != continuation:
        return _done("c-park-conflict", state)
    try:
        descriptor2, frames2, retained = _decode_input(
            bit2, logged2, state.rs)
    except ValueError:
        return _done("c-input2-conflict", state)

    bit1_out = bit1
    bit2_out = bit2 ^ bit1
    outer_binder = continuation
    inner_binder = continuation + ("b",)
    if (not isinstance(subterm(term, outer_binder), Lam)
            or not isinstance(subterm(term, inner_binder), Lam)):
        return _done("c-continuation-shape", state)
    records = rs_insert(retained, FRAME(port_gate(1), invoked, bit1_out))
    records = rs_insert(records, FRAME(port_gate(2), invoked, bit2_out))
    history = ("CH", invoked, descriptor1, frames1,
               descriptor2, frames2, occurrence, continuation)
    storage = (state.ks[:parked_index] + (history,)
               + state.ks[parked_index + 1:])
    tape2 = (BULLET, BULLET) + tail[1:]
    return [(1, 0, "fire-c", Run(
        continuation, "D", state.log[1:], tape2,
        None, records, storage))]


def _deliver_port(term, state):
    if state.d != "U" or not state.tape or not is_lp(state.tape[0]):
        return None
    logged = state.tape[0]
    try:
        if binder_path(term, logged[1]) != state.path:
            return None
    except (IndexError, TypeError, ValueError):
        return None
    bindings = []
    for history in state.ks:
        if not is_ch(history):
            continue
        invoked, continuation = history[1], history[7]
        if state.path == continuation:
            bindings.append((invoked, 1))
        elif state.path == continuation + ("b",):
            bindings.append((invoked, 2))
    if not bindings:
        return None
    if len(bindings) != 1:
        return _done("c-port-conflict", state)
    invoked, port = bindings[0]
    candidates = [frame for frame in state.rs
                  if (frame[0] == "R" and len(frame) == 5
                      and frame[1] == port_gate(port)
                      and frame[2] == invoked)]
    if len(candidates) != 1:
        return _done("c-port-record", state)
    _r, gate, _key, bit, epoch = candidates[0]
    if len(state.tape) >= 3 \
            and state.tape[1] == BULLET and state.tape[2] == BULLET:
        emitted = (BULLET,) * bit + (ALPHA(gate, invoked, bit, epoch),)
        storage = (CQUERY(port, invoked, logged),) + state.ks
        token = Run(
            logged[1], "U", tuple(logged[2]) + state.log,
            emitted + state.tape[3:], None, state.rs, storage)
        return [(1, 0, "deliver-c", token)]
    # Full-NF readback asks for the value without real Church arguments.
    # Re-enter its existing virtual-boolean controller at the occurrence;
    # the CNOT port tag plus the original invocation LP is the ordinary
    # (gate,instance) key, so the emitted alpha matches the port frame.
    if state.tape[1:] and state.tape[1][0] == "RB":
        retained = tuple(frame for frame in state.rs
                         if frame != candidates[0])
        storage = (CDEAD(port, invoked, epoch, logged, 0),) + state.ks
        token = Run(
            logged[1], "D", (invoked,) + tuple(logged[2]) + state.log,
            state.tape[1:], (gate, bit, 0), retained, storage)
        return [(1, 0, "deliver-c-output", token)]
    return _done("c-port-arity", state)


def _close_virtual_port(state):
    """Account for the ordinary gate-answer edge bypassed by a CNOT port.

    Gate-1's ``anshead`` controller eventually crosses the gate application
    through ``bt1; bt2; b3``.  The last row consumes one of ``vvar``'s
    leading bullets.  A persistent CNOT port has no real gate application to
    retrace, so its answer-install row must perform that same local balance
    before the token unwinds through the continuation.

    The alpha key and CH record make the deleted bullet reconstructible from
    the target. The accepted CSTAGE coordinates carry the splits required by
    the pinned coloring and literal inverse.
    """
    if (state.d != "U" or state.vb is not None or not state.log
            or not state.tape or state.tape[0] != BULLET):
        return None
    for history in state.ks:
        if not is_ch(history) or state.log[0] != history[1]:
            continue
        invoked = history[1]
        for port in (1, 2):
            gate = port_gate(port)
            alpha_index = 1
            while (alpha_index < len(state.tape)
                   and state.tape[alpha_index] == BULLET):
                alpha_index += 1
            if alpha_index >= len(state.tape):
                continue
            alpha = state.tape[alpha_index]
            if (is_alpha(alpha) and alpha[1] == gate
                    and alpha[2] == invoked
                    and alpha[3] == alpha_index - 1):
                dead = [(index, entry)
                        for index, entry in enumerate(state.ks)
                        if (is_cdead(entry, port, invoked)
                            and entry[5] == 0)]
                if len(dead) != 1:
                    return _done("c-answer-record", state)
                dead_index, dead_entry = dead[0]
                answered = dead_entry[:5] + (1,)
                storage = (state.ks[:dead_index] + (answered,)
                           + state.ks[dead_index + 1:])
                return [(1, 0, "answer-c-port", Run(
                    state.path, state.d, state.log[1:], state.tape[1:],
                    state.vb, state.rs, storage))]
    return None


def _return_continuation(state):
    """Consume the two synthetic applications after ``K`` returns."""
    if state.d != "U":
        return None
    # The source continuation path can be crossed while a nested CNOT is
    # interrogating one of its bound ports.  Only the exact two-bullet answer
    # landing is the outer CNOT return boundary.
    if (len(state.tape) < 2
            or state.tape[0] != BULLET or state.tape[1] != BULLET):
        return None
    histories = [entry for entry in state.ks
                 if is_ch(entry) and entry[7] == state.path]
    if not histories:
        return None
    if len(histories) != 1:
        return _done("c-return-conflict", state)
    occurrence = histories[0][6]
    application_root = occurrence[:-3]
    return [(1, 0, "return-c", Run(
        application_root, "U", state.log, state.tape[2:],
        state.vb, state.rs, state.ks))]


def step(term, state, certificate=None):
    """One shadow transition; every Gate-1 row is delegated unchanged."""
    if not isinstance(state, Run):
        return gate1_step(term, state, certificate)

    staged = _finish_stage(state)
    if staged is not None:
        return staged
    closed = _close_virtual_port(state)
    if closed is not None:
        return _split_rows(closed)
    delivered = _deliver_port(term, state)
    if delivered is not None:
        return _split_rows(delivered)
    returned = _return_continuation(state)
    if returned is not None:
        return returned

    code = subterm(term, state.path)
    if isinstance(code, Gate) and code.name == "c" and state.d == "D":
        if state.tape and state.tape[0] == BULLET:
            return _fresh_c_call(term, state)
        return _done("c-leaf-shape", state)

    if (state.d == "U" and state.path and state.path[-1] == "a"
            and state.log and is_cgam(state.log[0])):
        arrival = classify_arrival(state.tape)
        if arrival is None:
            return _done("c-arrival-shape", state)
        if state.log[0][2] == 1:
            return _split_rows(_park_first(state, arrival))
        return _split_rows(_fire_second(term, state, arrival))

    return gate1_step(term, state, certificate)


def nf_step(term, state, certificate=None):
    """Composed shadow dispatcher with one necessary priority override.

    A second CNOT port is represented by the inner binder of ``K``.  The
    accepted readback dispatcher would otherwise take generic ``b4`` as soon
    as a query reaches that binder, before the raw kernel delegate can see the
    persistent port.  Port delivery is therefore a composed-machine row and
    has priority over ``b4``; every other state is passed to the accepted
    composed dispatcher, whose kernel delegate is rebound to :func:`step` by
    the isolated probe harness.
    """
    if isinstance(state, NFRun):
        staged = _finish_stage(_kernel_token(state.token))
        if staged is not None:
            return [(sign, denominator, rule,
                     NFRun(_composed_token(target), state.zipper))
                    for sign, denominator, rule, target in staged]
        delivered = _deliver_port(term, _kernel_token(state.token))
        if delivered is not None:
            out = []
            for sign, denominator, rule, target in _split_rows(delivered):
                if isinstance(target, Run):
                    out.append((sign, denominator, rule,
                                NFRun(_composed_token(target), state.zipper)))
                else:
                    # Let the accepted adapter type any shadow error target.
                    break
            else:
                return out
    return gate1_nf_step(term, state, certificate)


UNSPLIT_CUSTOM_RULES = frozenset((
    "call-c", "deliver-c-output", "return-c"))
CUSTOM_RULES = (UNSPLIT_CUSTOM_RULES
                | frozenset(rule + suffix
                            for rule in SPLIT_RULES
                            for suffix in ("-1", "-2")))


def _restore_logged(bit, descriptor):
    if descriptor[0] == "DA" and len(descriptor) == 4:
        return ALPHA(
            descriptor[1], descriptor[2], bit, descriptor[3])
    if descriptor[0] == "DL" and len(descriptor) == 2:
        return descriptor[1]
    raise ValueError("malformed CNOT logged descriptor")


def _restore_frames(bit, descriptors, records):
    restored = records
    for gate, invoked, epoch in descriptors:
        restored = rs_insert(restored, FRAME(gate, invoked, bit, epoch))
    return restored


def _custom_token_predecessor(term, rule, target):
    """Literal inverse of every successful CNOT shadow row.

    The delivery records are intentionally bit-free: the target alpha/VB
    carries the bit, while ``CQ``/``CD`` retains the logged-position split
    that would otherwise be lost when its slice is concatenated with the
    caller log.
    """
    if not isinstance(target, Run) or rule not in CUSTOM_RULES:
        raise ValueError(("not a custom running target", rule, target))

    if rule.endswith("-2"):
        base_rule = rule[:-2]
        return Run(target.path, target.d, target.log, target.tape,
                   target.vb, target.rs,
                   (CSTAGE(base_rule),) + target.ks)
    if rule.endswith("-1"):
        base_rule = rule[:-2]
        if not target.ks or not is_cstage(target.ks[0], base_rule):
            raise ValueError("custom first-stage target marker")
        target = Run(target.path, target.d, target.log, target.tape,
                     target.vb, target.rs, target.ks[1:])
        rule = base_rule

    if rule == "call-c":
        if len(target.tape) < 4 or not is_cgam(target.tape[0], 1):
            raise ValueError("call-c target shape")
        return Run(target.path, "D", target.log,
                   (BULLET,) + target.tape[4:], target.vb,
                   target.rs, target.ks)

    if rule == "park-c":
        if (not target.log or not is_cgam(target.log[0], 2)
                or not target.ks or not is_cp(target.ks[0])
                or len(target.tape) < 3):
            raise ValueError("park-c target shape")
        marker = target.log[0]
        (_tag, _gate, _port, invoked, occurrence,
         first, second, continuation) = marker
        (_cp, cp_invoked, bit, descriptor, frames,
         cp_occurrence, cp_continuation) = target.ks[0]
        if (cp_invoked != invoked or cp_occurrence != occurrence
                or cp_continuation != continuation):
            raise ValueError("park-c target identity")
        logged = _restore_logged(bit, descriptor)
        records = _restore_frames(bit, frames, target.rs)
        marker1 = CGAM(
            1, invoked, occurrence, first, second, continuation)
        tape = ((BULLET,) * bit + (logged, CMU(1, invoked), BULLET)
                + target.tape[3:])
        return Run(first, "U", (marker1,) + target.log[1:], tape,
                   target.vb, records, target.ks[1:])

    if rule == "fire-c":
        matches = [(index, entry)
                   for index, entry in enumerate(target.ks)
                   if (is_ch(entry) and entry[7] == target.path
                       and entry[6][:-3] == target.path[:-1])]
        if len(matches) != 1 or len(target.tape) < 2:
            raise ValueError("fire-c target shape")
        index, history = matches[0]
        (tag, invoked, descriptor1, frames1,
         descriptor2, frames2, occurrence, continuation) = history
        out1 = [frame for frame in target.rs
                if (frame[0] == "R" and len(frame) == 5
                    and frame[1] == port_gate(1)
                    and frame[2] == invoked)]
        out2 = [frame for frame in target.rs
                if (frame[0] == "R" and len(frame) == 5
                    and frame[1] == port_gate(2)
                    and frame[2] == invoked)]
        if len(out1) != 1 or len(out2) != 1:
            raise ValueError("fire-c output records")
        bit1 = out1[0][3]
        bit2 = out2[0][3] ^ bit1
        logged2 = _restore_logged(bit2, descriptor2)
        retained = tuple(frame for frame in target.rs
                         if frame not in (out1[0], out2[0]))
        records = _restore_frames(bit2, frames2, retained)
        parked = ("CP", invoked, bit1, descriptor1, frames1,
                  occurrence, continuation)
        storage = (target.ks[:index] + (parked,)
                   + target.ks[index + 1:])
        _first, second, _continuation = _c_arguments(term, occurrence)
        marker = CGAM(2, invoked, occurrence, _first,
                      second, continuation)
        tape = ((BULLET,) * bit2
                + (logged2, CMU(2, invoked), BULLET)
                + target.tape[2:])
        return Run(second, "U", (marker,) + target.log, tape,
                   target.vb, records, storage)

    if rule == "deliver-c":
        if not target.ks or not is_cquery(target.ks[0]):
            raise ValueError("deliver-c target query")
        _cq, port, invoked, logged = target.ks[0]
        frames = [frame for frame in target.rs
                  if (frame[0] == "R" and len(frame) == 5
                      and frame[1] == port_gate(port)
                      and frame[2] == invoked)]
        if len(frames) != 1:
            raise ValueError("deliver-c target frame")
        bit = frames[0][3]
        if (target.tape[:bit] != (BULLET,) * bit
                or len(target.tape) <= bit
                or target.tape[bit] != ALPHA(
                    port_gate(port), invoked, bit, frames[0][4])):
            raise ValueError("deliver-c target alpha")
        slice_ = tuple(logged[2])
        if target.log[:len(slice_)] != slice_:
            raise ValueError("deliver-c log split")
        source_log = target.log[len(slice_):]
        source_path = binder_path(term, logged[1])
        tape = ((logged, BULLET, BULLET)
                + target.tape[bit + 1:])
        return Run(source_path, "U", source_log, tape, target.vb,
                   target.rs, target.ks[1:])

    if rule == "deliver-c-output":
        if (target.vb is None or not target.ks
                or not is_cdead(target.ks[0])):
            raise ValueError("deliver-c-output target shape")
        _cd, port, invoked, epoch, logged, dead_phase = target.ks[0]
        gate, bit, phase = target.vb
        if gate != port_gate(port) or phase != 0 or dead_phase != 0:
            raise ValueError("deliver-c-output target VB")
        prefix = (invoked,) + tuple(logged[2])
        if target.log[:len(prefix)] != prefix:
            raise ValueError("deliver-c-output log split")
        records = rs_insert(
            target.rs, FRAME(gate, invoked, bit, epoch))
        return Run(binder_path(term, logged[1]), "U",
                   target.log[len(prefix):], (logged,) + target.tape,
                   None, records, target.ks[1:])

    if rule == "answer-c-port":
        alpha_index = 0
        while (alpha_index < len(target.tape)
               and target.tape[alpha_index] == BULLET):
            alpha_index += 1
        if alpha_index >= len(target.tape) \
                or not is_alpha(target.tape[alpha_index]):
            raise ValueError("answer-c-port target alpha")
        alpha = target.tape[alpha_index]
        invoked = alpha[2]
        port = 1 if alpha[1] == "c1" else 2 if alpha[1] == "c2" else None
        if port is None:
            raise ValueError("answer-c-port target gate")
        dead = [(index, entry) for index, entry in enumerate(target.ks)
                if (is_cdead(entry, port, invoked)
                    and entry[5] == 1)]
        if len(dead) != 1:
            raise ValueError("answer-c-port dead record")
        dead_index, dead_entry = dead[0]
        unclosed = dead_entry[:5] + (0,)
        storage = (target.ks[:dead_index] + (unclosed,)
                   + target.ks[dead_index + 1:])
        return Run(target.path, target.d, (invoked,) + target.log,
                   (BULLET,) + target.tape, target.vb,
                   target.rs, storage)

    if rule == "return-c":
        matches = [entry for entry in target.ks
                   if (is_ch(entry)
                       and entry[6][:-3] == target.path)]
        if len(matches) != 1:
            raise ValueError("return-c target history")
        continuation = matches[0][7]
        return Run(continuation, "U", target.log,
                   (BULLET, BULLET) + target.tape,
                   target.vb, target.rs, target.ks)

    raise AssertionError(rule)


def custom_predecessor(term, rule, target):
    """Inverse a composed CNOT edge while preserving its zipper literally."""
    if not isinstance(target, NFRun):
        raise ValueError("custom composed target is not running")
    token = _custom_token_predecessor(
        term, rule, _kernel_token(target.token))
    return NFRun(_composed_token(token), target.zipper)
