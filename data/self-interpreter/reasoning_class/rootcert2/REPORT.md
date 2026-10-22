# rootcert2 — 653 Lean refutations; five engine-only refutations

**All 658 supplied sources are refuted at the requested mixed evidence standard.**
There are **653 direct original-source Lean proofs** and **five frozen-engine
DIVERGE verdicts on closed zero-law instances**. The five engine cases remain a
**formal proof gap**: this is not a claim that all 658 have Lean certificates.
Every original ID, exact price, source, helper and certificate is in
`MANIFEST.tsv` and `manifest.json`; `HELPER_PROOFS.tsv` groups the 93 helpers.

Labels: **[L]** kernel-checked; **[C]** computer-checked evidence. No assertion
of exhaustive source generation is added here. The input catalogue is exactly
rootnl's `SURVIVORS.json`, SHA256
`302b9f8f050f39a0d05583a9d7fa72dd780fa26930b76979a36c31ceb3c1ff6c`.

## 1. Complete interpreters and controls

None built. No candidate survives the refutations, so there is no splice,
interpreter battery, polish result or sub-162 claim.

`controls.py` checks the existing 162 and 165 readers on zero and lengths 1–8,
at weights 46 and 49. The flow analysis retains the required head/arity of
both known readers on zero and length one. `Controls.lean` checks positive
annotations for rigid heads and rejects deliberately missing heads or wrong
arities. These are checker controls, not new interpreter correctness proofs.

## 2. Exact identities and proofs

### 2.1 Recursive flow typing preserves every beta reduction [L]

`Flow.lean` defines a finite-label type assignment. Each lambda label has an
argument set and result set. Variables must remain within their assigned
sets. An application checks every possible function label: a lambda label
requires its argument to fit the declared domain and its result to fit the
application's output; a rigid head propagates through application. A lambda
body must satisfy the declared domain/result assignment.

The domain/result tables may be cyclic. The proof imposes no normalization,
acyclicity or source-minimality hypothesis. `shift_typed`, `subst_typed`,
`beta_typed` and `betas_typed` prove the ordinary de Bruijn substitution and
subject-reduction statements. In the rigid environment, typing `r j` forces
`r` into the output set. Therefore an annotation excluding `r` refutes the
zero law, after any explicitly checked finite beta prefix.

`Arity.lean` additionally records rigid-head arity, saturated at two; zero's
required head/arity is exactly `(r,1)`. `Unary.lean` saturates at three and
requires `(c,2)` for the length-one output. Saturation preserves the
application transition. Both modules independently kernel-check substitution,
subject reduction and their finite checkers.

The Python fixed-point analysis is untrusted discovery. Every successful
annotation is replayed by the proved Lean checker using `decide`, together
with a checked reduction from the literal original source. It need not be the
least flow assignment. No exhausted search or failed normalization is used
as a premise. If a matching normal form existed, subject reduction would
force the missing head/arity into the checked output set.

This supplies **583 original-source proofs**:

| Route | Sources |
|---|---:|
| Flow after a short weak-head prefix | 515 |
| Flow after internal beta developments | 48 |
| Flow after small subterm simplifications | 2 |
| Zero-law head plus arity | 6 |
| Length-one head plus arity | 12 |

The 571 zero-law proofs and twelve length-one proofs require no minimum-reader
assumption. `Reader` is `Blc.SelfintClass.Reader`, whose scope condition and
zero/one instances are weaker than the full all-length reader contract.

### 2.2 Finite head-prefix returns [L]

The copied, rechecked `Certificates.lean` supplies rootnl's weak-head-clock
rules. A genuine head beta step followed by ordinary beta reductions back to
the same head prefix, possibly with additional arguments, contradicts a
finite weak-head clock. Clock monotonicity permits internal reductions during
the return. **33 sources** have these explicit certificates in
`MixedCases*.lean`.

This only transports divergence through demanded head positions. An
irrelevant looping operand is not treated as a divergent whole term.

### 2.3 A generic three-copy recurrence [L]

`Tri.lean` defines

    A_D = lambda x y. x D
    T_D = A_D A_D A_D.

Its exact hypothesis is the checked identity

    T_D ->weak^2 A_D T_D.

Under that hypothesis, for every term z,

    T_D z ->weak^4 T_D (D[T_D/x, z/y]).

The substitutions are hygienic de Bruijn substitutions in the theorem.
A hypothetical finite weak-head clock strictly decreases through four steps
and returns to the same family, so no such clock exists. Pending arguments
and checked beta replay preserve the exclusion; the module also includes
strict-context transport.

Five literal helper groups satisfy the hypothesis, with D a three-leaf
left-associated application tree over x and y. **33 original sources** are
proved in `TriCases00.lean` through `TriCases04.lean`. For example,
`A = lambda x y. x (x y y)` gives `T z ->weak^4 T (T z z)`.
This is an all-z divergence theorem, not a finite-loop guess.

### 2.4 Triple-iterator owl trees [L]

`TripleOwl.lean` handles

    A = lambda x y. y (y (y x))
    a_0 = A,  a_(n+1) = A a_n
    G_n = lambda x. x (x (x a_n)).

It proves `A a_n ->beta* G_n` and `G_n A ->beta* G_(n+2)`.
Every nontrivial application tree over the G_n has no weak-head clock.
The proof combines strong induction on that clock with structural descent
through a function subtree. At a leaf application, either the residual is
already a nontrivial tree, or the displayed identities return it to one.

`A A (A A)` reduces to `G_0 G_0`, refuting source IDs **446 and 447**,
with every pending spine, in `TripleOwlCases.lean`.

### 2.5 Nested owl trees [L]

`NestedOwl.lean` handles

    A = lambda x y. y (x (y x))
    G_t = lambda x. x (t (x t)).

Allowed trees start with `G_A`, permit `G_t` whenever t is an allowed tree,
and permit application of two allowed trees. The exact rule is
`G_t x ->weak x (t (x t))`. When t is A or an allowed tree,
`G_t A` beta-reduces to another allowed tree (`G_A_tree`).

These identities prove that every nontrivial allowed application tree has no
weak-head clock. Again `A A (A A) ->beta* G_A G_A`. Source IDs **482 and 483**
are refuted with arbitrary pending arguments in `NestedOwlCases.lean`.

The owl-tree proofs adapt the earlier rootcert owl argument, extending its
atom families to these two helpers. The clock machinery and finite-cycle
checker retain their original namespaces and provenance.

## 3. Exact catalogue closure and evidence limits

### 3.1 Source partition

| Rootnl source cell | Sources | Lean | Engine only |
|---|---:|---:|---:|
| `Cs_x_1_1` | 203 | 203 | 0 |
| `Cs_x_1_2` | 126 | 126 | 0 |
| `Cs_x_1_3` | 5 | 5 | 0 |
| `Cs_x_2_1` | 108 | 108 | 0 |
| `Cs_x_2_2` | 202 | 197 | 5 |
| `Cs_x_2_3` | 2 | 2 | 0 |
| `Cs_x_3_2` | 12 | 12 | 0 |
| **Total** | **658** | **653** | **5** |

Combining this result with rootnl's reported partition gives

    188,718 = 149,789 finite failures + 38,924 Lean refutations + 5 engine refutations.

Rootnl's preceding 149,789/38,271 results and its completeness argument were
read, not rerun here. Thus this closes its four-use inventory at a mixed
finite/kernel/engine evidence standard, under its inherited global-minimum,
weight, hole-depth and source-shape hypotheses. It is not a fully formal
exhaustive lower bound. It does not close the lower-multiplicity root-let
inventories or establish 162 optimality.

### 3.2 The five remaining Lean obligations [C]

All five have weight **44**, and share

    H = lambda x y. x (y (y x)).

| ID | Exact source, abbreviating only the displayed helper |
|---:|---|
| 474 | `(lambda x. x x (x x)) H j c` |
| 492 | `(lambda x. x (x x) x) H j c` |
| 493 | `(lambda x. x (x x) x) H c j` |
| 506 | `(lambda x. x x x x) H j c` |
| 507 | `(lambda x. x x x x) H c j` |

`ENGINE_ONLY.tsv` gives the literal sources, source indices and closed wire
encodings. `deep.out` reports **DIVERGE bb-engine for all five** on
`lambda c j r. R Z(r)`. The variables are bound as rigid parameters; they
were not specialized to convenient closed values.

The frozen binary was copied into a fresh file before use. Its SHA256 is

    00883f147c7128a1642f323920deef23f0af9c8b742dadb3c0f30cf5478bfaa2

The exact command and resource record are in `deep.resources.json`:
`--threads 2 --budget1 64 --budget2 65536 --bb-cap 500000 --rescue 100000
--work-mult 2 --probe-fuel 65536 --no-oracle`. The five-source run took about
0.066 seconds and 6.8 MB sampled RSS. `--no-oracle` disables the ladder's
oracle prefilter, not every internal escalation check. These are engine
verdicts, not Lean proofs.

The initial 658-source engine audit reports 20 HALT / 518 DIVERGE / 120
UNKNOWN. Every HALT and UNKNOWN is resolved by a Lean refutation or the final
five-source engine audit. Engine rows are matched by their complete wire
encoding; parallel completion order is never used as a source identity.
UNKNOWN is never counted as a failure.

### 3.3 Verification and reproduction

`verification.json` checks all 658 original source identities, exact prices,
the disjoint 653/5 partition, individual theorem declarations and axiom-log
entries, current Lean-source hashes, successful resource records, input/output
wire multisets and exact wire-to-verdict matches. All **103 required Lean
modules** pass; every printed source theorem uses only **propext and
Quot.sound**, with no `sorryAx` or new axiom.

Every Lean file has a 110-second watchdog, 1.8-GB sampled-RSS cutoff and
`-j2`. The final measured maxima are in `verification.json`; they remain
below the requested two-minute/two-GB limits. Complete finite discovery
checks stayed below 100,000 candidate/rewrite states, two minutes and one GB;
the longest recorded source-analysis check took 36.86 seconds and about
113 MB. Capped or unsuccessful diagnostics contribute no certificate.
The source inventory itself contains only 658 terms; no new reader inventory
was enumerated.

From the repository root:

    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/rootcert2/run_all.py
    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/rootcert2/engine_deep.py
    PYTHONDONTWRITEBYTECODE=1 python tmp/round4/rootcert2/validate.py

`run_all.py` rechecks every required module, reruns controls and the manifest
audit, then removes build-only `.olean`/`.ilean` files. The saved source
certificates make heuristic rediscovery unnecessary. Discovery scripts and
intermediate data remain for inspection; `NOTES.md` records unsuccessful
routes and the engine-order audit correction.

All writes stayed in this lane. No tracked repository file was edited, no
commit or cargo build was performed, and there was no delegation or
consultation back.

## 4. Honest read and next proof step

The useful new technique is a small, proved control-flow type checker:
583 source refutations follow from finite invariants rather than normalization.
The 70 divergence proofs use finite head-prefix returns or infinite families.

The precise remaining formal task is one helper, H above, across three
four-copy application shapes and two pending-argument orders. The frozen
engine already rejects every instance. A weak-head-clock invariant that
tracks the growing nested H applications would remove all five external
engine dependencies at once; the tested short fixed-core recurrences did
not supply that invariant.

There is no surviving sub-162 candidate in this catalogue. This result says
nothing new about where a lower-multiplicity root-let reader might hide.
