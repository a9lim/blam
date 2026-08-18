//! Empirical algorithmic information theory over the closed-term census:
//! the Solomonoff prior m(x), prefix complexity K(x), two-sided bounds
//! on the plain-machine halting probability Ω, and the speed-prior
//! (Levin) surface — S(x), Kt(x), depth⁰(x), Ω_speed brackets, and the
//! time spectrum (`docs/classical/speed.md`) — all from exhaustively
//! running every closed BLC term of size min_n..=max_n.
//!
//! Closed-term codes are prefix-free, so Σ 2^-|p| over any set of closed
//! terms is ≤ 1 and every mass here is EXACT: masses are integers in units
//! of 2^-64 (u128), no floating-point accumulation anywhere.
//!
//!   Ω ∈ [halt_mass, 1 − diverge_mass − (never-halting mass outside range)]
//!   m_N(x) = Σ_{|p|≤N, p→x} 2^-|p|   (reported: nontrivial mass + 2^-|x|)
//!   K_N(x) = min{|p| : p→x, |p|≤N}   (≤ |x| via the self-program)
//!
//! Only programs WITH a redex are tabulated — every normal form x is its
//! own program, and that trivial 2^-|x| contribution is added analytically
//! at print time. Normal forms wider than 63 bits can't be u64-keyed and
//! are aggregated by size (identity dropped, counts and mass kept).
//!
//! Usage: `blam solomonoff [MIN] MAX [flags]` — see `USAGE` below.

use crate::args::{self, Args, R};
use blam::blc::enumerate::{interleave_tasks, run_task, split_tasks};
use blam::blc::wire::enc_to_string;
use blam::classical::ladder::{self, LadderCfg, Telemetry, Verdict};
use blam::classical::machine::{Machine, Pool, Sink};
use rayon::prelude::*;
use std::collections::HashMap;
use std::time::Instant;

/// One unit = 2^-64. A size-n program contributes 2^(64-n) units.
fn mass_of(n: u8) -> u128 {
    1u128 << (64 - n as u32)
}

/// One speed unit = 2^-128: 64 fractional bits below the m/Ω grid, so
/// directed rounding of 1/T keeps certified brackets. Sums are bounded
/// by 2^128·Ω < 2^126 — no overflow (`docs/classical/speed.md` §3).
fn speed_units(n: u8) -> u128 {
    1u128 << (128 - n as u32)
}

/// ⌈lg T⌉ for T = max(t, 1): the Kt time penalty in bits and the
/// spectrum column. 1 → 0, 2 → 1, 3 → 2, 4 → 2.
fn ceil_lg(t: u64) -> u8 {
    (64 - (t.max(1) - 1).leading_zeros()) as u8
}

/// Directed-rounded speed contribution of a size-n program at time t:
/// (floor, ceil) of 2^(128-n)/max(t,1) in 2^-128 units.
fn speed_contrib(n: u8, t: u64) -> (u128, u128) {
    let num = speed_units(n);
    let t = t.max(1) as u128;
    (num / t, num.div_ceil(t))
}

/// Format a 2^-128-unit speed mass as a decimal probability.
fn ps(units: u128) -> f64 {
    units as f64 / 2f64.powi(128)
}

/// Spectrum columns: one per possible ⌈lg T⌉ of a u64 time (0..=64),
/// so no legal CLI range or budget can outrun the array. Canonical
/// data uses 25 of them (β ≤ 24 at the 10⁷ rescue, honest ≤ 31).
const SPEC_B: usize = 65;
/// Sizes are u8 wire lengths ≤ 63.
const SPEC_N: usize = 64;
/// Rows kept in the deepest-computations top list.
const DEEP_CAP: usize = 40;

/// Per-gauge halter counts by (|p|, ⌈lg T⌉), plus the t = 0 column.
/// Counts are the whole record: every program in a cell has mass
/// 2^-|p|, so mass(n, b) = count(n, b)·2^-n exactly.
#[derive(Clone, Debug, PartialEq, Eq)]
struct Spectrum {
    cells: Vec<[u64; SPEC_B]>,
    nf: Vec<u64>,
}

impl Default for Spectrum {
    fn default() -> Self {
        Spectrum {
            cells: vec![[0; SPEC_B]; SPEC_N],
            nf: vec![0; SPEC_N],
        }
    }
}

impl Spectrum {
    fn bump(&mut self, n: u8, t: u64) {
        let b = ceil_lg(t) as usize;
        assert!(b < SPEC_B, "spectrum bucket {b} out of range");
        self.cells[n as usize][b] += 1;
    }

    fn merge(&mut self, o: &Spectrum) {
        for (row, orow) in self.cells.iter_mut().zip(&o.cells) {
            for (c, oc) in row.iter_mut().zip(orow) {
                *c += oc;
            }
        }
        for (c, oc) in self.nf.iter_mut().zip(&o.nf) {
            *c += oc;
        }
    }

    fn total(&self) -> u64 {
        self.cells.iter().flatten().sum::<u64>() + self.nf.iter().sum::<u64>()
    }
}

/// One time gauge's Ω_speed bracket: proven-clocked halters land in
/// [halt_lo, halt_hi] with directed rounding; unknowns and unclocked
/// halters add only to the open upper side, each at its t-floor.
#[derive(Clone, Debug, Default, PartialEq, Eq)]
struct Gauge {
    halt_lo: u128,
    halt_hi: u128,
    open_hi: u128,
    spec: Spectrum,
}

impl Gauge {
    /// A halter with known time t: directed contribution plus spectrum.
    fn halt(&mut self, n: u8, t: u64) {
        let (lo, hi) = speed_contrib(n, t);
        self.halt_lo += lo;
        self.halt_hi += hi;
        self.spec.bump(n, t);
    }

    /// A redex-free program: t = 0, full mass, the nf column.
    fn halt_nf(&mut self, n: u8) {
        self.halt_lo += speed_units(n);
        self.halt_hi += speed_units(n);
        self.spec.nf[n as usize] += 1;
    }

    /// An open program (unknown, or unclocked halter): if it halts at
    /// all, t ≥ floor, so it adds at most 2^-n/floor to the upper side.
    fn open(&mut self, n: u8, floor: u64) -> u128 {
        let (_, hi) = speed_contrib(n, floor);
        self.open_hi += hi;
        hi
    }

    fn merge(&mut self, o: &Gauge) {
        self.halt_lo += o.halt_lo;
        self.halt_hi += o.halt_hi;
        self.open_hi += o.open_hi;
        self.spec.merge(&o.spec);
    }
}

/// The certified t-floors of a term whose ladder trip failed a KN run:
/// max over the failed rung-2 and rescue runs, per coordinate
/// (`docs/classical/speed.md` §3). (1, 1) if no failed run is recorded.
fn t_floors(tel: &Telemetry) -> (u64, u64) {
    let mut fb = 1u64;
    let mut ft = 1u64;
    for died in [tel.kn2_died, tel.rescue_died].into_iter().flatten() {
        fb = fb.max(died.0);
        ft = ft.max(died.1);
    }
    (fb, ft)
}

/// One open program's row in the floors dump.
#[derive(Clone, Debug, PartialEq, Eq)]
struct OpenRow {
    enc: u64,
    len: u8,
    unclocked: bool,
    floor_beta: u64,
    floor_trans: u64,
    beta_hi: u128,
    trans_hi: u128,
    honest_hi: u128,
}

/// One deepest-computations row.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
struct DeepRow {
    t: u64,
    enc: u64,
    len: u8,
    x_bits: u64,
}

/// Total order for the deep top list: deepest first, then the same
/// (len, enc) tie-break every other table uses — partition-independent.
fn deep_key(r: &DeepRow) -> (std::cmp::Reverse<u64>, u8, u64) {
    (std::cmp::Reverse(r.t), r.len, r.enc)
}

/// Streams normal-form bits into a u64-packed key; falls back to
/// size-only counting past 63 bits.
#[derive(Default)]
struct KeySink {
    enc: u64,
    len: u64,
    overflow: bool,
}

impl KeySink {
    fn push(&mut self, bit: bool) {
        self.len += 1;
        if self.len > 63 {
            self.overflow = true;
        } else {
            self.enc = self.enc << 1 | bit as u64;
        }
    }
}

impl Sink for KeySink {
    fn zero(&mut self) {
        self.push(false);
    }
    fn one(&mut self) {
        self.push(true);
    }
    /// O(1) equivalent of the default (n ones, then a zero). The default
    /// is O(n) with n bounded only by the machine's transition cap —
    /// profiled at 99.9% of the n=40 tail before this override existed.
    fn var(&mut self, n: u32) {
        let need = n as u64 + 1;
        if !self.overflow && self.len + need <= 63 {
            self.enc = (self.enc << need) | (((1u64 << n) - 1) << 1);
        } else {
            self.overflow = true;
        }
        self.len += need;
    }
}

/// Is x's analytic self-program inside the sweep window? A size-|x|
/// self-program outside min_n..=max_n is not part of the restricted
/// object, so no print rule may fold it in (`speed.md` §2).
fn self_in_window(xlen: u8, min_n: u32, max_n: u32) -> bool {
    (xlen as u32) >= min_n && (xlen as u32) <= max_n
}

/// The printed restricted Kt: min over the clocked nontrivial minimum
/// and the in-window self-program; None when neither exists.
fn kt_eff(e: &Entry, xlen: u8, min_n: u32, max_n: u32) -> Option<u8> {
    let clocked = (e.kt != KT_NONE).then_some(e.kt);
    let selfp = self_in_window(xlen, min_n, max_n).then_some(xlen);
    match (clocked, selfp) {
        (Some(a), Some(b)) => Some(a.min(b)),
        (a, b) => a.or(b),
    }
}

/// `kt` when no clocked program for x has been seen (only unclocked
/// halters produce x). Real Kt values top out at max_n + ⌈lg rescue⌉.
const KT_NONE: u8 = u8::MAX;
/// `depth0` when the size-K programs for x are all unclocked.
const DEPTH_NONE: u64 = u64::MAX;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
struct Entry {
    mass: u128, // nontrivial mass, units of 2^-64
    count: u64, // nontrivial programs
    k: u8,      // shortest program size seen (incl. nontrivial only)
    k_prog: (u64, u8),
    kt: u8, // min |p| + ⌈lg T_β⌉ over clocked programs (KT_NONE: none)
    kt_prog: (u64, u8),
    kt_t: u64,   // the Kt witness's β-count
    depth0: u64, // min t_β among |p| = k programs (finite Bennett depth⁰)
    // Unclocked producers of x make the clocked minima upper bounds
    // rather than exact values; the table marks such rows
    // (`docs/classical/speed.md` §4). Zero everywhere through 41.
    open_progs: u64,
    k_open: bool, // an unclocked producer sits at |p| = k
    slo: u128,    // β-gauge nontrivial Levin mass, 2^-128 units, directed
    shi: u128,
    hlo: u128, // honest-gauge (t_β + |x|) Levin mass bracket
    hhi: u128,
}

impl Entry {
    /// Fold another accumulated entry in. Every field is a commutative
    /// monoid or an argmin fold under a total order, so table merges are
    /// partition-independent (`docs/classical/speed.md` §5).
    fn absorb(&mut self, e: &Entry) {
        self.mass += e.mass;
        self.count += e.count;
        // depth⁰ before the k update: it is keyed on k alone, and the
        // three-way makes the pair (k, depth0) a joint argmin fold.
        match e.k.cmp(&self.k) {
            std::cmp::Ordering::Less => {
                self.depth0 = e.depth0;
                self.k_open = e.k_open;
            }
            std::cmp::Ordering::Equal => {
                self.depth0 = self.depth0.min(e.depth0);
                self.k_open |= e.k_open;
            }
            std::cmp::Ordering::Greater => {}
        }
        self.open_progs += e.open_progs;
        // Total order on ties: reduce-order independent.
        if (e.k, e.k_prog) < (self.k, self.k_prog) {
            self.k = e.k;
            self.k_prog = e.k_prog;
        }
        if (e.kt, e.kt_prog) < (self.kt, self.kt_prog) {
            self.kt = e.kt;
            self.kt_prog = e.kt_prog;
            self.kt_t = e.kt_t;
        }
        self.slo += e.slo;
        self.shi += e.shi;
        self.hlo += e.hlo;
        self.hhi += e.hhi;
    }
}

#[derive(Default)]
struct Acc {
    total: u64,
    halt: u64,
    diverge: u64,
    unknown: u64,
    unclocked: u64,
    halt_mass: u128,
    diverge_mass: u128,
    unknown_mass: u128,
    nontrivial: u64,
    table: HashMap<(u64, u8), Entry>,
    big: HashMap<u64, (u128, u64)>, // nf size -> (mass, count) past 63 bits
    beta: Gauge,
    trans: Gauge,
    honest: Gauge,
    open_rows: Vec<OpenRow>,
    deep: Vec<DeepRow>,
}

impl Acc {
    fn merge(mut self, o: Acc) -> Acc {
        self.total += o.total;
        self.halt += o.halt;
        self.diverge += o.diverge;
        self.unknown += o.unknown;
        self.unclocked += o.unclocked;
        self.halt_mass += o.halt_mass;
        self.diverge_mass += o.diverge_mass;
        self.unknown_mass += o.unknown_mass;
        self.nontrivial += o.nontrivial;
        for (k, e) in o.table {
            self.table
                .entry(k)
                .and_modify(|m| m.absorb(&e))
                .or_insert(e);
        }
        for (sz, (mass, count)) in o.big {
            let b = self.big.entry(sz).or_insert((0, 0));
            b.0 += mass;
            b.1 += count;
        }
        self.beta.merge(&o.beta);
        self.trans.merge(&o.trans);
        self.honest.merge(&o.honest);
        self.open_rows.extend(o.open_rows);
        self.deep.extend(o.deep);
        self.trim_deep();
        self
    }

    /// Keep the deep list bounded. Truncation under the global total
    /// order is partition-safe: any global top-DEEP_CAP row is in its
    /// own partition's top DEEP_CAP.
    fn trim_deep(&mut self) {
        if self.deep.len() > DEEP_CAP {
            self.deep.sort_unstable_by_key(deep_key);
            self.deep.truncate(DEEP_CAP);
        }
    }

    fn record_halt(
        &mut self,
        enc: u64,
        len: u8,
        sink: &KeySink,
        steps: Option<u64>,
        tel: &Telemetry,
    ) {
        self.halt += 1;
        self.halt_mass += mass_of(len);
        if steps == Some(0) {
            // Normal-form program: trivial self-computation, no m(x)
            // mass. Speed: T = 1 under β/transitions; writing the
            // output is the whole cost under the honest gauge.
            self.beta.halt_nf(len);
            self.trans.halt_nf(len);
            let (hlo, hhi) = speed_contrib(len, len as u64);
            self.honest.halt_lo += hlo;
            self.honest.halt_hi += hhi;
            self.honest.spec.bump(len, len as u64);
            return;
        }
        self.nontrivial += 1;
        let x_bits = sink.len;
        let entry = match steps {
            Some(t) => {
                self.beta.halt(len, t);
                self.trans.halt(len, tel.last_trans);
                let th = t.saturating_add(x_bits);
                self.honest.halt(len, th);
                self.deep.push(DeepRow {
                    t,
                    enc,
                    len,
                    x_bits,
                });
                if self.deep.len() > DEEP_CAP * 8 {
                    self.trim_deep();
                }
                let (slo, shi) = speed_contrib(len, t);
                let (hlo, hhi) = speed_contrib(len, th);
                Entry {
                    mass: mass_of(len),
                    count: 1,
                    k: len,
                    k_prog: (enc, len),
                    kt: len + ceil_lg(t),
                    kt_prog: (enc, len),
                    kt_t: t,
                    depth0: t,
                    open_progs: 0,
                    k_open: false,
                    slo,
                    shi,
                    hlo,
                    hhi,
                }
            }
            None => {
                // Unclocked: the escalation engine proved the halt, the
                // rescue could not recover the canonical count. Charged
                // like an unknown — floor-bounded upper side only — and
                // excluded from Kt/depth⁰ candidacy
                // (`docs/classical/speed.md` §3).
                self.unclocked += 1;
                let (fb, ft) = t_floors(tel);
                let beta_hi = self.beta.open(len, fb);
                let trans_hi = self.trans.open(len, ft);
                let honest_hi = self.honest.open(len, fb.saturating_add(x_bits));
                self.open_rows.push(OpenRow {
                    enc,
                    len,
                    unclocked: true,
                    floor_beta: fb,
                    floor_trans: ft,
                    beta_hi,
                    trans_hi,
                    honest_hi,
                });
                Entry {
                    mass: mass_of(len),
                    count: 1,
                    k: len,
                    k_prog: (enc, len),
                    kt: KT_NONE,
                    kt_prog: (0, 0),
                    kt_t: 0,
                    depth0: DEPTH_NONE,
                    open_progs: 1,
                    k_open: true,
                    slo: 0,
                    shi: beta_hi,
                    hlo: 0,
                    hhi: honest_hi,
                }
            }
        };
        if sink.overflow {
            let b = self.big.entry(sink.len).or_insert((0, 0));
            b.0 += mass_of(len);
            b.1 += 1;
        } else {
            self.table
                .entry((sink.enc, sink.len as u8))
                .and_modify(|m| m.absorb(&entry))
                .or_insert(entry);
        }
    }

    /// An unknown: mass bookkeeping plus the floor-bounded open charge
    /// on every gauge's upper side.
    fn record_unknown(&mut self, enc: u64, len: u8, tel: &Telemetry) {
        self.unknown += 1;
        self.unknown_mass += mass_of(len);
        let (fb, ft) = t_floors(tel);
        let beta_hi = self.beta.open(len, fb);
        let trans_hi = self.trans.open(len, ft);
        // If it halts, |x| ≥ 4 (the smallest closed normal form), so
        // the honest floor gains the minimum writing cost.
        let honest_hi = self.honest.open(len, fb.saturating_add(4));
        self.open_rows.push(OpenRow {
            enc,
            len,
            unclocked: false,
            floor_beta: fb,
            floor_trans: ft,
            beta_hi,
            trans_hi,
            honest_hi,
        });
    }
}

/// Format a 2^-64-unit mass as a decimal probability.
fn pm(units: u128) -> f64 {
    units as f64 / 2f64.powi(64)
}

const USAGE: &str = "\
blam solomonoff [MIN] MAX — Solomonoff prior, K(x), and Omega bounds

usage: blam solomonoff [MIN] MAX [flags]     (MIN defaults to 4, MAX <= 63)

ladder
  --budget1 N            rung-1 beta budget (default 64)
  --budget2 N            rung-2 beta budget (default 4096)
  --bb-cap N             escalation-engine capacity (default 2000000)
  --rescue N             KN rescue beta budget (default 10000000)
  --rescue-trans-mult N  rescue transition cap = rescue x N (default 32)
  --no-prescan           skip the redex-free pre-scan
  --no-oracle            skip the divergence-oracle prefilter
  --work-mult N          escalation work meter per capacity bit (default 16)
  --probe-fuel N         redloop probe beta budget (default 4096)

run
  --table FILE           per-x m/K/Kt/speed table (default: none)
  --dump-max-x N         dump table rows with |x| <= N (default 20; needs --table)
  --unknown-floors FILE  per-open-program t-floor dump (default: none)
  --top N                rows per analytics section (default 40)
  --threads N            rayon threads (0 = ambient, the default)";

pub fn run(argv: &[String]) -> R<()> {
    if args::wants_help(argv) {
        println!("{USAGE}");
        return Ok(());
    }
    // The census ladder, verbatim: this sweep and `blam census` must
    // agree term for term, since Ω's bounds are the census's halt/
    // diverge split re-weighted by 2^-|p|.
    let mut cfg = LadderCfg::default();
    // Opt-in: this used to default to ./solomonoff_table.txt, the one
    // file output in the CLI with a default path, and truncate it before
    // any compute on every run that never asked for a table.
    let mut table_path: Option<String> = None;
    let mut floors_path: Option<String> = None;
    let mut dump_max_x: u8 = 20;
    let mut top: usize = 40;
    let mut threads = 0usize;
    let mut work_mult: Option<i64> = None;
    let mut probe_fuel: Option<u64> = None;
    let mut p = Args::new("solomonoff", argv);
    while let Some(tok) = p.next() {
        match tok {
            "--budget1" => cfg.budget1 = p.num(tok)?,
            "--budget2" => cfg.budget2 = p.num(tok)?,
            "--bb-cap" => cfg.bb_cap = p.num(tok)?,
            "--rescue" => cfg.rescue = p.num(tok)?,
            "--rescue-trans-mult" => cfg.rescue_trans_mult = p.num(tok)?,
            "--table" => table_path = Some(p.value(tok)?.to_string()),
            "--unknown-floors" => floors_path = Some(p.value(tok)?.to_string()),
            "--dump-max-x" => dump_max_x = p.num(tok)?,
            "--top" => top = p.num(tok)?,
            "--threads" => threads = p.num(tok)?,
            "--work-mult" => work_mult = Some(p.num(tok)?),
            "--probe-fuel" => probe_fuel = Some(p.num(tok)?),
            "--no-prescan" => {
                p.flag(tok)?;
                cfg.prescan = false;
            }
            "--no-oracle" => {
                p.flag(tok)?;
                cfg.oracle = false;
            }
            _ if tok.starts_with('-') => return Err(p.unknown(tok)),
            _ => p.push(tok),
        }
    }
    let (min_n, max_n) = p.range_packed(4)?;
    // The per-x dump lives inside the table file; without --table the
    // flag would parse, validate, and do nothing — a silent lie about
    // what the run did, same as `adjudicate --threads` on one term.
    if table_path.is_none() && p.given("--dump-max-x") {
        return Err(format!(
            "blam solomonoff: --dump-max-x needs --table — the per-x dump \
             is written into the table file\n{}",
            args::hint("solomonoff")
        ));
    }
    args::check_rescue("solomonoff", cfg.rescue, cfg.rescue_trans_mult)?;
    cfg.engine = args::engine_cfg("solomonoff", work_mult, probe_fuel)?;
    // The table is a full-run product, so its path is proved writable
    // now rather than after the sweep.
    let mut table = match &table_path {
        Some(path) => Some(crate::out::create("solomonoff", "--table", path)?),
        None => None,
    };
    let mut floors = match &floors_path {
        Some(path) => Some(crate::out::create("solomonoff", "--unknown-floors", path)?),
        None => None,
    };
    args::build_pool(threads)?;

    let t0 = Instant::now();
    let mut acc = Acc::default();
    for n in min_n..=max_n {
        let tn = Instant::now();
        let tasks = interleave_tasks(split_tasks(n, rayon::current_num_threads() * 64));
        let a = tasks
            .par_iter()
            .map_init(
                || (Pool::new(), Machine::new()),
                |(pool, vm), task| {
                    let mut acc = Acc::default();
                    let mut sink = KeySink::default();
                    run_task(task, &mut |enc, len| {
                        acc.total += 1;
                        pool.clear();
                        let root = pool.decode_u64(enc, len).expect("valid term");
                        let o = ladder::adjudicate(&cfg, pool, vm, root, &mut sink);
                        match o.verdict {
                            // `steps`: Some(0) is a pre-scan normal form
                            // (trivial self-computation, no m(x) mass),
                            // None a rescue-less engine halt — genuinely
                            // nontrivial, but charged as open on the
                            // speed side because the canonical count is
                            // unavailable.
                            Verdict::Halt { steps, .. } => {
                                acc.record_halt(enc, len, &sink, steps, &o.tel);
                            }
                            Verdict::Diverge => {
                                acc.diverge += 1;
                                acc.diverge_mass += mass_of(len);
                            }
                            Verdict::Unknown(_) => {
                                acc.record_unknown(enc, len, &o.tel);
                            }
                        }
                    });
                    acc
                },
            )
            .reduce(Acc::default, Acc::merge);
        acc = acc.merge(a);
        eprintln!(
            "n={n}: cumulative {} terms, {} distinct nontrivial nfs ({:.1}s, {:.1}s total)",
            acc.total,
            acc.table.len(),
            tn.elapsed().as_secs_f64(),
            t0.elapsed().as_secs_f64()
        );
    }

    // ---- Ω accounting (exact, units of 2^-64) ----
    let covered = acc.halt_mass + acc.diverge_mass + acc.unknown_mass;
    // Provenance, matching census: this stdout stream is a measurement,
    // so it names the binary, the range, and the ladder it ran.
    println!("# blam solomonoff {}", env!("CARGO_PKG_VERSION"));
    println!("# sizes {min_n}..={max_n}");
    println!("# ladder: {}", crate::adjudicate::describe(&cfg));
    println!("== programs {min_n}..{max_n} bits ==");
    println!(
        "terms {} | halt {} | diverge {} | unknown {}",
        acc.total, acc.halt, acc.diverge, acc.unknown
    );
    println!(
        "halt_mass     = {} * 2^-64 = {:.12}",
        acc.halt_mass,
        pm(acc.halt_mass)
    );
    println!(
        "diverge_mass  = {} * 2^-64 = {:.12}",
        acc.diverge_mass,
        pm(acc.diverge_mass)
    );
    println!(
        "unknown_mass  = {} * 2^-64 = {:.2e}",
        acc.unknown_mass,
        pm(acc.unknown_mass)
    );
    println!(
        "kraft covered = {:.12} (all closed terms {min_n}..{max_n})",
        pm(covered)
    );
    println!(
        "Ω_plain restricted to |p|≤{max_n}: [{:.12}, {:.12}]",
        pm(acc.halt_mass),
        pm(acc.halt_mass + acc.unknown_mass)
    );

    // ---- Ω_speed (exact, units of 2^-128; docs/classical/speed.md) ----
    let gauges = [
        ("beta", &acc.beta),
        ("trans", &acc.trans),
        ("honest", &acc.honest),
    ];
    // Exactness invariants, checked on every run: brackets are ordered,
    // every halter is in each spectrum (or counted unclocked), and no
    // upper endpoint exceeds the Kraft mass that could possibly halt.
    let possibly_halting = acc.halt_mass + acc.unknown_mass;
    // Kraft over closed terms of ≥4 bits is strictly below 1, so the
    // 2^-64-unit mass fits in 64 bits and the rescale cannot overflow.
    assert!(possibly_halting < 1u128 << 64, "Kraft mass out of range");
    let kraft_cap = possibly_halting << 64;
    for (name, g) in gauges {
        assert!(g.halt_lo <= g.halt_hi, "{name}: bracket inverted");
        assert_eq!(
            g.spec.total() + acc.unclocked,
            acc.halt,
            "{name}: spectrum must cover every halter"
        );
        assert!(
            g.halt_hi + g.open_hi <= kraft_cap,
            "{name}: upper endpoint exceeds possibly-halting mass"
        );
    }
    println!("\n== speed prior (Levin): Ω_speed brackets ==");
    println!(
        "unclocked halters (proven halt, no canonical count): {}",
        acc.unclocked
    );
    println!("(decimals are nearest-f64 previews; the 2^-128 unit lines are the certified record)");
    for (name, g) in gauges {
        println!(
            "Ω_speed({name}) restricted to |p|≤{max_n}: [{:.12}, {:.12}]  open ≤ {:.3e}",
            ps(g.halt_lo),
            ps(g.halt_hi + g.open_hi),
            ps(g.open_hi),
        );
    }
    println!("exact 2^-128 units:");
    for (name, g) in gauges {
        println!(
            "  {name:<6} halt=[{}, {}] open={}",
            g.halt_lo, g.halt_hi, g.open_hi
        );
    }

    // ---- table analytics ----
    let mut rows: Vec<((u64, u8), Entry)> = acc.table.into_iter().collect();

    // Most compressible: largest |x| − K(x) (K includes the self-program).
    let mut by_compression: Vec<_> = rows
        .iter()
        .filter(|((_, xlen), e)| e.k < *xlen)
        .map(|(k, e)| (*k, *e))
        .collect();
    // Deterministic tiebreak (xlen, xenc): the gain classes are wide, and
    // an unordered `take(top)` would cut inside them in HashMap/merge
    // order, making output diffs meaningless between identical runs.
    by_compression.sort_by_key(|((xenc, xlen), e)| {
        (std::cmp::Reverse(*xlen as i64 - e.k as i64), *xlen, *xenc)
    });
    println!("\n== most compressible normal forms (|x| − K ≤{max_n}(x)) ==");
    println!(
        "{:>5} {:>4} {:>6} {:>8}  program -> x",
        "|x|", "K", "gain", "#progs"
    );
    for ((xenc, xlen), e) in by_compression.iter().take(top) {
        println!(
            "{:>5} {:>4} {:>6} {:>8}  {} -> {}",
            xlen,
            e.k,
            *xlen as i64 - e.k as i64,
            e.count,
            enc_to_string(e.k_prog.0, e.k_prog.1),
            if *xlen <= 40 {
                enc_to_string(*xenc, *xlen)
            } else {
                format!("<{xlen} bits>")
            }
        );
    }
    // Oversized normal forms, by size (identity not tracked past 63 bits).
    if !acc.big.is_empty() {
        let mut big: Vec<_> = acc.big.into_iter().collect();
        big.sort_by_key(|(sz, _)| std::cmp::Reverse(*sz));
        println!("\n== normal forms wider than 63 bits (aggregated) ==");
        for (sz, (mass, count)) in big.iter().take(top) {
            println!("  |x|={sz}: {count} programs, mass {:.3e}", pm(*mass));
        }
    }

    // Coding theorem check: K(x) vs −log2 m(x) for the heaviest x.
    rows.sort_by_key(|((xenc, xlen), e)| (std::cmp::Reverse(e.mass), *xlen, *xenc));
    println!("\n== coding theorem: heaviest normal forms ==");
    println!(
        "{:>18} {:>5} {:>4} {:>9} {:>12} {:>10}",
        "x", "|x|", "K", "#progs", "m_N(x)", "-log2 m"
    );
    for ((xenc, xlen), e) in rows.iter().take(top) {
        let self_mass = if *xlen as u32 <= max_n && *xlen as u32 >= min_n {
            mass_of(*xlen)
        } else {
            0
        };
        let m = e.mass + self_mass;
        let k_eff = if self_in_window(*xlen, min_n, max_n) {
            e.k.min(*xlen)
        } else {
            e.k
        };
        println!(
            "{:>18} {:>5} {:>4} {:>9} {:>12.3e} {:>10.2}",
            if *xlen <= 18 {
                enc_to_string(*xenc, *xlen)
            } else {
                format!("<{} bits>", xlen)
            },
            xlen,
            k_eff,
            e.count,
            pm(m),
            -pm(m).log2()
        );
    }

    // ---- speed spectra: counts are the whole record (mass = count·2^-n) ----
    use std::fmt::Write as _;
    for (name, g) in [
        ("beta", &acc.beta),
        ("trans", &acc.trans),
        ("honest", &acc.honest),
    ] {
        println!("\n== speed spectrum ({name}): halter counts by n and ⌈lg T⌉ ==");
        for n in min_n..=max_n {
            let row = &g.spec.cells[n as usize];
            let nf = g.spec.nf[n as usize];
            if nf == 0 && row.iter().all(|&c| c == 0) {
                continue;
            }
            let mut line = format!("n={n}:");
            if nf > 0 {
                let _ = write!(line, " nf={nf}");
            }
            for (b, &c) in row.iter().enumerate() {
                if c > 0 {
                    let _ = write!(line, " b{b}={c}");
                }
            }
            println!("{line}");
        }
    }

    // ---- Kt analytics ----
    // Cell renderers for the two clocked minima: a trailing `?` marks a
    // row where unclocked producers make the value an upper bound
    // rather than an exact minimum (`docs/classical/speed.md` §4).
    // Like K_N, the printed Kt includes the analytic self-program.
    let kt_cell = |e: &Entry, xlen: u8| -> String {
        let mark = if e.open_progs > 0 { "?" } else { "" };
        match kt_eff(e, xlen, min_n, max_n) {
            Some(v) => format!("{v}{mark}"),
            None => "?".to_string(),
        }
    };
    let depth0_cell = |e: &Entry, xlen: u8| -> String {
        if self_in_window(xlen, min_n, max_n) && xlen <= e.k {
            // The self-program is (tied for) minimal and runs in 0 β.
            "0".to_string()
        } else if e.depth0 == DEPTH_NONE {
            "?".to_string()
        } else if e.k_open {
            format!("{}?", e.depth0)
        } else {
            e.depth0.to_string()
        }
    };
    // Most speed-compressible: largest |x| − Kt. KT_NONE never beats a
    // wire size, so unclocked-only x drop out naturally.
    let mut by_kt: Vec<_> = rows
        .iter()
        .filter(|((_, xlen), e)| e.kt < *xlen)
        .map(|(k, e)| (*k, *e))
        .collect();
    by_kt.sort_by_key(|((xenc, xlen), e)| {
        (std::cmp::Reverse(*xlen as i64 - e.kt as i64), *xlen, *xenc)
    });
    println!("\n== most speed-compressible normal forms (|x| − Kt≤{max_n}(x)) ==");
    println!(
        "{:>5} {:>4} {:>4} {:>6} {:>10}  kt_program -> x",
        "|x|", "Kt", "K", "gain", "t(Kt)"
    );
    for ((xenc, xlen), e) in by_kt.iter().take(top) {
        println!(
            "{:>5} {:>4} {:>4} {:>6} {:>10}  {} -> {}",
            xlen,
            kt_cell(e, *xlen),
            e.k.min(*xlen),
            *xlen as i64 - e.kt as i64,
            e.kt_t,
            enc_to_string(e.kt_prog.0, e.kt_prog.1),
            if *xlen <= 40 {
                enc_to_string(*xenc, *xlen)
            } else {
                format!("<{xlen} bits>")
            }
        );
    }

    // Deepest compressions: the time penalty Kt − K over K-compressible
    // x — where charging for depth re-ranks the census hardest.
    let mut movers: Vec<_> = rows
        .iter()
        .filter(|((_, xlen), e)| e.k < *xlen)
        .filter_map(|(key, e)| kt_eff(e, key.1, min_n, max_n).map(|kt| (*key, *e, kt)))
        .collect();
    movers.sort_by_key(|((xenc, xlen), e, kt)| {
        (std::cmp::Reverse(*kt as i64 - e.k as i64), *xlen, *xenc)
    });
    println!("\n== deepest compressions: Kt − K among K-compressible x ==");
    println!(
        "{:>5} {:>4} {:>4} {:>8} {:>12}  min_program",
        "|x|", "K", "Kt", "penalty", "depth0"
    );
    for ((_, xlen), e, kt) in movers.iter().take(top) {
        println!(
            "{:>5} {:>4} {:>4} {:>8} {:>12}  {}",
            xlen,
            e.k,
            kt_cell(e, *xlen),
            *kt as i64 - e.k as i64,
            depth0_cell(e, *xlen),
            enc_to_string(e.k_prog.0, e.k_prog.1),
        );
    }

    // Speed coding theorem: heaviest x under S_β, the analytic
    // self-program added exactly as the m section adds it (a size-|x|
    // self-program is a known producer of x whenever |x| is within the
    // sweep's size window, enumerated or not). Sorted by an index
    // permutation so the table dump keeps the m-mass row order.
    let self_units = |xlen: u8| {
        if xlen as u32 >= min_n && xlen as u32 <= max_n {
            speed_units(xlen)
        } else {
            0
        }
    };
    let mut order: Vec<u32> = (0..rows.len() as u32).collect();
    order.sort_by_key(|&i| {
        let ((xenc, xlen), e) = &rows[i as usize];
        (std::cmp::Reverse(e.slo + self_units(*xlen)), *xlen, *xenc)
    });
    println!("\n== speed coding theorem: heaviest normal forms under S_β ==");
    println!(
        "{:>18} {:>5} {:>5} {:>9} {:>12} {:>12} {:>10}",
        "x", "|x|", "Kt", "#progs", "S_lo", "S_hi", "-log2 S"
    );
    for &i in order.iter().take(top) {
        let ((xenc, xlen), e) = &rows[i as usize];
        let s_lo = e.slo + self_units(*xlen);
        let s_hi = e.shi + self_units(*xlen);
        println!(
            "{:>18} {:>5} {:>5} {:>9} {:>12.3e} {:>12.3e} {:>10.2}",
            if *xlen <= 18 {
                enc_to_string(*xenc, *xlen)
            } else {
                format!("<{} bits>", xlen)
            },
            xlen,
            kt_cell(e, *xlen),
            e.count,
            ps(s_lo),
            ps(s_hi),
            -ps(s_lo).log2()
        );
    }

    // Deepest computations: the census's busy-beaver tail seen through
    // the time axis, oversized normal forms included.
    acc.deep.sort_unstable_by_key(deep_key);
    println!("\n== deepest computations (largest t_β) ==");
    println!(
        "{:>10} {:>4} {:>12} {:>5}  program",
        "t", "|p|", "|x|", "⌈lg⌉"
    );
    for r in acc.deep.iter().take(top) {
        println!(
            "{:>10} {:>4} {:>12} {:>5}  {}",
            r.t,
            r.len,
            r.x_bits,
            ceil_lg(r.t),
            enc_to_string(r.enc, r.len)
        );
    }

    // ---- open-program floors dump, only when one was asked for ----
    if let (Some(path), Some(f)) = (&floors_path, floors.as_mut()) {
        acc.open_rows.sort_unstable_by_key(|r| (r.len, r.enc));
        let mut body = String::from(
            "# kind bits n floor_beta floor_trans beta_hi_2^-128 trans_hi_2^-128 honest_hi_2^-128\n",
        );
        for r in &acc.open_rows {
            let _ = writeln!(
                body,
                "{} {} {} {} {} {} {} {}",
                if r.unclocked { "unclocked" } else { "unknown" },
                enc_to_string(r.enc, r.len),
                r.len,
                r.floor_beta,
                r.floor_trans,
                r.beta_hi,
                r.trans_hi,
                r.honest_hi
            );
        }
        crate::out::write_all("solomonoff", path, f, body.as_bytes())?;
        println!(
            "\nfloors: {} open programs dumped to {path}",
            acc.open_rows.len()
        );
    }

    // ---- full table dump for small x, only when one was asked for ----
    match (&table_path, table.as_mut()) {
        (Some(path), Some(f)) => {
            let mut body = String::from(
                "# x |x| K_N count nontrivial_mass_2^-64 min_program kt depth0 open_progs \
                 speed_nontrivial_lo_2^-128 speed_nontrivial_hi_2^-128 \
                 honest_nontrivial_lo_2^-128 honest_nontrivial_hi_2^-128 kt_program\n",
            );
            let mut dumped = 0u64;
            for ((xenc, xlen), e) in rows.iter() {
                if *xlen <= dump_max_x {
                    // kt_program, like min_program, is the best
                    // *nontrivial clocked* witness; the kt/depth0 cells
                    // themselves follow the print-time self-program
                    // rules (`docs/classical/speed.md` §4).
                    let kt_prog = if e.kt == KT_NONE {
                        "-".to_string()
                    } else {
                        enc_to_string(e.kt_prog.0, e.kt_prog.1)
                    };
                    let _ = writeln!(
                        body,
                        "{} {} {} {} {} {} {} {} {} {} {} {} {} {}",
                        enc_to_string(*xenc, *xlen),
                        xlen,
                        if self_in_window(*xlen, min_n, max_n) {
                            e.k.min(*xlen)
                        } else {
                            e.k
                        },
                        e.count,
                        e.mass,
                        enc_to_string(e.k_prog.0, e.k_prog.1),
                        kt_cell(e, *xlen),
                        depth0_cell(e, *xlen),
                        e.open_progs,
                        e.slo,
                        e.shi,
                        e.hlo,
                        e.hhi,
                        kt_prog
                    );
                    dumped += 1;
                }
            }
            crate::out::write_all("solomonoff", path, f, body.as_bytes())?;
            println!(
                "\ntable: {} distinct nontrivial nfs total; {dumped} with |x|≤{dump_max_x} dumped to {path}",
                rows.len()
            );
        }
        _ => println!("\ntable: {} distinct nontrivial nfs total", rows.len()),
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use blam::blc::enumerate::for_each_closed;

    /// Run the driver's own accounting path (ladder + record_*) over a
    /// size range — the same calls the sweep closure makes.
    fn sweep(cfg: &LadderCfg, min_n: u32, max_n: u32) -> Acc {
        let mut acc = Acc::default();
        let mut pool = Pool::new();
        let mut vm = Machine::new();
        let mut sink = KeySink::default();
        for n in min_n..=max_n {
            for_each_closed(n, &mut |enc, len| {
                acc.total += 1;
                pool.clear();
                let root = pool.decode_u64(enc, len).expect("valid term");
                let o = ladder::adjudicate(cfg, &pool, &mut vm, root, &mut sink);
                match o.verdict {
                    Verdict::Halt { steps, .. } => acc.record_halt(enc, len, &sink, steps, &o.tel),
                    Verdict::Diverge => {
                        acc.diverge += 1;
                        acc.diverge_mass += mass_of(len);
                    }
                    Verdict::Unknown(_) => acc.record_unknown(enc, len, &o.tel),
                }
            });
        }
        acc
    }

    #[test]
    fn ceil_lg_pins() {
        for (t, b) in [
            (0, 0),
            (1, 0),
            (2, 1),
            (3, 2),
            (4, 2),
            (5, 3),
            (1 << 20, 20),
            ((1 << 20) + 1, 21),
            (10_000_000, 24),
        ] {
            assert_eq!(ceil_lg(t), b, "ceil_lg({t})");
        }
    }

    #[test]
    fn speed_contrib_is_a_unit_bracket() {
        for n in [4u8, 17, 41, 63] {
            for t in [0u64, 1, 2, 3, 6, 7, 100, 9_457_564, 10_000_001] {
                let (lo, hi) = speed_contrib(n, t);
                assert!(lo <= hi);
                assert!(hi - lo <= 1, "directed rounding is off by at most one unit");
                // Exact when T divides the power of two.
                if t.max(1).is_power_of_two() {
                    assert_eq!(lo, hi);
                }
                // Cross-check against wide integer division.
                let exact_floor = speed_units(n) / t.max(1) as u128;
                assert_eq!(lo, exact_floor);
            }
        }
    }

    #[test]
    fn t_floor_takes_the_max_over_failed_runs() {
        let mut tel = Telemetry::default();
        assert_eq!(t_floors(&tel), (1, 1));
        tel.kn2_died = Some((4097, 100_000));
        tel.rescue_died = Some((101, 320_000_001));
        // A transitions-stuck rescue can die under rung 2's β count;
        // the certified floor is the coordinatewise max.
        assert_eq!(t_floors(&tel), (4097, 320_000_001));
    }

    /// Every closed term through 14 bits halts (the smallest diverger
    /// is 18 bits), so a naive budgeted sweep with the bare machine —
    /// no ladder, no prescan — must reproduce every gauge bracket and
    /// spectrum bit-for-bit.
    #[test]
    fn gauges_match_a_naive_recomputation_through_14() {
        let acc = sweep(&LadderCfg::default(), 4, 14);
        assert_eq!(acc.diverge, 0, "everything through 14 bits halts");
        assert_eq!(acc.unknown, 0);
        assert_eq!(acc.unclocked, 0);

        let mut beta = Gauge::default();
        let mut trans = Gauge::default();
        let mut honest = Gauge::default();
        let mut pool = Pool::new();
        let mut vm = Machine::new();
        let mut sink = KeySink::default();
        for n in 4..=14u32 {
            for_each_closed(n, &mut |enc, len| {
                pool.clear();
                let root = pool.decode_u64(enc, len).expect("valid term");
                sink = KeySink::default();
                let t = vm
                    .normalize(&pool, root, 100_000, &mut sink)
                    .expect("halts");
                if t == 0 {
                    beta.halt_nf(len);
                    trans.halt_nf(len);
                    let (lo, hi) = speed_contrib(len, len as u64);
                    honest.halt_lo += lo;
                    honest.halt_hi += hi;
                    honest.spec.bump(len, len as u64);
                } else {
                    beta.halt(len, t);
                    trans.halt(len, vm.last_trans);
                    honest.halt(len, t.saturating_add(sink.len));
                }
            });
        }
        assert_eq!(acc.beta, beta);
        assert_eq!(acc.trans, trans);
        assert_eq!(acc.honest, honest);
        assert_eq!(acc.beta.open_hi, 0);
        for g in [&acc.beta, &acc.trans, &acc.honest] {
            assert!(g.halt_lo <= g.halt_hi);
            assert_eq!(g.spec.total(), acc.halt);
            assert!(g.halt_hi <= acc.halt_mass << 64);
        }
    }

    /// The identity's cheapest nontrivial producer is the 10-bit
    /// (λ1)(λ1), one β-step: K = Kt = 10, depth⁰ = 1 at 4..=10.
    #[test]
    fn identity_pins_at_ten_bits() {
        let acc = sweep(&LadderCfg::default(), 4, 10);
        let e = acc.table.get(&(0b0010, 4)).expect("I is produced");
        assert_eq!(e.k, 10);
        assert_eq!(e.kt, 10, "one β-step costs zero Kt bits");
        assert_eq!(e.kt_t, 1);
        assert_eq!(e.depth0, 1);
        assert_eq!(e.open_progs, 0);
        assert!(!e.k_open);
        assert!(e.slo <= e.shi && e.shi <= e.mass << 64);
        assert!(e.hlo <= e.hhi && e.hhi <= e.mass << 64);
    }

    /// A partial range must not fold in an out-of-window self-program:
    /// at 10..10 the identity's restricted Kt is 10 (via (λ1)(λ1)) and
    /// depth⁰ is 1, not the canonical 4 and 0.
    #[test]
    fn partial_range_excludes_the_out_of_window_self_program() {
        let acc = sweep(&LadderCfg::default(), 10, 10);
        let e = acc.table.get(&(0b0010, 4)).expect("I produced at 10 bits");
        assert_eq!(kt_eff(e, 4, 10, 10), Some(10));
        assert_eq!(kt_eff(e, 4, 4, 41), Some(4));
        assert!(!self_in_window(4, 10, 10));
        assert_eq!(e.depth0, 1);
    }

    /// Per-entry structural invariants over a broader range.
    #[test]
    fn entry_invariants_through_16() {
        let acc = sweep(&LadderCfg::default(), 4, 16);
        assert!(acc.nontrivial > 0);
        for ((_, xlen), e) in &acc.table {
            assert!(e.kt >= e.k, "time penalty is nonnegative (x len {xlen})");
            assert_ne!(e.kt, KT_NONE, "everything here is clocked");
            assert_ne!(e.depth0, DEPTH_NONE);
            assert!(e.kt_t >= e.depth0.min(e.kt_t));
            assert!(e.slo <= e.shi && e.shi <= e.mass << 64);
            assert!(e.hlo <= e.hhi && e.hhi <= e.mass << 64);
        }
    }

    /// Prescan on and off must agree on every speed field: the KN Ok(0)
    /// path and the prescan path are the same trivial computation.
    #[test]
    fn prescan_is_speed_invisible() {
        let on = sweep(&LadderCfg::default(), 4, 12);
        let off = sweep(
            &LadderCfg {
                prescan: false,
                ..LadderCfg::default()
            },
            4,
            12,
        );
        assert_eq!(on.beta, off.beta);
        assert_eq!(on.trans, off.trans);
        assert_eq!(on.honest, off.honest);
        assert_eq!(on.halt, off.halt);
    }

    /// Partition invariance: merging per-size accs in either order
    /// equals the monolithic sweep on every accumulator.
    #[test]
    fn merge_is_order_independent() {
        let cfg = LadderCfg::default();
        let mono = sweep(&cfg, 4, 13);
        let fwd = (4..=13)
            .map(|n| sweep(&cfg, n, n))
            .fold(Acc::default(), Acc::merge);
        let rev = (4..=13)
            .rev()
            .map(|n| sweep(&cfg, n, n))
            .fold(Acc::default(), Acc::merge);
        for (a, b) in [(&mono, &fwd), (&mono, &rev)] {
            assert_eq!(a.halt, b.halt);
            assert_eq!(a.halt_mass, b.halt_mass);
            assert_eq!(a.beta, b.beta);
            assert_eq!(a.trans, b.trans);
            assert_eq!(a.honest, b.honest);
            assert_eq!(a.table.len(), b.table.len());
            for (k, e) in &a.table {
                assert_eq!(b.table.get(k), Some(e), "entry {k:?}");
            }
            let mut da = a.deep.clone();
            let mut db = b.deep.clone();
            da.sort_unstable_by_key(deep_key);
            db.sort_unstable_by_key(deep_key);
            da.truncate(DEEP_CAP);
            db.truncate(DEEP_CAP);
            assert_eq!(da, db);
        }
    }
}
