"""Certificate validation on the composed qALC full-readback carrier.

Gate 1 starts at ``readback.nf_init`` and carries RB/RBL plus the output
zipper.  This module reuses only the kernel's local encoded-fibre predicates;
all arrivals, rows, Gram columns, and non-vacuity facts are recomputed from
``nf_step`` on the composed graph.
"""

from collections import deque
from dataclasses import dataclass
import hashlib

from certify import popkeys_for, transparent
from kernel import (BULLET, RHO, Done, Run, classify_arrival, is_gam,
                    is_lp, GAM, MU)
from readback import (APP_BULLET, Hole, NFDone, NFGate, NFApp, NFLam, NFRun,
                      NFRunDone, NFVar, _kernel_token,
                      is_rb, is_rbl, nf_init, nf_step)
from readback_checks import (ReductionLimit, as_output, normal_form,
                             reachable_gram)
from wf import wf, wf7


POP_RULES = frozenset(("b3",))


@dataclass(frozen=True)
class Admission:
    """A program with its closed operational-core Gate-1 proof.

    `certificate_items=None` is a *validated* conservative no-erasure
    certificate, not failure.  Failure is represented by absence of an
    `Admission`, so semantic code cannot confuse a cap/exception with a
    successfully admitted None certificate.
    """
    term: object
    certificate_items: object
    basis: int
    carrier_digest: str

    def certificate(self):
        return (None if self.certificate_items is None
                else dict(self.certificate_items))


def _stuck_free(rules):
    return "error-stuck" not in rules


def _output_is_closed_nf(term, depth=0):
    """Syntactic closed normal form in the BLC + neutral h/t language."""
    if isinstance(term, Hole):
        return False
    if isinstance(term, NFVar):
        return 1 <= term.index <= depth
    if isinstance(term, NFLam):
        return _output_is_closed_nf(term.body, depth + 1)
    if isinstance(term, NFGate):
        return term.name in ("h", "t")
    if isinstance(term, NFApp):
        if isinstance(term.function, NFLam):
            return False
        # A gate application is neutral only when its first argument is
        # variable-headed.  Closed lambda/gate-headed arguments are species
        # errors (and canonical booleans are redexes), never output NFs.
        if isinstance(term.function, NFGate):
            return (_neutral_headed_nf(term.argument, depth)
                    and _output_is_closed_nf(term.argument, depth))
        return (_output_is_closed_nf(term.function, depth)
                and _output_is_closed_nf(term.argument, depth))
    return False


def _neutral_headed_nf(term, depth):
    if isinstance(term, NFVar):
        return 1 <= term.index <= depth
    if isinstance(term, NFApp):
        return (_neutral_headed_nf(term.function, depth)
                and _output_is_closed_nf(term.argument, depth))
    return False


def _source_has_gate(node):
    from lam_iam import App, Gate, Lam, Var
    if isinstance(node, Gate):
        return True
    if isinstance(node, Var):
        return False
    if isinstance(node, Lam):
        return _source_has_gate(node.body)
    if isinstance(node, App):
        return _source_has_gate(node.f) or _source_has_gate(node.a)
    raise TypeError(node)


def _project_entry(entry):
    """Embed one composed value deeply in the audited kernel alphabet."""
    if entry == APP_BULLET:
        return BULLET
    if is_rb(entry):
        # The root delimiter is the kernel rho.  Each nested RB pairs with
        # one synthetic RBL log entry; projecting the pair to a balanced
        # mu/gamma scaffold preserves W0, W1, W5, and W6 even after an RBL is
        # captured inside an LP slice or frozen into an instance key.
        return RHO if entry[2] == () and entry[3] == () else MU("h")
    if is_rbl(entry):
        return GAM("h")
    if isinstance(entry, tuple):
        return tuple(_project_entry(field) for field in entry)
    return entry


def _project_entries(entries):
    return tuple(_project_entry(entry) for entry in entries)


def kernel_projection(token):
    """Underlying token obtained by forgetting delimited readback control.

    The root RB projects to rho.  A nested RB/RBL pair projects to a balanced
    mu/gamma scaffold, retaining its contribution to log level and probe
    balance even inside LP cargo.  BA projects to the ordinary lambda-IAM
    bullet.  This embeds controller bookkeeping in the exact token grammar
    whose W0--W9 checker was audited.
    """
    return Run(token.path, token.d, _project_entries(token.log),
               _project_entries(token.tape), _project_entry(token.vb),
               _project_entries(token.rs), _project_entries(token.ks))


def _projected_fibres(states, certificate):
    fibres = {}
    if not certificate:
        return fibres
    for state in states:
        if not isinstance(state, NFRun):
            continue
        token = kernel_projection(state.token)
        if not (token.vb is None and token.path in certificate
                and token.path and token.path[-1] == "a"
                and token.d == "U" and token.log
                and is_gam(token.log[0])):
            continue
        classified = classify_arrival(token.tape)
        if classified is None:
            continue
        bit, logged, tail = classified
        popkeys = certificate[token.path]
        if popkeys is None:
            popped, retained = token.rs, ()
        else:
            popped = tuple(frame for frame in token.rs
                           if (frame[1], frame[2]) in popkeys)
            retained = tuple(frame for frame in token.rs
                             if (frame[1], frame[2]) not in popkeys)
        key = (token.path, bit, tail, token.log, token.ks, retained)
        value = (logged, popped)
        if key in fibres and fibres[key] != value:
            fibres[key] = "MULTI"
        else:
            fibres.setdefault(key, value)
    return fibres


def composed_carrier(term, certificate=None, tick_depth=2,
                     state_cap=300_000):
    """Close all running/readback states plus a finite terminal prefix.

    The terminal tail is infinite by design and is discharged uniformly by
    ``TerminalAdapters.lean``; ``tick_depth=2`` includes entry/tick range
    separation and two concrete advance rows in every generated core.
    """
    start = nf_init(term)
    seen, todo = {start}, deque([start])
    arrivals = {}
    rules = set()
    stuck = []
    recall_targets = {}
    recall_collisions = []
    pop_targets = {}
    pop_collisions = []
    incoming = {}

    while todo:
        source = todo.popleft()
        if isinstance(source, NFDone) and source.tick >= tick_depth:
            continue

        if isinstance(source, NFRun):
            token = kernel_projection(source.token)
            if (token.vb is None and token.path and token.path[-1] == "a"
                    and token.d == "U" and token.log
                    and is_gam(token.log[0])):
                classified = classify_arrival(token.tape)
                if classified is not None:
                    bit, logged, tail = classified
                    arrivals.setdefault(token.path, []).append(
                        (bit, logged, tail, token.log, token.rs, token.ks))

        rows = nf_step(term, source, certificate)
        if not rows:
            stuck.append(source)
        for _sign, _denominator, rule, target in rows:
            rules.add(rule)
            incoming.setdefault(target, []).append((source, rule))
            if rule == "recall":
                prior = recall_targets.setdefault(target, source)
                if prior != source:
                    recall_collisions.append((prior, source, target))
            if rule in POP_RULES:
                prior = pop_targets.setdefault(target, (rule, source))
                if prior != (rule, source):
                    pop_collisions.append((prior, (rule, source), target))
            if target not in seen:
                seen.add(target)
                todo.append(target)
        if len(seen) > state_cap:
            raise RuntimeError("composed carrier cap")

    return {
        "states": seen,
        "arrivals": arrivals,
        "rules": rules,
        "stuck": stuck,
        "recall_collisions": recall_collisions,
        "pop_collisions": pop_collisions,
        "incoming": incoming,
    }


def validate_nf(term, certificate=None, state_cap=300_000):
    """Validate encoded fibres and every column on the actual Gate-1 graph."""
    carrier = composed_carrier(term, certificate, state_cap=state_cap)
    arrivals = carrier["arrivals"]

    if certificate:
        fibre_functions = all(
            position in arrivals
            and transparent(arrivals[position], popkeys)
            for position, popkeys in certificate.items())
        vacuous_positions = sum(
            position not in arrivals for position in certificate)
        vacuous_keys = 0
        for position, popkeys in certificate.items():
            if position not in arrivals:
                continue
            frame_keys = {
                (frame[1], frame[2])
                for (_bit, _logged, _tail, _log, records, _storage)
                in arrivals[position]
                for frame in records
            }
            vacuous_keys += len(popkeys - frame_keys)
    else:
        fibre_functions = True
        vacuous_positions = vacuous_keys = 0

    gram = reachable_gram(term, certificate, state_cap=state_cap)
    fibres = _projected_fibres(carrier["states"], certificate)
    wf_violations = []
    wf7_violations = []
    for state in carrier["states"]:
        if not isinstance(state, NFRun):
            continue
        projected = kernel_projection(state.token)
        bad = wf(term, projected)
        if bad:
            wf_violations.append((state, bad))
        bad7 = wf7(term, certificate, projected, fibres)
        if bad7:
            wf7_violations.append((state, bad7))

    # H's two columns intentionally share their two landing states.  Every
    # other common target between distinct source columns is a range error;
    # this is checked independently of the coefficient Gram calculation.
    range_violations = []
    for target, incoming in carrier["incoming"].items():
        distinct = {(source, rule) for source, rule in incoming}
        sources = {source for source, _rule in distinct}
        if len(sources) > 1:
            rules = {rule for _source, rule in distinct}
            if rules != {"fire-h"} or len(sources) != 2:
                range_violations.append((target, tuple(distinct)))
    pop_errors = sum(rule == "error-pop-err" for rule in carrier["rules"])
    stuck_errors = sum(rule == "error-stuck" for rule in carrier["rules"])
    host_errors = sum(rule in {"error-machine-exception",
                               "error-invalid-kernel-target"}
                      for rule in carrier["rules"])
    halt_outputs = {
        state.output for state in carrier["states"]
        if ((isinstance(state, NFRunDone) or isinstance(state, NFDone))
            and state.kind == ("halt",))
    }
    output_nf_violations = sum(
        not _output_is_closed_nf(output) for output in halt_outputs)
    pure_output_mismatch = 0
    try:
        if not _source_has_gate(term):
            expected = as_output(normal_form(term))
            pure_output_mismatch = int(halt_outputs != {expected})
    except (ReductionLimit, RecursionError, TypeError, ValueError):
        # A pure sector without independently certified normalization takes
        # the total conservative fallback rather than an unchecked admission.
        pure_output_mismatch = 1
    certified = (
        fibre_functions
        and not carrier["stuck"]
        and not carrier["recall_collisions"]
        and not carrier["pop_collisions"]
        and pop_errors == 0
        and host_errors == 0
        and _stuck_free(carrier["rules"])
        and not wf_violations
        and not wf7_violations
        and not range_violations
        and output_nf_violations == 0
        and pure_output_mismatch == 0
        and not gram["nonunit"]
        and not gram["nonorthogonal"]
        and vacuous_positions == 0
        and vacuous_keys == 0
    )
    state_encoding = "\n".join(sorted(map(repr, carrier["states"]))).encode()
    return {
        "certified": certified,
        "basis": len(carrier["states"]),
        "arrivals": sum(map(len, arrivals.values())),
        "positions": len(arrivals),
        "fibre_functions": fibre_functions,
        "stuck": len(carrier["stuck"]),
        "recall_collisions": len(carrier["recall_collisions"]),
        "pop_collisions": len(carrier["pop_collisions"]),
        "pop_errors": pop_errors,
        "stuck_errors": stuck_errors,
        "host_errors": host_errors,
        "wf_violations": len(wf_violations),
        "wf7_violations": len(wf7_violations),
        "range_violations": len(range_violations),
        "output_nf_violations": output_nf_violations,
        "pure_output_mismatch": pure_output_mismatch,
        "nonunit": len(gram["nonunit"]),
        "nonorthogonal": len(gram["nonorthogonal"]),
        "vacuous_positions": vacuous_positions,
        "vacuous_keys": vacuous_keys,
        "carrier_digest": hashlib.sha256(state_encoding).hexdigest(),
    }


def admit_nf_total(term, state_cap=300_000):
    """Return a validated finite-carrier admission, or ``None`` on failure.

    The kernel selector supplies an optimization candidate only. The candidate
    and, if necessary, conservative no-erasure metadata are each accepted
    only after fresh closure of the composed RB/RBL carrier.  A cap,
    divergence, malformed term, validation defect, or unexpected exception
    returns no admission; it is never laundered into certificate ``None``.
    """
    from certify import discover_total
    from lam_iam import App, Gate, Lam, Var

    def has_gate(node):
        if isinstance(node, Gate):
            return True
        if isinstance(node, Var):
            return False
        if isinstance(node, Lam):
            return has_gate(node.body)
        if isinstance(node, App):
            return has_gate(node.f) or has_gate(node.a)
        raise TypeError(node)

    try:
        gated = has_gate(term)
    except (RecursionError, TypeError):
        return None

    try:
        candidate = (discover_total(term, state_cap=min(state_cap, 100_000))
                     if gated else None)
    except Exception:
        candidate = None
    candidates = [candidate]
    if candidate is not None:
        candidates.append(None)
    for selected in candidates:
        try:
            result = validate_nf(term, selected, state_cap=state_cap)
            if result["certified"]:
                items = (None if selected is None else
                         tuple(sorted(selected.items(), key=repr)))
                return Admission(term, items, result["basis"],
                                 result["carrier_digest"])
        except Exception:
            # One malformed erasure candidate must not suppress the
            # independently validated no-erasure fallback candidate.
            continue
    return None


def selector_battery(state_cap=300_000):
    """The canonical composed selector is total and matches frozen metadata."""
    from lam_iam import App, Gate, Lam, Var
    from suite import CERTS, PROGRAMS

    for name, term in PROGRAMS.items():
        admission = admit_nf_total(term, state_cap=state_cap)
        if admission is None:
            raise AssertionError((name, "canonical sector rejected"))
        selected = admission.certificate()
        if selected != CERTS.get(name):
            raise AssertionError((name, selected, CERTS.get(name)))

    omega_body = App(Var(1), Var(1))
    omega = App(Lam(omega_body), Lam(omega_body))
    homega = App(App(Lam(Lam(App(Var(2), omega))), Gate("h")), Gate("t"))
    if admit_nf_total(homega, state_cap=20_000) is not None:
        raise AssertionError("h Omega selector did not conservatively reject")
    if _stuck_free({"b1", "error-stuck"}):
        raise AssertionError("stuck-error gate is not live")
    if _output_is_closed_nf(NFApp(NFGate("h"), NFLam(NFVar(1)))):
        raise AssertionError("closed non-boolean gate argument admitted as NF")
    if not _output_is_closed_nf(
            NFLam(NFApp(NFGate("h"), NFVar(1)))):
        raise AssertionError("neutral variable-headed gate NF rejected")
    pure = Lam(Var(1))
    pure_result = validate_nf(pure, None, state_cap=state_cap)
    if (not pure_result["certified"]
            or pure_result["pure_output_mismatch"] != 0):
        raise AssertionError(("pure output comparison is not live",
                              pure_result))
    return len(PROGRAMS) + 2


if __name__ == "__main__":
    from gate1_programs import (MIXED_CERTIFICATES, MIXED_PROGRAMS,
                                NEUTRAL_CERTIFICATES, NEUTRAL_PROGRAMS,
                                STRESS_CERTIFICATES, STRESS_PROGRAMS)
    from suite import CERTS, PROGRAMS

    total_basis = 0
    for name, term in PROGRAMS.items():
        result = validate_nf(term, CERTS.get(name))
        if not result["certified"]:
            raise AssertionError((name, result))
        total_basis += result["basis"]
        print(f"{name:9s} {result}")
    for name, term in MIXED_PROGRAMS.items():
        result = validate_nf(term, MIXED_CERTIFICATES[name])
        if not result["certified"]:
            raise AssertionError((name, result))
        total_basis += result["basis"]
        print(f"{name:9s} {result}")
    for name, term in STRESS_PROGRAMS.items():
        result = validate_nf(term, STRESS_CERTIFICATES[name])
        if not result["certified"]:
            raise AssertionError((name, result))
        total_basis += result["basis"]
        print(f"{name:9s} {result}")
    for name, term in NEUTRAL_PROGRAMS.items():
        result = validate_nf(term, NEUTRAL_CERTIFICATES[name])
        if not result["certified"]:
            raise AssertionError((name, result))
        total_basis += result["basis"]
        print(f"{name:14s} {result}")
    selected = selector_battery()
    print(f"QALC COMPOSED CERTIFICATES: PASS basis={total_basis} "
          f"selector={selected}")
