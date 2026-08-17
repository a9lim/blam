//! `blam qalc compile` — typed H/T/CNOT circuit syntax to the canonical
//! linear-SSA qALC invocation and its structural selector metadata.

use crate::args::{self, Args, R};
use blam::qalc::compiler::{compile_circuit, compiled_runtime, prepared_at, Circuit, Kind, Op};
use blam::qalc::semantics::{select, SelectionKind};
use blam::qalc::wire::{parse_term, term_bytes, DEPTH_CAP};

const CLI_CIRCUIT_CAP: usize = 1024;

const USAGE: &str = "\
blam qalc compile — compile a typed H/T/CNOT circuit

usage: blam qalc compile WIDTH [GATE...] [--term-only]

  WIDTH        positive wire count
  h:W          Hadamard on wire W
  t:W          T phase on wire W
  cx:C:T       controlled-NOT from control C to target T
  --term-only  print only the canonical one-line TERM for piping to run/gram

Wire indices are zero-based. The CLI accepts at most 1024 wires and 1024 gates
as individual host boundaries; their combined compiled-term depth must also
fit the canonical wire parser. The structural recognizer itself is cap-free.";

fn wire_nesting(width: usize, gates: usize) -> Option<usize> {
    width
        .checked_mul(4)?
        .checked_add(gates.checked_mul(3)?)?
        .checked_add(8)
}

fn gate(cmd: &str, token: &str) -> R<Op> {
    let fail = |message: String| format!("blam {cmd}: {message}\n{}", args::hint(cmd));
    let fields: Vec<&str> = token.split(':').collect();
    let wire = |s: &str| {
        s.parse::<usize>()
            .map_err(|e| fail(format!("bad gate `{token}`: wire `{s}`: {e}")))
    };
    match fields.as_slice() {
        ["h", w] => Ok(Op::h(wire(w)?)),
        ["t", w] => Ok(Op::t(wire(w)?)),
        ["cx", control, target] => Ok(Op::cx(wire(control)?, wire(target)?)),
        _ => Err(fail(format!(
            "bad gate `{token}`: expected h:W, t:W, or cx:C:T"
        ))),
    }
}

fn gate_text(op: &Op) -> String {
    match op.kind {
        Kind::H => format!("h:{}", op.first),
        Kind::T => format!("t:{}", op.first),
        Kind::Cx => format!("cx:{}:{}", op.first, op.second.expect("validated CNOT")),
    }
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut term_only = false;
    let mut p = Args::new("qalc compile", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--term-only" => {
                p.flag(tok)?;
                term_only = true;
            }
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    let Some(width) = p.pos_num::<usize>(0)? else {
        return Err(format!(
            "blam qalc compile: missing WIDTH\n{}",
            args::hint("qalc compile")
        ));
    };
    let gate_tokens = &p.positional()[1..];
    if width > CLI_CIRCUIT_CAP || gate_tokens.len() > CLI_CIRCUIT_CAP {
        return Err(format!(
            "blam qalc compile: host cap is {CLI_CIRCUIT_CAP} wires and {CLI_CIRCUIT_CAP} gates \
             (got {width} and {})\n{}",
            gate_tokens.len(),
            args::hint("qalc compile")
        ));
    }
    let nesting = wire_nesting(width, gate_tokens.len()).ok_or_else(|| {
        format!(
            "blam qalc compile: compiled-term depth arithmetic overflow\n{}",
            args::hint("qalc compile")
        )
    })?;
    if nesting > DEPTH_CAP {
        return Err(format!(
            "blam qalc compile: compiled term needs wire nesting {nesting}, over the parser cap \
             {DEPTH_CAP}; reduce WIDTH or gate count\n{}",
            args::hint("qalc compile")
        ));
    }
    let gates: Vec<Op> = gate_tokens
        .iter()
        .map(|token| gate("qalc compile", token))
        .collect::<R<_>>()?;
    let circuit = Circuit::new(width, gates).map_err(|e| {
        format!(
            "blam qalc compile: invalid circuit: {e:?}\n{}",
            args::hint("qalc compile")
        )
    })?;
    let compiled = compile_circuit(&circuit).map_err(|e| {
        format!(
            "blam qalc compile: compiler failed: {e:?}\n{}",
            args::hint("qalc compile")
        )
    })?;
    let wire = term_bytes(&compiled.term);
    let reparsed = parse_term(&wire).map_err(|e| {
        format!(
            "blam qalc compile: internal wire round-trip failed: {e}\n{}",
            args::hint("qalc compile")
        )
    })?;
    if reparsed != compiled.term {
        return Err(format!(
            "blam qalc compile: internal wire round-trip changed the compiled term\n{}",
            args::hint("qalc compile")
        ));
    }
    if term_only {
        println!("{wire}");
        return Ok(());
    }
    let sector = select(compiled.term.clone());
    if sector.selection_kind() != SelectionKind::StructuralGate2 {
        return Err(format!(
            "blam qalc compile: internal error: compiled term was not structurally admitted\n{}",
            args::hint("qalc compile")
        ));
    }
    let certificate_entries = sector
        .structural_admission()
        .expect("structural selection")
        .certificate()
        .len();
    let prepared = prepared_at(circuit.width);
    let runtime = compiled_runtime(&circuit);
    println!(
        "circuit width={} gates={} prepared-at={} runtime={} total={} certificate-entries={}",
        circuit.width,
        circuit.gates.len(),
        prepared,
        runtime,
        prepared + runtime,
        certificate_entries
    );
    for (index, op) in circuit.gates.iter().enumerate() {
        println!("gate {index} {}", gate_text(op));
    }
    println!("selection structural-gate2 admitted=true");
    println!("term {wire}");
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn circuit_tokens_are_strict_and_typed() {
        assert_eq!(gate("qalc compile", "h:3").unwrap(), Op::h(3));
        assert_eq!(gate("qalc compile", "t:1").unwrap(), Op::t(1));
        assert_eq!(gate("qalc compile", "cx:2:0").unwrap(), Op::cx(2, 0));
        assert!(gate("qalc compile", "cnot:0:1").is_err());
        assert!(gate("qalc compile", "h:zero").is_err());
        assert!(wire_nesting(1022, 0).unwrap() <= DEPTH_CAP);
        assert!(wire_nesting(1023, 0).unwrap() > DEPTH_CAP);
    }
}
