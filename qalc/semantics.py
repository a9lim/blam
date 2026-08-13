"""Exact semantic objects on admitted finite qALC Gate-1 carriers."""

from collections import defaultdict
from dataclasses import dataclass

from dw import ONE, ZERO
from dw_machine import edge_coefficient
from readback import NFDone, nf_init, nf_step
from readback_certify import Admission, admit_nf_total


CANONICAL_STATE_CAP = 300_000


@dataclass(frozen=True)
class Sector:
    """Static program metadata selected once at canonical initialization."""
    term: object
    admission: object          # Admission, or None for conservative history


@dataclass(frozen=True)
class Conservative:
    """Fallback state with the exact one-step predecessor fibre appended."""
    live: object
    history: tuple = ()


def conservative_predecessor(sector, target):
    """Executable, relation-checked inverse of one fallback landing."""
    term, certificate, conservative = _require_sector(sector)
    if not conservative:
        raise ValueError("sector is not conservative")
    if not isinstance(target, Conservative) or not target.history:
        raise ValueError("not a conservative landing")
    source = Conservative(target.history[-1], target.history[:-1])
    if not any(landing == target.live
               for _sign, _denominator, _rule, landing
               in nf_step(term, source.live, certificate)):
        raise ValueError("history head is not a physical predecessor")
    return source


def try_admit(term, state_cap=300_000):
    """Return the canonical finite-core admission, if one closes."""
    return admit_nf_total(term, state_cap)


def _select_with_cap(term, state_cap):
    return Sector(term, try_admit(term, state_cap))


def select(term):
    """Total deterministic sector selection for a finite closed term.

    Failure to close a certified carrier selects the specified conservative
    history representation.  Selection is static and branch-independent;
    `U` is therefore defined even when certification rejects.  The composed
    step's typed exception adapter totalizes malformed host-level landings as
    source-retaining error states rather than letting an exception escape.
    """
    return _select_with_cap(term, CANONICAL_STATE_CAP)


def _require_sector(sector):
    if not isinstance(sector, Sector):
        raise TypeError("U requires a semantics.Sector")
    if sector.admission is not None:
        if (not isinstance(sector.admission, Admission)
                or sector.admission.term != sector.term):
            raise TypeError("sector admission mismatch")
        return sector.term, sector.admission.certificate(), False
    return sector.term, None, True


def U(sector, vector):
    """Exact sparse linear extension of one totalized machine transition.

    Certified sectors use their minimal concrete carrier.  Rejected sectors
    use the conservative representation: each landing appends the complete
    prior live state, which is exactly the predecessor-fibre coordinate.  H
    outcomes from one source append the same coordinate and remain coherent;
    different source columns are orthogonal by construction.
    """
    term, certificate, conservative = _require_sector(sector)
    target = {}
    for source, amplitude in vector.items():
        if conservative:
            if not isinstance(source, Conservative):
                raise TypeError("conservative sector has an unlogged basis")
            live, history = source.live, source.history
        else:
            if isinstance(source, Conservative):
                raise TypeError("certified sector has a conservative basis")
            live, history = source, None
        for sign, denominator, rule, landing in nf_step(
                term, live, certificate):
            coefficient = edge_coefficient(sign, denominator, rule)
            basis = (Conservative(landing, history + (live,))
                     if conservative else landing)
            target[basis] = (target.get(basis, ZERO)
                             + amplitude * coefficient)
    result = {basis: amplitude for basis, amplitude in target.items()
              if amplitude != ZERO}
    if conservative:
        source_norm = sum(
            (amplitude.norm_sq() for amplitude in vector.values()), ZERO)
        target_norm = sum(
            (amplitude.norm_sq() for amplitude in result.values()), ZERO)
        if source_norm != target_norm:
            raise AssertionError(("conservative U changed norm",
                                  source_norm, target_norm))
    return result


def evolve(sector, transitions):
    term, _certificate, conservative = _require_sector(sector)
    initial = nf_init(term)
    state = {Conservative(initial) if conservative else initial: ONE}
    yield 0, state
    for time in range(1, transitions + 1):
        state = U(sector, state)
        yield time, state


def halt_mass(vector):
    return sum((amplitude.norm_sq() for state, amplitude in vector.items()
                if isinstance(state.live if isinstance(state, Conservative)
                              else state, NFDone)
                and (state.live if isinstance(state, Conservative)
                     else state).kind == ("halt",)),
               ZERO)


def error_mass(vector):
    return sum((amplitude.norm_sq() for state, amplitude in vector.items()
                if isinstance(state.live if isinstance(state, Conservative)
                              else state, NFDone)
                and (state.live if isinstance(state, Conservative)
                     else state).kind[0] == "error"),
               ZERO)


def running_mass(vector):
    return sum((amplitude.norm_sq() for state, amplitude in vector.items()
                if not isinstance(state.live if isinstance(state, Conservative)
                                  else state, NFDone)), ZERO)


def mu_p(sector, transitions):
    """The exact finite-time halt probability mu_p(transitions)."""
    vector = None
    for _time, vector in evolve(sector, transitions):
        pass
    return halt_mass(vector)


def mu_approximants(sector, transitions):
    """The exact monotone sequence mu_p(tau) through ``transitions``."""
    return [(time, halt_mass(vector))
            for time, vector in evolve(sector, transitions)]


def rho(vector):
    """Partial trace over terminal garbage/control/tick.

    The result is a sparse matrix indexed by pairs of closed normal forms.
    Only equal traced coordinates contribute a coherent block.
    """
    blocks = defaultdict(dict)
    for state, amplitude in vector.items():
        if isinstance(state, Conservative):
            live, history = state.live, state.history
        else:
            live, history = state, None
        if not isinstance(live, NFDone) or live.kind != ("halt",):
            continue
        key = (live.garbage, live.tick, history)
        block = blocks[key]
        block[live.output] = block.get(live.output, ZERO) + amplitude

    matrix = {}
    for block in blocks.values():
        for left, left_amplitude in block.items():
            for right, right_amplitude in block.items():
                entry = left_amplitude * right_amplitude.conj()
                key = (left, right)
                matrix[key] = matrix.get(key, ZERO) + entry
    return {key: value for key, value in matrix.items() if value != ZERO}


def rho_p(sector, transitions):
    """The exact finite-time reduced output operator rho_p(transitions)."""
    vector = None
    for _time, vector in evolve(sector, transitions):
        pass
    return rho(vector)


def rho_approximants(sector, transitions):
    return [(time, rho(vector))
            for time, vector in evolve(sector, transitions)]


def dyadic_weight(bit_length):
    """2^-|p| in the exact Dw representation."""
    weight = ONE
    for _ in range(2 * bit_length):
        weight = weight.div_sqrt2()
    return weight


def finite_M(programs, transitions):
    """Finite directed approximant of M and Omega_qALC.

    ``programs`` contains ``(bit_length, Sector)`` pairs.  Certified and
    conservative sectors therefore both contribute to the same total machine.
    The universal objects are directed limits over prefix-free programs and
    common transition bounds; this routine is one exact computable member.
    """
    matrix = {}
    omega = ZERO
    for bit_length, sector in programs:
        _require_sector(sector)
        vector = None
        for _time, vector in evolve(sector, transitions):
            pass
        weight = dyadic_weight(bit_length)
        omega += weight * halt_mass(vector)
        for coordinate, value in rho(vector).items():
            matrix[coordinate] = (matrix.get(coordinate, ZERO)
                                  + weight * value)
    return ({coordinate: value for coordinate, value in matrix.items()
             if value != ZERO}, omega)


if __name__ == "__main__":
    from lam_iam import App, Gate, Lam, Var
    from suite import PROGRAMS

    identity = Lam(Var(1))
    identity_sector = select(identity)
    assert identity_sector.admission is not None
    approximants = mu_approximants(identity_sector, 12)
    assert all(left[1] == ZERO or left[1] == ONE for left in approximants)
    assert all(left[1] == ZERO or right[1] == ONE
               for left, right in zip(approximants, approximants[1:]))
    final_vector = list(evolve(identity_sector, 12))[-1][1]
    matrix = rho(final_vector)
    assert sum((value for (left, right), value in matrix.items()
                if left == right), ZERO) == halt_mass(final_vector)
    finite, omega = finite_M(((2, identity_sector),), 12)
    trace = sum((value for (left, right), value in finite.items()
                 if left == right), ZERO)
    assert trace == omega == dyadic_weight(2)

    # A cap/validation failure must not become an unchecked None certificate.
    omega_body = App(Var(1), Var(1))
    omega_term = App(Lam(omega_body), Lam(omega_body))
    h_omega = App(App(Lam(Lam(App(Var(2), omega_term))), Gate("h")),
                  Gate("t"))
    conservative_sector = _select_with_cap(h_omega, 20_000)
    assert conservative_sector.admission is None
    vector = {Conservative(nf_init(h_omega)): ONE}
    for _time in range(64):
        norm = sum((amplitude.norm_sq() for amplitude in vector.values()), ZERO)
        assert norm == ONE
        next_vector = U(conservative_sector, vector)
        for basis in next_vector:
            assert conservative_predecessor(conservative_sector, basis) in vector
        vector = next_vector

    # The totality adapter is live, not a prose assumption: even a malformed
    # hashable basis state becomes a typed source-retaining error landing, and
    # the conservative predecessor rechecks that exact totalized edge.
    malformed = ("malformed-basis",)
    malformed_sector = Sector(identity, None)
    malformed_source = Conservative(malformed)
    malformed_next = U(malformed_sector, {malformed_source: ONE})
    assert len(malformed_next) == 1
    malformed_target = next(iter(malformed_next))
    assert isinstance(malformed_target.live, NFDone) is False
    assert malformed_target.live.kind[:2] == ("error", "machine-exception")
    assert conservative_predecessor(
        malformed_sector, malformed_target) == malformed_source

    # Force a known H sector through the fallback: the two siblings have the
    # same exact predecessor/history coordinate and retain their H coherence.
    h_sector = Sector(PROGRAMS["lone"], None)
    h_vector = {Conservative(nf_init(h_sector.term)): ONE}
    witnessed_h = False
    for _time in range(64):
        h_next = U(h_sector, h_vector)
        if len(h_next) == 2:
            siblings = tuple(h_next)
            assert siblings[0].history == siblings[1].history
            assert conservative_predecessor(h_sector, siblings[0]) == \
                conservative_predecessor(h_sector, siblings[1])
            witnessed_h = True
            break
        h_vector = h_next
    assert witnessed_h
    try:
        U(None, {nf_init(identity): ONE})
    except TypeError:
        pass
    else:
        raise AssertionError("unadmitted U accepted")
    print("QALC SEMANTICS: PASS")
