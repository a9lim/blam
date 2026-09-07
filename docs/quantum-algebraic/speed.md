# The qALC speed prior

This document is the durable contract for the speed-prior (Levin) surface of
the quantum-algebraic pillar: definition, exactness model, soundness, and data
format. It is the qALC counterpart of `../classical/speed.md`; the objects it
discounts are those of `architecture.md` §2 and `objects.md`. Current
measurements live in `../STATUS.md`.

The one-sentence motivation is the same as the classical one, and it lands
harder here: qALC's open frontier is *still-running mass at the census
clock*, and under a `1/t` discount that mass is worth at most `1/(clock+1)`
of itself. The speed bracket therefore has a certified width bound in the
reached clock, which the plain `Ω_qALC` bracket does not — a late arrival can
move `Ω_qALC` by its full mass at any clock, but moves `Ω_speed` by at most
that mass over the clock. This is an ε-accuracy stopping rule for the speed
prior, not a convergence proof for `Ω_qALC` (§3).

## 1. The clock and the arrival time

qALC has exactly one time gauge: the global transition count `τ` of the
step isometry `U`. It is the machine's physics (`architecture.md` §4.5): the
token/query/readback schedule is part of `U`, a different cadence is a
different machine, and readback is internal, so the cost of constructing the
normal form is inside `τ` in the machine's own units. It is *not* the
classical honest gauge `t + |x|`: readback manipulates structured output and
does not charge a transition per output bit — `λh.λt.x_n` with
`x_n = λⁿ.(n n … n)` reaches a 498-bit normal form at clock 167 and a
1,798-bit one at clock 327. Nor is the clock a resource vector: Gate 2's
end-to-end arrival time on the compiler fragment, `60n + 19 + 50·#H +
58·#T + 32·#CNOT` including the `47n + 4` preparation, is a scalar cost
decomposition of that fragment, and the scalar clock retains no
independently reweightable effect counts. Honest and resource gauges are
separate objects, not yet defined for qALC.

Halt entry is typed and common-origin (`architecture.md` §4.3): the final
readback transition produces `Done(nf, garbage, control, tick 0)`, and the
halt sector then only ticks. So at clock `τ` a halted basis state with tick
`k` **arrived** at

```text
a = τ − k,
```

the first clock at which its mass was counted by `μ_p`. The arrival time is
a register of the state, not telemetry: the speed prior is read off the final
vector and needs no per-step hooks.

## 2. Objects

For a program `p` write `Δμ_p(a) = μ_p(a) − μ_p(a − 1)` for the halting mass
that arrives at clock `a`; by §4.3 this is the squared norm of the newly
halted piece `P_halt U (I − P_halt) ψ_{a−1} = P_{halt, tick 0} U ψ_{a−1}`
(not of `P_halt U ψ_{a−1}`, which is `μ_p(a)` itself), and
`Σ_a Δμ_p(a) = μ_p`.

- **Speed halting mass.** `Ω_speed = Σ_p 2^(−|p|) Σ_a Δμ_p(a) / a`, the
  Kraft-weighted harmonic moment of every program's halting-time measure —
  the Stieltjes form `Σ_p 2^(−|p|) ∫ dμ_p(a)/a`. Since `a ≥ 1`,
  `Ω_speed ≤ Ω_qALC`.
- **Speed output operator.** Group halted branches as in `architecture.md`
  §4.6 by (arrival time, residual garbage, terminal control); each group is a
  fixed PSD block `B` formed at its arrival and shifted forever after. Then
  `ρ_p^speed(τ) = Σ_{a ≤ τ} B_a / a` and `M_speed = Σ_p 2^(−|p|) ρ_p^speed`.
  Every block is a whole coherent block scaled by one rational, so the
  discount never breaks a coherence and never rounds a matrix entry: arrival
  time is already the superselection label that decides which branches may
  interfere, and the speed weight is a function of that label alone.
  `ρ_p^speed(τ)` is Loewner-monotone in `τ`, dominated by `ρ_p(τ)`, and its
  limit is trace-class with `Tr M_speed = Ω_speed`; the arguments of
  `objects.md` §2 transfer verbatim.
- **Arrival spectrum.** `H_n(a) = Σ_{|p| = n} 2^(−n) Δμ_p(a)`, exact in the
  scalar ring, sparse in `(n, a)`. It is the qALC analogue of the classical
  time spectrum, but finer: with a global clock the exact arrival time is a
  bucket, so the spectrum supports *any* discount exactly — `1/a`,
  Schmidhuber's phase-wise `2^(−⌈lg a⌉)`, or anything else — rather than only
  bucket-constant ones. `Ω_speed` is a post-pass over it.
- **Complexity objects.** The three objects of the qBLC design sketch carry
  over with the leaf probability replaced by the diagonal weight of an
  arrival block: the Gács-style `−lg ⟨ψ|M_speed|ψ⟩`, a witness
  `Kt(x) = min_{p, a} |p| + ⌈lg (a / ⟨x|B_a^{(p)}|x⟩)⌉`, and a restart
  cost. None is measured yet, and no O(1) coincidence between them is
  claimed — the multiplicity counterexample on the qBLC thread applies
  unchanged.

Invariance caveat, stated once: `Ω_qALC` is machine-relative already
(`architecture.md` §3); `Ω_speed` is additionally clock-relative, and the
four-bit classical embedding of `objects.md` §3 survives only with the token
clock as the classical gauge, since time is at best polynomially invariant
across machines.

## 3. Exactness model and soundness

**Units.** Speed masses are integers in units of `2^(−128)` (u128), the grid
of `../classical/speed.md` §3. A halted block of Kraft-weighted mass `m`
arriving at `a` contributes `m · 2^128 / a` with directed rounding: floor
into the lower accumulator, ceiling into the upper.

**The √2 part.** Kraft-weighted masses are real elements of the scalar ring,
`(r + s√2)/2^e` after reduction. The rational part rounds exactly; the √2
part is bracketed through the pinned 128-bit fixed-point floor of `√2`
(`SQRT2_FIX127`, verified by squaring in 256-bit arithmetic), which adds
slack scaling with `|s|·2^(1−e)` plus outward rounding at both ends. That
is not a constant: cancellation between `r` and `s√2` permits large
coefficients under a small value (`3 − 2√2` at `e = 0` costs four units),
so no analytic slack bound is claimed and the speed file reports the
realised halt-rounding slack instead. Nonnegativity is decided exactly, including values whose
sign only the conjugate reveals. The rounding is
`quantum::scalar::speed_units`, which rounds the scalar only; the discount
`1/a` on an operator block is an exact rational, and a certified operator
bracket scales a block by the bracketed discounted trace over the block's
own trace, never by `1/a` a second time. Printed decimals are nearest-f64
previews; the unit lines are the certified record.

**Bracket assembly.** At a program's *reached* clock `c` — the requested
clock, or one short of the transition a capacity cut refused —

- halted blocks contribute their directed `m/a` to both ends;
- error mass contributes 0 to both ends;
- still-running mass `R` is open: 0 to the lower end and `⌈R · 2^128 /
  (c+1)⌉` to the upper end, because any part of it that ever halts arrives
  at some `a ≥ c + 1`.

So the bracket at clock `τ` is `[H(τ), H(τ) + running(τ)/(τ+1)]` up to
rounding, and its width is bounded by the running mass over the floor. The
floor is sharp: a `RunDone` state still counts as running and arrives on
the very next transition, so `c + 2` would be unsound (a finer bound could
inspect states — `RunDone(Error)` can never halt — but the census charges
running mass uniformly). Three qualifications fix what the bound does and
does not say. It scales with the floor, `(τ+1)/(τ'+1)` between two clocks
with unchanged running mass, so doubling the *floor* halves the open
contribution while the rounding slack stays put. It is stated at *reached*
clocks: a capacity cut freezes a program's floor, and raising the requested
clock then leaves that program's contribution unchanged. And it is an
ε-accuracy stopping rule for `Ω_speed` over the enumerated sizes — stop
when the certified width meets ε — not a certificate that error and
running counts have settled, nor a convergence statement for the
undiscounted `Ω_qALC` bracket. `Capacity` is a resource outcome of the run,
as in the census: it truncates a program's clock, never its verdict, and
the floor `c + 1` is charged at the truncated clock.

**Invariants, checked.** Per program the arrival histogram sums exactly to
the halt mass (a hard error otherwise); `Ω_speed` lower is at most the unit
floor of `Ω_qALC` lower; every bracket has lower ≤ upper; the histogram and
floor maps merge by exact keyed addition, so the accumulator is partition-
and checkpoint-order independent; and `halt_arrivals` is pinned as the
sequence of `μ_p` increments on a branching sector.

## 4. Data format

`blam qalc census … --speed FILE` writes, without changing the deterministic
report:

- a header with the size range, clock, and support cap;
- one line per size: arrival count, deepest arrival, speed lower and upper
  in units, the open upper subtotal, and f64 previews;
- totals: `Omega_speed lower/upper`, the open running subtotal, the bracket
  width, the realised halt-rounding slack, the unit floor of `Omega_qALC`
  lower for comparison, and the arrival-time count and depth;
- the arrival spectrum, `A n a exact real`, one line per nonzero `H_n(a)`;
- the open floors, `F n floor exact real`, one line per size and floor.

The census checkpoint (`qalc-census-v1`) carries both maps as `A` and `F`
records, so a resumed run emits the same file as a monolithic one.
Checkpoints written under `qalc-census-v0` are refused; nothing in `data/`
uses them.
