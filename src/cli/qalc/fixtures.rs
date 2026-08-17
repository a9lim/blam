//! `blam qalc fixtures` — engine-backed verification of the versioned qfx
//! evidence. Runtime fixtures are regenerated completely. The intentionally
//! stripped Phase-4 admission pin is recognized by its empty products and
//! revalidated through the public selector instead.

use crate::args::{self, Args, R};
use blam::hash::sha256_hex;
use blam::qalc::kernel::{self, edge_coefficient, Psi};
use blam::qalc::mark::{frame_repr, kd_key_repr};
use blam::qalc::readback::{
    evolve_nf_trace_with, nf_carrier_and_columns_with, nf_step_with, MachineKind, NfPsi,
};
use blam::qalc::semantics::{select, SelectionKind};
use blam::qalc::term::is_closed;
use blam::qalc::wire::{
    amp_bytes, column_commitment, nf_state_bytes, parse_fixtures, serialize_fixtures, state_bytes,
    ComposedFixture, CorpusValue, Fixtures, ProgramFixture,
};

const USAGE: &str = "\
blam qalc fixtures — regenerate and byte-check qfx evidence

usage: blam qalc fixtures FILE... [flags]

  --state-cap N  maximum carrier states per program (default 300000)
  --step-cap N   maximum evolution steps to absorption (default 100000)

Every runtime section is rebuilt from its term/certificate/tick cut: carrier,
columns, commitment, trace chain, finals, and composed probes. Corpus reprs
are recomputed. The stripped admission_pins.qfx shape instead revalidates its
candidate through the Phase-4 selector. Any drift is exit 2.";

fn digest(
    domain: &str,
    name: &str,
    step: u64,
    previous: &str,
    mut entries: Vec<(String, String)>,
) -> String {
    entries.sort_unstable();
    let mut payload = format!("{domain}\n{name}\n{step}\n{previous}\n");
    for (state, amplitude) in entries {
        payload.push_str(&state);
        payload.push(' ');
        payload.push_str(&amplitude);
        payload.push('\n');
    }
    sha256_hex(payload.as_bytes())
}

fn kernel_digest(name: &str, step: u64, previous: &str, psi: &Psi) -> String {
    digest(
        "qalc-trace v1",
        name,
        step,
        previous,
        psi.iter()
            .map(|(state, amplitude)| (state_bytes(state), amp_bytes(amplitude)))
            .collect(),
    )
}

fn composed_digest(name: &str, step: u64, previous: &str, psi: &NfPsi) -> String {
    digest(
        "qalc-ctrace v1",
        name,
        step,
        previous,
        psi.iter()
            .map(|(state, amplitude)| (nf_state_bytes(state), amp_bytes(amplitude)))
            .collect(),
    )
}

fn selector_pin(program: &ProgramFixture) -> bool {
    program.carrier.is_empty()
        && program.columns.is_empty()
        && program.trace.is_empty()
        && program.finals.is_empty()
        && program.commitment == "0".repeat(64)
}

fn regenerate_kernel(
    program: &ProgramFixture,
    state_cap: usize,
    step_cap: u64,
) -> Result<ProgramFixture, String> {
    if selector_pin(program) {
        let sector = select(program.term.clone());
        let Some(admission) = sector.gate1_admission() else {
            return Err(format!(
                "{}: stripped selector pin did not select validated Gate-1",
                program.name
            ));
        };
        if admission.certificate() != program.cert.as_ref() {
            return Err(format!(
                "{}: stripped selector candidate is not the selected certificate",
                program.name
            ));
        }
        return Ok(program.clone());
    }
    let certificate = program.cert.as_ref();
    let carrier =
        kernel::carrier_and_columns(&program.term, certificate, program.tick_depth, state_cap)
            .map_err(|e| format!("{}: kernel carrier: {e:?}", program.name))?;
    let maps = kernel::evolve_trace(&program.term, certificate, step_cap)
        .map_err(|e| format!("{}: kernel evolution: {e:?}", program.name))?;
    let mut previous = "0".repeat(64);
    let mut trace = Vec::with_capacity(maps.len());
    for (at, psi) in maps.iter().enumerate() {
        previous = kernel_digest(&program.name, at as u64 + 1, &previous, psi);
        trace.push((at as u64 + 1, psi.len() as u64, previous.clone()));
    }
    let mut finals = maps
        .last()
        .ok_or_else(|| format!("{}: empty kernel evolution", program.name))?
        .clone();
    finals.sort_by_key(|(state, amplitude)| (state_bytes(state), amp_bytes(amplitude)));
    Ok(ProgramFixture {
        name: program.name.clone(),
        term: program.term.clone(),
        tick_depth: program.tick_depth,
        cert: program.cert.clone(),
        commitment: column_commitment(&carrier.columns),
        carrier: carrier.order,
        columns: carrier.columns,
        trace,
        finals,
    })
}

fn selected_machine(program: &ComposedFixture) -> Result<MachineKind, String> {
    let sector = select(program.term.clone());
    let selected_certificate = match sector.selection_kind() {
        SelectionKind::StructuralGate2 => Some(
            sector
                .structural_admission()
                .expect("structural selection")
                .certificate()
                .clone(),
        ),
        SelectionKind::ValidatedGate1 => sector
            .gate1_admission()
            .expect("Gate-1 selection")
            .certificate()
            .cloned(),
        SelectionKind::Conservative => {
            return Err(format!(
                "{}: canonical composed fixture selected conservative fallback",
                program.name
            ))
        }
    };
    if selected_certificate != program.cert {
        return Err(format!(
            "{}: fixture certificate differs from the public selector",
            program.name
        ));
    }
    Ok(match sector.selection_kind() {
        SelectionKind::StructuralGate2 => MachineKind::Gate2,
        SelectionKind::ValidatedGate1 => MachineKind::Gate1,
        SelectionKind::Conservative => unreachable!(),
    })
}

fn regenerate_composed(
    program: &ComposedFixture,
    state_cap: usize,
    step_cap: u64,
) -> Result<ComposedFixture, String> {
    let machine = selected_machine(program)?;
    let certificate = program.cert.as_ref();
    let carrier = nf_carrier_and_columns_with(
        machine,
        &program.term,
        certificate,
        program.tick_depth,
        state_cap,
    )
    .map_err(|e| format!("{}: composed carrier: {e:?}", program.name))?;
    let maps = evolve_nf_trace_with(machine, &program.term, certificate, step_cap)
        .map_err(|e| format!("{}: composed evolution: {e:?}", program.name))?;
    let mut previous = "0".repeat(64);
    let mut trace = Vec::with_capacity(maps.len());
    for (at, psi) in maps.iter().enumerate() {
        previous = composed_digest(&program.name, at as u64 + 1, &previous, psi);
        trace.push((at as u64 + 1, psi.len() as u64, previous.clone()));
    }
    let mut finals = maps
        .last()
        .ok_or_else(|| format!("{}: empty composed evolution", program.name))?
        .clone();
    finals.sort_by_key(|(state, amplitude)| (nf_state_bytes(state), amp_bytes(amplitude)));
    let mut probes = Vec::with_capacity(program.probes.len());
    for (source, _) in &program.probes {
        let mut rows = Vec::new();
        for row in nf_step_with(machine, &program.term, source, certificate) {
            let amplitude = edge_coefficient(row.sign, row.dk, &row.rule)
                .ok_or_else(|| format!("{}: probe coefficient capacity", program.name))?;
            rows.push((amplitude, row.rule, row.state));
        }
        probes.push((source.clone(), rows));
    }
    Ok(ComposedFixture {
        name: program.name.clone(),
        term: program.term.clone(),
        tick_depth: program.tick_depth,
        cert: program.cert.clone(),
        commitment: column_commitment(&carrier.columns),
        carrier: carrier.order,
        columns: carrier.columns,
        trace,
        finals,
        probes,
    })
}

fn corpus_ok(fixtures: &Fixtures) -> Result<(), String> {
    for (index, pair) in fixtures.corpus.iter().enumerate() {
        let rendered = match &pair.value {
            CorpusValue::Frame(frame) => frame_repr(frame),
            CorpusValue::KdKey(key) => kd_key_repr(key),
        };
        if rendered.as_bytes() != pair.repr_bytes {
            return Err(format!("corpus pair {index}: repr bytes differ"));
        }
    }
    Ok(())
}

fn first_difference(got: &str, expected: &str) -> usize {
    let mut got = got.lines();
    let mut expected = expected.lines();
    let mut line = 1;
    loop {
        match (got.next(), expected.next()) {
            (None, None) => return line,
            (left, right) if left == right => line += 1,
            _ => return line,
        }
    }
}

fn fail(path: &str, message: impl std::fmt::Display) -> String {
    format!(
        "blam qalc fixtures: {path}: {message}\n{}",
        args::hint("qalc fixtures")
    )
}

struct Preflight {
    path: String,
    text: String,
    parsed: Fixtures,
}

/// Read and fully parse every declared input before any regeneration begins.
fn preflight(path: &str) -> R<Preflight> {
    let text = std::fs::read_to_string(path).map_err(|e| {
        format!(
            "blam qalc fixtures: cannot read {path}: {e}\n{}",
            args::hint("qalc fixtures")
        )
    })?;
    let parsed = parse_fixtures(&text).map_err(|e| fail(path, e))?;
    if parsed.corpus.is_empty() && parsed.programs.is_empty() && parsed.composed.is_empty() {
        return Err(fail(path, "fixture contains no sections"));
    }
    if let Some(name) = parsed
        .programs
        .iter()
        .map(|program| (&program.name, &program.term))
        .chain(
            parsed
                .composed
                .iter()
                .map(|program| (&program.name, &program.term)),
        )
        .find_map(|(name, term)| (!is_closed(term)).then_some(name))
    {
        return Err(fail(path, format!("program `{name}` is open")));
    }
    corpus_ok(&parsed).map_err(|e| fail(path, e))?;
    Ok(Preflight {
        path: path.to_string(),
        text,
        parsed,
    })
}

fn verify_file(input: Preflight, state_cap: usize, step_cap: u64) -> R<String> {
    let Preflight { path, text, parsed } = input;
    let stripped = parsed.programs.iter().filter(|p| selector_pin(p)).count();
    let corpus_count = parsed.corpus.len();
    let kernel_count = parsed.programs.len();
    let composed_count = parsed.composed.len();
    if stripped > 0 && (stripped != kernel_count || corpus_count != 0 || composed_count != 0) {
        return Err(fail(
            &path,
            "stripped selector pins cannot be mixed with runtime sections",
        ));
    }
    let mut states = 0usize;
    let programs = parsed
        .programs
        .iter()
        .map(|program| regenerate_kernel(program, state_cap, step_cap))
        .collect::<Result<Vec<_>, _>>()
        .map_err(|e| fail(&path, e))?;
    states += programs
        .iter()
        .map(|program| program.carrier.len())
        .sum::<usize>();
    let composed = parsed
        .composed
        .iter()
        .map(|program| regenerate_composed(program, state_cap, step_cap))
        .collect::<Result<Vec<_>, _>>()
        .map_err(|e| fail(&path, e))?;
    states += composed
        .iter()
        .map(|program| program.carrier.len())
        .sum::<usize>();
    if stripped > 0 {
        let embedded = include_str!("../../qalc/admission_pins.qfx");
        if text != embedded {
            return Err(fail(
                &path,
                "stripped selector bytes differ from the embedded pin",
            ));
        }
        return Ok(format!(
            "{path}: PASS corpus=0 kernel={kernel_count} composed=0 states=0 selector-pins={stripped}"
        ));
    }
    let regenerated = serialize_fixtures(&Fixtures {
        corpus: parsed.corpus,
        programs,
        composed,
    });
    if regenerated != text {
        return Err(format!(
            "blam qalc fixtures: {path}: regenerated bytes differ at line {}\n{}",
            first_difference(&regenerated, &text),
            args::hint("qalc fixtures")
        ));
    }
    Ok(format!(
        "{path}: PASS corpus={} kernel={kernel_count} composed={composed_count} \
         states={states} selector-pins={stripped}",
        corpus_count
    ))
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut state_cap = 300_000usize;
    let mut step_cap = 100_000u64;
    let mut p = Args::new("qalc fixtures", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--state-cap" => state_cap = p.num(tok)?,
            "--step-cap" => step_cap = p.num(tok)?,
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    if state_cap == 0 || step_cap == 0 {
        return Err(format!(
            "blam qalc fixtures: --state-cap and --step-cap must be at least 1\n{}",
            args::hint("qalc fixtures")
        ));
    }
    if p.positional().is_empty() {
        return Err(format!(
            "blam qalc fixtures: missing FILE\n{}",
            args::hint("qalc fixtures")
        ));
    }
    let inputs = p
        .positional()
        .iter()
        .map(|path| preflight(path))
        .collect::<R<Vec<_>>>()?;
    for input in inputs {
        println!("{}", verify_file(input, state_cap, step_cap)?);
    }
    Ok(())
}
