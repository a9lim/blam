"""Export exact native-CNOT compiler carriers to the Gate-1 Lean checker."""

import QalcReadbackGramExport as export
import readback
import readback_certify
import readback_checks

import gate2_cnot_shadow as shadow
from gate2_compiler import (Circuit, Kind, Op, compile_circuit,
                            compiler_certificate, toffoli)


def configure():
    readback.step = shadow.step
    readback.nf_step = shadow.nf_step
    readback_certify.nf_step = shadow.nf_step
    readback_checks.nf_step = shadow.nf_step
    export.nf_step = shadow.nf_step


def main():
    configure()
    circuits = {
        "gate2_bell_uncompute": Circuit(2, (
            Op(Kind.H, 0), Op(Kind.CX, 0, 1),
            Op(Kind.CX, 0, 1), Op(Kind.H, 0))),
        "gate2_toffoli": Circuit(3, toffoli(0, 1, 2)),
        "gate2_nonlinear_reuse": Circuit(
            4, toffoli(0, 1, 2) + (Op(Kind.CX, 2, 3),)),
    }
    for name, circuit in circuits.items():
        compiled = compile_circuit(circuit)
        path, states, columns = export.export_program(
            name, compiled.term, compiler_certificate(compiled))
        print(f"{path.name}: states={states} columns={columns}")
    print("QALC GATE2 GRAM EXPORT: PASS")


if __name__ == "__main__":
    main()
