"""Export closed finite operational cores for Lean machine proofs.

The exporter is intentionally untrusted.  Each generated theorem recomputes
the deterministic predecessor, literal range separation, all norms, and all
pairwise inner products from the closed running/readback row list through two
terminal ticks with ``FiniteMachine.lean``.  Later ticks are uniform and live
in ``TerminalAdapters.lean``. Generation is deterministic under ``repr``
ordering.

The large finite Boolean evaluations use Lean's ``native_decide``.  Their
trust boundary is the compiled evaluator/``ofReduceBool`` bridge; the checker
definitions and theorem statements remain kernel checked, while this is not
the transparent ``decide +kernel`` used by the smaller structural proofs.
"""

from pathlib import Path

from dw_machine import edge_coefficient
from readback import NFDone, nf_step
from readback_certify import composed_carrier
from gate1_programs import (MIXED_CERTIFICATES, MIXED_PROGRAMS,
                            NEUTRAL_CERTIFICATES, NEUTRAL_PROGRAMS,
                            STRESS_CERTIFICATES, STRESS_PROGRAMS)
from suite import CERTS, PROGRAMS


ROOT = Path(__file__).resolve().parent


def ident(name):
    return "p_" + "".join(character if character.isalnum() else "_"
                           for character in name)


def dw_literal(value):
    return (f"⟨{value.a}, {value.b}, {value.c}, {value.d}, {value.k}⟩")


def export_program(name, term, certificate):
    carrier = composed_carrier(term, certificate)
    # Every column-bearing state precedes the two retained frontier ticks.
    # Hence a machine source index is its physical state id, while targets
    # may also name the frontier.  This keeps the predecessor theorem's
    # source and target numerals in one state-id namespace.
    states = sorted(carrier["states"], key=lambda state: (
        isinstance(state, NFDone) and state.tick >= 2, repr(state)))
    state_id = {state: index for index, state in enumerate(states)}
    columns = []
    for source in states:
        if isinstance(source, NFDone) and source.tick >= 2:
            continue
        rows = nf_step(term, source, certificate)
        if not rows:
            raise AssertionError((name, "empty column", source))
        entries = []
        rules = []
        for sign, denominator, rule, target in rows:
            coefficient = edge_coefficient(sign, denominator, rule)
            entries.append(f"({state_id[target]}, {dw_literal(coefficient)})")
            rules.append(rule)
        hadamard = all(rule == "fire-h" for rule in rules)
        if any(rule == "fire-h" for rule in rules) != hadamard:
            raise AssertionError((name, "mixed H column", source, rows))
        columns.append(
            "    { hadamard := " + str(hadamard).lower()
            + ", entries := [" + ", ".join(entries) + "] }")

    namespace = "QalcReadbackGram_" + ident(name)
    content = "\n".join([
        "import Gate1Assembly",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
        f"namespace {namespace}",
        "open QalcFiniteGram QalcFiniteMachine QalcGate1Assembly",
        "",
        "def machine : Machine := #[",
        ",\n".join(columns),
        "]",
        "",
        "def columns : List Column := QalcFiniteMachine.columns machine",
        "",
        "theorem complete_machine : machineChecked machine = true := by",
        "  native_decide",
        "",
        "def certificate : ReachableCertificate where",
        "  machine := machine",
        "  shapes := by native_decide",
        "  predecessor := by native_decide",
        "  ranges := by native_decide",
        "  gram := by native_decide",
        "",
        "theorem full_column_gram : gramChecked columns = true :=",
        "  certificate.gram",
        "",
        "theorem deterministic_predecessor_left_inverse",
        "    (source : Fin machine.size) (target : Nat)",
        "    (steps : stepDet machine source = some target) :",
        "    pred machine target = some source := by",
        "  exact QalcGate1Assembly.deterministic_predecessor_left_inverse",
        "    certificate source target steps",
        "",
        f"end {namespace}",
        "",
    ])
    path = ROOT / f"QalcReadbackGram_{ident(name)}.lean"
    path.write_text(content)
    return path, len(states), len(columns)


def main():
    total_states = total_columns = 0
    sectors = tuple((name, term, CERTS.get(name))
                    for name, term in PROGRAMS.items()) + tuple(
        (name, term, MIXED_CERTIFICATES[name])
        for name, term in MIXED_PROGRAMS.items()) + tuple(
        (name, term, STRESS_CERTIFICATES[name])
        for name, term in STRESS_PROGRAMS.items()) + tuple(
        (name, term, NEUTRAL_CERTIFICATES[name])
        for name, term in NEUTRAL_PROGRAMS.items())
    for name, term, certificate in sectors:
        path, states, columns = export_program(name, term, certificate)
        total_states += states
        total_columns += columns
        print(f"{path.name}: states={states} columns={columns}")
    print(f"QALC READBACK GRAM EXPORT: PASS states={total_states} "
          f"columns={total_columns}")


if __name__ == "__main__":
    main()
