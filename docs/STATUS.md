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
  **BBλ(35) = 38,127,987,424,941** normal-form bits: Tromp's published values
  (OEIS A333479), confirmed independently by the exhaustive Rust census plus
  kernel-checked adjudications of every program the census left open at those
  sizes (the census itself is not formalized). The eighteen open 35-bit
  programs are sixteen divergers and two halters with outputs of
  4,186,155,666 and 38,127,987,424,941 bits; the latter is the Church numeral
  3^27, proved symbolically. Tromp's hand notes identify the same behaviours
  (`classical/certificates/busy-beaver.md`). A333479 also lists
  a(36) = 5·2²⁵⁶ + 6 (the Church numeral 2^2^2^3), which this project has not
  yet checked; its terms end there, so a(37) would be the first new value.
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

- **The 162** (`classical/self-interpreter/interpreter.md`,
  `data/self-interpreter/machines/int162.lam`): the 165's knot and NEXT
  around a new reader `list I V NEXT` (L 16, A 24, X 32). `list I` makes the
  first cell its own selection, so on a 0-tag the zero arm is the tail itself
  applied to NEXT, the reader's last operand; on a variable
  `V = λu. list (λq. cont) (list list u)` reopens the stream, hands the tail
  to `cont`, and erases NEXT as the skip's junk operand. The `next` let goes
  and the reader drops from 43 bits to 40, against +4 for NEXT one binder
  deeper. The 44-bit reader is Codex's, built while refuting a
  reader-optimality proof; NEXT as a reader operand is Grok's idea; `blam golf
  letopt` inlined NEXT into the operand slot of the resulting 166. Lean
  proves it correct for every closed program (`selfint_contract162`,
  `isSelfInterpreter_intL162`, `not_selfintSizeBound_163`); its variable
  residual names the continuation, so the parser statement is per
  continuation (`not_parses_intL162`). An independent adversarial review
  re-derived the contract and the size. Battery 667/1/0, and 3,341/2/0
  through 21 bits; exact suffixes on divergent sources. Its let structure is
  the unique minimum to three cuts, and its βη component to slack 24
  (12,024,847 terms) and contextual component to slack 18 hold nothing
  smaller (`data/self-interpreter/letopt_162.log`, `component_162_*.log`).
  The 165's reader-shape searches and conditional bounds below do not reach
  the 162's reader: as a two-operand reader its last operand is the bare
  `next`, a family they left open.
- **The 165**, the previous record (`classical/self-interpreter/interpreter.md`,
  `data/self-interpreter/machines/int165.lam`), Codex's design: Palmer's 168
  with a reader that computes the skip `list list list` once on the whole
  stream, where it is right for both dispatch arms, and lets the Scott list
  hand `list1` to the variable arm, which becomes `cont` itself (L 17, A 25,
  X 29). Lean proves it, and the 168, correct for every closed program as a
  β-reduction (`selfint_contract165`, `selfint_contract`). Nothing smaller
  appears in its tested neighbourhoods: let structure to
  three cuts (unique minimum), βη component to +20 (2,183,051 terms) and
  contextual to +16, every reader slot
  singly and handler × skip jointly through 164-bit interpreters (32,366,372
  pairs, no survivor, 4,052,176 capped), whole APP ≤ 34 bits, and the 168's
  near misses rebuilt on it (≥ 166; `merges.py`). The 168's module bound
  (minima summing to 168) is conditional on opaque modules, the clause the 165
  breaks; it still bounds the NEXT region the two share. The handwritten
  reader bound now permits arbitrary handlers: independent rigid laws force
  `|H| ≥ 27`, so `s H S` costs at least 43 and the unchanged surrounding
  interpreter at least 165 within that independent rigid interface
  (`classical/self-interpreter/handler-bound.md`).
  The strengthened handwritten theorem also permits the actual stream,
  tag, selector, and suffix correlations, including whole-stream access
  inside `H`, with the skip fixed to `s s s` and other ambient parameters
  independent and rigid. Its minimum is still 27. A checked 40-bit
  correlated handler with only one explicit lambda shows why the proof
  must price applications rather than transfer every independent-case lemma.
  For arbitrary correlated handlers, neutral operands `s next` and `s cont`
  are dominated by `s`, saving 5 and 6 bits. The right-associated
  operand `s (s s)` is also dominated, saving eight bits. An algebraic
  classification of all application-only operands through ten bits
  leaves only `s,j,c,s s,(s s) s`; bare `j,c` have explicit handlers
  showing why same-handler replacement by `s` fails. The common
  inert-operand replacement principle is kernel-checked in `SelfintInert`;
  the per-operand equation and absence checks are handwritten.
  The complete handwritten cheap-reader bounds are `|H|≥35` for `T=s`
  and `|H|≥31` for `T=s s`. Together with `|H|≥27` for `T=s s s`,
  they make 43 bits the exact minimum across these three operand families.
  With the other 122 bits fixed, 165 is minimal within these three operand
  families under the stated independent rigid reader laws. The bounds permit
  every ambient variable, arbitrary whole-stream access, and source beta
  redexes. The proof excludes every source-compression case, then all
  remaining normal shapes. Its continuation-ancestry argument counts
  lambda bodies containing `c`: the original external application edges
  must consume enough such lambdas, while small index budgets restrict
  their number even under binary copying. The proof has independent
  reviews but no Lean formalization. Both cheap operands require at least
  two explicit source lambdas, or three in beta-normal code; explicit
  three-lambda handlers cost 49 and 45 bits, with fixed equations checked
  by `handler_bound.py`. Bare operands `j,c`, lambda-containing operands,
  other reader heads, actual NEXT/parser behavior, and arbitrary complete
  interpreters remain outside the bound
  (`classical/self-interpreter/cheap-tail-bound.md`,
  `classical/self-interpreter/protocol-obstructions.md`).
  The zero arm ≥ 14, APP lift ≥ 19, reader/handler knot-tree and cell/APP
  exclusions remain as specified in §5. `SelfintKnot` kernel-checks that
  an opaque fixed point costs at least `18 + 2k` bits, so the 165's 31 bits
  of recursion overhead (knot, parser binder, two calls at depths 2 and 3)
  are minimal in its frame. Codex's handwritten proofs keep the cell at 24
  bits under only the two Boolean lookup laws and the lift at 19 on actual
  values, with raw quotation data borrowable (not yet independently
  reviewed). The reasoning consults in
  `data/self-interpreter/reasoning_floor/` built about forty further
  correct interpreters of 166–220 bits besides the 162 and the 166 it was
  polished from; letopt also shrinks recorded variants (the spine3 repair
  178→174, tag replay 189→186 and 199→194).
- **Unconditional structure** (`classical/self-interpreter/structural-bounds.md`):
  Lean proves that every interpreter has at least two syntactically
  nonlinear binders, and that an explicit `λc s.B` needs two inside `B`.
  The normalization argument gives the small numerical floor 18; the
  `SelfintFloor*` modules raise the kernel-checked floor to 27 without
  Statman's theorem (`selfintSizeBound_27`, using `Classical.choice`):
  three live binders, an argument with two free variables, an abstraction
  body that is not an application, and a classification of minimal
  application-rooted interpreters below 27 bits. A 584-bit witness has exactly two nonlinear binders, both
  closed in isolation; a kernel-replayed 71-step reduction reaches the
  literal 165. A 742-bit β-normal witness also has exactly two closed
  nonlinear binders, with its contract kernel-checked as β-joinability.
  Thus the minimum count two is attained even among β-normal interpreters.
  `SelfintNonlinearChain` kernel-checks a stronger requirement: two
  nonlinear binders must lie in incomparable branches of the source tree,
  including wholly inside the body of a literal two-argument interface.
  A single ancestor chain is preserved by beta reduction and cannot
  produce the required two-branch Ω output from an affine quotation.
  Statman's published width obstruction, combined with a handwritten
  interface argument, strengthens the capture requirement: every interpreter
  has a subterm with three distinct free variables and at least two live
  capturing abstractions. A literal two-argument interface, including every
  beta-normal interpreter, needs three such internal variables and two
  internal captures, plus the public stream binder's capture of the
  continuation. Together with the incomparable-binder theorem these give
  handwritten bit floors 34 globally and 46 for literal interfaces.
  The three live binders on the width
  witness's ancestor chain cannot contain the incomparable pair, so a
  fourth live binder is necessary. This gives a preliminary global floor
  of 33; analytical exclusion of its equality cases raises it to 34, and
  `classical/self-interpreter/global-floor.md` excludes 34–36 the same way:
  **every interpreter has at least 37 bits**. This is Codex's handwritten
  proof; two independent adversarial reviews (a fresh Codex consult and
  Gemini) found it correct, the Codex review replaying all 102 finite
  refutations with its own reducer. `Blc/SelfintFloor37.lean` kernel-checks
  its 144 fixed reduction clauses; `tools/self-interpreter/theory/floor37/`
  regenerates them and checks the 108 residual layouts in 0.05 seconds
  (`data/self-interpreter/theory/floor37.json`).
  A shared-S construction attains width three, two nonlinear binders,
  and the required capture counts simultaneously, even
  in the beta-normal fragment with every zero-based index at most two.
  It is an existential structural construction, not a compact measured
  interpreter or an additive decomposition
  (`classical/self-interpreter/capture-width.md`).
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
- **Head decomposition** (`classical/self-interpreter/head-decomposition.md`):
  the unconditional head-normal-form dichotomy has exactly two leading
  lambdas, headed by either the continuation or the stream. In the former
  case, continuation occurrences inside the two payloads can be replaced
  by the stream, preserving the full contract and saving one bit each.
  These are handwritten results. `SelfintProjections` kernel-checks
  rigid-spine projection of the contract, including divergent decoded
  values. Each payload of a literal continuation-headed interpreter
  needs at least two nonlinear binders and a stream occurrence. Such a
  head form therefore has at least five nonlinear binders in total and
  costs at least 55 bits. Codex's handwritten argument, independently
  reviewed, prices the payloads further: the value payload holds the
  width-three witness and the incomparable pair internally (at least 37
  bits), and substituting the stream for the continuation turns the
  remainder payload into an extractor (at least `25 + q` bits for `q`
  continuation occurrences), so a literal continuation-headed source costs
  at least 73. This prices the displayed form only;
  head normalization is not size-monotone
  even for fully affine terms. The literal 165 expands to a 755-bit head
  form in four contractions; its two lambdas, stream head, and two
  arguments are checked by `tools/self-interpreter/theory/head_decomposition.py`
  with two fixed affine examples and a sharing counterexample, in 0.002 seconds
  (`data/self-interpreter/theory/head_decomposition.json`).
  The latter is a 43-bit non-interpreter with two nonlinear binders;
  two head contractions create a 125-bit continuation-headed form with
  two nonlinear binders in each payload and six overall. Its value
  projection has the wrong rigid head. This demonstrates why the
  payload counts alone do not price independent source modules.
  Lean's `SelfintWireCost` proves the exact local beta size balance,
  including copied code and index movement, and applies it to every
  redex of a globally minimum interpreter. Such a minimum has no
  erasing redex; a linear redex needs at least two free argument
  occurrences and sufficient index savings to offset its six removed
  bits plus outer-reference decrements. These conditions give no
  numerical minimum yet. The literal 165's three existing redexes
  increase size by 147, 3, and 5 bits when contracted individually;
  the same fixed check validates each charge.
  The separate syntactic remainder task has a 70-bit construction
  (`rem70`, `classical/self-interpreter/remainder.md`): Lean proves exact
  suffix extraction for every source term, including open and divergent
  sources, and every suffix. The fixed source/wire and symbolic-clause
  check takes 0.004 seconds (`data/self-interpreter/theory/remainder.json`).
  This is an unrestricted upper bound for a parser projection, not a
  self-interpreter or a beta-normal remainder bound. Every closed-source
  exact extractor has at least 27 bits (Codex's handwritten proof,
  independently reviewed), so the minimum lies in 27..70.
  `SelfintRemainderChain` kernel-checks that an extractor's nonlinear
  binders lie in incomparable branches and the transfer `|E| ≥ Rmin − 8`,
  worth at most 62 because rem70 exists; `SelfintTower45` gives a 45-bit
  reader for every λ-tower and index that meets every zero-stream
  obligation the known proofs use. After an application's left child the
  residual must distinguish one pending source from none and every pending
  depth from every other (`SelfintResidualControl`), but a 647-bit
  extractor with exactly two nonlinear binders, two live captures and one
  width-three subterm (`SelfintSharedS647`) shows that this obligation
  forces no further such count in the original source. `SelfintZero`
  proves that every exact remainder extractor needs two nonlinear
  binders, including two inside the body of an explicit stream lambda.
  Only closed-source, closed-suffix beta-join correctness is needed.
  The proof normalizes source terms with at most one nonlinear binder
  over a labelled infinite zero stream, then simulates the finite trace
  on a closed source `λⁿ.I` followed by `Ω` to contradict exact extraction.
  A separately reviewed, fully kernel-checked theorem proves that every
  exact remainder extractor strictly increases its own residual-origin
  lambda count during ordinary weak-head evaluation on every sufficiently
  long valid source `λⁿ.I`, with any closed suffix. The infinite-zero
  execution has growth events arbitrarily late: an eventually nongrowing
  execution would stabilize to one flat code template without carrying
  an advancing tail, and a uniform label bound would contradict
  finite-prefix correctness. The result gives neither an explicit input
  threshold nor a bit-size bound, and does not quantify over every
  successful beta trace.
  `WeakHeadClock` kernel-checks the supporting bound on head contractions
  interspersed with arbitrary beta reductions. The thirteen `SelfintGrowth`
  modules additionally check data normalization and nongrowth transport,
  bounded blocked-copy and nonflat-head events, the stable two-copy
  value classification, uniform fixed-body label bounds, and finite-prefix
  simulation with a head-clock bound. An exact data-normalizer cost proves
  strong normalization of every data-reduction order; the extended head
  machine, counter stabilization, canonical event selection, and full
  infinite-execution synthesis are checked. The colored ordinary-term
  realization counts precisely residual copies of the original reader,
  including on divergent suffixes; input lambdas are excluded.
  A seventeen-theorem audit across `SelfintZero`, `SelfintProjections`, and `SelfintInert` uses only
  `propext` and `Quot.sound`, as does a separate four-theorem
  `WeakHeadClock` audit. The twenty-two growth-support theorems use at most
  those axioms after constructive event extraction. A fourteen-theorem
  final synthesis/transfer audit has nine using at most those axioms and
  five additionally using `Classical.choice` for counter stabilization and
  classical event selection; the final valid-source theorem is among them.
  Integrated `lake build Blc` passes all 62 jobs. The floor, knot and
  remainder-control modules' headline theorems use only
  `propext` and `Quot.sound`, except `selfintSizeBound_27` and its
  supporting floor lemmas, which also use `Classical.choice`.
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
  context independence already force canonical closed internal values,
  sharpening the cell/APP collision. A continuation-specific handler whose
  variable projection returns `C v (v v k)` cannot also return every exact
  constructor value: the closed source `K` forces `v v k =β λy.k`, which
  cannot be a rigid suffix for any `k`. This excludes that projection,
  not all handler factories.
  A representation that erases β distinctions cannot have an exact decoder
  using only that representation; closed two-sided β-inverse coercions are
  necessarily identities. A Scott-handler recursion arrangement costs
  196 bits with shared self-application, 206 without; both pass the
  667/1/0 battery and Ω suffix check in 3.5 seconds combined
  (`data/self-interpreter/theory/stream_handler.json`). The adapters still
  cost more than the 165's parser interface. A self-passed context removes
  the explicit fixed-point wrapper and costs 191 bits. Its eight fixed
  parser equations, 667/1/0 battery, and Ω / λa.Ω suffix probes pass in
  6.189 seconds (`data/self-interpreter/theory/selfpassed.json`); the full
  structural correctness derivation is handwritten. The context costs
  166 bits and the public interface and sharing application add 25.
  A proper one-sided applicative retraction preserves application exactly:
  `D(A x) →* x` and `(A x)(A y) →* A(x y)`. Its seven rigid equations and
  two distinct-normal-form checks pass; a scoped missing-variable argument
  still excludes the raw-selector cell/APP alias with context-independent
  wrappers (`data/self-interpreter/theory/applicative_retraction.json`).
  A complete parser carrying the remainder in applicative metadata costs
  303 bits. Its four rigid equations, 667/1/0 battery, and Ω / λa.Ω suffix
  probes pass in 1.92 seconds (`data/self-interpreter/theory/metadata_parser.json`).
  Eliminating its boxes against the public consumer recovers the 165's
  CPS interface without a further saving. A separate 323-bit construction
  uses the actual parser generator as each value's application control:
  `v v` reparses the left value's remainder and combines the next value.
  Its five rigid equations, 667/1/0 battery, and Ω / λa.Ω exact suffix
  probes pass in 1.788 seconds (`data/self-interpreter/theory/shared_tag.json`).
  The handwritten structural proof includes divergent sources. The shared
  generator costs 262 bits and its public adapter 59; triple boxes and
  maps outweigh the sharing. Except for the unconditional non-idempotence
  and its generator corollary, these are protocol-specific handwritten proofs.
- **The universal machine** (`classical/self-interpreter/universal.md`):
  Tromp's wirings around the 162's body give 172 (non-strict) and 184
  (strict; all seven strictness probes), around the 165's 175 and 187, and
  around the 168's 178 and 190 (`machines/uni172.lam`, `uni184.lam`); letopt
  finds no smaller rendering of 172 or 184, and no wiring search has run
  around the 162's body yet. Wirings around the 165's body
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

`classical/golf.md`: certified β-golf shrinks 44 of the 117 tromp/AIT
programs by 463 bits in all (`data/golf/sweep.tsv`). The upstream branch,
[tromp/AIT#13](https://github.com/tromp/AIT/pull/13), changes 40 programs by
1,159 bits, every one as a readable source: 36 of the β-golf gains, several
beyond the sweep (`tweet` 2230 → 2134, `loader` 1797 → 1781,
`pairup_Kp` 1402 → 1270), and hand redesigns. The IOCCC BLC8 machine goes from
344 bits (43 bytes) to 304 strict (38 bytes) and 283 non-strict (36 bytes),
`uni28` from 500 to 390 / 370, `uni2` to 332, `blc.lam` 195 → 186, and `uniK`
903 → 826 (599 with eager weakening). The parser ports, now with the 162's
reader, give `int4` 172, `ko2kp` 540 (so KP(x) ≤ KO(x) + 540), `nf` 535, and
the pairup programs 756, 651 and 1270 (the last two on contract-valid inputs
only); `int.lam` is 162 and `uni.lam` 184 strict, 172 non-strict. Artifacts are in
`data/golf/machines/`.

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

1. **BB(36), then BB(37).** Checking Tromp's a(36) = 5·2²⁵⁶ + 6 means
   adjudicating all 30 open programs at n=36; a(37), 70 open programs, is
   not yet published anywhere. The direct-proof machinery
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
7. **AIT golf:** tromp/AIT#13 awaits Tromp's review (end of October). Terms
   that Tromp's compiler will not keep as sources: `tree_ordinals` 715
   against its 726 source, and `loader` 1779 / `tweet` 2130 against 1781 /
   2134, which need two names bound side by side. Finishers from
   `pairup_Kp` 1273 and `bf` 806 did not complete. The next BLC8 byte
   boundaries, 296 strict and 280 non-strict, need another structural step.
8. **Discrete Solomonoff induction:** measure Church bit-list decode coverage
   and build prefix-tree conditional predictions under `m` and `S`. Infinite
   streams belong to the separate monotone-machine `ref/AIT` lane.
9. **The self-interpreter below 162** (`classical/self-interpreter/interpreter.md`
   §7). Constructive: the 162's own architecture is new and its
   neighbourhood beyond letopt and the βη components is unexplored; readers with the bare `next` operand
   and other heads, the knot × NEXT coupling through the reader's diagonal,
   and wiring searches for U around the 162's body. NEXT-internal fusions and
   second-bit dispatch placements are catalogued and lose; NEXT optimality
   alone is as hard as a 48-bit global floor (any interpreter embeds into
   the NEXT slot at +44 bits). Look for another shared computation of the
   kind the readers are, by reasoning first. Proof: the floor is 37
   handwritten and 27 kernel-checked; the next steps are an
   application-sensitive charge for residual control (`remainder.md`), which
   no structural count supplies, and a formalization of residual tracing.
   The 162's reader is on the fork's golf branch (tromp/AIT#13): `int.lam`
   162, `uni.lam` 184 / 172, `int4` 172, `ko2kp` 540, `nf` 535, `pairup_Kp`
   1270, each verified against its previous version (`classical/golf.md`);
   the PR's title and a summary comment carry the new table.
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
(`quantum/bisimulation.md`). The 162 would give a 168-bit `intL162 I`, not yet
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
5. Check the 168-bit `intL162 I` against the qBLC self-interpretation contract
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
  `golf` branch is tromp/AIT#13, rebased on upstream master; `uni-rs` carries
  the drafted `uni.rs` PR (`contrib/PR_KIT.md`), not yet opened.

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
