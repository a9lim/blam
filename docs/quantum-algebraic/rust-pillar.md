# Rust qALC pillar — implementation sketch

**Status: v3, spar-complete on thread `qalc-rust-pillar`, awaiting a9's
read before implementation.** Codex round 1 (2026-08-14): nine ranked
findings, all folded in v2. Round 2: "sound after three small
specification fixes; no architectural blocker" — v3 applies the three
(tick-carrier phrasing, column-commitment/trace-digest split, typed-error
discipline in ordering). Nothing in `src/` implements it yet.
`architecture.md` §7 remains the contract this sketch instantiates.

## 1. Scope and bar

Docket item 1 (`docs/STATUS.md`): implement the closed Gate-1/Gate-2 proved
surface as `blam::qalc` — the v1.43 kernel step, the composed full-NF
machine, the Gate-2 native-CNOT compiler and its step table, and the
semantic objects `U`, `μ_p`, `ρ_p`, finite `M`, `Ω_qALC` approximants —
with compiler-term/certificate pins and Python/Lean/Rust differential
fixtures. Census machinery comes only after exact differential agreement
(`architecture.md` §9 item 2). Scalar Capacity handling is engine
contract, not census scope (§3 below).

The Python surface in `qalc/` stays authoritative; the Rust pillar is a
**differential port, not a re-derivation**. Frozen evidence — the 19+1
canonical kernel certificates, the Gate-2 row words, the 917-state shard
values — enters Rust as pinned data, never as re-discovered output.

Verification bar per phase: the repo standard (`cargo test --release
--all-features` and plain, classical census spot-check bit-identical)
**plus a qBLC row check** — the stable columns of
`blam q census 4 32 --threads 1` against `data/quantum/census_table.txt`
— since `scripts/spot-check.sh` proves only classical rows (review
finding 9). At completion, the nine-clause battery of `architecture.md`
§7 (norm equality, μ monotonicity, orthonormal columns, effect-free
conservativity, HH, H–NOT′–H, the negative witness, engine isolation
both ways).

## 2. Module tree

```text
src/qalc/
  mod.rs         pillar surface; the isolation statement
  term.rs        Var/Lam/App/Gate{'h','t','c'}, 1-indexed de Bruijn,
                 paths over {f,a,b}; subterm/level/binder_path
                 (lam_iam.py port — qALC-local, not shared with blc)
  mark.rs        the state-grammar alphabet: bullets (plain + BA), lp,
                 γ/μ/A/α (epoch trees), ρ, frames, KS heads, the Gate-2
                 marks (CGAM/CMU/CP/CH/CD/CQ/CSTAGE, port tags), RB/RBL,
                 holes — plus the ordering key renderer (§4)
  state.rs       Run/RunDone/Done and the composed NF states; canonical
                 RS/KS discipline
  amp.rs         Amp: canonical-invariant wrapper over
                 quantum::scalar::Dw (§3)
  kernel.rs      the v1.43 step table (kernel.py port)
  readback.rs    composed full-NF readback controller + BA adapters +
                 typed exception totalization (readback.py port)
  shadow.rs      Gate-2 native-CNOT composed step table + custom
                 predecessors (gate2_cnot_shadow.py port; name kept as
                 source pin). Step-table selection is an explicit
                 machine-kind value threaded by callers — the pillar has
                 NO mutable dispatcher (review finding 3; the Python
                 surface's ambient `configure()` is a Python-only shape)
  compiler.rs    Circuit/Op/Kind, compile_circuit, recognize_compiled,
                 compiler_certificate, the literal row words
                 (gate2_compiler.py port; row constants shared verbatim
                 with the Lean side)
  gate2check.rs  the Gate-2 finite checker surfaces: shadow WF and
                 structural admission predicates
                 (gate2_shadow_wf.py + gate2_admission.py ports; the
                 Python batteries remain the audit oracles)
  admission.rs   Gate-1 finite-carrier admission + the v1.43 RRI direct
                 check (readback_certify.py + rri_direct.py port;
                 phase 4)
  wf.rs          the W0–W9 subset admission validation needs (phase 4;
                 scope statement in §8)
  semantics.rs   sectors and semantic objects. Through phases 1–3 only a
                 crate-private PinnedSector (fixture-fed certificates,
                 explicitly unchecked) exists; public Sector/select/U
                 land in phase 4 behind real admission (review finding 2)
  wire.rs        the versioned typed fixture wire format + SHA-256
                 digest chains (§7)
src/hash.rs      the vendored SHA-256 byte-hashing core hoisted from
                 cli/ckpt.rs into the library (pure code motion; the
                 published-vector tests move with it; the
                 filesystem-facing sha256_16(path) wrapper stays in
                 cli::ckpt; checkpoint output unchanged)
```

Drivers: a `blam qalc` subcommand group (`run`, `gram`, `compile`,
`fixtures`), compiled by default like the other pillars. Certificate
*discovery* (`certify.py`'s `discover_total`) is deliberately **not** in
the tree at any phase: canonical certificates are pinned data, the
compiler certificate is a syntax walk, and the hybrid pipeline stays a
Python/lab instrument — the same trusted-checker/untrusted-search split
`classical::certificate` already uses.

## 3. Amplitude ring: reuse `quantum::scalar::Dw`, wrapped

`qalc/dw.py` names itself the reference analogue of
`blam::quantum::scalar::Dw`; the Rust ring exists, is battle-tested, and
adds no dependency. Python's ring reduces eagerly on add/mul; Rust's
deliberately does not (`scalar.rs` non-canonical representation is
qBLC-census contract). Reconciliation is a qALC-local newtype, never a
`scalar.rs` change — and no trait impls or helpers are added to `Dw`
itself (review finding 9).

**`Amp` invariant: stored ⇒ canonical (reduced).** Field private; no
public `raise_k` (intentionally noncanonical, never a stored result).
Operation table (review finding 4):

- `add`, `sub`: underlying op, then reduce;
- `mul`, `mul_omega`: underlying op (already reduces); defensive
  reduce harmless;
- `div_sqrt2`: reduce after;
- `neg`, `conj`: canonicality-preserving on canonical input; defensive
  reduce anyway;
- `norm_sq`: fallible, reduced through `mul`.

Two constructors, kept distinct: an internal *canonicalize-result*
constructor for ring ops, and a strict *decode-asserted-canonical*
constructor for fixture input that **rejects** noncanonical raw tuples
rather than normalizing them — a normalizing decoder would hide exporter
defects.

**Capacity discipline** (review finding 8). i128 overflow or a `K_CAP`
exit is a typed Capacity outcome — loud, never a wrong number. Each
global evolution step is **transactional**: any branch overflow discards
the partial target map and returns typed Capacity for the step; source
iteration is deterministic so the Capacity boundary is reproducible.
Edge tests at `k = K_CAP`, `i128::MIN` negation/conjugation, alignment
cancellation, and overflow in multiplication intermediates. Runtime
`Amp` stays distinct from the aggregate `ExactSum`/Kraft-weight layer
that `finite_M`/`Ω_qALC` use. Measured headroom at reference scale
(review telemetry): the twenty kernel programs and thirty Gate-1 cores
peak at stored `k = 3`, the configured Gate-2 runs at `k = 4`, all with
coefficient magnitude 1 — enormous margin under `K_CAP = 128`, but
arbitrary compiled circuits can eventually reach Capacity, so the typed
path is contract, not decoration.

## 4. Canonical order ≠ interchange format (split after review)

Python state identity depends on repr-keyed canonical sorts:
`rs_insert` orders frames by `repr`, and certified `KD` bundles sort
their keys by `repr`. The reference is frozen — Rust must reproduce that
exact order or every RS-carrying state diverges structurally.

v1 proposed one pyrepr codec for both ordering and fixture interchange;
review finding 5 splits it so a single parser bug cannot simultaneously
corrupt semantic ordering and fixture identity:

- **`PyReprKey`** (in `mark.rs`): a narrow, iterative renderer of the
  byte-exact Python `repr`, scoped to exactly the two **state-identity**
  sorts: frames inserted into RS, and instance keys sorted inside KD
  bundles (round-2 audit: no other state-identity sort exists; merely
  residing in KS needs no repr ordering). Every other `key=repr` use in
  the reference is nonsemantic and routes elsewhere — Gram unordered
  pairs and carrier digests through the wire encoding, certificate items
  through a certificate-specific canonical order, discovery ordering
  Python-only since discovery is not ported. The inventory is pinned by
  a golden corpus. Ordering = byte-lexicographic comparison
  over UTF-8, which equals Python's code-point `str <` (general UTF-8
  property; verified on this alphabet, whose one non-ASCII member is
  the BULLET `'•'`, reprd unescaped; singleton tuples carry Python's
  trailing comma). Sorting must be stable, as Python's is.
- **`wire.rs`**: a separate versioned, strictly typed, length-delimited
  fixture format for full states — including the composed strata
  (NFRun/Zipper/TerminalGarbage/BinderMark, `Hole.armed` booleans,
  `None`, rule strings, error variants) that never enter any sort. The
  measured kernel tuple grammar (6,392 reachable suite states scanned:
  tuples, strings, small ints, `None`) is the easy half; the wire
  format's job is the full normalized grammar with no repr ambiguity.

## 5. Certificates: pinned data + ported checkers

- The 19 frozen canonical kernel certificates and `dupcall`'s canonical
  `None` ship as fixture data. Through phases 1–3 they feed the
  crate-private `PinnedSector` — typed as unchecked, never exposed as a
  semantic `Sector` (review finding 2).
- `compiler_certificate` and `recognize_compiled` are deterministic,
  terminating, cap-free syntax walks — ported in phase 3, which may
  expose a `StructuralAdmission` for recognized compiler images.
- The total selector — compiler image first, else Gate-1
  admission/conservative fallback — plus public `U`/`select` land only
  in phase 4 with real admission (carrier closure + RRI direct check,
  mandatory per v1.43).

## 6. Phasing (review-corrected)

Each phase merges only inside the §1 bar; exit criteria are
differential, not "looks done".

- **Phase 0 — schema and codec.** `term`/`mark`/`state`/`amp`, the
  `PyReprKey` renderer, the wire format, strict codec tests, the SHA-256
  hoist, and the Python-side exporter with its **dual-evaluator
  cross-oracle**: regeneration runs both the Fraction and Dw evaluators
  on the twenty h-only programs and asserts full state→amplitude map
  equality at every transition (verified to hold today), then emits
  Dw payloads. Dw-only `T0`/`T1`/`HTH0` fixtures cover the T phase the
  Fraction suite never exercises. Exit: codec round-trips byte-clean;
  exporter self-checks green.
- **Phase 1 — kernel.** `kernel.rs`; **complete-carrier column
  fixtures** — `source → exact ordered [(coefficient, rule, target)]`
  over the accepted finite carrier through the configured tick depth,
  zero-amplitude branches included (review finding 1; sparse evolution
  traces alone cannot see an unvisited column; `Done` ticks forever, so
  the carrier is finite only through a stated tick depth, and the
  universal `Done → Done` tick row gets its own separate test) — plus
  dynamic evolution traces as the separate interference/merge test,
  native Gram, T probes. Exit: all twenty suite programs
  column-identical and trace-identical; zero Gram defects; the
  kernel.md §11 HH trace reproduced row for row.
- **Phase 2 — composed machine.** `readback.rs`, BA adapters, typed
  totalization, conservative-fallback evolution (crate-private). Exit:
  Gate-1 30-core complete differential — all 7,507 states / 7,417
  columns, predecessor inverses, totalization behavior — via fixtures
  modeled on `QalcComposedDifferentialExport.py`. No public semantic
  `U`.
- **Phase 3 — Gate-2.** `compiler.rs` + `shadow.rs` + `gate2check.rs`.
  Exit is the full Gate-2 battery surface (review finding 7), not
  carrier digests alone: compiler/recognizer retraction and exact
  term/certificate pins; all 43 width-two circuits through length two;
  compiler-specific shadow WF; certificate transparency and
  nonvacuity; custom predecessor inverses and global range separation;
  exact Gram; the common input cut containing every basis word
  (support `2^width` asserted); the exact row schedule, common
  runtime, and no earlier halt; ideal output columns and the one
  literal terminal-garbage block; selector-bypass and mutation
  controls; the exact 917-state eight-shard rows.
- **Phase 4 — admission and semantic objects.** `admission.rs` +
  `wf.rs` subset + RRI direct check; total combined selection; then
  public `U`, `μ_p`, `ρ_p`, `finite_M`, `Ω_qALC` approximants; the
  nine-clause battery as crate tests. Exit: battery green in both
  feature shapes; STATUS/docs updated; ledger entry.

## 7. Differential harness

- Fixtures pin the **Dw evaluator** (`dw_machine.evolve_dw`); the
  Fraction evaluator participates at regeneration time as the
  cross-oracle (§6 phase 0). The primary pin is **columns** (complete
  carriers); evolution traces are the secondary, interference-sensitive
  pin.
- **Exporter** in `qalc/` beside the batteries (Python, stdlib only),
  writing `tests/qalc/` fixtures. It must install the Gate-2 dispatcher
  **explicitly** (the accepted batteries' `configure()` discipline),
  assert input-cut support `2^width` for compiled circuits, and
  generate Gate-1 and Gate-2 fixture families in isolated subprocesses
  — review finding 3 measured the failure: without configuration a
  width-4 preparation reports support 2 instead of 16 at the input
  cut, silently.
- **Two distinct digest roles**, both SHA-256 (the hoisted in-crate
  implementation; hashlib on the Python side — the convention the
  existing qALC tooling already uses), never conflated: **column-stream
  commitments** hash the canonical full column stream of a complete
  carrier and are the primary pin for carriers too large to check in
  whole (Toffoli 14,809, nonlinear-reuse 30,393); **dynamic trace
  chains** hash per-step evolution (schema/version tag, program and
  certificate identity, step number, support count, previous digest,
  length-prefixed row stream) and are the secondary interference pin —
  a trace digest can never substitute for the column commitment. Full
  maps for small programs and all finals. On mismatch the exporter
  re-emits the full object at the failing point.
- No Python at `cargo test` time (the `tromp_vectors` convention):
  fixtures are checked in, regeneration is byte-checked by the qALC
  path-scoped workflow.

## 8. Risks and open questions

- **Sort-site inventory**: `PyReprKey`'s domain is the two
  state-identity sorts (§4), pinned by a generated corpus. An entry
  outside the renderer's grammar surfaces as a **returned typed error
  or is impossible by construction of the domain type** — never a
  panic inside `Ord`/`sort_by`, where unwinding is not an option.
- **wf.py's host-boundary clauses** (hash/eq/repr depth limits, hostile
  `__hash__`, exact-type dispatch) are Python-host-specific. The Rust
  W0 needs an explicit scope statement mapping each clause: typed enums
  make several vacuous by construction — *stated*, not silently
  dropped.
- **State representation cost**: reference-scale states are small;
  phase 0 uses plain owned values (`Vec`/`Rc` where sharing is free).
  Hash-consing and persistent structures are allowed below the
  semantic-identity line (`architecture.md` §7) and deferred until a
  measured need.
- **`blam qalc` vs shorter subcommand name**: bikeshed, deferred.
