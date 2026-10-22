# Floor38 result

**Latest follow-up completed:** the global handwritten floor is now
**40 bits**. The appended floor-40 section gives the literal-interface
proof, complete size-39 inventory, exclusions, and formalization boundary.

**Every exact closed-source self-interpreter has at least 38 BLC bits.**
All thirteen formerly residual 37-bit terms are now excluded by complete
Lean theorems against `IsSelfInterpreter`, and the 676-layout completeness
argument survives independent review.

The global numeric theorem remains a handwritten theorem with checked
components. Its classification uses the established width obstruction and
37-bit floor, the reviewed literal-first-binder floor of 39, the previous
615 positive finite checks and 48 infinite invariants, and the thirteen
new Lean exclusions. It is not represented here as a fully formalized
38-bit size theorem.

No complete interpreter was constructed. There is no new battery, polish,
upper-bound, or 162-bit-optimality claim.

## Every residual

All counterexamples use the closed identity source, its exact `0010`
quotation, and rigid independent continuation and suffix. Each invocation
has no normal form; the required output `C (lambda z.I) R` is normal.

| IDs | Proof | Status |
|---|---|---|
| 448, 449, 454, 455, 472, 473, 478, 479 | A rank-zero macro grammar always has a saturated head redex and preserves rank. | Full Lean realization and eight `not IsSelfInterpreter` theorems. |
| 460 | `N J(N) V ->^5 N J(N) (J(N) V)`. | Parametric identity and complete exclusion in Lean. |
| 461 | Closed active grammar with canonical `N J(X) ->^5 F(X)`; a nonempty arbitrary trailing list stays protected. | Entire grammar, progress and complete exclusion in Lean. |
| 466 | Closed core T satisfies `T ->^8 T J(T) T`. | Exact prefix/cycle and complete exclusion in Lean. |
| 467 | A 95-node closed core has an 18-beta-step prefix pump, reached after 17 beta steps. | Exact prefix/cycle and complete exclusion in Lean. |
| 572 | A 134-node closed core has a 55-beta-step prefix pump, reached after 77 beta steps. | Exact prefix/cycle and complete exclusion in Lean. |

`Residuals.lean` assembles the literal thirteen-term list into
`Blc.Round3Floor38.residuals_excluded`. `Checks.lean` additionally checks
all thirteen source lengths and closedness. The proofs do not assume any
engine verdict, successful bounded search, or eta conversion.

## Deliverables and evidence

* `proof.md`: definitions, all identities, all thirteen proofs and their
  exact checking boundary.
* `inventory-audit.md`: independent completeness review of 652+24 layouts,
  the earlier finite checker and 48 invariants, and the new size-38 inventory.
* `Proofs.lean`, `Checks.lean`, `RankRealization.lean`, `Protected461.lean`,
  `Residuals.lean`: kernel-checked development.
* `checks.json`: explicit cycle cores, beta paths and counts;
  `generate_checks.py` regenerates the fixed clauses without a layout search.
* `check_lean.py`, `lean-validation.json`, `*-final.log`: reproducible final
  two-thread Lean validation and axiom audit.

The original validation passed all five modules in 2.64 seconds total.
After the follow-up's small constructive proof correction, the collected
theorem's only axiom dependencies are `propext` and `Quot.sound`; there
is no `sorryAx`. The final extended validation is recorded below.

In the initial floor-38 work, computational exploration was on the thirteen specified terms,
their specific closed cores and the displayed identities. Diagnostic caps
remain labelled caps. No new candidate sweep or 676-case battery was run.
No command exceeded two minutes; Python used one thread and Lean two.
All writes stayed in this lane. Existing modules and canonical data were
not changed, and no other agent or external model was consulted.

## Initial size-38 proposal

The initial analytic pass proposed **1,014 layouts**: 828 with four
lambdas and 186 with one extra vacuous binder. The follow-up below makes
the preliminary pruning explicit and completes their adjudication.

## Follow-up: global floor 39, no residual size-38 layouts

**Every exact closed-source self-interpreter has at least 39 BLC bits.**
This is a handwritten numeric theorem with kernel-checked components,
not a fully formalized global size theorem.

The complete structural argument is in [inventory38.md](inventory38.md).
Exactly four live binders remain possible at 38. Closedness of the first
head argument forces `E=D N`, with one live duplicator binder in D and
the three width-chain binders in N. Minimality forces both operands to
be normal. The possible count triples reduce to 828 four-lambda layouts
and 378 layouts with one vacuous lambda: **1,206 raw layouts**. Positive
finite certificates remove 192, leaving exactly the proposed 1,014.
Five of those 192 need explicit head/payload certificates; the earlier
blanket structural description of that pruning was too broad.

The full partition is:

| Evidence | Raw layouts | Within the prospective 1,014 |
|---|---:|---:|
| positive finite certificates | 1,143 | 951 |
| full Lean exclusions of initially unresolved terms | 63 | 63 |
| remaining | **0** | **0** |

`Size38Sources.lean` checks all 1,206 literal sources for closure and
38-bit length. `Size38Finite.lean` kernel-checks all 1,143 positive
certificate predicates: actual reductions, chain/head facts, wrong normal
payloads, smaller reducts, or positive identity-invocation cycles. The
handwritten implications of those predicates are stated in
[proof39.md](proof39.md). They have not been assembled into 1,143 full
`not IsSelfInterpreter` theorems.

All **63** initially unresolved cases do have complete Lean exclusions,
collected in `Blc.Round3Floor38.Size38.initialResiduals_excluded`:

* **57:** a new, uniformly sound W/B divergence grammar, inspired by
  Tromp's syntactic oracle and proved independently of the engine.
* **1:** ID 723, a universal pump `T V ->^3 T (C V)`, reached by a checked
  seven-step prefix of the identity invocation.
* **5:** IDs 124,129,214,224,690, whose rigid first-payload head shapes
  cannot reduce to the identity source's required Church-false payload.

The exact ID/wire/theorem mapping is
[size38-ledger.json](size38-ledger.json), checked by `audit38.py` against
both the original and final ledgers. The raw classified-layout probe took
15.12 seconds on one thread. Its capped cases stayed unresolved until
the separate proofs above; no cap is used as an exclusion.

`Classical.choice` was removed from the old thirteen-term collected
theorem by making three impossible arity branches explicitly prove
`False` before `omega`. Both collected theorems and the W/B soundness
theorem now use only **`propext` and `Quot.sound`**. All **15 modules**
rebuilt successfully in **17.24 seconds total**, with two Lean threads
and a 110-second total deadline. See `lean-validation.json` and
`axiomaudit-final.log`.

For 40+, raw count growth looks manageable, but a new structural branch
appears at 39: literal lambda roots and five live binders are now allowed.
The four-live, four-lambda, seven-leaf slice alone has 1,036 layouts at
39 and 480 at 40; these are not complete next-size inventories. A useful
stronger lemma would exclude the saturated 39-bit literal interface:
its continuation is affine, occurs at index zero outside all internal
lambdas, and the four internal live binders already spend the remaining
minimum leaves and indices. Showing that this arrangement cannot both
parse arbitrary code and return the rigid suffix would raise that branch
to 40. A uniform exclusion of four-live-binder diagonal terms would
instead remove an entire application-rooted class. Neither stronger
lemma is claimed here; `inventory38.md`, section 8, gives the details.

All writes remained in `tmp/round3/floor38/`. Python work used one thread,
Lean at most two; no run exceeded two minutes. This follow-up checked only
the analytically classified layouts and fixed residual identities, with
no general sweep, external consult, or additional agent. Existing source
modules and canonical data were not changed by this lane.

## Follow-up: literal and global floors 40, no residual size-39 layouts

**Every exact closed-source self-interpreter has at least 40 BLC bits.**
Both requested parts are complete. This remains a handwritten numeric
theorem with kernel-checked components, not a fully formalized global
size theorem. The new completeness arguments are explicit but have not
received a separate review in this lane.

For a literal source `lambda c.B` at equality 39, c is affine and its
unique occurrence has index zero, outside every internal lambda. The
application context outside those lambdas has at most two closed
components. With one component P, the two possibilities are excluded
uniformly: `lambda c.c P` returns the whole input stream as remainder,
while the exact contract for `lambda c.P c` transfers to the smaller
33-bit P. Both semantic lemmas are proved in `Shapes39.lean`.

With two components, they are Delta and one of 84 normal three-binder
arguments N. All twelve contexts `lambda c.T(c,Delta,N)` are checked:
**1,008 layouts**, including `lambda c.c (Delta N)` and its relatives.
The two initially unresolved literal layouts now have full Lean
exclusions. This proves the literal-interface floor **40**. Full
classification and proofs: [literal40.md](literal40.md).

For application roots, the complete inventory is:

| Family | Layouts |
|---|---:|
| four live binders, four lambdas and seven leaves | 1,036 |
| four live binders, one vacuous lambda and six leaves | 324 |
| four live binders, two vacuous lambdas and six leaves | 804 |
| left three-use duplicator with a closed vacuous argument wrapper | 84 |
| five live binders, saturated L=5,V=7,X=3 | 1,416 |
| application-rooted total | **3,664** |

The fifth live binder's location gives a complete disjoint split into
36+252+936+192 layouts. The argument uses the unique index-two/index-one
width occurrences and closedness of every first-head spine argument.
It does not assume that the old two-operand classification continues to
hold. [inventory39.md](inventory39.md) proves the classification and
explains every insertion count and structural pruning step.

The combined **4,672-layout** ledger has **4,505 kernel-checked finite
certificate predicates** and **167 complete Lean exclusions**. The latter
comprise 149 W/B cases, nine exact identity cycles, and all nine initially
unresolved layouts. Those nine are:

* `literal:180`: the new protected-active-pair invariant in `Pair39.lean`;
* `literal:276`, `four:376,399,1000`, `five:312,553`: six exact prefix/pump
  proofs through the weak-head clock;
* `four:0`: a rigid continuation with seven arguments;
* `four:80`: a rigid payload shape incompatible with Church false.

The final residual set is **empty** in every source class. The nine full
theorems are collected as
`Blc.Round3Floor38.Size39Residuals.initialResiduals_excluded`.
[proof40.md](proof40.md) states all identities, fixed prefix/cycle sizes,
and the checking boundary; [size39-ledger.json](size39-ledger.json)
maps every part/ID/wire to its certificate or theorem. The global
classification and finite-predicate implications remain handwritten.

All **25** lane modules rebuilt successfully in **63.17 seconds** with
two Lean threads and a 110-second total deadline. The new collected
theorem, active-pair invariant, literal lemmas and cycle/W-reduct helpers
depend only on **`propext` and `Quot.sound`**. The three classified probes
each took under 0.4 seconds; the nine-case follow-up took 1.30 seconds.
Caps stayed labelled unresolved until replaced by proofs.

All writes remained in this lane, with no run over two minutes, no
general closed-term sweep, no external consult and no additional agent.
Canonical source and data were not changed by this lane.
