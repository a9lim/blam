"""Forward-only full-normal-form readback for the qALC reference kernel.

This module composes the audited gate kernel with an internal, single-token
readback controller. The invocation term remains immutable; the only
additional live state is an output zipper.

The controller never reverses a quantum query.  Child normal forms return by
the ordinary forward token route, so a gate copy that was fired during a
child remains fired and later occurrences replay the same selection.
"""

from dataclasses import dataclass

from kernel import (ALPHA, BULLET, MU, App, Done, Gate, Lam, Run, RunDone, Var,
                    instance, is_gam, is_lp, is_mu, step, subterm)


def RB(depth, output_path, code_path, pending=()):
    """Readback delimiter with its exact output-hole schedule.

    Code argument positions are intentionally *not* precomputed: exponential
    transport can move the token to a dynamically reached copy, as in
    ``(lambda z. z z) x``.  ENTER derives that argument from the reached
    function position.
    """
    return ("RB", depth, output_path, code_path, pending)


def RBL(parent_function_path, output_path, code_path):
    """Synthetic logged return address carried by the token."""
    return ("RBL", parent_function_path, output_path, code_path)


# The composed carrier has one lambda-IAM transport marker.  The audited
# kernel is written with the paper's plain bullet, so the adapter translates
# BA to plain on entry and plain back to BA on every running exit.  Plain
# bullets are therefore kernel-internal and every persistent b3 has one source
# shape, without provenance garbage or a reachable-phase classifier.
APP_BULLET = ("BA",)


def _kernel_token(token):
    """Translate the top-level tape marker to the kernel alphabet.

    The composed grammar permits BA only as a top-level tape entry.  LP
    cargo, instance keys, replay records, RS, KS, VB, and the log contain no
    bullet production; `application_invariant.py` gates that fact on every
    reached state.  Keeping this adapter nonrecursive makes it total even at
    arbitrarily deep recall epochs.
    """
    return Run(
        token.path, token.d, token.log,
        tuple(BULLET if entry == APP_BULLET else entry
              for entry in token.tape),
        token.vb, token.rs, token.ks)


def _composed_token(token):
    """Translate a running kernel target back to the composed alphabet."""
    return Run(
        token.path, token.d, token.log,
        tuple(APP_BULLET if entry == BULLET else entry
              for entry in token.tape),
        token.vb, token.rs, token.ks)


def is_rb(entry):
    return (isinstance(entry, tuple) and len(entry) == 5
            and entry[0] == "RB" and type(entry[1]) is int
            and entry[1] >= 0 and isinstance(entry[2], tuple)
            and isinstance(entry[3], tuple) and isinstance(entry[4], tuple)
            and all(isinstance(path, tuple) for path in entry[4]))


def is_rbl(entry):
    return (isinstance(entry, tuple) and len(entry) == 4
            and entry[0] == "RBL" and all(
                isinstance(field, tuple) for field in entry[1:]))


@dataclass(frozen=True)
class Hole:
    # Head holes are unarmed.  HEAD creates armed argument holes; only those
    # may override b3 with ENTER.  The eventual function position is dynamic
    # (exponential transport can move it), so a static source path would be
    # incorrect for terms such as ``(λz. z z) x``.
    armed: bool = False


HOLE = Hole(False)


@dataclass(frozen=True)
class NFVar:
    index: int


@dataclass(frozen=True)
class NFLam:
    body: object


@dataclass(frozen=True)
class NFApp:
    function: object
    argument: object


@dataclass(frozen=True)
class NFGate:
    name: str


@dataclass(frozen=True)
class BinderMark:
    """Reversible controller metadata, not part of the observable NF."""
    output_path: tuple
    identity: tuple


@dataclass(frozen=True)
class ExactScopeResidue:
    output_path: tuple
    prefix: tuple


@dataclass(frozen=True)
class VirtualScopeResidue:
    output_path: tuple
    gate: str
    instance: object
    epoch: object


@dataclass(frozen=True)
class NeutralProbeResidue:
    binder_path: tuple
    binder_log: tuple
    logged_argument: tuple


@dataclass(frozen=True)
class PureScopeResidue:
    """Exact path coordinate discarded by a pure child RETURN."""
    output_path: tuple


@dataclass(frozen=True)
class TerminalGarbage:
    carrier: object             # None, ExactScopeResidue, VirtualScopeResidue
    frames: tuple
    storage: tuple
    binders: tuple
    residues: tuple


@dataclass(frozen=True)
class Zipper:
    tree: object = HOLE
    cursor: object = ()
    binders: tuple = ()
    # Forward completion moves any remaining answer/ticket carrier out of
    # the live tape.  It is genuine reversible garbage, retained verbatim.
    residues: tuple = ()


@dataclass(frozen=True)
class NFRun:
    token: Run
    zipper: Zipper = Zipper()


@dataclass(frozen=True)
class NFRunDone:
    kind: tuple                 # ("halt",) or ("error", rule)
    output: object              # a closed NF for halt, None for error
    garbage: tuple              # exact terminal controller/token residue


@dataclass(frozen=True)
class NFDone:
    kind: tuple
    output: object
    garbage: tuple
    tick: int = 0


def nf_show(term):
    if isinstance(term, Hole):
        return "□"
    if isinstance(term, NFVar):
        return str(term.index)
    if isinstance(term, NFLam):
        return "\\" + nf_show(term.body)
    if isinstance(term, NFApp):
        return f"({nf_show(term.function)} {nf_show(term.argument)})"
    if isinstance(term, NFGate):
        return term.name
    raise TypeError(term)


def _child(term, direction):
    if direction == "b" and isinstance(term, NFLam):
        return term.body
    if direction == "f" and isinstance(term, NFApp):
        return term.function
    if direction == "a" and isinstance(term, NFApp):
        return term.argument
    raise ValueError((term, direction))


def at(term, path):
    for direction in path:
        term = _child(term, direction)
    return term


def replace(term, path, value):
    if not path:
        return value
    direction, tail = path[0], path[1:]
    if direction == "b" and isinstance(term, NFLam):
        return NFLam(replace(term.body, tail, value))
    if direction == "f" and isinstance(term, NFApp):
        return NFApp(replace(term.function, tail, value), term.argument)
    if direction == "a" and isinstance(term, NFApp):
        return NFApp(term.function, replace(term.argument, tail, value))
    raise ValueError((term, path))


def holes(term, prefix=()):
    if isinstance(term, Hole):
        return (prefix,)
    if isinstance(term, NFLam):
        return holes(term.body, prefix + ("b",))
    if isinstance(term, NFApp):
        return (holes(term.function, prefix + ("f",))
                + holes(term.argument, prefix + ("a",)))
    return ()


def leading_lambdas(term):
    count = 0
    while isinstance(term, NFLam):
        count += 1
        term = term.body
    return count


def canonical_boolean(term):
    if (isinstance(term, NFLam) and isinstance(term.body, NFLam)
            and isinstance(term.body.body, NFVar)):
        if term.body.body.index == 2:
            return 0
        if term.body.body.index == 1:
            return 1
    return None


def _virtual_prefix_code(prefix, output, output_path, code_path, binders):
    """Decode an output-determined virtual-answer carrier.

    The output recovers the erased bit and bullet shape.  Gate, instance, and
    epoch remain as the exact independent predecessor-fibre coordinate.
    """
    bit = canonical_boolean(output)
    if bit is None:
        return None
    if bit == 0 and len(prefix) == 1 and isinstance(prefix[0], tuple):
        alpha = prefix[0]
    elif (bit == 1 and len(prefix) == 2 and prefix[0] == APP_BULLET
          and isinstance(prefix[1], tuple)):
        alpha = prefix[1]
    else:
        return None
    if (len(alpha) != 5 or alpha[0] != "AL" or alpha[3] != bit):
        return None
    _, gate, invoked, _bit, epoch = alpha
    outer = BinderMark(output_path,
                       ("virtual", gate, invoked, 0, code_path))
    inner = BinderMark(output_path + ("b",),
                       ("virtual", gate, invoked, 1, code_path))
    if outer not in binders or inner not in binders:
        return None
    return gate, invoked, epoch, (outer, inner)


def _scope_residue(prefix, rb, zipper):
    output = at(zipper.tree, rb[2])
    if (all(entry == APP_BULLET for entry in prefix)
            and len(prefix) == leading_lambdas(output)):
        return PureScopeResidue(rb[2]), zipper.binders
    decoded = _virtual_prefix_code(
        prefix, output, rb[2], rb[3], zipper.binders)
    if decoded is None or not _binders_canonical(zipper.binders):
        return ExactScopeResidue(rb[2], prefix), zipper.binders
    gate, invoked, epoch, derived_marks = decoded
    remaining = tuple(mark for mark in zipper.binders
                      if mark not in derived_marks)
    return (VirtualScopeResidue(rb[2], gate, invoked, epoch),
            remaining)


def _terminal_garbage(token, rb, prefix, zipper):
    decoded = _virtual_prefix_code(
        prefix, zipper.tree, rb[2], rb[3], zipper.binders)
    if decoded is None:
        output_determines_prefix = (
            all(entry == APP_BULLET for entry in prefix)
            and len(prefix) == leading_lambdas(zipper.tree))
        carrier = (None if output_determines_prefix
                   else ExactScopeResidue((), prefix))
        return TerminalGarbage(
            carrier, token.rs, token.ks, zipper.binders, zipper.residues)
    if not _binders_canonical(zipper.binders):
        return TerminalGarbage(
            ExactScopeResidue((), prefix), token.rs, token.ks,
            zipper.binders, zipper.residues)
    gate, invoked, epoch, derived_marks = decoded
    remaining = tuple(mark for mark in zipper.binders
                      if mark not in derived_marks)
    carrier = VirtualScopeResidue((), gate, invoked, epoch)
    return TerminalGarbage(
        carrier, token.rs, token.ks, remaining, zipper.residues)


def _next_cursor(tree):
    remaining = holes(tree)
    return remaining[0] if remaining else None


def _fill(zipper, value):
    if zipper.cursor is None or not isinstance(at(zipper.tree, zipper.cursor), Hole):
        raise ValueError("readback cursor is not an open hole")
    tree = replace(zipper.tree, zipper.cursor, value)
    return Zipper(tree, _next_cursor(tree), zipper.binders,
                  zipper.residues)


def _disarm(zipper):
    current = at(zipper.tree, zipper.cursor)
    if not isinstance(current, Hole) or not current.armed:
        raise ValueError("readback argument hole is not armed")
    tree = replace(zipper.tree, zipper.cursor, HOLE)
    return Zipper(tree, zipper.cursor, zipper.binders, zipper.residues)


def _arm(zipper):
    current = at(zipper.tree, zipper.cursor)
    if not isinstance(current, Hole) or current.armed:
        raise ValueError("readback argument hole is not disarmed")
    tree = replace(zipper.tree, zipper.cursor, Hole(True))
    return Zipper(tree, zipper.cursor, zipper.binders, zipper.residues)


def _emit_lambda(zipper, identity):
    cursor = zipper.cursor
    updated = _fill(zipper, NFLam(HOLE))
    body_cursor = cursor + ("b",)
    return Zipper(updated.tree, body_cursor,
                  updated.binders + (BinderMark(cursor, identity),),
                  updated.residues)


def _spine(head, arity):
    term = head
    for _ in range(arity):
        term = NFApp(term, Hole(True))
    return term


def _spine_schedule(output_root, arity):
    """Output addresses of a left-associated rigid-head spine."""
    relative = holes(_spine(NFVar(1), arity))
    return tuple(output_root + out for out in relative)


def _replace_rb(entries, old, new):
    replaced = False
    out = []
    for entry in entries:
        if not replaced and entry == old:
            out.append(new)
            replaced = True
        else:
            out.append(entry)
    if not replaced:
        raise ValueError("delimiter not present")
    return tuple(out)


def _binder_index(zipper, identity):
    """Index ``identity`` among the emitted binders enclosing cursor."""
    cursor = zipper.cursor
    enclosing = [mark for mark in zipper.binders
                 if (len(mark.output_path) < len(cursor)
                     and cursor[:len(mark.output_path)] == mark.output_path
                     and cursor[len(mark.output_path)] == "b")]
    for reverse_index, mark in enumerate(reversed(enclosing), start=1):
        if mark.identity == identity:
            return reverse_index
    return None


def _binder_path_key(path):
    """Canonical preorder key for output-binder marks.

    Readback fills the function child before the argument child and enters a
    lambda body immediately.  Binder marks are therefore appended in the
    preorder induced by ``b < f < a``.  The order is reconstructible from the
    output paths; it is not an independent predecessor coordinate.
    """
    order = {"b": 0, "f": 1, "a": 2}
    return tuple(order[direction] for direction in path)


def _binders_canonical(binders):
    paths = tuple(mark.output_path for mark in binders)
    return (len(set(paths)) == len(paths)
            and binders == tuple(sorted(
                binders, key=lambda mark: _binder_path_key(mark.output_path))))


def _merge_binders(remaining, derived):
    merged = remaining + derived
    if len({mark.output_path for mark in merged}) != len(merged):
        raise ValueError("duplicate output binder path")
    return tuple(sorted(
        merged, key=lambda mark: _binder_path_key(mark.output_path)))


def _virtual_carrier_inverse(output, output_path, code_path, carrier,
                             remaining_binders):
    bit = canonical_boolean(output)
    if bit is None:
        raise ValueError("virtual carrier output is not canonical boolean")
    alpha = ALPHA(carrier.gate, carrier.instance, bit, carrier.epoch)
    prefix = (alpha,) if bit == 0 else (APP_BULLET, alpha)
    derived = (
        BinderMark(output_path,
                   ("virtual", carrier.gate, carrier.instance, 0, code_path)),
        BinderMark(output_path + ("b",),
                   ("virtual", carrier.gate, carrier.instance, 1, code_path)),
    )
    return prefix, _merge_binders(remaining_binders, derived)


def terminal_predecessor(output, garbage):
    """Exact inverse of the guarded rootdone compression."""
    if not isinstance(garbage, TerminalGarbage):
        raise TypeError(garbage)
    carrier = garbage.carrier
    if carrier is None:
        prefix = (APP_BULLET,) * leading_lambdas(output)
        binders = garbage.binders
    elif isinstance(carrier, ExactScopeResidue):
        if carrier.output_path:
            raise ValueError("terminal exact carrier is not at root")
        prefix = carrier.prefix
        binders = garbage.binders
    elif isinstance(carrier, VirtualScopeResidue):
        if carrier.output_path:
            raise ValueError("terminal virtual carrier is not at root")
        prefix, binders = _virtual_carrier_inverse(
            output, (), (), carrier, garbage.binders)
    else:
        raise TypeError(carrier)
    token = Run((), "U", (),
                prefix + (RB(leading_lambdas(output), (), ()),),
                None, garbage.frames, garbage.storage)
    zipper = Zipper(output, None, binders, garbage.residues)
    return NFRun(token, zipper)


def return_predecessor(term, target):
    """Inverse RETURN from its post-pop landing and moved residue."""
    if (not isinstance(target, NFRun) or not target.zipper.residues):
        raise ValueError("not a RETURN landing")
    token, zipper = target.token, target.zipper
    residue = zipper.residues[-1]
    if isinstance(residue, PureScopeResidue):
        output_path = residue.output_path
        prefix = (APP_BULLET,) * leading_lambdas(at(zipper.tree, output_path))
        binders = zipper.binders
    elif isinstance(residue, ExactScopeResidue):
        output_path = residue.output_path
        prefix = residue.prefix
        binders = zipper.binders
    elif isinstance(residue, VirtualScopeResidue):
        output_path = residue.output_path
        child_path = token.path + ("a",)
        prefix, binders = _virtual_carrier_inverse(
            at(zipper.tree, output_path), output_path, child_path,
            residue, zipper.binders)
    else:
        raise TypeError(residue)
    parent_function = token.path + ("f",)
    child_path = token.path + ("a",)
    depth = leading_lambdas(at(zipper.tree, output_path)) + sum(
        len(mark.output_path) < len(output_path)
        and output_path[:len(mark.output_path)] == mark.output_path
        and output_path[len(mark.output_path)] == "b"
        for mark in binders)
    delimiter = RB(depth, output_path, child_path)
    address = RBL(parent_function, output_path, child_path)
    source_token = Run(
        child_path, "U", (address,) + token.log,
        prefix + (delimiter, APP_BULLET) + token.tape,
        token.vb, token.rs, token.ks)
    source_zipper = Zipper(
        zipper.tree, zipper.cursor, binders, zipper.residues[:-1])
    # Assert the structural child path still belongs to the immutable term.
    if not isinstance(subterm(term, token.path), App):
        raise ValueError("RETURN landing is not at an application")
    subterm(term, child_path)
    return NFRun(source_token, source_zipper)


def enter_predecessor(term, target):
    """Exact inverse of ENTER on its concrete RB/RBL landing."""
    if (not isinstance(target, NFRun) or target.token.d != "D"
            or not target.token.log or not is_rbl(target.token.log[0])
            or len(target.token.tape) < 2
            or not is_rb(target.token.tape[0])
            or target.token.tape[1] != APP_BULLET):
        raise ValueError("not an ENTER landing")
    token, zipper = target.token, target.zipper
    address, delimiter = token.log[0], token.tape[0]
    if (address[2] != zipper.cursor or delimiter[2] != zipper.cursor
            or address[3] != token.path or delimiter[3] != token.path
            or address[1] != token.path[:-1] + ("f",)):
        raise ValueError("ENTER landing address mismatch")
    parent_tail = token.tape[2:]
    parent_rb = next((entry for entry in parent_tail if is_rb(entry)), None)
    if parent_rb is None:
        raise ValueError("ENTER parent delimiter missing")
    restored_slot = zipper.cursor
    parent_rb2 = RB(parent_rb[1], parent_rb[2], parent_rb[3],
                    (restored_slot,) + parent_rb[4])
    parent_tail = _replace_rb(parent_tail, parent_rb, parent_rb2)
    source_token = Run(
        address[1], "U", token.log[1:],
        (APP_BULLET,) + parent_tail, token.vb, token.rs, token.ks)
    source = NFRun(source_token, _arm(zipper))
    if not isinstance(subterm(term, source_token.path[:-1]), App):
        raise ValueError("ENTER predecessor is not at an application")
    return source


def neutral_probe_predecessor(term, target):
    """Exact inverse of one ``head-neutral-gate`` compression.

    The landing itself determines the emitted gate, output cursor, child
    address, delimiter, and total output arity.  The residue retains only the
    dynamic binder identity and the LP slice erased with gamma/mu.
    """
    if (not isinstance(target, NFRun) or target.zipper.cursor is None
            or not target.zipper.residues
            or not isinstance(target.zipper.residues[-1],
                              NeutralProbeResidue)):
        raise ValueError("not a neutral-probe landing")
    token, zipper = target.token, target.zipper
    residue = zipper.residues[-1]
    lp = residue.logged_argument
    if (not is_lp(lp) or not lp[2] or not is_gam(lp[2][0])):
        raise ValueError("neutral residue has no gamma LP")
    gate = lp[2][0][1]
    occurrence = lp[1]
    first_output = zipper.cursor

    if (token.path != occurrence or token.d != "D" or token.vb is not None
            or len(token.log) != 1 or not is_rbl(token.log[0])
            or len(token.tape) < 3 or not is_rb(token.tape[0])
            or token.tape[1] != APP_BULLET):
        raise ValueError("malformed neutral-probe landing")
    parent_function = occurrence[:-1] + ("f",)
    address = RBL(parent_function, first_output, occurrence)
    child_rb = token.tape[0]
    if (token.log[0] != address
            or child_rb[2] != first_output or child_rb[3] != occurrence):
        raise ValueError("neutral-probe address mismatch")

    # The retained slot plus the immediately following BA tail encode the
    # gate spine arity.  Its first argument is the current unarmed cursor;
    # all later arguments remain armed.
    arity = 1
    while 1 + arity < len(token.tape) \
            and token.tape[1 + arity] == APP_BULLET:
        arity += 1
    suffix = ("f",) * (arity - 1) + ("a",)
    if len(first_output) < arity or first_output[-arity:] != suffix:
        raise ValueError("neutral-probe output path mismatch")
    output_root = first_output[:-arity]
    expected_spine = _spine(NFGate(gate), arity)
    expected_spine = replace(
        expected_spine, ("f",) * (arity - 1) + ("a",), HOLE)
    if at(zipper.tree, output_root) != expected_spine:
        raise ValueError("neutral-probe output spine mismatch")

    try:
        from lam_iam import binder_path
        if binder_path(term, occurrence) != residue.binder_path:
            raise ValueError("neutral-probe binder mismatch")
    except (IndexError, TypeError):
        raise ValueError("neutral-probe occurrence mismatch") from None
    identity = ("source", residue.binder_path, residue.binder_log)
    if _binder_index(Zipper(zipper.tree, output_root, zipper.binders,
                            zipper.residues), identity) is None:
        raise ValueError("neutral-probe dynamic binder missing")

    source_tree = replace(zipper.tree, output_root, HOLE)
    source_zipper = Zipper(
        source_tree, output_root, zipper.binders, zipper.residues[:-1])
    after_mu = token.tape[2:]
    parent_rb = next((entry for entry in after_mu if is_rb(entry)), None)
    if parent_rb is None:
        raise ValueError("neutral-probe parent delimiter missing")
    after_mu = _replace_rb(
        after_mu, parent_rb,
        RB(parent_rb[1], parent_rb[2], parent_rb[3]))
    source_token = Run(
        residue.binder_path, "U", residue.binder_log,
        (lp, APP_BULLET, APP_BULLET, MU(gate)) + after_mu,
        token.vb, token.rs, token.ks)
    return NFRun(source_token, source_zipper)


def _return_successor(state):
    """Compute RETURN alone, without invoking the composed dispatcher."""
    if not isinstance(state, NFRun):
        return None
    token, zipper = state.token, state.zipper
    closed = _first_rb(token.tape)
    if closed is None:
        return None
    prefix, rb, tail = closed
    subtree_closed = not holes(at(zipper.tree, rb[2]))
    lambdas_match = (not all(entry == APP_BULLET for entry in prefix)
                     or leading_lambdas(at(zipper.tree, rb[2]))
                     == len(prefix))
    at_scope_root = token.d == "U" and token.path == rb[3]
    if not (at_scope_root and subtree_closed and lambdas_match
            and token.log and is_rbl(token.log[0])
            and token.log[0][2] == rb[2]
            and token.log[0][3] == rb[3]
            and tail and tail[0] == APP_BULLET):
        return None
    parent_function = token.log[0][1]
    if not parent_function or parent_function[-1] != "f":
        return None
    parent_path = parent_function[:-1]
    residue, binders = _scope_residue(prefix, rb, zipper)
    zipper2 = Zipper(
        zipper.tree, zipper.cursor, binders,
        zipper.residues + (residue,))
    token2 = Run(parent_path, "U", token.log[1:],
                 tail[1:], token.vb,
                 token.rs, token.ks)
    return NFRun(token2, zipper2)


def _first_rb(tape):
    for index, entry in enumerate(tape):
        if is_rb(entry):
            return tape[:index], entry, tape[index + 1:]
    return None


def _rb_after_output_bullets(tape):
    """Nearest scope delimiter after the complete leading BA prefix."""
    count = 0
    while count < len(tape) and tape[count] == APP_BULLET:
        count += 1
    if count < len(tape) and is_rb(tape[count]):
        return count, tape[count], tape[count + 1:]
    return None


def _enter_shape(token, zipper):
    """Return the exact scheduled ENTER data, or ``None``.

    The source is selected by the output schedule installed by HEAD together
    with the lambda-IAM balance equation, never by marker provenance or a
    gate-question/application distinction.  The output path must agree
    literally; the code argument is derived from the dynamically reached
    function position because exponential transport can move it.
    """
    if (token.d != "U" or not token.path or token.path[-1] != "f"
            or not token.tape or token.tape[0] != APP_BULLET
            or zipper.cursor is None):
        return None
    current = at(zipper.tree, zipper.cursor)
    if not isinstance(current, Hole) or not current.armed:
        return None
    ready = _rb_after_output_bullets(token.tape)
    if ready is None:
        return None
    marker_count, parent_rb, _tail = ready
    if not parent_rb[4] or marker_count != len(parent_rb[4]):
        return None
    output_path = parent_rb[4][0]
    if zipper.cursor != output_path:
        return None
    function_path = token.path
    argument_path = token.path[:-1] + ("a",)
    return parent_rb, output_path, function_path, argument_path


def _head_shape(term, token):
    """Return (leading bullets, lp, arity, rb) at bound-head success."""
    tape = token.tape
    leading = 0
    while leading < len(tape) and tape[leading] == APP_BULLET:
        leading += 1
    if leading >= len(tape) or not is_lp(tape[leading]):
        return None
    lp = tape[leading]
    arity_end = leading + 1
    while arity_end < len(tape) and tape[arity_end] == APP_BULLET:
        arity_end += 1
    if arity_end >= len(tape) or not is_rb(tape[arity_end]):
        return None
    try:
        from lam_iam import binder_path
        if binder_path(term, lp[1]) != token.path:
            return None
    except (IndexError, TypeError, ValueError):
        return None
    return leading, lp, arity_end - leading - 1, tape[arity_end]


def _neutral_probe_shape(term, token, zipper):
    """Recognize a gate interrogation whose argument head is rigid.

    The source shape is ``lp · bullet · bullet · mu_g · BA^j · RB``
    at an emitted binder.  Its lp slice carries the matching gamma probe.
    """
    tape = token.tape
    if (token.d != "U" or len(tape) < 5 or not is_lp(tape[0])
            or tape[1] != APP_BULLET or tape[2] != APP_BULLET
            or not is_mu(tape[3])):
        return None
    lp = tape[0]
    gate = tape[3][1]
    if not (lp[2] and is_gam(lp[2][0]) and lp[2][0][1] == gate):
        return None
    index = _binder_index(zipper, ("source", token.path, token.log))
    if index is None:
        return None
    extra_end = 4
    while extra_end < len(tape) and tape[extra_end] == APP_BULLET:
        extra_end += 1
    if extra_end >= len(tape) or not is_rb(tape[extra_end]):
        return None
    occurrence = lp[1]
    if not occurrence or occurrence[-1] != "a":
        return None
    parent_function = occurrence[:-1] + ("f",)
    try:
        subterm(term, parent_function)
    except (AttributeError, IndexError, TypeError):
        return None
    return (gate, lp, index, extra_end - 4, tape[extra_end],
            tape[4:])


def _error(rule, state, residue=None):
    garbage = (state.token, state.zipper) if residue is None else (
        state.token, state.zipper, residue)
    return [(1, 0, "error-" + rule,
             NFRunDone(("error", rule), None, garbage))]


def _nf_step_partial(term, state, certificate=None):
    """One composed machine step before the typed exception adapter.

    Edge tuples have the kernel's ``(sign, sqrt2_denominator, rule, target)``
    form.  ``dw_machine.edge_coefficient`` therefore evaluates the composed
    H/T machine without approximation.
    """
    if isinstance(state, NFDone):
        return [(1, 0, "tick", NFDone(
            state.kind, state.output, state.garbage, state.tick + 1))]
    if isinstance(state, NFRunDone):
        return [(1, 0, "halt", NFDone(
            state.kind, state.output, state.garbage, 0))]
    if not isinstance(state, NFRun):
        raise TypeError(state)

    token, zipper = state.token, state.zipper
    code = subterm(term, token.path)

    # A virtual boolean is a Church boolean whose two binders do not occur
    # in the immutable source term.  The zipper supplies their identities.
    if token.vb is not None:
        gate, bit, phase = token.vb
        if (phase < 2 and token.tape and is_rb(token.tape[0])
                and zipper.cursor is not None):
            rb = token.tape[0]
            identity = ("virtual", gate, instance(token), phase, rb[3])
            zipper2 = _emit_lambda(zipper, identity)
            rb2 = RB(rb[1] + 1, rb[2], rb[3], rb[4])
            token2 = Run(token.path, token.d, token.log,
                         (rb2,) + token.tape[1:],
                         (gate, bit, phase + 1), token.rs, token.ks)
            return [(1, 0, "vlam", NFRun(token2, zipper2))]
        if (phase == 2 and token.tape and is_rb(token.tape[0])
                and zipper.cursor is not None):
            invoked = instance(token)
            if invoked is None:
                return _error("no-instance", state)
            selected_phase = bit
            selected_identity = (
                "virtual", gate, invoked, selected_phase, token.tape[0][3])
            selected_index = _binder_index(zipper, selected_identity)
            # If the selected Church binder was emitted virtually, its
            # variable is observable output.  If that binder was consumed by
            # a real argument, vvar must instead transport the token to that
            # argument; pre-filling the output here would confuse a selector
            # with the boolean it is eliminating.
            if selected_index is not None:
                zipper2 = _fill(zipper, NFVar(selected_index))
                emitted = (APP_BULLET,) * (bit + 1) + (
                    ALPHA(gate, invoked, bit),)
                token2 = Run(token.path, "U", token.log,
                             emitted + token.tape, None,
                             token.rs, token.ks)
                return [(1, 0, "vvar", NFRun(token2, zipper2))]

    # Emit a source lambda only where the ordinary λIAM would otherwise
    # stop for lack of a real argument.
    if (token.d == "D" and isinstance(code, Lam) and token.tape
            and is_rb(token.tape[0]) and zipper.cursor is not None):
        rb = token.tape[0]
        zipper2 = _emit_lambda(zipper, ("source", token.path, token.log))
        rb2 = RB(rb[1] + 1, rb[2], rb[3], rb[4])
        token2 = Run(token.path + ("b",), "D", token.log,
                     (rb2,) + token.tape[1:], token.vb,
                     token.rs, token.ks)
        return [(1, 0, "vlam", NFRun(token2, zipper2))]

    # A bare gate is a neutral constant.  With a real argument its normal
    # gate-call row remains authoritative and this controller does not fire.
    if (token.d == "D" and token.vb is None and isinstance(code, Gate) and token.tape
            and is_rb(token.tape[0]) and zipper.cursor is not None):
        zipper2 = _fill(zipper, NFGate(code.name))
        token2 = Run(token.path, "U", token.log, token.tape,
                     token.vb, token.rs, token.ks)
        return [(1, 0, "head-gate", NFRun(token2, zipper2))]

    # A gate whose interrogated argument is headed by an emitted binder is a
    # rigid neutral, not a species error.  Coherently unwind gamma/mu into the
    # ordinary NF head ``g`` and launch the first armed argument query.
    neutral = _neutral_probe_shape(term, token, zipper)
    if (neutral is not None and zipper.cursor is not None
            and isinstance(at(zipper.tree, zipper.cursor), Hole)
            and not at(zipper.tree, zipper.cursor).armed):
        gate, lp, _index, extra, rb, after_mu = neutral
        arity = 1 + extra
        output_root = zipper.cursor
        schedule = _spine_schedule(output_root, arity)
        zipper2 = _fill(zipper, _spine(NFGate(gate), arity))
        first_output = zipper2.cursor
        zipper2 = _disarm(zipper2)
        occurrence = lp[1]
        parent_function = occurrence[:-1] + ("f",)
        address = RBL(parent_function, first_output, occurrence)
        child_rb = RB(rb[1], first_output, occurrence)
        parent_rb = RB(rb[1], rb[2], rb[3], schedule[1:])
        after_mu = _replace_rb(after_mu, rb, parent_rb)
        residue = NeutralProbeResidue(token.path, token.log, lp)
        zipper2 = Zipper(
            zipper2.tree, zipper2.cursor, zipper2.binders,
            zipper2.residues + (residue,))
        token2 = Run(occurrence, "D", (address,),
                     (child_rb, APP_BULLET) + after_mu,
                     token.vb, token.rs, token.ks)
        return [(1, 0, "head-neutral-gate", NFRun(token2, zipper2))]

    # Bound head: record the de Bruijn head and reserve its argument holes,
    # then use the ordinary bt2/ascend path to reach those arguments.
    shape = _head_shape(term, token) if token.d == "U" else None
    if shape is not None and zipper.cursor is not None:
        _leading, lp, arity, rb = shape
        index = _binder_index(zipper, ("source", token.path, token.log))
        # A binder consumed by a real argument is a beta-redex, not an
        # output binder.  In that case the ordinary ``arg`` row must carry
        # the logged position into the argument; only emitted binders are
        # readback heads.
        if index is not None:
            output_root = zipper.cursor
            zipper2 = _fill(zipper, _spine(NFVar(index), arity))
            schedule = _spine_schedule(output_root, arity)
            rb2 = RB(rb[1], rb[2], rb[3], schedule)
            token2 = Run(token.path, "D", token.log,
                         _replace_rb(token.tape, rb, rb2),
                         token.vb, token.rs, token.ks)
            return [(1, 0, "head", NFRun(token2, zipper2))]

    # Typed application transport.  The composed carrier has one persistent
    # BA alphabet for every lambda-IAM bullet.  This makes b3 globally
    # reconstructible; ENTER is separated by the complete leading-BA/RB tape
    # shape below, not by pretending that gate-question bullets have a
    # different persistent representation.
    if token.d == "D" and isinstance(code, App):
        token2 = Run(token.path + ("f",), "D", token.log,
                     (APP_BULLET,) + token.tape, token.vb,
                     token.rs, token.ks)
        return [(1, 0, "b1", NFRun(token2, zipper))]

    if (token.d == "D" and isinstance(code, Lam) and token.tape
            and token.tape[0] == APP_BULLET):
        token2 = Run(token.path + ("b",), "D", token.log,
                     token.tape[1:], token.vb, token.rs, token.ks)
        return [(1, 0, "b2", NFRun(token2, zipper))]

    # Instead of ordinary b3, an open output hole sends the one token into
    # the corresponding argument.  The parent continuation remains in the
    # immutable context, log, tape, and zipper; it is never copied.
    enter = _enter_shape(token, zipper)
    if enter is not None:
        parent_rb, output_path, _function_path, argument_path = enter
        address = RBL(token.path, output_path, argument_path)
        child_rb = RB(parent_rb[1], output_path, argument_path)
        zipper2 = _disarm(zipper)
        parent_rb2 = RB(parent_rb[1], parent_rb[2], parent_rb[3],
                        parent_rb[4][1:])
        parent_tail = _replace_rb(token.tape[1:], parent_rb, parent_rb2)
        token2 = Run(argument_path, "D", (address,) + token.log,
                     (child_rb, APP_BULLET) + parent_tail,
                     token.vb, token.rs, token.ks)
        return [(1, 0, "enter", NFRun(token2, zipper2))]

    # Ordinary b4.  Emitted source lambdas and beta-traversed lambdas share
    # the λIAM marker; ENTER distinguishes an output-spine slot by its exact
    # armed-cursor/leading-prefix invariant, not by marker provenance.
    if (token.d == "U" and token.path and token.path[-1] == "b"):
        lambda_path = token.path[:-1]
        token2 = Run(lambda_path, "U", token.log,
                     (APP_BULLET,) + token.tape, token.vb,
                     token.rs, token.ks)
        return [(1, 0, "b4", NFRun(token2, zipper))]

    if (token.d == "U" and token.path and token.path[-1] == "f"
            and token.tape and token.tape[0] == APP_BULLET):
        token2 = Run(token.path[:-1], "U", token.log, token.tape[1:],
                     token.vb, token.rs, token.ks)
        return [(1, 0, "b3", NFRun(token2, zipper))]

    # A completed child returns forward.  Leading bullets are the virtual
    # lambdas already present in its output; the delimiter and synthetic log
    # address are recoverable predecessor-fibre coordinates.
    closed = _first_rb(token.tape)
    if closed is not None:
        prefix, rb, tail = closed
        subtree_closed = not holes(at(zipper.tree, rb[2]))
        # In pure λ rows the prefix is exactly one bullet per emitted head
        # lambda.  A virtual gate answer instead leaves its ALPHA carrier in
        # this position; that carrier is moved verbatim to controller garbage
        # on a child return and remains in the root terminal residue.
        lambdas_match = (not all(entry == APP_BULLET for entry in prefix)
                         or leading_lambdas(at(zipper.tree, rb[2]))
                         == len(prefix))
        at_scope_root = token.d == "U" and token.path == rb[3]
        if at_scope_root and subtree_closed and lambdas_match and not rb[4]:
            if (rb[3] == () and not token.log and not tail
                    and token.vb is None
                    and rb[1] == leading_lambdas(zipper.tree)):
                # Cursor=None and tree=output are fixed by this row; token,
                # binder marks, and moved child residues are exactly the
                # remaining predecessor-fibre coordinate.
                garbage = _terminal_garbage(
                    token, rb, prefix, zipper)
                return [(1, 0, "rootdone", NFRunDone(
                    ("halt",), zipper.tree, garbage))]
            returned = _return_successor(state)
            if returned is not None:
                return [(1, 0, "return", returned)]

    # Kernel steps see exactly their audited plain-bullet alphabet.  The
    # adapter rewrites top-level tape entries only; the reachable grammar
    # invariant proves that BA never occurs in LP cargo, keys, replay records,
    # storage, VB, or log, so every other coordinate agrees literally.
    rows = step(term, _kernel_token(token), certificate)
    if not rows:
        return _error("stuck", state)
    out = []
    for sign, denominator, rule, target in rows:
        if isinstance(target, Run):
            out.append((sign, denominator, rule,
                        NFRun(_composed_token(target), zipper)))
        elif isinstance(target, RunDone):
            kind = target.kind if target.kind != "err" else rule
            out.append((sign, denominator, "error-" + rule,
                        NFRunDone(("error", kind), None,
                                  (token, zipper, target.residue))))
        elif isinstance(target, Done):
            out.append((sign, denominator, "error-invalid-kernel-target",
                        NFRunDone(("error", "invalid-kernel-target"), None,
                                  (token, zipper, target))))
        else:
            raise TypeError(target)
    return out


def nf_step(term, state, certificate=None):
    """Totalized composed step on the host representation.

    The physical rows above are total on every well-formed reachable state.
    This outer adapter also makes the semantic object total if malformed
    metadata, a host recursion bound, or an unchecked basis reaches it: the
    complete offending source and exception class become typed error garbage.
    Distinct failing sources therefore have distinct deterministic landings.
    Process-control exceptions are deliberately not intercepted.
    """
    try:
        return _nf_step_partial(term, state, certificate)
    except Exception as error:
        return [(1, 0, "error-machine-exception", NFRunDone(
            ("error", "machine-exception", type(error).__name__), None,
            ("raised-source", state)))]


def nf_init(_term):
    return NFRun(Run((), "D", (), (RB(0, (), ()),)), Zipper())


def evolve_nf(term, certificate=None, max_steps=10_000):
    """Exact cyclotomic evolution, imported lazily to avoid a cycle."""
    from dw import ONE, ZERO
    from dw_machine import edge_coefficient

    state = {nf_init(term): ONE}
    for time in range(max_steps):
        if all(isinstance(basis, NFDone) for basis in state):
            return time, state
        out = {}
        for basis, amplitude in state.items():
            for sign, denominator, rule, target in nf_step(
                    term, basis, certificate):
                coefficient = edge_coefficient(sign, denominator, rule)
                out[target] = out.get(target, ZERO) + amplitude * coefficient
        state = {basis: amplitude for basis, amplitude in out.items()
                 if amplitude != ZERO}
        norm = sum((amplitude.norm_sq() for amplitude in state.values()), ZERO)
        assert norm == ONE, (time + 1, norm)
    raise RuntimeError("readback step cap")


if __name__ == "__main__":
    from lam_iam import App

    I = Lam(Var(1))
    K = Lam(Lam(Var(2)))
    cases = {
        "I": I,
        "K": K,
        "beta-I": App(I, I),
        "under-lambda": Lam(App(I, Var(1))),
        "cross-scope": Lam(App(Var(1), Lam(Var(2)))),
        "local-scope": Lam(App(Var(1), Lam(Var(1)))),
    }
    for name, term in cases.items():
        elapsed, final = evolve_nf(term)
        assert len(final) == 1
        done = next(iter(final))
        assert done.kind == ("halt",), (name, done)
        print(f"{name:14s} steps={elapsed:3d} nf={nf_show(done.output)}")
