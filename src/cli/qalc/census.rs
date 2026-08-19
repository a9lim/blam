//! `blam qalc census` — exact finite-clock population measurement over the
//! ordinary prefix-free BLC universe.  Each closed program `p` is invoked as
//! `p h t`; the supplied gates do not contribute program bits or Kraft weight.

use crate::args::{self, Args, R};
use blam::blc::enumerate::{interleave_tasks, run_task, split_tasks};
use blam::blc::wire::enc_to_string;
use blam::qalc::admission::AdmissionTelemetry;
use blam::qalc::amp::Amp;
use blam::qalc::semantics::{
    error_mass, halt_mass, initial_vector, kraft_weight, rho, running_mass,
    select_probe_profiled_without_digest, select_profiled_without_digest, u, Sector, SelectionKind,
    SemanticsError,
};
use blam::qalc::term::{from_blc, invoke_ht};
use blam::qalc::wire::nf_bytes;
use blam::quantum::scalar::ExactSum;
use rayon::prelude::*;
use std::collections::HashMap;
use std::fmt::Write as _;
use std::time::{Duration, Instant};

type MatrixKey = (String, String);
const ADMISSION_PREFLIGHT_CAP: usize = 1_000;

const USAGE: &str = "\
blam qalc census [MIN] MAX — finite-clock qALC census over ordinary BLC programs

usage: blam qalc census [MIN] MAX [flags]    (MIN defaults to 4)

semantics
  --steps N       exact global U transitions per program (default 256)
  --support N     maximum retained basis support (default 100000)

run
  --threads N     rayon threads (0 = ambient, the default)
  --retry-threads N  canonical admission retry pool (0 = up to 8, default)
  --out FILE      write the deterministic report to FILE as well as stdout
  --matrix FILE   accumulate and write sparse finite M coordinates
  --checkpoint FILE   kill-safe group-level resume
  --groups K      groups per size for --checkpoint (default 64)

Every closed prefix program p of size n is run as p h t and weighted by 2^-n.
The lower approximation is exact halted mass at the requested clock; the upper
bracket adds exact still-running mass. Error mass is excluded. `--matrix`
retains arbitrary-normal-form coordinates and can be much larger than the
scalar census; rho and its trace are audited even when coordinates are not
retained.";

#[derive(Clone, Copy, Debug, Default)]
struct PerfTelemetry {
    measured_programs: u64,
    canonical_retries: u64,
    selection: Duration,
    evolution: Duration,
    observation: Duration,
    admission: AdmissionTelemetry,
}

impl PerfTelemetry {
    fn merge(&mut self, other: Self) {
        self.measured_programs += other.measured_programs;
        self.canonical_retries += other.canonical_retries;
        self.selection += other.selection;
        self.evolution += other.evolution;
        self.observation += other.observation;
        self.admission.merge(other.admission);
    }
}

#[derive(Clone, Copy, Debug)]
struct SlowSelection {
    elapsed: Duration,
    witness: (u8, u64),
    kind: SelectionKind,
    carrier: Duration,
}

#[derive(Clone, Debug)]
struct Tally {
    programs: u64,
    selection: [u64; 3], // structural Gate 2, validated Gate 1, conservative
    halt_programs: u64,
    error_programs: u64,
    running_programs: u64,
    branched_programs: u64,
    coherent_programs: u64,
    capacity: [u64; 3], // evolution scalar, support, rho construction
    peak_support: usize,
    peak_witness: Option<(u8, u64)>,
    earliest_capacity: Option<(u64, u8, u64)>,
    halt: ExactSum,
    error: ExactSum,
    running: ExactSum,
    matrix: HashMap<MatrixKey, ExactSum>,
    perf: PerfTelemetry,
    slow_selection: Vec<SlowSelection>,
}

impl Tally {
    fn new() -> Self {
        Self {
            programs: 0,
            selection: [0; 3],
            halt_programs: 0,
            error_programs: 0,
            running_programs: 0,
            branched_programs: 0,
            coherent_programs: 0,
            capacity: [0; 3],
            peak_support: 0,
            peak_witness: None,
            earliest_capacity: None,
            halt: ExactSum::ZERO,
            error: ExactSum::ZERO,
            running: ExactSum::ZERO,
            matrix: HashMap::new(),
            perf: PerfTelemetry::default(),
            slow_selection: Vec::new(),
        }
    }

    fn note_support(&mut self, support: usize, witness: (u8, u64)) {
        if support > self.peak_support
            || (support == self.peak_support && self.peak_witness.is_none_or(|old| witness < old))
        {
            self.peak_support = support;
            self.peak_witness = Some(witness);
        }
    }

    fn note_capacity(&mut self, at: u64, witness: (u8, u64)) {
        let candidate = (at, witness.0, witness.1);
        self.earliest_capacity = Some(
            self.earliest_capacity
                .map_or(candidate, |old| old.min(candidate)),
        );
    }

    fn merge(mut self, other: Tally) -> Tally {
        self.programs += other.programs;
        for i in 0..3 {
            self.selection[i] += other.selection[i];
            self.capacity[i] += other.capacity[i];
        }
        self.halt_programs += other.halt_programs;
        self.error_programs += other.error_programs;
        self.running_programs += other.running_programs;
        self.branched_programs += other.branched_programs;
        self.coherent_programs += other.coherent_programs;
        if let Some(witness) = other.peak_witness {
            self.note_support(other.peak_support, witness);
        }
        if let Some((at, len, enc)) = other.earliest_capacity {
            self.note_capacity(at, (len, enc));
        }
        self.halt.merge(&other.halt);
        self.error.merge(&other.error);
        self.running.merge(&other.running);
        for (coordinate, value) in other.matrix {
            self.matrix
                .entry(coordinate)
                .or_insert(ExactSum::ZERO)
                .merge(&value);
        }
        self.perf.merge(other.perf);
        self.slow_selection.extend(other.slow_selection);
        self.slow_selection.sort_unstable_by(|left, right| {
            right
                .elapsed
                .cmp(&left.elapsed)
                .then_with(|| left.witness.cmp(&right.witness))
        });
        self.slow_selection.truncate(8);
        self
    }
}

impl Default for Tally {
    fn default() -> Self {
        Self::new()
    }
}

fn hex(text: &str) -> String {
    const DIGITS: &[u8; 16] = b"0123456789abcdef";
    let mut out = String::with_capacity(text.len() * 2);
    for byte in text.bytes() {
        out.push(DIGITS[(byte >> 4) as usize] as char);
        out.push(DIGITS[(byte & 15) as usize] as char);
    }
    out
}

fn unhex(text: &str) -> Option<String> {
    fn digit(byte: u8) -> Option<u8> {
        match byte {
            b'0'..=b'9' => Some(byte - b'0'),
            b'a'..=b'f' => Some(byte - b'a' + 10),
            _ => None,
        }
    }
    let chunks = text.as_bytes().chunks_exact(2);
    if !chunks.remainder().is_empty() {
        return None;
    }
    let bytes: Option<Vec<u8>> = chunks
        .map(|pair| Some((digit(pair[0])? << 4) | digit(pair[1])?))
        .collect();
    String::from_utf8(bytes?).ok()
}

impl crate::ckpt::CkptRecord for Tally {
    fn write_body(&self, out: &mut String) {
        out.push('S');
        for value in [
            self.programs,
            self.selection[0],
            self.selection[1],
            self.selection[2],
            self.halt_programs,
            self.error_programs,
            self.running_programs,
            self.branched_programs,
            self.coherent_programs,
            self.capacity[0],
            self.capacity[1],
            self.capacity[2],
        ] {
            write!(out, " {value}").unwrap();
        }
        self.halt.write_ckpt(out);
        self.error.write_ckpt(out);
        self.running.write_ckpt(out);
        out.push('\n');
        match self.peak_witness {
            Some((len, enc)) => writeln!(out, "W {} {len} {enc}", self.peak_support).unwrap(),
            None => writeln!(out, "W {} - -", self.peak_support).unwrap(),
        }
        match self.earliest_capacity {
            Some((at, len, enc)) => writeln!(out, "C {at} {len} {enc}").unwrap(),
            None => out.push_str("C - - -\n"),
        }
        let mut matrix: Vec<_> = self.matrix.iter().collect();
        matrix.sort_unstable_by(|a, b| a.0.cmp(b.0));
        for ((left, right), value) in matrix {
            write!(out, "M {} {}", hex(left), hex(right)).unwrap();
            value.write_ckpt(out);
            out.push('\n');
        }
    }

    fn parse_line(&mut self, line: &str) -> Option<()> {
        let mut fields = line.split_whitespace();
        match fields.next()? {
            "S" => {
                let mut number = || fields.next()?.parse::<u64>().ok();
                self.programs = number()?;
                for i in 0..3 {
                    self.selection[i] = number()?;
                }
                self.halt_programs = number()?;
                self.error_programs = number()?;
                self.running_programs = number()?;
                self.branched_programs = number()?;
                self.coherent_programs = number()?;
                for i in 0..3 {
                    self.capacity[i] = number()?;
                }
                self.halt = ExactSum::parse_ckpt(&mut fields)?;
                self.error = ExactSum::parse_ckpt(&mut fields)?;
                self.running = ExactSum::parse_ckpt(&mut fields)?;
                fields.next().is_none().then_some(())
            }
            "W" => {
                self.peak_support = fields.next()?.parse().ok()?;
                let len = fields.next()?;
                let enc = fields.next()?;
                self.peak_witness = if len == "-" {
                    (enc == "-").then_some(None)?
                } else {
                    Some((len.parse().ok()?, enc.parse().ok()?))
                };
                fields.next().is_none().then_some(())
            }
            "C" => {
                let at = fields.next()?;
                let len = fields.next()?;
                let enc = fields.next()?;
                self.earliest_capacity = if at == "-" {
                    ((len, enc) == ("-", "-")).then_some(None)?
                } else {
                    Some((at.parse().ok()?, len.parse().ok()?, enc.parse().ok()?))
                };
                fields.next().is_none().then_some(())
            }
            "M" => {
                let left = unhex(fields.next()?)?;
                let right = unhex(fields.next()?)?;
                let value = ExactSum::parse_ckpt(&mut fields)?;
                if fields.next().is_some() || self.matrix.insert((left, right), value).is_some() {
                    None
                } else {
                    Some(())
                }
            }
            _ => None,
        }
    }
}

#[derive(Clone, Debug)]
struct Row {
    n: u32,
    programs: u64,
    selection: [u64; 3],
    halt_programs: u64,
    error_programs: u64,
    running_programs: u64,
    capacity: [u64; 3],
    peak_support: usize,
    matrix_coordinates: usize,
    halt: ExactSum,
}

impl Row {
    fn from_tally(n: u32, tally: &Tally) -> Self {
        Self {
            n,
            programs: tally.programs,
            selection: tally.selection,
            halt_programs: tally.halt_programs,
            error_programs: tally.error_programs,
            running_programs: tally.running_programs,
            capacity: tally.capacity,
            peak_support: tally.peak_support,
            matrix_coordinates: tally.matrix.len(),
            halt: tally.halt,
        }
    }
}

fn selection_index(kind: SelectionKind) -> usize {
    match kind {
        SelectionKind::StructuralGate2 => 0,
        SelectionKind::ValidatedGate1 => 1,
        SelectionKind::Conservative => 2,
    }
}

fn semantic_error(enc: u64, len: u8, at: u64, error: SemanticsError) -> String {
    format!(
        "blam qalc census: semantic failure for {} at U step {at}: {error:?}",
        enc_to_string(enc, len)
    )
}

fn parse_invocation(enc: u64, len: u8) -> R<blam::qalc::term::Term> {
    let mut bits = (0..len).rev().map(|bit| enc >> bit & 1 == 1);
    let pure = blam::parse_prefix(&mut bits)
        .map_err(|e| format!("blam qalc census: enumerator decode failed: {e}"))?;
    if bits.next().is_some() {
        return Err("blam qalc census: enumerator emitted trailing program bits".into());
    }
    Ok(invoke_ht(from_blc(&pure)))
}

struct SelectedSector {
    sector: Sector,
    elapsed: Duration,
    admission: AdmissionTelemetry,
}

fn sweep_sector(
    enc: u64,
    len: u8,
    steps: u64,
    support_cap: usize,
    collect_matrix: bool,
    selected: SelectedSector,
    tally: &mut Tally,
) -> R<()> {
    tally.perf.selection += selected.elapsed;
    tally.perf.admission.merge(selected.admission);
    tally.perf.measured_programs += 1;
    tally.programs += 1;
    tally.selection[selection_index(selected.sector.selection_kind())] += 1;

    let witness = (len, enc);
    if selected.elapsed >= Duration::from_millis(10) {
        tally.slow_selection.push(SlowSelection {
            elapsed: selected.elapsed,
            witness,
            kind: selected.sector.selection_kind(),
            carrier: selected.admission.carrier,
        });
    }
    let evolution_started = Instant::now();
    let mut vector = initial_vector(&selected.sector);
    let mut peak_support = vector.len();
    for at in 1..=steps {
        match u(&selected.sector, &vector) {
            Ok(next) => {
                peak_support = peak_support.max(next.len());
                if next.len() > support_cap {
                    tally.capacity[1] += 1;
                    tally.note_capacity(at, witness);
                    break;
                }
                vector = next;
            }
            Err(SemanticsError::Capacity) => {
                tally.capacity[0] += 1;
                tally.note_capacity(at, witness);
                break;
            }
            Err(error) => return Err(semantic_error(enc, len, at, error)),
        }
    }
    tally.perf.evolution += evolution_started.elapsed();
    tally.note_support(peak_support, witness);
    tally.branched_programs += u64::from(peak_support > 1);

    let observation_started = Instant::now();
    let halted = halt_mass(&vector).map_err(|e| semantic_error(enc, len, steps, e))?;
    let errored = error_mass(&vector).map_err(|e| semantic_error(enc, len, steps, e))?;
    let running = running_mass(&vector).map_err(|e| semantic_error(enc, len, steps, e))?;
    let accounted = halted
        .add(errored)
        .and_then(|value| value.add(running))
        .ok_or_else(|| semantic_error(enc, len, steps, SemanticsError::Capacity))?;
    if accounted != Amp::ONE {
        return Err(format!(
            "blam qalc census: mass partition is not one for {}",
            enc_to_string(enc, len)
        ));
    }
    tally.halt_programs += u64::from(!halted.is_zero());
    tally.error_programs += u64::from(!errored.is_zero());
    tally.running_programs += u64::from(!running.is_zero());
    tally.halt.add(kraft_weight(halted, len as u32));
    tally.error.add(kraft_weight(errored, len as u32));
    tally.running.add(kraft_weight(running, len as u32));

    match rho(&vector) {
        Ok(density) => {
            let mut trace = Amp::ZERO;
            let mut coherent = false;
            for ((left, right), value) in density {
                if left == right {
                    trace = trace
                        .add(value)
                        .ok_or_else(|| semantic_error(enc, len, steps, SemanticsError::Capacity))?;
                } else if !value.is_zero() {
                    coherent = true;
                }
                if collect_matrix {
                    tally
                        .matrix
                        .entry((nf_bytes(&left), nf_bytes(&right)))
                        .or_insert(ExactSum::ZERO)
                        .add(kraft_weight(value, len as u32));
                }
            }
            if trace != halted {
                return Err(format!(
                    "blam qalc census: Tr rho differs from halt mass for {}",
                    enc_to_string(enc, len)
                ));
            }
            tally.coherent_programs += u64::from(coherent);
        }
        Err(SemanticsError::Capacity) => tally.capacity[2] += 1,
        Err(error) => return Err(semantic_error(enc, len, steps, error)),
    }
    tally.perf.observation += observation_started.elapsed();
    Ok(())
}

#[derive(Clone, Copy, Debug)]
struct DeferredAdmission {
    enc: u64,
    len: u8,
    probe_elapsed: Duration,
    probe_telemetry: AdmissionTelemetry,
}

#[derive(Debug, Default)]
struct ProbeTally {
    tally: Tally,
    deferred: Vec<DeferredAdmission>,
}

impl ProbeTally {
    fn merge(mut self, other: Self) -> Self {
        self.tally = self.tally.merge(other.tally);
        self.deferred.extend(other.deferred);
        self
    }
}

fn probe_one(
    enc: u64,
    len: u8,
    steps: u64,
    support_cap: usize,
    collect_matrix: bool,
    out: &mut ProbeTally,
) -> R<()> {
    let invocation = parse_invocation(enc, len)?;
    let started = Instant::now();
    let (sector, telemetry) =
        select_probe_profiled_without_digest(invocation, ADMISSION_PREFLIGHT_CAP);
    let elapsed = started.elapsed();
    match sector {
        Some(sector) => sweep_sector(
            enc,
            len,
            steps,
            support_cap,
            collect_matrix,
            SelectedSector {
                sector,
                elapsed,
                admission: telemetry,
            },
            &mut out.tally,
        ),
        None => {
            out.deferred.push(DeferredAdmission {
                enc,
                len,
                probe_elapsed: elapsed,
                probe_telemetry: telemetry,
            });
            Ok(())
        }
    }
}

fn sweep_deferred(
    deferred: DeferredAdmission,
    steps: u64,
    support_cap: usize,
    collect_matrix: bool,
    tally: &mut Tally,
) -> R<()> {
    let invocation = parse_invocation(deferred.enc, deferred.len)?;
    let started = Instant::now();
    let (sector, full_telemetry) = select_profiled_without_digest(invocation);
    let elapsed = started.elapsed();
    let mut telemetry = deferred.probe_telemetry;
    telemetry.merge(full_telemetry);
    tally.perf.canonical_retries += 1;
    sweep_sector(
        deferred.enc,
        deferred.len,
        steps,
        support_cap,
        collect_matrix,
        SelectedSector {
            sector,
            elapsed: deferred.probe_elapsed + elapsed,
            admission: telemetry,
        },
        tally,
    )
}

fn matrix_trace(matrix: &HashMap<MatrixKey, ExactSum>) -> ExactSum {
    let mut trace = ExactSum::ZERO;
    for ((left, right), value) in matrix {
        if left == right {
            trace.merge(value);
        }
    }
    trace
}

fn render_report(
    min_n: u32,
    max_n: u32,
    steps: u64,
    support_cap: usize,
    collect_matrix: bool,
    rows: &[Row],
    total: &Tally,
) -> String {
    let mut report = String::new();
    writeln!(
        report,
        "# qALC census spec v0 — ordinary closed BLC p, invocation p h t"
    )
    .unwrap();
    writeln!(
        report,
        "# sizes {min_n}..={max_n}  steps={steps} support={support_cap} matrix={collect_matrix}"
    )
    .unwrap();
    report.push_str(
        "# exact values are (a,b,c,d,k): (a+b*w+c*w^2+d*w^3)/sqrt(2)^k, w=e^(i*pi/4)\n#\n",
    );
    report.push_str(
        "# n    programs    gate1     cons    halt-p     err-p     run-p   cap   peak  M-coords  omega_n(exact)  omega_n(f64)\n",
    );
    for row in rows {
        writeln!(
            report,
            "{:>4} {:>11} {:>8} {:>8} {:>9} {:>9} {:>9} {:>5} {:>6} {:>9}  {}  {:.12e}",
            row.n,
            row.programs,
            row.selection[1],
            row.selection[2],
            row.halt_programs,
            row.error_programs,
            row.running_programs,
            row.capacity.iter().sum::<u64>(),
            row.peak_support,
            row.matrix_coordinates,
            row.halt.exact_str(),
            row.halt.re(),
        )
        .unwrap();
    }
    report.push_str("#\n");
    writeln!(report, "## Totals ({} programs)", total.programs).unwrap();
    writeln!(
        report,
        "selection structural-gate2 {}  validated-gate1 {}  conservative {}",
        total.selection[0], total.selection[1], total.selection[2]
    )
    .unwrap();
    writeln!(
        report,
        "programs with nonzero mass: halt {}  error {}  running {}  branched {}  coherent-output {}",
        total.halt_programs,
        total.error_programs,
        total.running_programs,
        total.branched_programs,
        total.coherent_programs,
    )
    .unwrap();
    writeln!(
        report,
        "capacity evolution {}  support {}  rho {}",
        total.capacity[0], total.capacity[1], total.capacity[2]
    )
    .unwrap();
    writeln!(
        report,
        "Omega_qALC lower = {}  = {:.15}",
        total.halt.exact_str(),
        total.halt.re()
    )
    .unwrap();
    let mut upper = total.halt;
    upper.merge(&total.running);
    writeln!(
        report,
        "bracket upper   = {}  = {:.15}   (halt + running)",
        upper.exact_str(),
        upper.re()
    )
    .unwrap();
    writeln!(
        report,
        "error mass      = {}  = {:.15}   (excluded)",
        total.error.exact_str(),
        total.error.re()
    )
    .unwrap();
    writeln!(
        report,
        "running mass    = {}  = {:.15}",
        total.running.exact_str(),
        total.running.re()
    )
    .unwrap();
    let mut accounted = total.halt;
    accounted.merge(&total.error);
    accounted.merge(&total.running);
    writeln!(
        report,
        "population mass = {}  = {:.15}",
        accounted.exact_str(),
        accounted.re()
    )
    .unwrap();
    if let Some((len, enc)) = total.peak_witness {
        writeln!(
            report,
            "peak support {}  witness {}",
            total.peak_support,
            enc_to_string(enc, len)
        )
        .unwrap();
    }
    if let Some((at, len, enc)) = total.earliest_capacity {
        writeln!(
            report,
            "earliest capacity step {at}  witness {}",
            enc_to_string(enc, len)
        )
        .unwrap();
    }
    if collect_matrix {
        let trace = matrix_trace(&total.matrix);
        let off_diagonal = total
            .matrix
            .keys()
            .filter(|(left, right)| left != right)
            .count();
        writeln!(
            report,
            "M coordinates {}  off-diagonal {}  Tr M {}  = {:.15}",
            total.matrix.len(),
            off_diagonal,
            trace.exact_str(),
            trace.re()
        )
        .unwrap();
    } else {
        report.push_str("M coordinates disabled (rho and Tr rho still audited)\n");
    }
    report
}

fn render_matrix(
    min_n: u32,
    max_n: u32,
    steps: u64,
    support_cap: usize,
    matrix: &HashMap<MatrixKey, ExactSum>,
) -> String {
    let mut out = String::new();
    writeln!(out, "# qALC finite M sparse coordinates spec v0").unwrap();
    writeln!(
        out,
        "# sizes {min_n}..={max_n} invocation=p-h-t steps={steps} support={support_cap}"
    )
    .unwrap();
    out.push_str("# left-NF<TAB>right-NF<TAB>exact<TAB>real<TAB>imag\n");
    let mut entries: Vec<_> = matrix.iter().collect();
    entries.sort_unstable_by(|a, b| a.0.cmp(b.0));
    for ((left, right), value) in entries {
        writeln!(
            out,
            "{left}\t{right}\t{}\t{:.15}\t{:+.15}",
            value.exact_str(),
            value.re(),
            value.im()
        )
        .unwrap();
    }
    out
}

fn reject_path_aliases(out: Option<&str>, matrix: Option<&str>, checkpoint: Option<&str>) -> R<()> {
    for (left_name, left, right_name, right) in [
        ("--out", out, "--matrix", matrix),
        ("--out", out, "--checkpoint", checkpoint),
        ("--matrix", matrix, "--checkpoint", checkpoint),
    ] {
        if left.is_some() && left == right {
            return Err(format!(
                "blam qalc census: {left_name} and {right_name} must name different files\n{}",
                args::hint("qalc census")
            ));
        }
    }
    Ok(())
}

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    let mut steps = 256u64;
    let mut support_cap = 100_000usize;
    let mut threads = 0usize;
    let mut retry_threads = 0usize;
    let mut out_path: Option<String> = None;
    let mut matrix_path: Option<String> = None;
    let mut checkpoint_path: Option<String> = None;
    let mut groups_flag = 0usize;
    let mut args = Args::new("qalc census", argv);
    while let Some(token) = args.next() {
        match token {
            "--steps" => steps = args.num(token)?,
            "--support" => support_cap = args.num(token)?,
            "--threads" => threads = args.num(token)?,
            "--retry-threads" => retry_threads = args.num(token)?,
            "--out" => out_path = Some(args.value(token)?.to_string()),
            "--matrix" => matrix_path = Some(args.value(token)?.to_string()),
            "--checkpoint" => checkpoint_path = Some(args.value(token)?.to_string()),
            "--groups" => groups_flag = args.num(token)?,
            _ if token.starts_with('-') => return Err(args.unknown(token)),
            _ => args.push(token),
        }
    }
    if args.given("--groups") && checkpoint_path.is_none() {
        return Err(args.incompatible(
            "--groups",
            "no --checkpoint",
            "groups only slice a checkpointed run",
        ));
    }
    if support_cap == 0 {
        return Err(format!(
            "blam qalc census: --support must be at least 1\n{}",
            args::hint("qalc census")
        ));
    }
    let (min_n, max_n) = args.range_packed(4)?;
    reject_path_aliases(
        out_path.as_deref(),
        matrix_path.as_deref(),
        checkpoint_path.as_deref(),
    )?;

    let mut out_file = match &out_path {
        Some(path) => Some(crate::out::create("qalc census", "--out", path)?),
        None => None,
    };
    let mut matrix_file = match &matrix_path {
        Some(path) => Some(crate::out::create("qalc census", "--matrix", path)?),
        None => None,
    };
    let collect_matrix = matrix_file.is_some();
    args::build_pool(threads)?;
    let thread_count = rayon::current_num_threads();
    let retry_threads = if retry_threads == 0 {
        thread_count.min(8)
    } else {
        retry_threads.min(thread_count)
    }
    .max(1);
    let retry_pool = rayon::ThreadPoolBuilder::new()
        .num_threads(retry_threads)
        .thread_name(|index| format!("qalc-retry-{index}"))
        .build()
        .map_err(|error| format!("blam qalc census: cannot build retry pool: {error}"))?;
    eprintln!(
        "qALC census: sizes {min_n}..={max_n}, invocation p h t, steps={steps}, support={support_cap}, matrix={collect_matrix}, {thread_count} threads, {retry_threads} retry threads"
    );

    let config = format!(
        "qalc-census-v0 min={min_n} max={max_n} steps={steps} support={support_cap} matrix={}",
        u8::from(collect_matrix)
    );
    let mut checkpoint = match &checkpoint_path {
        Some(path) => Some(crate::ckpt::Ckpt::<Tally>::open(
            "qalc census",
            path,
            &config,
            groups_flag,
        )?),
        None => None,
    };

    let started = Instant::now();
    let mut rows = Vec::new();
    let mut total = Tally::new();
    for n in min_n..=max_n {
        let target = checkpoint
            .as_ref()
            .map_or(thread_count * 32, |state| state.target);
        let tasks = interleave_tasks(split_tasks(n, target));
        let run_slice = |slice: &[blam::blc::enumerate::GenTask]| -> R<Tally> {
            let probed = slice
                .par_iter()
                .try_fold(ProbeTally::default, |mut tally, task| {
                    let mut failure = None;
                    run_task(task, &mut |enc, len| {
                        if failure.is_none() {
                            failure =
                                probe_one(enc, len, steps, support_cap, collect_matrix, &mut tally)
                                    .err();
                        }
                    });
                    match failure {
                        Some(error) => Err(error),
                        None => Ok(tally),
                    }
                })
                .try_reduce(ProbeTally::default, |left, right| Ok(left.merge(right)))?;
            let deferred = retry_pool.install(|| {
                probed
                    .deferred
                    .par_iter()
                    .copied()
                    .try_fold(Tally::new, |mut tally, deferred| {
                        sweep_deferred(deferred, steps, support_cap, collect_matrix, &mut tally)?;
                        Ok::<Tally, String>(tally)
                    })
                    .try_reduce(Tally::new, |left, right| Ok(left.merge(right)))
            })?;
            Ok(probed.tally.merge(deferred))
        };
        let (tally, seconds) = match &mut checkpoint {
            Some(state) => {
                let per_group = tasks.len().div_ceil(state.groups).max(1);
                let mut tally = Tally::new();
                let mut seconds = 0.0;
                for group in 0..state.groups {
                    if let Some((restored, elapsed)) = state.take_restored(n, group) {
                        tally = tally.merge(restored);
                        seconds += elapsed;
                        continue;
                    }
                    let start = (group * per_group).min(tasks.len());
                    let end = ((group + 1) * per_group).min(tasks.len());
                    let group_started = Instant::now();
                    let measured = run_slice(&tasks[start..end])?;
                    let elapsed = group_started.elapsed().as_secs_f64();
                    state.append(n, group, elapsed, &measured)?;
                    tally = tally.merge(measured);
                    seconds += elapsed;
                }
                (tally, seconds)
            }
            None => {
                let size_started = Instant::now();
                let tally = run_slice(&tasks)?;
                (tally, size_started.elapsed().as_secs_f64())
            }
        };
        eprintln!(
            "n={n:>2}: {:>9} programs  gate1 {:>8}  cons {:>8}  h/e/r {}/{}/{}  cap {:?}  peak {}  ({seconds:.3}s, {:.0}/s)",
            tally.programs,
            tally.selection[1],
            tally.selection[2],
            tally.halt_programs,
            tally.error_programs,
            tally.running_programs,
            tally.capacity,
            tally.peak_support,
            tally.programs as f64 / seconds.max(f64::MIN_POSITIVE),
        );
        eprintln!(
            "      worker-s over {} measured programs: select {:.3} [carrier {:.3}, gram {:.3}, obligations {:.3}, rri {:.3}, digest {:.3}; {} attempts, {} canonical retries]  evolve {:.3}  observe {:.3}",
            tally.perf.measured_programs,
            tally.perf.selection.as_secs_f64(),
            tally.perf.admission.carrier.as_secs_f64(),
            tally.perf.admission.gram.as_secs_f64(),
            tally.perf.admission.obligations.as_secs_f64(),
            tally.perf.admission.rri.as_secs_f64(),
            tally.perf.admission.digest.as_secs_f64(),
            tally.perf.admission.attempts,
            tally.perf.canonical_retries,
            tally.perf.evolution.as_secs_f64(),
            tally.perf.observation.as_secs_f64(),
        );
        for slow in &tally.slow_selection {
            eprintln!(
                "      slow select {:>8.3}s  {:?}  carrier {:>8.3}s  {}",
                slow.elapsed.as_secs_f64(),
                slow.kind,
                slow.carrier.as_secs_f64(),
                enc_to_string(slow.witness.1, slow.witness.0),
            );
        }
        rows.push(Row::from_tally(n, &tally));
        total = total.merge(tally);
    }
    let elapsed = started.elapsed();
    eprintln!(
        "sweep: {} programs in {:.2?} ({:.0} programs/s)",
        total.programs,
        elapsed,
        total.programs as f64 / elapsed.as_secs_f64().max(f64::MIN_POSITIVE)
    );

    if collect_matrix && total.capacity[2] == 0 {
        let trace = matrix_trace(&total.matrix);
        if trace.value().map(|value| value.reduce())
            != total.halt.value().map(|value| value.reduce())
        {
            return Err("blam qalc census: accumulated Tr M differs from Omega lower".into());
        }
    }
    let report = render_report(
        min_n,
        max_n,
        steps,
        support_cap,
        collect_matrix,
        &rows,
        &total,
    );
    print!("{report}");
    if let (Some(path), Some(file)) = (&out_path, out_file.as_mut()) {
        crate::out::write_all("qalc census", path, file, report.as_bytes())?;
    }
    if let (Some(path), Some(file)) = (&matrix_path, matrix_file.as_mut()) {
        let matrix = render_matrix(min_n, max_n, steps, support_cap, &total.matrix);
        crate::out::write_all("qalc census", path, file, matrix.as_bytes())?;
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn checkpoint_body_round_trips_sparse_coordinates() {
        let mut tally = Tally::new();
        tally.programs = 3;
        tally.selection = [0, 2, 1];
        tally.note_support(7, (10, 42));
        tally.note_capacity(9, (10, 42));
        tally.halt.add(Some(blam::quantum::scalar::Dw::ONE));
        tally.matrix.insert(
            ("( nl ( nv i:1 ) )".into(), "( nv i:2 )".into()),
            tally.halt,
        );
        let mut body = String::new();
        crate::ckpt::CkptRecord::write_body(&tally, &mut body);
        let mut parsed = Tally::new();
        for line in body.lines() {
            crate::ckpt::CkptRecord::parse_line(&mut parsed, line).expect("checkpoint line");
        }
        assert_eq!(parsed.programs, tally.programs);
        assert_eq!(parsed.selection, tally.selection);
        assert_eq!(parsed.peak_witness, tally.peak_witness);
        assert_eq!(parsed.earliest_capacity, tally.earliest_capacity);
        assert_eq!(parsed.halt.value(), tally.halt.value());
        assert_eq!(parsed.matrix.len(), 1);
    }

    #[test]
    fn hex_codec_is_exact_and_rejects_torn_input() {
        let text = "( na ( ng h ) ( nv i:2 ) )";
        assert_eq!(unhex(&hex(text)).as_deref(), Some(text));
        assert!(unhex("0").is_none());
        assert!(unhex("gg").is_none());
    }
}
