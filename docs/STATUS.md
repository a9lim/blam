# Current state and open docket

This is the single authority for blam's moving measurements, proof
boundaries, and ordered next work. `README.md` is the public map, the domain
documents under `docs/` state durable contracts and research records, and
canonical outputs live in `data/`. Superseded state lives in Git history.

Last updated: 2026-10-20.

## Classical

### Census and busy beavers

- `data/classical/census_table.txt` covers every closed BLC term from 4 through
  41 bits: 526,039,969 programs, 99.66% of which normalize. On the M5 Max a
  fresh census 4..41 takes 46 s wall and 717 s user (5.7 GB peak footprint),
  and 4..40 takes 21 s wall and 315 s user (4.6 GB), bit-identical to every
  canonical row and `#` line (the table's own per-size times, from an older
  binary, sum to 225 s). Wall time tracks ambient load; user time is the
  stable number. Most of the remaining CPU is the KN rescue and escalation of
  the eventual Unknowns. Single-thread KN throughput is about 170M
  β-contractions per second on β-bound runs; the machine skips var→var
  indirection chains with exact transition accounting (82% of rescue
  transitions on the 36..37-bit frontier), so transition-bound rescues run
  10-13× faster than plain stepping.
- **BBλ(33) = 1,812**, **BBλ(34) = 327,686**, and
  **BBλ(35) = 38,127,987,424,941** normal-form bits, exact by the exhaustive
  Rust census plus kernel-checked adjudications of every program the census
  left open at those sizes (the census itself is not formalized). The eighteen
  open 35-bit programs are sixteen divergers and two halters with outputs of
  4,186,155,666 and 38,127,987,424,941 bits; the latter is the Church numeral
  3^27, proved symbolically. Tromp's hand notes identify the same behaviours
  (`classical/certificates/busy-beaver.md`). Lambda wrapping gives
  **BBλ(41) ≥ 38,127,987,424,947**.
- `data/classical/unknowns.txt` is the certified frontier: 4,109 terms
  (36: 30, 37: 70, 38: 182, 39: 438, 40: 1,063, 41: 2,326). Regeneration checks
  the exact partition
  `4,532 raw = 4,109 frontier + 305 ratchet kills + 110 BB kills + 8 BB halters`.
- The rescue rung's 10⁷-β cap has only 1.06× headroom over the largest
  successful rescue through 41 bits (9,457,564 β, a 41-bit term), so n=42
  first needs a `--rescue` raise. The rescue's 32× transition multiplier has
  1.88× margin over the worst measured ratio (17.0×, a 38-bit term: 9.45M β
  via 160.4M transitions).

### Finite-range algorithmic probability

- `Omega|<=41 in [0.124105086841, 0.124105091271]` after the certificate trim
  (`data/classical/certificate_bounds.txt`); the raw measurements are
  `data/classical/solomonoff.txt`.
- The speed prior's three clocks are β, transitions, and
  `honest = β + |output|`, in exact 2⁻¹²⁸ units (`classical/speed.md`).
  - `Omega_speed(beta)|<=41 in [0.122396680340, 0.122396680344]`.
  - `Omega_speed(trans)|<=41 = 0.110843700576156` to fifteen digits.
  - `Omega_speed(honest)|<=41 in [0.023402971975, 0.023402971979]`.
  - The open masses are at most 3.190×10⁻¹² (β), 4.61×10⁻¹⁷ (transitions),
    and 2.992×10⁻¹² (honest). They include the eight certified BB halters,
    which have no certified clock and stay at their raw floors.
- The deepest recorded computation uses 9,457,564 β and produces an
  89,494,760-bit normal form. The largest `|x| − Kt` gain is 31 and the
  largest `Kt − K` penalty is 10; per-output values are in
  `data/classical/solomonoff_table.txt`.

### Bits of the true Ω

`classical/omega.md` certifies Ω over all sizes. Both endpoints are exact
rationals in `data/classical/omega.txt`:

```text
0.125480570009150 <= Omega <= 0.125985261357254     Omega = 0.001000000...
```

That pins nine bits; the census alone pins two.

- **Upper bound:** the census's halting and frontier mass through 41 bits,
  plus an exactly checked bound on the closed-term Kraft mass beyond it (all
  closed terms sum to at most 0.126002847974358).
- **Lower bound:** the census's halting mass, the eight certified halters, and
  1.375×10⁻³ of certified weakly normalizing mass at 42..240 bits, 73.3% of
  that range. An exact integer DP counts a sound label function over leaf
  tables from `blam omega leaves 41` (47 s), which judges every term
  through its minimal closure on the census ladder. A brute-force checker
  matches every DP array over 8.4M term instances, and Codex audited the leaf
  table, the DP, and the Rust instrument independently.
- **Bit 10 is open, and statistically almost certainly 0.** An 8M-sample
  estimate on the full ladder (`data/classical/omega_estimate.txt`) puts
  Ω ≈ 0.1259743, 2.2×10⁻⁶ below 129/1024, and 43 SE below it even with every
  larger term and every Unknown counted as halting. The likely expansion is
  0.00100000001111111101…. A proof needs 8.70×10⁻⁶ of certified
  non-normalizing mass beyond 41 bits, 80.2% of the divergent tail. The
  estimate predates the BB(35) adjudications, which move its exact parts by
  under 2×10⁻⁹.
- **Prover probes** (`tools/omega/divergence.py`, on mass-weighted divergent
  samples): propagation from small cores reaches 11% at leaf horizon 41
  (divergence cores are 50–80 bits); truncated-Böhm-tree evaluation reaches
  81–82% at depth 5–7 with no false certification, but its label alphabet
  grows exponentially; restricting it to frequent labels collapses it to
  12.9%, because the certifying labels form a long tail.
- If bit 10 falls, bits 11, 12 and 13 need halting coverage of 73.7%, 86.7%
  and 93.2% of 42..240 (it is 73.3%).

### The coding theorem

`classical/coding.md` reads the coding theorem off the census through the gap
g(x) = K(x) + log₂ m(x); the record is `data/classical/coding.txt`.

- **The constant:** certified c ≥ 3.689 on the K ≤ 32 cohort, witnessed by
  λ⁷.(7 7), a duplication break-even tie. The witness's gap reads 3.011, 3.472
  and 3.689 at N = 37, 39 and 41, so it has not settled. The Levin analog
  Kt + log₂ S_β is at least 3.255. The median gap is 0.73–0.84 bits for
  K ≥ 20. The BB proofs make K exact through 35 bits; the report has not been
  rerun on that larger cohort.
- **Compression onset:** the first compressible normal form has 22 bits,
  λf.(f λ_.f)(f λ_.f) with K = 21. All 384 compressible normal forms through 30
  bits have shortest programs with a duplicating redex, and the compressible
  fraction stays at 0.2–0.6% through 41 bits (higher at even sizes), with a
  mean gain of about 2 bits.
- **Hidden shortest programs** (Codex's design): mass in disjoint shells of
  strictly longer programs (38–39 and 40–41 bits) separates compressible from
  incompressible outputs at every size 22..32 that has compressible outputs,
  with AUC 0.976–1.000 replicated across the shells. It does not grade how
  much an output compresses.

### Divergence certificates and Lean

`data/certificates/ratchet_kills.tsv` holds 305 kills: 222 Ratchet, 35
HeadTowerRatchet, 40 SelectorRatchet, and 8 PassengerDiagonalRatchet,
including ten rigid-head `-ARG` kills (8/1/1/0). Each is replayed above
discovery budgets and emitted as an individual theorem in `lean/Certs/`.
`bb_kills.tsv` adds 110 exclusions from 27 direct proofs and their lambda
closures, and `bb_halts.tsv` eight halters with exact normal-form sizes, from
two seeds.

`lake build Certs BusyBeaver` checks all 415 exclusions, the eight halting
certificates, and their wire identities; `lake build` also checks the
self-interpreter proofs and structural theorems (`Blc/Selfint*.lean`). The
Lean development has no sorries or mathlib, and its axioms are `propext` and
`Quot.sound`.
`scripts/bb-regen.sh` audits the BB registry's axioms, refreshes the
frontier, and recomputes the exact bounds. A fresh census 4..40 is
bit-identical to every canonical row. Both release suites pass: 368 tests
with all features (three opt-in tests ignored) and 328 with default features.

### Self-interpreter and universal machine

- **The 165** (`classical/self-interpreter/interpreter.md`,
  `data/self-interpreter/machines/int165.lam`), Codex's design: Palmer's 168
  with a reader that computes the skip `list list list` once on the whole
  stream, where it is right for both dispatch arms, and lets the Scott list
  hand `list1` to the variable arm, which becomes `cont` itself (L 17, A 25,
  X 29). Lean proves it, and the 168, correct for every closed program as a
  β-reduction (`selfint_contract165`, `selfint_contract`). No verified
  sub-165 has been found in the tested neighbourhoods: let structure to
  three cuts (unique minimum), βη component to +20 (2,183,051 terms) and
  contextual to +16, every reader slot
  singly and handler × skip jointly through 164-bit interpreters (32,366,372
  pairs, no survivor, 4,052,176 capped), whole APP ≤ 34 bits, and the 168's
  near misses rebuilt on it (≥ 166; `merges.py`). The 168's module bound
  (minima summing to 168) is conditional on opaque modules, the clause the 165
  breaks; it still bounds the NEXT region the two share. The handwritten
  reader bound now permits arbitrary handlers: independent rigid laws force
  `|H| ≥ 27`, so `s H S` still costs at least 43 and the unchanged surrounding
  interpreter at least 165 (`classical/self-interpreter/handler-bound.md`).
  A second handwritten theorem allows actual unary-selector/suffix
  correlations and proves the same handler minimum when its only free
  variables are NEXT and the continuation. Whole-stream access remains open;
  a checked 40-bit correlated handler with only one explicit lambda shows why
  the independent proof's structural lemmas cannot all transfer.
  For arbitrary correlated handlers, neutral operands `s next` and `s cont`
  are dominated by `s`, saving 5 and 6 bits; this leaves `s` and the thunk
  `s s` open (`classical/self-interpreter/protocol-obstructions.md`).
  The zero arm ≥ 14, APP lift ≥ 19, reader/handler knot-tree and cell/APP
  exclusions remain as specified in §5.
- **Unconditional structure** (`classical/self-interpreter/structural-bounds.md`):
  Lean proves that every interpreter has at least two syntactically
  nonlinear binders, and that an explicit `λc s.B` needs two inside `B`.
  The normalization argument gives the small numerical floor 18, not a
  165-bit bound. A 584-bit witness has exactly two nonlinear binders, both
  closed in isolation; a kernel-replayed 71-step reduction reaches the
  literal 165. A 742-bit β-normal witness also has exactly two closed
  nonlinear binders, with its contract kernel-checked as β-joinability.
  Thus the minimum count two is attained even among β-normal interpreters.
  Every interpreter must also contain a live abstraction capturing an
  enclosing local variable.
  A colored reduction theorem proves that quotation-origin binders remain
  affine, retain one of three protected head shapes, and cannot acquire a
  live capture; live quotation bodies stay normal and contain only
  quotation-origin abstractions. Lean also proves that every interpreter
  has a closed normal source for which every successful colored reduction
  trace contains a strict increase in interpreter-origin abstractions:
  a nonlinear interpreter-origin binder must copy an argument containing
  interpreter-origin code. A handwritten modified SK abstraction
  construction shows that all interpreter-origin output binders can share
  one original binder, so distinct output roles do not force distinct
  origins without a size-sensitive argument. These results do not yet give
  an additive size decomposition.
- **Normal and typed witnesses** (`classical/self-interpreter/normal.md`,
  `typed-normal.md`): the β-normal interpreter is 204 bits
  (`int204_normal`, L 21, A 29, X 44). Lean proves its exact wire,
  normality, and directed contract for every closed source and arbitrary
  continuation and suffix. A separate 672-bit construction is both
  β-normal and simply typable: Lean proves its ordinary STLC judgment
  through a sound annotation checker and its directed contract through
  a 59-step cast-erasure trace to the literal 165. Application to its
  quotation need not be simply typable. The 204, 584,
  672, 742, and four erased-skip variants each pass the existing bounded
  battery (667 pass, one divergent expected result skipped, zero failures).
  Targeted divergent-source suffix checks also pass. Sources are in
  `data/self-interpreter/machines/`, reports in
  `data/self-interpreter/theory/`, and reproducible checks in
  `tools/self-interpreter/theory/`. No candidate enumeration is part of
  these checks. The integrated Lean build passes, with the main theorem
  axioms limited to `propext` and `Quot.sound`; the five focused Python
  checks took 14.4 seconds together.
- **Protocol constraints** (`classical/self-interpreter/protocol-obstructions.md`):
  the erased skip operand can return the continuation, parser, or generator
  off the input domain, producing correct 167-, 168-, and 169-bit variants.
  The unchanged NEXT diagonal fails for every skip function under its
  handler protocol. Lean proves `E E` cannot be β-equal to `E` for any
  exact interpreter, excluding an idempotent control response whose
  self-application would supply the full parser. Root transparency and
  context independence already
  force canonical closed internal values, sharpening the cell/APP collision.
  A representation that erases β distinctions cannot have an exact decoder
  using only that representation; closed two-sided β-inverse coercions are
  necessarily identities. A Scott-handler recursion arrangement costs
  196 bits with shared self-application, 206 without; both pass the
  667/1/0 battery and Ω suffix check in 3.5 seconds combined
  (`data/self-interpreter/theory/stream_handler.json`). The adapters still
  cost more than the 165's parser interface. Except for the unconditional
  non-idempotence and its generator corollary, these are protocol-specific
  handwritten proofs.
- **The universal machine** (`classical/self-interpreter/universal.md`):
  Tromp's wirings around the 165's body give 175 (non-strict) and 187
  (strict), against 178 and 190 around the 168's. Wirings around the new body
  give no non-strict machine below 175 (14,856,126 contexts, 68,017 capped,
  16,144 of those certified divergent); around the old body no non-strict
  machine below 178 and no strict one below 185, conditional on 3,961 and
  2,375,084 capped contexts. Joint U-specific searches around the old body
  screened 2,207,444,203 assignments below 178 with no survivor and 1,462,818
  caps (`data/self-interpreter/universal.json`). The partially applied parser
  is no longer a universal continuation with the 165's reader. The strict
  filter has seven probes: Codex's `1 K F` shows that 186- and 188-bit
  machines around the 165 passing the first six are not strict, and excludes
  parser-applying base environments at every size. Unsearched: the strict
  contexts of 39..43 bits around either body.

### AIT golf

`classical/golf.md`: certified β-golf shrinks 45 of the 117 tromp/AIT
programs by 470 bits in all (`data/golf/sweep.tsv`; e.g. `tweet` 2230 → 2168,
`uniK` 903 → 854). Hand redesigns take the IOCCC BLC8 machine from 344 bits
(43 bytes) to 321 strict (41 bytes) and 300 non-strict (38 bytes), and
`uni28` from 500 to 399 strict and 382 non-strict. Ports of the 2025-12 parser
shrink `int4` 189 → 175 (with the 165's reader), `ko2kp` 615 → 557, `nf` 600 → 541, and the pairup
programs (771, 651, 1325; the last two on contract-valid inputs only).
Artifacts are in `data/golf/machines/`.

### Running programs: blc and uni

`classical/programs.md` is the contract. `blam blc` reimplements Tromp's
`blc`, all 31 actions, and `blam uni` his `uni`; both run on the
call-by-need machine with lazily read stdin. Evidence, from `tools/ait/` on a
frozen binary against Tromp's tools built from the pinned corpus (`blc` with
GHC 9.10.3; `uni.rs` with rustc), all three harnesses in 11 minutes:

- **Actions** (`actions.py`, 117 programs × 26 actions): 2,791 pairs
  byte-identical, 0 different; 247 finish on neither side (normal forms of
  fast-growing programs, under 1 GB heap caps and adaptive limits), and 4
  only on blam's.
- **Run family** (`runs.py`): every closed program through 20 bits plus
  2,500 random larger ones, each on ten inputs (bit and byte modes, a bad
  input byte, `runO`, `runf`): 38,382 successful and 5,408 erroring pairs
  byte-identical, the output written before an input error included; 930
  finish on neither side; none differs.
- **uni** (`uni_diff.py`, 20,804 runs in both modes, against `uni.rs`):
  where uni.rs prints, blam prints the same bytes (6,201); where uni.rs
  fails, blam fails with a prefix of its output (14,379); 224 finish on
  neither side. Beyond uni's protocol, uni.py, uni.rs and uni.c disagree
  with one another (Codex's probes give three different behaviours).
- **Compiler**: `blc::notation::compile` matches `tools/blcc.py` on all 117
  programs, in 0.97 s for the corpus against blcc.py's 5 s.
- **Speed** (M5 Max, 100 KB identity programs): `blam blc run8` 0.10 s
  against Tromp's `blc` 0.51 s; `blam uni` 0.67 s against `uni.c` 0.19 s.
  Tromp's `bf.lam` on `hw.bf` prints `Hello World!` in 0.03 s and 5 MB, where
  the call-by-name KN machine prints nothing in 2³⁰ transitions (4.9 s,
  1.6 GB). The `uni` gap is allocation (malloc/free and the allocator's own
  clock are a third of its profile, with thread-local accounting next).

### Classical docket

1. **BB(36).** n=36 has 30 open programs. The direct-proof machinery
   (open-payload head cycles, productive descent, growing spines, confluence,
   symbolic normal forms) is the starting point; the BB(35) pass adjudicated
   only its eighteen seeds and their lambda wraps.
2. **Ω's tenth bit** (`classical/omega.md` §6) needs a *countable* divergence
   prover reaching 80.2% of the tail. The leading candidate is regular
   invariant languages closed under rewriting (Endrullis–Zantema style),
   counted by a DP over (size, depth, automaton state); measure their per-term
   coverage first.
3. **New certificate classes** only from a concrete frontier trace and a
   finite recurrence: the zfirst residue, and Drift only once an exemplar
   exposes `R_(n+1) = G[R_n]` with a finite generator. Never promote a
   diagnostic bucket by itself.
4. **Raise `census --rescue` before n=42.**
5. **Formalize prefix-freeness and Kraft accounting** from
   `lean/Blc/Wire.lean`, then derive machine-checked K upper bounds.
6. **Coding theorem:** rerun the report on the K ≤ 35 cohort; an explicit
   Kraft–Chaitin decoder would upper-bound c.
7. **AIT golf:** the strict BLC8 machine is one bit over 40 bytes; its whole
   β-component at slack 16 (1.5M states) has nothing smaller, so 320 needs a
   structural idea. `uniK` and `blc.lam` still carry pre-redesign variable
   handling. Upstreaming is a9's call (`contrib/PR_KIT.md`).
8. **Discrete Solomonoff induction:** measure Church bit-list decode coverage
   and build prefix-tree conditional predictions under `m` and `S`. Infinite
   streams belong to the separate monotone-machine `ref/AIT` lane.
9. **The self-interpreter below 165** (`classical/self-interpreter/interpreter.md`
   §7): correlated readers outside the independent rigid laws, a changed
   NEXT protocol that can use the reader's diagonal, and the capped fills of
   the reader searches. Look for another shared computation of the kind the
   reader is, by reasoning first. The two-nonlinear count is sharp even
   though the current witness is large; a stronger lower bound must price
   connections, captures, and protected quotation origins. Upstreaming the 165, 175 and 187
   to tromp/AIT is a9's call (`contrib/PR_KIT.md`).
10. **`blam uni` throughput:** within 4× of `uni.c` on byte streams. The next
   lever is allocation: a slab with index-based reference counts (or the
   open global-allocator decision) would remove most of malloc/free and the
   thread-local accounting from the lazy machine's hot path.

## Quantum (qBLC)

### Operator census and unknown frontier

- `data/quantum/census_table.txt` covers the full 4..41 population at β 4,096,
  transitions 2²⁶, 12 live qubits, and 4,096 branches, in 12 s wall and
  200 s user; a regeneration matches the file byte for byte.
  `Omega_success,<=41 = 3424188513 / 2^40` exactly.
- The one-qubit operator is positive definite, with named-state ranking
  `|0> >> |+> > T|+> > |-> >> |1>`. The first entangled successful outputs
  occur at 41 bits; the two-qubit ranking is `|00> >> Phi+ > Phi- > |++>`.
- The census has 1,619,650 Unknown leaves on 1,619,647 programs. Raising the β
  or transition budget 16× resolves none of the 120 Unknown programs through
  26 bits.

The trusted skeleton layer (`quantum/escalation.md`) proves 815,700 programs
divergent: 712,299 by exact hole-inert recurrence and 103,401 after transfer
to the classical engines (58,373 oracle, 45,028 escalation). Their exact mass
is 27,958,835/2⁴¹, 74.45% of the raw unknown mass, and the upper endpoint
tightens to 6,857,971,973/2⁴¹, a 3.91× narrower bracket.
`data/quantum/skeleton_manifest.txt` pins the digests, masses, split, and
every residual's provenance; the census table itself is unchanged.

The remaining frontier is 184,444 hole-demanded programs, 619,466 tier-1
capouts, and 37 hole-free residuals the classical ladder cannot settle.
Capouts split into 487,960 steps-bound and 131,506 size-bound. A
deterministic 1-in-10 rerun of the steps-bound cases at 16× steps yields 2
exact loops, 39,603 size capouts, and 9,191 steps capouts, so the target is
the rung-3 pattern-recurrence checker, not another exact-cycle tier.

### Signature and Galois structure

The canonical signature `h meas new cnot t` (`quantum::sig::FROZEN`) has the
largest `Ω_success` of all 120 orderings at every measured depth up to 34.
Within the eight-gate campaign the primitive set is the unique minimal
complete set: `new`, `meas`, and `cnot` are arity-unique requirements,
`{h,t}` supplies a universal unary core, and `s`, `x`, `z` are
lambda-definable. `Ω_success` is phase-blind and cannot certify universality:
replacing `t` with diagonal Clifford gates preserves every measured aggregate.
Alternate signatures are runnable and lockstep-tested but noncanonical.

The irrationality thresholds are distinct (`quantum/galois.md`):

- 34 bits: the shortest successful program with an irrational
  output-operator entry;
- 45 bits: the shortest five-lambda idiom program with Galois-odd leaf masses;
- 53 bits: the shortest known program with non-dyadic total successful mass.

The idiom aggregate is dyadic through 52 and non-dyadic at 53; the complement
has zero `√2` coefficient through 51, with 52 and 53 open. The finite-trace
Galois identity is proved at paper level; the sub-53 exclusion, its
CNOT-capable companion, and the infinite-tree statement are open.
`P27 = 000000010110011110011101010` is the minimal measured precursor that
creates a superposition and sends its outcomes to different verdict classes:
under `h new meas cnot t` its leaves are Halt and Species error at mass 1/2,
and under the h/t mirror its successful mass is zero.

### Odd-sector abstract interpreter

`lab::odd` (trusted trace monitor) and `lab::oddmin` (compositional DP), driven
by `blam q oddmin`, cover closed CNOT-free traces (`quantum/oddmin.md`).
witness45 is accepted with a 44-node summary and the 28-bit CNOT witness is
rejected as out of scope; agreement with `quantum::reference` is exact on all
6,069 closed programs through 22 bits. Closed acceptance is zero through
W=33, the stage-1a lower bound. W=34 exceeds the million-summary cap at the
weight-30 slice, so pruning must reduce mid-ladder states.

### Self-interpretation and conditional operators

`E_q = intL I` is 174 bits, built from Palmer's 168. Direct and interpreted runs
agree at the complete effect-tree level through 24 bits (`blam q selfint 24`:
19,014 programs verified, 34 skipped as unresolved, 0 trace or pure-NF
mismatches; witness45 and the poisoned-seed canary pass), and Lean pins the
wire identities and quote linearity and proves the pure-fragment obligations
L1 and L2; the quantum obligations L3, L4 and B1–B5 are open
(`quantum/bisimulation.md`). The 165 would give a 171-bit `intL165 I`, not yet
checked against the qBLC contract. The ≤24 sweep takes 1.5 s wall and 18 CPU-seconds
on the M5 Max.

`blam q census --cond-k K` implements the conditional family `G_k`, but no
canonical generation exists. Before one: choose whole-live-store versus a
designated-output convention, derive explicit comparison constants with
`M^(k)`, then measure small `G_1` and `G_2` approximants.

### Quantum docket

1. Build the rung-3 hole-parametric pattern-recurrence checker for the capout
   population.
2. Add reference-configuration cycles and the E∞ universal-safety calculus for
   the hole-demanded residue.
3. Implement branch-local clocks and resource vectors before defining a qBLC
   speed prior; round `1/T`, never individual matrix entries. The qALC
   counterpart is measured, and `quantum::scalar::speed_units` is the shared
   rounding.
4. Complete the complement sweep at sizes 52 and 53.
5. Check the 171-bit `intL165 I` against the qBLC self-interpretation contract
   (`blam q selfint`).
6. Continue the odd-sector pruning program (α-normalize `BindId`, stronger
   ε/canonical-port quotienting, a simulation-preorder antichain, the
   component-scoped post-fixpoint with a trusted checker, then the ladder to
   44) and the bisimulation proof. CNOT belongs to the separate Pauli-string
   path-parity analysis.

## Quantum-algebraic (qALC)

### Pillar

qALC is storeless quantum control: runtime vectors live in ℓ² over token
configurations of one immutable invocation term, and gate arguments reach δ
nodes by reversible routing, never by copying
(`quantum-algebraic/architecture.md`). `src/qalc/` implements the term and
state grammar, exact amplitudes, the H/T kernel, composed full-NF readback,
the native-CNOT compiler sector, finite admission, the conservative fallback,
and exact `U`, `μ_p`, `ρ_p`, finite `M`, and `Ω_qALC` approximants; the
default-built `blam qalc` group exposes `run`, `gram`, `compile`, `fixtures`,
and `census`.

- **Gate 1** is closed on 30 admitted operational cores (7,507 states and
  7,417 exact columns in all), with 41,258 pure normalizers, a
  1,187,953-state application and controller invariant, and complete-carrier
  reachable-recall injectivity replayed in Lean on all 17 canonical typed
  sectors (`../qalc/GATE1.md`). The epoch-bearing recall row is injective;
  a uniform RRI theorem from typing is open and optional.
- **Gate 2** proves clean compilation for every finite typed H/T/CNOT circuit
  of positive width: every basis word occurs at the common reachable `47n+4`
  cut, and the machine reaches the exact ideal column at
  `13n + 15 + 50 #H + 58 #T + 32 #CNOT` with arbitrary finite amplitudes,
  full-NF output, one literal terminal block, tick zero, and no earlier halt
  (`../qalc/GATE2.md`).
- **The infinite objects** (`quantum-algebraic/objects.md`): finite `M`
  approximants increase in Loewner order to a positive trace-class operator
  with `Tr M = Ω_qALC`, and the injective four-bit wrapper
  `p -> λh. λt. p` gives `M >= D_BLC / 16` and `Ω_qALC >= Ω_BLC / 16`, hence
  the unconditional `Ω_qALC >= 1/256`. This is classical diagonal domination,
  not Gács universality; the all-program effect-free-conservativity step is a
  contract, not yet a Lean theorem.
- Python carrier closure and the generated `native_decide` evaluations are
  explicit trust boundaries.

### Census convergence record

`blam qalc census` invokes every ordinary prefix-free BLC program as `p h t`,
charges only the program's length, and reports exact halt/error/running mass
with the `Ω_qALC` lower approximant and halt-plus-running upper bracket at one
global clock. The record is `data/qalc/census_convergence.txt`, extended by
`scripts/qalc-census-extend.sh` (M5 Max, 18 threads, support 100,000).

Sizes 4..24 (19,048 programs; sparse-`M` retention off, `ρ` and trace audits
on):

| U steps | nonzero running programs | Ω lower | upper bracket |
|---:|---:|---:|---:|
| 256 | 40 | 0.040183752775192 | 0.040192037820816 |
| 1,024 | 34 | 0.040183812379837 | 0.040191739797592 |
| 4,096 | 34 | 0.040183812379837 | 0.040191739797592 |

The 1,024- and 4,096-step reports are byte-identical apart from their
protocol header (SHA-256 of the 1,024-step report
`55fb31c008c77bf98418f2a2606bde6ba7af1d3c32d149866a9e96bc900c9671`). All runs
select 18,858 validated Gate-1 sectors and 190 conservative sectors, find 85
programs with coherent output blocks, peak at support 4, and hit no capacity.
The 1,024-step run takes 1.1 s wall and 10 s user (4.1 GB peak RSS): its
1,000-state preflight admits 18,858 programs, and the 190 others retry the
300,000-state selector, queued longest-probe-first over every thread, and land
conservative. The timings in the table below are the record runs'; the current
binary runs n=25 at 1,024 steps in 0.7 s.

Sizes 25..28, one shared 900-second budget per size:

| n | programs | 1,024 steps | 4,096 steps | 8,192 steps | nonzero halt / error / running programs | result |
|---:|---:|---:|---:|---:|---:|---|
| 25 | 14,334 | 31.2 s | 36.6 s | — | 6,074 / 8,252 / 23 | stable at 1,024/4,096 |
| 26 | 27,465 | 87.3 s | 102.7 s | — | 11,504 / 15,943 / 64 | stable at 1,024/4,096 |
| 27 | 47,146 | 66.9 s | 90.4 s | — | 19,295 / 27,894 / 45 | stable at 1,024/4,096 |
| 28 | 89,270 | 215.1 s | 270.8 s | 319.7 s | 36,210 / 53,025 / 247 | not converged |

The contiguous convergence record reaches 27 bits. At n=28 the halt
contribution stays exactly `(4513,0,0,0,50)` at all three clocks, but six
running programs become error programs by step 4,096 and two more by 8,192;
the upper contribution tightens from `(36359,0,0,0,56)` through
`(36353,0,0,0,56)` to `(36351,0,0,0,56)`. The 16,384-step checkpoint holds 14
of 64 groups and resumes only under a larger per-size budget.

### Speed prior

The qALC speed prior (`quantum-algebraic/speed.md`) charges each halted block
`1/a` at its arrival time, read off the halt sector's tick register, and
charges still-running mass at most `1/(clock+1)` on the upper side. The
convergence record carries the `Ω_speed` columns in 2⁻¹²⁸ units (decimals
below are previews):

| n | clock | Ω_speed lower | Ω_speed upper | speed width | Ω_qALC width |
|---:|---:|---:|---:|---:|---:|
| 4..24 | 1,024 | 0.002163939964415 | 0.002163947698482 | 7.734e-9 | 7.927e-6 |
| 4..24 | 4,096 | 0.002163939964415 | 0.002163941899348 | 1.935e-9 | 7.927e-6 |
| 25 | 1,024 | 0.000005523279746 | 0.000005523948481 | 6.687e-10 | 6.855e-7 |
| 25 | 4,096 | 0.000005523279746 | 0.000005523447052 | 1.673e-10 | 6.855e-7 |
| 26 | 1,024 | 0.000005189173196 | 0.000005190103610 | 9.304e-10 | 9.537e-7 |
| 26 | 4,096 | 0.000005189173196 | 0.000005189405970 | 2.328e-10 | 9.537e-7 |
| 27 | 1,024 | 0.000004305350675 | 0.000004305677773 | 3.271e-10 | 3.353e-7 |
| 27 | 4,096 | 0.000004305350675 | 0.000004305432509 | 8.183e-11 | 3.353e-7 |
| 28 | 1,024 | 0.000003969081425 | 0.000003970008205 | 9.268e-10 | 9.499e-7 |
| 28 | 4,096 | 0.000003969081425 | 0.000003969307834 | 2.264e-10 | 9.276e-7 |
| 28 | 8,192 | 0.000003969081425 | 0.000003969193734 | 1.123e-10 | 9.201e-7 |

The lower endpoint is identical across clocks at every size: no halt arrives
after step 1,003, the deepest arrival at both 26 and 28. The width scales with
the floor (the 4..24 open subtotal is exactly `⌈133·2^104/(clock+1)⌉`), so the
speed bracket is three to four orders of magnitude narrower than the
`Ω_qALC` bracket and keeps tightening where that one barely moves. This is an
ε-accuracy stopping rule for `Ω_speed`, not evidence that error and running
counts have settled. Every population through 28 is dyadic, so the realised
halt-rounding slack equals the number of inexact divisions (96 units at
4..24).

### qALC docket

1. Resolve the n=28 late-error clock edge before extending the `Ω_qALC`
   convergence claim: 1,024 steps is not a convergence clock at n=28, and
   4,096 is not stable against 8,192. Extract the late errors' arrival times,
   then decide whether the protocol accepts a size on the certified
   `Ω_speed` width, on settled error counts, or on both.
2. Extend the speed surface: per-output arrival blocks for `M_speed` and a
   witness `Kt`, a defined honest gauge and effect-resource vector (the native
   clock is neither), and the `RunDone(Error)` floor refinement.
3. Optionally strengthen the ambient lifecycle/minimal-carrier theorem,
   general probe-exit classification, and arrival/pop determinacy.
4. Prove the all-program pure-path conservativity theorem, then decide whether
   classical `Ω_BLC` is Solovay complete for the actual closed-term code. For
   full `M` universality, fix the effective infinite-dimensional target class
   and build or rule out a synchronized clean compiler with uniform additive
   description overhead. Separately pursue D-circuit dyadicity, qALC/qBLC
   translations, and self-interpretation up to timing dilation.

## Repository and release

- The crate is 3.0.0: one `blam` binary over a `blc` substrate, the
  classical, quantum, and qALC pillars, and lab-gated research instruments.
  3.0 is a major release because `qalc`'s public types changed and a few
  internal helpers became crate-private; the GitHub release v3.0.0 lists
  every break.
- Checkpoints are `blamckpt v5`, and memo files use the shared tag-first
  codec; older cache files are invalid. Nothing in `data/` uses either.
- CI runs on pushes to `main` and pull requests into it, not on `dev`. It
  checks formatting, warning-free Clippy, rustdoc with warnings denied, the
  1.87 MSRV, that no current file invokes a retired binary, release tests with
  all, default, and no default features on Ubuntu and macOS, the census
  spot-check through 32 bits, the Lean certificates with the BB registry and
  exact bounds, `ref/AIT` additivity, and (path-scoped) qALC fixture
  determinism. The exhaustive qALC Python batteries and Lean proof checks are
  explicit local commands.
- `ref/AIT` is pinned to the additive a9lim/AIT fork at `47b51dd`. The fork's
  `uni-rs` and `golf` branches carry the upstream PRs drafted in
  `contrib/PR_KIT.md`; both are three commits behind the fork's master.

### Accepted operational risks

- `--memo-in` is a trusted semantic cache: its SHA-256 pin identifies the
  file, not the correctness of the cached fates.
- Checkpoint flushes protect against process kills, not power loss; a torn
  tail loses work and is discarded on resume.
- Alternate signature universes and raised budgets are runnable but carry
  less evidence than the canonical configuration.
- Low-level arena APIs require valid node ids, and escalation APIs require
  closed, bottom-free terms; violating these documented preconditions may
  panic.
