# Speed prior and Kt

This document is the durable contract for blam's speed-prior (Levin) surface:
definitions, exactness model, soundness arguments, and data formats. It
extends the Solomonoff/Ω surface of `architecture.md` §1 and §4; current
measurements live in `../STATUS.md`.

The one-sentence motivation: charging programs for time is exactly the move
that collapses the unknown frontier. Every frontier term carries a measured
β-floor from its failed KN runs — 10⁷ when the rescue died on β, the
recorded β prefix when it died on transitions — and under a 1/t discount
its possible contribution is suppressed by that floor's reciprocal. The
certified Ω_speed bracket is orders of magnitude tighter than Ω's, and
raising whichever fuel is binding tightens it further with no new
certificates (linearly in the β budget while β is the binding fuel). The
floors file (§4) is the per-term record backing both claims.

## 1. Time gauges

For a halting closed program p with canonical KN β-count t and normal form x:

- **β gauge**: `t_β(p) = t`, the leftmost-outermost β-steps the ladder
  reports (`Verdict::Halt { steps }`). Redex-free programs have `t_β = 0`.
- **transitions gauge**: `t_m(p)` = machine transitions of the halting KN
  run (`Telemetry::last_trans`). Redex-free programs have `t_m = 0`.
- **honest gauge**: `t_h(p) = t_β(p) + |x|` — β-work plus output-writing,
  the monotone-machine-honest cost (on any real machine, t ≥ |output|).
  Redex-free programs have `t_h = |p| = |x|`.

Every discount uses `T = max(t, 1)`. The β and honest gauges are semantic
(machine-checkable from the reduction sequence); the transitions gauge is
KN-implementation-native and carried as telemetry-grade context.

Invariance caveat, stated once: Ω is invariance-protected up to O(1) bits;
time is only polynomially invariant across machines, so every object here is
BLC-native in a stronger sense than Ω is — the same epistemic genre as BBλ.

## 2. Objects

Over programs of size `min_n..=max_n` (Kraft: closed-term codes are
prefix-free, so all masses are exact):

- **Levin measure** `S_N(x) = Σ_{p→x, |p|≤N} 2^(−|p|) / T(p)`, per gauge.
  As with `m_N(x)`, the trivial self-computation is excluded from tables
  and added analytically: under the β gauge x's self-program contributes
  exactly `2^(−|x|)` (T = 1); under the honest gauge `2^(−|x|)/|x|`.
- **Ω_speed** `= Σ_{p halts} 2^(−|p|) / T(p)`, per gauge, as a certified
  two-sided bracket (§3).
- **Kt** `Kt_N(x) = min_{p→x} (|p| + ⌈lg T_β(p)⌉)`, an integer — the
  mathematical argmin over producers. The clocked nontrivial minimum
  carries a witness under the deterministic tie-break `(kt, (enc, len))`
  (that witness is what §4's `kt_program` column stores); the printed Kt
  additionally folds in the analytic self-program, which participates
  exactly when |x| lies inside the sweep window — the same gate every
  self-program print rule uses, K_N and depth⁰ included.
- **depth⁰** `depth⁰_N(x) = min { t_β(p) : p→x, |p| = K_N(x) }` — finite
  Bennett logical depth at significance 0. If K_N(x) = |x| the self-program
  makes it 0 (print-time rule, same shape as the K/Kt trivial cases).
- **Spectrum**: per gauge, the halter count at every (|p|, b) cell where
  `b = ⌈lg T⌉`, with a dedicated `nf` column for t = 0 under the β and
  transitions gauges (the honest gauge has no t = 0). Every program in a
  cell has the same Kraft mass, so `mass(n, b) = count(n, b) · 2^(−n)`
  exactly. The spectrum supports any *bucket-constant* discount exactly —
  in particular Schmidhuber's phase-wise speed prior S is the `2^(−b)`
  contraction of this table — while exact T is carried only by the 1/T
  Levin sums themselves. Reweighting by a monotone `f` from buckets alone
  brackets each program between its bucket endpoints' values — a factor-2
  span for `1/T` and anything else varying by at most 2 within a bucket,
  wider for steeper discounts — never exact.

## 3. Exactness model and soundness

**Units.** Speed masses are integers in units of 2^(−128) (u128; `m`/Ω
masses stay in 2^(−64) units). A size-n halter contributes
`2^(128−n)/T` with directed rounding: floor into the lower accumulator,
ceiling into the upper. Per-program bracket slack is at most one unit
(exactly one when T does not divide the numerator); over the
5.3×10⁸-term range the total rounding gap is < 2^(−98). Printed decimal
brackets are nearest-f64 previews and may collapse a positive gap; the
integer unit lines are the certified record. Sums are bounded by
2^(128) · Ω < 2^(126), so u128 accumulation cannot overflow.

**Fuel-death floors.** The machine's β and transition counters are recorded
at every `normalize_capped` exit (`Machine::last_steps` / `last_trans`).
Exit semantics, from the eval loop's structure:

- `Err(Beta)`: the counter incremented for a contraction that was never
  performed, so `last_steps = limit + 1` and the true count of any later
  halt satisfies `t_β ≥ limit + 1 = last_steps`.
- `Err(Transitions)` (eval or readback loop): `last_steps` β-steps were
  fully performed and the run was not complete, so `t_β ≥ last_steps`.
- Symmetrically for `last_trans` in the transitions gauge.

So on every failed run, `2^(−n)/T ≤ 2^(−n)/max(last_steps, 1)` for a term
that halts at all, and the ladder threads the failed rung-2 and rescue
counters through `Telemetry::{kn2_died, rescue_died}`. A term's **t-floor**
is the max over its failed runs.

**Bracket assembly.**

- Proven halters with known t: exact directed contribution to both ends.
- Proven divergers: exactly 0 to both ends.
- Unknowns: 0 to the lower end; `2^(−n)/t-floor` (ceiling) to the upper
  end. At the canonical config a β-stuck rescue gives floor 10⁷+1; a
  transitions-stuck rescue gives whatever β-count it reached, with the
  rung-2 floor as fallback — sound in every case, merely less tight.
- **Unclocked halters** (`Halt { steps: None }`: the escalation engine
  proved the halt, the rescue could not recover the canonical count): halt
  mass counts them, speed brackets treat them like unknowns — 0 to the
  lower end, t-floor ceiling to the upper end. They cannot enter Kt/depth⁰
  candidacy (their time is unknown), so for any x with unclocked
  producers the clocked minima are **upper bounds**, and every affected
  table cell is marked with a trailing `?` (§4). The driver reports the
  global count and the per-x `open_progs` column carries it; through
  n = 41 both are expected to be 0 — making every canonical Kt/depth⁰
  exact — and the count line is the check.

The census-level certificate trim (removing certified divergers' floor
contribution from the upper endpoint) is a by-hand exact-fraction step, as
for Ω: the per-unknown floors and contributions are dumped to the floors
file (§4) so the subtraction is a lookup, not a re-run.

## 4. Data formats

One sweep (`blam solomonoff`) produces everything; the speed surface is
additive on the existing outputs:

- `data/classical/solomonoff.txt` gains sections: Ω_speed brackets
  per gauge (certified integer units plus nearest-f64 decimal previews,
  with the unknown/unclocked upper subtotal separated), the three spectra
  (sparse rows: `n=…: nf=… b0=… …`), and Kt analytics (most
  speed-compressible, largest Kt − K penalties, the speed coding-theorem
  section — heaviest x under S_β with the analytic self-program added,
  Kt vs −log₂ S — and the deepest computations). Existing sections are
  byte-stable: a regen diff must touch only the new material.
- `data/classical/solomonoff_table.txt` columns extend to
  `x |x| K_N count nontrivial_mass_2^-64 min_program kt depth0 open_progs
  speed_nontrivial_lo_2^-128 speed_nontrivial_hi_2^-128
  honest_nontrivial_lo_2^-128 honest_nontrivial_hi_2^-128 kt_program`.
  The speed-mass columns are nontrivial-only, exactly like the m column:
  consumers add the analytic self contribution (β: `2^(−|x|)`; honest:
  `2^(−|x|)/|x|`, directed) when |x| is within the sweep window.
  `kt`/`depth0` follow the print-time self-program rules; a trailing `?`
  marks cells that are upper bounds because `open_progs > 0` (expected
  never through 41). `kt_program`, like `min_program`, is the best
  *nontrivial clocked* witness — `-` when none exists.
- `data/classical/speed_floors.txt` (`--unknown-floors`): one line per
  open program — unknowns and unclocked halters, distinguished by the
  leading kind column — with wire bits, size, β and transition floors,
  and each gauge's upper-endpoint contribution in 2^(−128) units. This is the evidence file
  for the frontier-suppression claim and the input to the certificate trim.

## 5. Verification contract

- The full suite bar (`--all-features` and default) plus the census
  spot-check apply unchanged: `last_steps`/`kn2_died`/`rescue_died` are
  telemetry, and census output must stay bit-identical.
- Merge order-independence: every new `Acc`/`Entry` field is a commutative
  monoid or min-semilattice fold (masses add; kt by total order; depth⁰ by
  explicit three-way on k), so partition invariance holds by construction.
- Sanity invariants, tested: lower ≤ upper on every bracket; per-gauge
  spectrum totals plus the unclocked count equal the halt count (spectra
  bucket clocked halters only); Ω_speed lower ≥ redex-free mass
  (β/transitions gauges); Ω_speed upper ≤ halt mass + unknown floor mass;
  a naive per-term recomputation of every gauge's bracket agrees exactly
  on small sizes; and the machine's fuel-death counters are pinned as
  certified floors against uncapped completions.
