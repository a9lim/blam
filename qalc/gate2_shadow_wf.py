"""Finite checker for the native-CNOT compiler-indexed state grammar.

The CNOT controller crosses its three source applications and two virtual
continuation binders by explicit reversible rows.  Consequently its compiler
sectors do *not* satisfy Gate 1's raw lambda-IAM logged-position equation.
This checker states the replacement: ordinary entries retain their kernel
grammar, while an SSA compiler occurrence is a unique static owner and
may carry a shortened log slice.  The missing level is bounded by the live
CNOT continuation histories that account for the shortcut.

This is an executable finite-carrier invariant checker, not the unbounded
preservation proof. The latter lives in `Gate2BoundaryInvariant.lean`, the
`Gate2Contextual*.lean` chain, and `Gate2CleanCompilation.lean`.
"""

from kernel import (Run, alpha_keys_live, is_alpha, is_ans, is_gam,
                    is_mu, is_rho, ks_bitfree_keys)
from lam_iam import (BULLET, App, Gate, Lam, Var, binder_path, is_lp,
                     level, subterm)
from readback import NFRun
from readback_certify import kernel_projection

import gate2_cnot_shadow as shadow
from gate2_compiler import recognize_compiled


GATES = frozenset(("h", "t", "c1", "c2"))
_IMAGE_CACHE = {}


def _image_ok(compiled):
    """Identity-safe cache: a carrier shares one immutable source term."""
    key = id(compiled.term)
    prior = _IMAGE_CACHE.get(key)
    if prior is not None and prior[0] is compiled.term:
        return prior[1]
    result = recognize_compiled(compiled.term) is not None
    _IMAGE_CACHE[key] = (compiled.term, result)
    return result


def _pure(value):
    stack = [value]
    seen = set()
    while stack:
        current = stack.pop()
        if type(current) is tuple:
            if id(current) in seen:
                continue
            seen.add(id(current))
            stack.extend(current)
        elif type(current) not in (str, int):
            return False
    return True


def _epoch_ok(epoch):
    stack = [epoch]
    while stack:
        current = stack.pop()
        if current == ("F",):
            continue
        if not (type(current) is tuple and current):
            return False
        if current[0] == "EA" and len(current) == 2:
            stack.append(current[1])
        elif current[0] == "EP" and len(current) == 3:
            stack.extend(current[1:])
        else:
            return False
    return True


def _bit(value):
    return type(value) is int and value in (0, 1)


def _path_node(term, path):
    try:
        return subterm(term, path)
    except (AttributeError, IndexError, TypeError, ValueError):
        return None


def _lp_ok(term, entry, compiler_owned=False):
    if not (type(entry) is tuple and len(entry) == 3
            and entry[0] == "L" and type(entry[1]) is tuple
            and type(entry[2]) is tuple):
        return False
    occurrence, slice_ = entry[1], entry[2]
    if not isinstance(_path_node(term, occurrence), Var):
        return False
    try:
        required = level(occurrence) - level(binder_path(term, occurrence))
    except (AttributeError, IndexError, TypeError, ValueError):
        return False
    # A compiler gate/port occurrence is its own unique static owner.  The
    # CNOT shortcut may have discharged a prefix of its IAM slice, but may not
    # invent cargo or reverse the level defect.
    if compiler_owned:
        if not 0 <= len(slice_) <= required:
            return False
    elif len(slice_) != required:
        return False
    return all(_entry_ok(term, nested, compiler_owned=True)
               for nested in slice_)


def _instance_ok(term, entry):
    return _lp_ok(term, entry, compiler_owned=True)


def _entry_ok(term, entry, compiler_owned=False):
    if entry == BULLET or is_rho(entry):
        return True
    if is_lp(entry):
        return _lp_ok(term, entry, compiler_owned=compiler_owned)
    if shadow.is_cgam(entry):
        try:
            first, second, continuation = shadow._c_arguments(
                term, entry[4])
        except (AttributeError, IndexError, TypeError, ValueError):
            return False
        return (_instance_ok(term, entry[3])
                and entry[4] == entry[3][1]
                and entry[5:] == (first, second, continuation))
    if shadow.is_cmu(entry):
        return _instance_ok(term, entry[3])
    if is_gam(entry) or is_mu(entry):
        return len(entry) == 2 and entry[1] in ("h", "t")
    if is_ans(entry):
        return (len(entry) == 3 and entry[1] in ("h", "t")
                and _bit(entry[2]))
    if is_alpha(entry):
        return (len(entry) == 5 and entry[1] in GATES
                and _instance_ok(term, entry[2]) and _bit(entry[3])
                and _epoch_ok(entry[4]))
    return False


def _descriptor_ok(term, descriptor):
    if not (type(descriptor) is tuple and descriptor):
        return False
    if descriptor[0] == "DL" and len(descriptor) == 2:
        return _lp_ok(term, descriptor[1], compiler_owned=True)
    if descriptor[0] == "DA" and len(descriptor) == 4:
        return (descriptor[1] in GATES
                and _instance_ok(term, descriptor[2])
                and _epoch_ok(descriptor[3]))
    return False


def _frame_descriptors_ok(term, descriptors):
    return (type(descriptors) is tuple
            and all(type(item) is tuple and len(item) == 3
                    and item[0] in GATES
                    and _instance_ok(term, item[1])
                    and _epoch_ok(item[2])
                    for item in descriptors))


def _storage_ok(term, entry):
    if shadow.is_cp(entry):
        invoked, bit, descriptor, frames, occurrence, continuation = entry[1:]
        try:
            _first, _second, wanted = shadow._c_arguments(term, occurrence)
        except (AttributeError, IndexError, TypeError, ValueError):
            return False
        return (_instance_ok(term, invoked) and invoked[1] == occurrence
                and _bit(bit) and _descriptor_ok(term, descriptor)
                and _frame_descriptors_ok(term, frames)
                and continuation == wanted)
    if shadow.is_ch(entry):
        invoked, d1, f1, d2, f2, occurrence, continuation = entry[1:]
        try:
            _first, _second, wanted = shadow._c_arguments(term, occurrence)
        except (AttributeError, IndexError, TypeError, ValueError):
            return False
        return (_instance_ok(term, invoked) and invoked[1] == occurrence
                and _descriptor_ok(term, d1)
                and _frame_descriptors_ok(term, f1)
                and _descriptor_ok(term, d2)
                and _frame_descriptors_ok(term, f2)
                and continuation == wanted)
    if shadow.is_cquery(entry):
        return (_instance_ok(term, entry[2])
                and _lp_ok(term, entry[3], compiler_owned=True))
    if shadow.is_cdead(entry):
        return (_instance_ok(term, entry[2]) and _epoch_ok(entry[3])
                and _lp_ok(term, entry[4], compiler_owned=True))
    if shadow.is_cstage(entry):
        return True
    if not (type(entry) is tuple and entry):
        return False
    if entry[0] == "K" and len(entry) == 3:
        return entry[1] in ("h", "t") and _instance_ok(term, entry[2])
    if entry[0] == "KA" and len(entry) == 3:
        return entry[1] in ("h", "t") and _instance_ok(term, entry[2])
    if entry[0] == "K" and len(entry) == 2:
        return _entry_ok(term, entry[1], compiler_owned=True)
    if entry[0] == "KD" and len(entry) == 2:
        return (type(entry[1]) is tuple
                and all(type(key) is tuple and len(key) == 2
                        and key[0] in GATES
                        and _instance_ok(term, key[1])
                        for key in entry[1]))
    return False


def _gam_count(entry):
    total, stack = 0, [entry]
    while stack:
        current = stack.pop()
        if is_gam(current) or shadow.is_cgam(current):
            total += 1
        elif is_lp(current):
            stack.extend(current[2])
        elif (type(current) is tuple and len(current) == 2
              and current[0] == "K"):
            stack.append(current[1])
    return total


def wf(compiled, state):
    """Return the violated shadow invariants, or ``[]``."""
    if not _image_ok(compiled):
        return ["SW0-image"]
    if not isinstance(state, NFRun):
        return []
    token = kernel_projection(state.token)
    if type(token) is not Run:
        return ["SW0-type"]
    if not (all(type(register) is tuple and _pure(register)
                for register in (token.path, token.log, token.tape,
                                 token.rs, token.ks))
            and type(token.d) is str
            and (token.vb is None or _pure(token.vb))):
        return ["SW0-purity"]
    bad = []
    if (token.d not in ("D", "U") or _path_node(compiled.term, token.path) is None
            or not all(_entry_ok(compiled.term, entry, compiler_owned=True)
                       for entry in token.log + token.tape)
            or not all(type(frame) is tuple and len(frame) == 5
                       and frame[0] == "R" and frame[1] in GATES
                       and _instance_ok(compiled.term, frame[2])
                       and _bit(frame[3]) and _epoch_ok(frame[4])
                       for frame in token.rs)
            or not all(_storage_ok(compiled.term, entry)
                       for entry in token.ks)
            or not (token.vb is None
                    or (type(token.vb) is tuple and len(token.vb) == 3
                        and token.vb[0] in GATES and _bit(token.vb[1])
                        and type(token.vb[2]) is int
                        and token.vb[2] in (0, 1, 2)))):
        return ["SW0-grammar"]

    active = sum(shadow.is_ch(entry)
                 and token.path[:len(entry[7])] == entry[7]
                 for entry in token.ks)
    defect = level(token.path) - len(token.log)
    if not 0 <= defect <= active:
        bad.append("SW1-level")

    keys = [(frame[1], frame[2]) for frame in token.rs]
    if len(keys) != len(set(keys)):
        bad.append("SW2-duplicate-frame")
    if token.rs != tuple(sorted(token.rs, key=repr)):
        bad.append("SW2-order")

    bits = {}
    for frame in token.rs:
        bits.setdefault((frame[1], frame[2]), set()).add(frame[3])
    for entry in token.tape + token.log:
        stack = [entry]
        while stack:
            current = stack.pop()
            if is_alpha(current):
                bits.setdefault((current[1], current[2]), set()).add(
                    current[3])
            elif is_lp(current):
                stack.extend(current[2])
    if any(len(values) > 1 for values in bits.values()):
        bad.append("SW3-bit")

    if token.vb is not None and token.log and is_lp(token.log[0]):
        key = (token.vb[0], token.log[0])
        if key in keys:
            bad.append("SW4-frame")
        if any(key in alpha_keys_live(entry)
               for entry in token.tape + token.log):
            bad.append("SW4-ticket")

    lifecycle = {}
    for entry in token.ks:
        if shadow.is_cp(entry) or shadow.is_ch(entry):
            lifecycle.setdefault(entry[1], []).append(entry[0])
    if any(len(kinds) > 1 for kinds in lifecycle.values()):
        bad.append("SW4-lifecycle")
    if any(shadow.is_cstage(entry) for entry in token.ks[1:]):
        bad.append("SW4-stage")

    gammas = sum(_gam_count(entry)
                 for entry in token.log + token.tape + token.ks)
    mus = sum(is_mu(entry) or shadow.is_cmu(entry)
              for entry in token.tape)
    answers = sum(is_ans(entry) for entry in token.tape)
    if gammas != mus + answers:
        bad.append("SW5-probe")
    if (sum(is_rho(entry) for entry in token.tape) != 1
            or not token.tape or not is_rho(token.tape[-1])):
        bad.append("SW6-root")

    answerable = set(keys)
    for entry in token.tape + token.log:
        answerable |= alpha_keys_live(entry)
    burial = set()
    for entry in token.ks:
        if type(entry) is tuple and len(entry) == 2 and entry[0] == "K":
            burial |= alpha_keys_live(entry[1])
    if (answerable | burial) & ks_bitfree_keys(token.ks):
        bad.append("SW8-exclusivity")

    tickets = {}
    for entry in token.tape + token.log:
        for key in alpha_keys_live(entry):
            tickets[key] = tickets.get(key, 0) + 1
    if any(count > 1 for count in tickets.values()):
        bad.append("SW9-ticket")
    return bad
