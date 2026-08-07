# Current state and open docket

This is the single authority for blam's moving research state: canonical
measurements, proof boundaries, and ordered next work. The root `README.md`
is the stable public map; domain documents state durable contracts; the
monthly ledger preserves chronology.

Last updated: 2026-08-05.

## Classical state

### Census and algorithmic probability

- `data/classical/census_table.txt` covers every closed BLC term from 4
  through 41 bits: 526,039,969 programs in about 16.5 minutes on the M5 Max.
  The 4..40 prefix takes about 7.2 minutes.
- BBλ(41) is at least 1,074,266,118 normal-form bits. The n=32 row has no
  unknowns, so BBλ(32) is fully mechanical.
- The current certified frontier is `data/classical/unknowns.txt`: 4,235
  terms after removing the certificate kills.
- The finite-range plain halting mass is
  `Ω|≤41 ∈ [0.124105086764, 0.124105092919]`. Exact base fractions are
  in `data/classical/solomonoff.txt`; the tightened upper endpoint also
  accounts for certified divergers removed from the raw unknown mass.

### Divergence certificates and Lean

- `data/certificates/ratchet_kills.tsv` contains 297 checked kills:
  214 Ratchet, 34 HeadTowerRatchet, 39 SelectorRatchet, and ten rigid-head
  argument variants.
- Every kill is replayed at four times the discovery budgets and compiled to
  an individual Lean theorem in `lean/Certs/`.
- `lake build Certs` checks all 297 `¬HasNormalForm` theorems and their wire
  identities in about two seconds. The development has no sorries and no
  mathlib dependency; its only reported axioms are `propext` and
  `Quot.sound`.
- `src/cert.rs` is the trusted checker layer. `certsearch` is untrusted
  discovery, and `certlean` generates `lean/Certs/`; generated files are not
  edited by hand.
- `certdiag` buckets are abort fingerprints for one proposed candidate, not
  semantic class boundaries. Class counts inferred from those buckets are
  lower bounds only.

### Self-interpreter

- The 170-bit classical self-interpreter is locally optimal across the three
  exhaustive parametric slot searches. VAR, ABS, and APP each have the
  reference fragment as their unique survivor, with no residual unknowns.
- Fixpoint shape, continuation timing, environment-cell variants, and binder
  placement have also been searched as described in
  `classical/self-interpreter/design.md`.
- The remaining mechanical improvement lane is the contextual search in
  `classical/self-interpreter/search-spec.md` §2. A contextual survivor is a
  hypothesis until it is spliced into the full interpreter and passes the
  entire semantic battery.

### Classical docket

1. Implement PassengerDiagonalRatchet as a distinct v4 certificate class,
   using the assembly in `classical/certificates/specification.md` §8.
2. Derive the next selector/zfirst class from a concrete surviving trace.
   Do not promote a `certdiag` bucket into a class without an exemplar and a
   finite recurrence.
3. Leave Drift gated until an exemplar exposes a finite generator
   `R_(n+1) = G[R_n]`; an unconstrained family is not a certificate.
4. Raise `census --rescue` before n=42. The largest successful n=41 rescue
   used 9,457,564 of 10⁷ β-contractions, only 1.06× headroom.
5. Formalize prefix-freeness and Kraft accounting from
   `lean/Blc/Wire.lean`, then derive machine-checked K upper bounds.

## Quantum state

### Operator census

- `data/quantum/census_table.txt` covers the full 4..41 population at
  β=4096, transitions=2²⁶, 12 live qubits, and 4,096 branches. The run
  takes about 30 minutes.
- `Ω_success,≤41 = 3424188513 / 2⁴⁰` exactly.
- The one-qubit operator is positive definite. The current named-state
  ranking is `|0⟩ ≫ |+⟩ > T|+⟩ > |−⟩ ≫ |1⟩`.
- The first entangled successful outputs occur at exactly 41 bits. In the
  two-qubit ranking, `|00⟩ ≫ Φ⁺ > Φ⁻ > |++⟩`.
- The 1,619,650 `Unknown` programs are a real transition frontier: increasing
  the β budget by 16× resolves none of them.

### Irrationality and Galois structure

Three thresholds must remain distinct:

- 34 bits: shortest successful program whose output operator has an
  irrational entry;
- 45 bits: shortest five-lambda gate-idiom program with Galois-odd leaf
  masses; and
- 53 bits: shortest known program whose total successful mass is non-dyadic,
  via the fate-divergent witness P53.

The idiom-sector aggregate is dyadic through 52 and non-dyadic at 53. The
non-five-lambda complement has exact zero `√2` coefficient at every measured
size 42..51, with no fate-divergent program. The complement sweep is paused
at 51; n=52 and n=53 remain. The zero coefficient is measured cancellation,
not a theorem.

The finite-trace Galois identity T1 is proved at paper level in
`quantum/galois.md`. The sub-53 exclusion T2, its CNOT-capable companion, and
the infinite-tree statement T3 remain open.

### Odd-sector abstract interpreter

Stage 1a asks for the minimum source weight of a closed, CNOT-free trace with
a Galois-odd leaf mass. The reference monitor and compositional DP are
`src/odd.rs`, `src/oddmin.rs`, and `oddminproto`; their current contract is
`quantum/oddmin.md`.

Current measurements:

- witness45 is accepted with a 44-node summary, while the 28-bit CNOT witness
  is rejected as out of scope;
- exact agreement with `qeval` holds on all 6,069 closed programs through 22
  bits;
- the remaining 19 conservative cells are all concretely non-odd and arise
  from alpha-only port identity;
- splice-level top has been eliminated through W=24;
- closed-slice summary counts are 96, 743, and 6,271 at W=16, 20, and 24;
  closed-acceptance top counts are 0, 3, and 37 respectively, while
  splice-level top remains zero; the W=24 run takes about 1.1 seconds; and
- measured growth is about 1.7× per bit, projecting the million-summary
  stop near W≈34.

Next steps, in order:

1. BindId alpha-normalization, weak-epsilon canonicalization, and canonical
   port renumbering;
2. rerun W=24 and probe W=26/28/30;
3. add a simulation-preorder antichain after proving constructor
   monotonicity;
4. add the general component-scoped post-fixpoint with ScopeId origins and a
   trusted checker that verifies only the post-fixpoint; and
5. add search-side pruning for the ladder to 44.

The handle-aliasing lemma is scoped to closed, pre-CNOT programs. CNOT's
Church pair reintroduces handles inside lambda values and belongs to stage
1b's Pauli-string path-parity analysis.

### Self-interpretation and bisimulation

- `E_q = intL I` is 176 bits. The six-bit adapter is minimal within the
  `intL` protocol; global optimality is open.
- Direct and interpreted runs agree at the effect-tree level on the complete
  measured population through 24 bits, including terminal fates, stores, and
  exact branch masses.
- `lean/Blc/Selfint.lean` kernel-pins `intL` and the 176-bit wrapper by wire
  identity and proves quote linearity.
- Parser correctness L1, selector correctness L2, weak-head preservation L3,
  readback collapse L4, and the divergence-sensitive bisimulation clauses
  B1–B5 remain proof obligations. Their exact statements are in
  `quantum/bisimulation.md`.
- The two-entry interpreter families have minimum 176. The remaining finite
  search lane is a joint root-and-knot context around the 150-bit core.

### Conditional family `G_k`

The conditional object is implemented by `qcensus --cond-k K` but has not
yet received its first canonical data generation. The next work is:

1. decide whether Object B retains the current whole-live-store output or
   defines a separate designated-output convention;
2. derive explicit bit constants for
   `c m(k) G_k ⪯ M^(k) ⪯ C G_k`; and
3. run canonical small-size `G_1` and `G_2` approximants, then measure
   `−log⟨ψ|G_k|ψ⟩` for named states.

The output choice is genuinely object-defining. A designated output restores
compositional discarding but must be specified and measured separately from
the whole-live-store operator census.

## Repository and release state

- Crate and release version: v1.0.1.
- CI runs formatting, clippy with warnings denied, release tests and `uni.rs`
  parity on Ubuntu and macOS, the classical 4..32 census spot-check, all Lean
  certificates, and the `ref/AIT` additivity guard.
- `ref/AIT` is the a9lim/AIT fork at upstream plus one additive `uni.rs`
  commit. `contrib/ait-uni/` contains the portable source, parity harness, and
  upstream PR kit. No upstream pull request is currently open.
