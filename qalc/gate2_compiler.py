"""Linear SSA compiler for the native-CNOT Gate-2 shadow machine.

The emitted program has one immutable ``p h t c`` invocation sector.  Its
preparation prefix stages ``n`` independently H-prepared bits through identity
``CNOT(0, q)`` buffers.  The target port of each buffer is a persistent linear
wire handle.  Immediately after the last buffer fires, all ``2^n`` words are
present at one reachable cut; the user circuit has not fired.

The canonical certificate generator is a terminating syntax walk over the
compiler image.  ``exploratory_certificate`` remains only as an independent
finite-carrier oracle used by the test battery.
"""

from dataclasses import dataclass
from enum import Enum

from certify import popkeys_for, transparent
from kernel import classify_arrival, is_alpha, is_gam
from lam_iam import App, Gate as SourceGate, Lam, Var, binder_path, subterm
import readback
import readback_certify

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


class Kind(Enum):
    H = "H"
    T = "T"
    CX = "CX"


@dataclass(frozen=True)
class Op:
    kind: Kind
    first: int
    second: int | None = None


@dataclass(frozen=True)
class Circuit:
    width: int
    gates: tuple[Op, ...] = ()

    def __post_init__(self):
        if self.width < 1:
            raise ValueError("circuit width must be positive")
        for gate in self.gates:
            if not 0 <= gate.first < self.width:
                raise ValueError(("wire out of range", gate))
            if gate.kind is Kind.CX:
                if (gate.second is None
                        or not 0 <= gate.second < self.width
                        or gate.first == gate.second):
                    raise ValueError(("malformed CNOT", gate))
            elif gate.second is not None:
                raise ValueError(("unary gate has second wire", gate))


@dataclass(frozen=True)
class Compiled:
    circuit: Circuit
    term: object
    prep_occurrences: tuple[tuple, ...]
    input_boundary_path: tuple


@dataclass(frozen=True)
class Ref:
    binder: int


@dataclass(frozen=True)
class BLam:
    binder: int
    body: object


@dataclass(frozen=True)
class BApp:
    function: object
    argument: object


@dataclass(frozen=True)
class BGate:
    name: str


def cnot(control, target, continuation):
    return apps(V("c"), control, target, continuation)


def _tuple_output(wires):
    return lam(("out",), apps(V("out"), *wires))


class _Names:
    def __init__(self):
        self.value = 0

    def pair(self, prefix):
        index = self.value
        self.value += 1
        return f"{prefix}a{index}", f"{prefix}b{index}"


def _compile_gates(gates, wires, names):
    """Compile one gate per persistent CNOT-port boundary.

    H and T results are immediately buffered through ``c 0 q``.  Thus every
    recursive call receives only persistent CNOT port variables, never a
    nested unary expression.  The physical interval from one completed CNOT
    fire to the next is consequently a fixed row word for each logical gate;
    output unwind retains exactly one three-row history block per gate.
    """
    if not gates:
        return _tuple_output(wires)
    gate, rest = gates[0], gates[1:]
    old = tuple(wires)
    updated = list(old)
    if gate.kind is Kind.H:
        unused_zero, output = names.pair("g")
        updated[gate.first] = V(output)
        continuation = lam(
            (unused_zero, output),
            _compile_gates(rest, tuple(updated), names))
        return cnot(ZERO, apps(V("h"), old[gate.first]), continuation)
    if gate.kind is Kind.T:
        unused_zero, output = names.pair("g")
        updated[gate.first] = V(output)
        continuation = lam(
            (unused_zero, output),
            _compile_gates(rest, tuple(updated), names))
        return cnot(ZERO, apps(V("t"), old[gate.first]), continuation)
    control, target = gate.first, gate.second
    out_control, out_target = names.pair("g")
    updated[control] = V(out_control)
    updated[target] = V(out_target)
    continuation = lam(
        (out_control, out_target),
        _compile_gates(rest, tuple(updated), names))
    return cnot(old[control], old[target], continuation)


def _prepare(width, index, wires, gates, names):
    if index == width:
        return _compile_gates(gates, tuple(wires), names)
    unused_zero, wire = names.pair("p")
    continuation = lam(
        (unused_zero, wire),
        _prepare(width, index + 1, wires + (V(wire),), gates, names))
    return cnot(ZERO, apps(V("h"), ZERO), continuation)


def _walk(term, path=()):
    yield path, term
    if isinstance(term, Lam):
        yield from _walk(term.body, path + ("b",))
    elif isinstance(term, App):
        yield from _walk(term.f, path + ("f",))
        yield from _walk(term.a, path + ("a",))


def _open_term(term):
    """Give every source binder a stable identity for image recognition."""
    next_binder = 0

    def visit(node, environment):
        nonlocal next_binder
        if isinstance(node, Var):
            if not 1 <= node.i <= len(environment):
                raise ValueError("open de Bruijn variable")
            return Ref(environment[node.i - 1])
        if isinstance(node, Lam):
            binder = next_binder
            next_binder += 1
            return BLam(binder, visit(node.body, (binder,) + environment))
        if isinstance(node, App):
            return BApp(visit(node.f, environment),
                        visit(node.a, environment))
        if isinstance(node, SourceGate):
            return BGate(node.name)
        raise TypeError(node)

    return visit(term, ())


def _unapps(node):
    arguments = []
    while isinstance(node, BApp):
        arguments.append(node.argument)
        node = node.function
    return node, tuple(reversed(arguments))


def _boolean_zero(node):
    return (isinstance(node, BLam)
            and isinstance(node.body, BLam)
            and node.body.body == Ref(node.binder))


def _wire_expression(node, wires):
    """Return (wire index, chronological unary gates, exact expression)."""
    outer = []
    cursor = node
    while True:
        head, arguments = _unapps(cursor)
        if (len(arguments) == 1 and isinstance(head, Ref)
                and head.binder in (0, 1)):
            outer.append(Kind.H if head.binder == 0 else Kind.T)
            cursor = arguments[0]
            continue
        break
    matches = [index for index, wire in enumerate(wires)
               if wire == cursor]
    if len(matches) != 1:
        raise ValueError("wire expression has no unique SSA base")
    return matches[0], tuple(reversed(outer)), node


def recognize_compiled(term):
    """Parse exactly the linear compiler grammar, with no search or cap."""
    try:
        opened = _open_term(term)
        head, invocation = _unapps(opened)
        if (len(invocation) != 3 or invocation != (
                BGate("h"), BGate("t"), BGate("c"))):
            return None
        if not (isinstance(head, BLam)
                and isinstance(head.body, BLam)
                and isinstance(head.body.body, BLam)):
            return None
        h_binder = head.binder
        t_binder = head.body.binder
        c_binder = head.body.body.binder
        if (h_binder, t_binder, c_binder) != (0, 1, 2):
            return None
        node = head.body.body.body

        wires = []
        while True:
            gate, arguments = _unapps(node)
            if not (gate == Ref(c_binder) and len(arguments) == 3
                    and _boolean_zero(arguments[0])):
                break
            h_head, h_arguments = _unapps(arguments[1])
            if not (h_head == Ref(h_binder) and len(h_arguments) == 1
                    and _boolean_zero(h_arguments[0])):
                break
            continuation = arguments[2]
            if not (isinstance(continuation, BLam)
                    and isinstance(continuation.body, BLam)):
                return None
            wires.append(Ref(continuation.body.binder))
            node = continuation.body.body
        if not wires:
            return None

        gates = []
        while True:
            head_node, arguments = _unapps(node)
            if head_node == Ref(c_binder) and len(arguments) == 3:
                continuation = arguments[2]
                if not (isinstance(continuation, BLam)
                        and isinstance(continuation.body, BLam)):
                    return None
                if _boolean_zero(arguments[0]):
                    unary_head, unary_arguments = _unapps(arguments[1])
                    if (len(unary_arguments) != 1
                            or unary_head not in (Ref(h_binder), Ref(t_binder))):
                        return None
                    target, nested, _expression = _wire_expression(
                        unary_arguments[0], wires)
                    if nested:
                        return None
                    kind = Kind.H if unary_head == Ref(h_binder) else Kind.T
                    gates.append(Op(kind, target))
                    wires[target] = Ref(continuation.body.binder)
                else:
                    control, control_unary, _control_expr = _wire_expression(
                        arguments[0], wires)
                    target, target_unary, _target_expr = _wire_expression(
                        arguments[1], wires)
                    if control == target or control_unary or target_unary:
                        return None
                    gates.append(Op(Kind.CX, control, target))
                    wires[control] = Ref(continuation.binder)
                    wires[target] = Ref(continuation.body.binder)
                node = continuation.body.body
                continue

            if not isinstance(node, BLam):
                return None
            tuple_head, tuple_arguments = _unapps(node.body)
            if (tuple_head != Ref(node.binder)
                    or len(tuple_arguments) != len(wires)):
                return None
            for expected_wire, argument in enumerate(tuple_arguments):
                wire, unary, _expression = _wire_expression(argument, wires)
                if wire != expected_wire or unary:
                    return None
            return Circuit(len(wires), tuple(gates))
    except (AttributeError, IndexError, TypeError, ValueError):
        return None


def compile_circuit(circuit):
    names = _Names()
    body = _prepare(circuit.width, 0, (), circuit.gates, names)
    shell = lower(lam(("h", "t", "c"), body))
    term = App(App(App(shell, SourceGate("h")), SourceGate("t")),
               SourceGate("c"))

    c_binder = tuple("fffbb")
    occurrences = tuple(
        path for path, node in _walk(term)
        if isinstance(node, Var) and binder_path(term, path) == c_binder)
    prep = occurrences[:circuit.width]
    if len(prep) != circuit.width:
        raise AssertionError(("missing preparation CNOT", occurrences))
    boundary = prep[-1][:-3] + ("a",)
    return Compiled(circuit, term, prep, boundary)


def exploratory_certificate(term, max_rounds=12, state_cap=300_000):
    """Finite fixed-point discovery for experiments, never the theorem."""
    readback.step = gate2_cnot_shadow.step
    readback.nf_step = gate2_cnot_shadow.nf_step
    readback_certify.nf_step = gate2_cnot_shadow.nf_step
    certificate = {}
    for _round in range(max_rounds):
        carrier = readback_certify.composed_carrier(
            term, certificate or None, state_cap=state_cap)
        candidate = {}
        for position, arrivals in carrier["arrivals"].items():
            popkeys = popkeys_for(arrivals)
            if transparent(arrivals, popkeys):
                candidate[position] = popkeys
        if candidate == certificate:
            return certificate, carrier
        certificate = candidate
    raise RuntimeError("shadow certificate fixpoint cap")


def compiler_certificate(compiled):
    """Generate the compiler certificate by a finite syntax walk.

    Each preparation H has a literal-zero input and therefore an empty pop
    set.  Every other maximal unary H/T run starts at one persistent output
    port of an earlier CNOT.  Its deepest application boundary erases exactly
    that port frame.  The compiler's linear SSA grammar makes both facts
    syntactic: no execution, carrier enumeration, search limit, or semantic
    fallback participates in canonical selection.
    """
    term = compiled.term
    h_binder = tuple("fff")
    t_binder = tuple("fff b".replace(" ", ""))
    c_binder = tuple("fffbb")

    # A continuation's outer and inner binders are the persistent c1/c2
    # outputs of the CNOT occurrence at the head of the same application.
    producers = {}
    for root, node in _walk(term):
        if not isinstance(node, App):
            continue
        try:
            gate = root + ("f", "f", "f")
            continuation = root + ("a",)
            if (isinstance(subterm(term, gate), Var)
                    and binder_path(term, gate) == c_binder
                    and isinstance(subterm(term, continuation), Lam)
                    and isinstance(subterm(
                        term, continuation + ("b",)), Lam)):
                invoked = ("L", gate, ())
                producers[continuation] = ("c1", invoked)
                producers[continuation + ("b",)] = ("c2", invoked)
        except (AttributeError, IndexError, TypeError, ValueError):
            continue

    certificate = {}
    for path, node in _walk(term):
        if not isinstance(node, App):
            continue
        head = node.f
        if not (isinstance(head, Var)
                and binder_path(term, path + ("f",))
                    in (h_binder, t_binder)):
            continue
        # Internal applications of a maximal unary run are deliberately not
        # certified.  Only the deepest application consumes a port frame.
        argument = node.a
        if isinstance(argument, App) and isinstance(argument.f, Var):
            try:
                if binder_path(term, path + ("a", "f")) \
                        in (h_binder, t_binder):
                    continue
            except (AttributeError, IndexError, TypeError, ValueError):
                pass
        boundary = path + ("a",)
        if isinstance(argument, Lam):
            # The only compiler-image lambda input to a unary gate is the
            # closed literal zero used by the preparation prefix.
            popkeys = frozenset()
        elif isinstance(argument, Var):
            producer = producers.get(binder_path(term, boundary))
            if producer is None:
                raise AssertionError(("unary input has no CNOT producer",
                                      boundary))
            popkeys = frozenset({producer})
        else:
            raise AssertionError(("malformed unary-run base", boundary))
        prior = certificate.setdefault(boundary, popkeys)
        if prior != popkeys:
            raise AssertionError(("compiler boundary provenance changed",
                                  boundary, prior, popkeys))
    return certificate


def compiled_runtime(circuit):
    """Exact transitions from the common input cut to first halt.

    The common cut is after the last preparation CNOT stage.  The fixed output
    zipper costs ``13*n+15``.  A logical H/T/CNOT contributes 47/55/29 rows
    to reach its next persistent-port boundary and three more rows when that
    CNOT history unwinds at output, hence total costs 50/58/32.
    """
    h_count = sum(gate.kind is Kind.H for gate in circuit.gates)
    t_count = sum(gate.kind is Kind.T for gate in circuit.gates)
    cx_count = sum(gate.kind is Kind.CX for gate in circuit.gates)
    return (13 * circuit.width + 15 + 50 * h_count + 58 * t_count
            + 32 * cx_count)


def physical_event_kinds(circuit):
    """Gate-fire events in the buffered physical row word."""
    out = []
    for gate in circuit.gates:
        out.append(gate.kind)
        if gate.kind in (Kind.H, Kind.T):
            out.append(Kind.CX)
    return tuple(out)


# Literal composed-machine rule words from one persistent-port boundary to
# the next.  These are intentionally duplicated in
# ``Gate2PhysicalSchedule.lean``: the Python battery compares them against
# every unmerged executable path, while Lean proves their list-inductive cost
# and ideal-action consequences.
H_ROWS = (
    "b2", "b2", "b1", "b1", "b1", "var", "b4", "b4", "b3", "b3",
    "arg", "call-c", "bt1", "b1", "b1", "b2", "b2", "bt2", "arg",
    "b2", "b2", "var", "park-c-1", "park-c-2", "b1", "var", "arg",
    "call", "bt1", "bt2", "arg", "var", "deliver-c-1",
    "deliver-c-2", "fire-h", "bt1g", "var", "arg", "anshead", "vb2",
    "vb2", "vvar", "bt1", "bt2", "b3", "fire-c-1", "fire-c-2",
)

PREP_FIRST_ROWS = (
    "b1", "b1", "b1", "b2", "b2", "b2", "b1", "b1", "b1", "var",
    "b4", "b4", "b3", "b3", "arg", "call-c", "bt1", "b1", "b1",
    "b2", "b2", "bt2", "arg", "b2", "b2", "var", "park-c-1",
    "park-c-2", "b1", "var", "arg", "call", "bt1", "bt2", "arg",
    "b2", "b2", "var", "fire-h", "bt1g", "var", "arg", "anshead",
    "vb2", "vb2", "vvar", "bt1", "bt2", "b3", "fire-c-1",
    "fire-c-2",
)

PREP_TAIL_ROWS = (
    "b2", "b2", "b1", "b1", "b1", "var", "b4", "b4", "b3", "b3",
    "arg", "call-c", "bt1", "b1", "b1", "b2", "b2", "bt2", "arg",
    "b2", "b2", "var", "park-c-1", "park-c-2", "b1", "var", "arg",
    "call", "bt1", "bt2", "arg", "b2", "b2", "var", "fire-h",
    "bt1g", "var", "arg", "anshead", "vb2", "vb2", "vvar", "bt1",
    "bt2", "b3", "fire-c-1", "fire-c-2",
)


def preparation_rows(width):
    if width < 1:
        raise ValueError("compiler preparation requires positive width")
    return PREP_FIRST_ROWS + PREP_TAIL_ROWS * (width - 1)


def t_rows(bit):
    return (
        "b2", "b2", "b1", "b1", "b1", "var", "b4", "b4", "b3",
        "b3", "arg", "call-c", "bt1", "b1", "b1", "b2", "b2",
        "bt2", "arg", "b2", "b2", "var", "park-c-1", "park-c-2",
        "b1", "var", "b4", "b3", "arg", "call", "bt1", "b1", "b2",
        "bt2", "arg", "var", "deliver-c-1", "deliver-c-2",
        "fire-t1" if bit else "fire-t0", "bt1g", "var", "b4", "b3",
        "arg", "anshead", "vb2", "vb2", "vvar", "bt1", "b1", "b2",
        "bt2", "b3", "fire-c-1", "fire-c-2",
    )


CX_ROWS = (
    "b2", "b2", "b1", "b1", "b1", "var", "b4", "b4", "b3", "b3",
    "arg", "call-c", "bt1", "b1", "b1", "b2", "b2", "bt2", "arg",
    "var", "deliver-c-1", "deliver-c-2", "park-c-1", "park-c-2", "var",
    "deliver-c-1", "deliver-c-2", "fire-c-1", "fire-c-2",
)

OUTPUT_WIRE_ROWS = (
    "enter", "var", "deliver-c-output", "vlam", "vlam", "vvar",
    "answer-c-port-1", "answer-c-port-2", "return",
)


def output_rows(width, gate_count):
    """Literal full-NF/unwind suffix after the last gate boundary."""
    rows = ["b2", "b2", "vlam", *("b1" for _ in range(width)),
            "var", "head", "bt2"]
    rows.extend(OUTPUT_WIRE_ROWS * width)
    histories = width + gate_count
    if histories == 0:
        rows.extend(("b4",) * 4)
    else:
        rows.extend(("b4",) * 3 + ("return-c",))
        rows.extend((("b4",) * 2 + ("return-c",)) * (histories - 1))
        rows.extend(("b4",) * 3)
    rows.extend(("b3",) * 3 + ("rootdone", "halt"))
    return tuple(rows)


def tdg(wire):
    return (Op(Kind.T, wire),) * 7


def toffoli(control1, control2, target):
    return (
        Op(Kind.H, target),
        Op(Kind.CX, control2, target),
        *tdg(target),
        Op(Kind.CX, control1, target),
        Op(Kind.T, target),
        Op(Kind.CX, control2, target),
        *tdg(target),
        Op(Kind.CX, control1, target),
        Op(Kind.T, control2),
        Op(Kind.T, target),
        Op(Kind.H, target),
        Op(Kind.CX, control1, control2),
        Op(Kind.T, control1),
        *tdg(control2),
        Op(Kind.CX, control1, control2),
    )
