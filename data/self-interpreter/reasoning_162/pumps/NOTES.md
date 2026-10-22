# Pumps lane

Read BRIEF, the proof lane's REPORT/PROOF/NOTES/checker, and floor38's clock/invariant proofs. Fixed list: 11,109 capped, 4,417 beta-normal. No enumeration performed.

Initial discovery tools: `classify.py` lambda-lifts source lambdas to finite macro rules; a macro step is a positive weak-head beta segment. It attempts substitution-stable first-order pump patterns. `trace.py` displays the reductions. A 50-term pilot (<1 second) found no simple fixed-lasso certificates: growing trailing spines and recursively wrapped streams prevent the initial matcher from seeing a fixed loop.

First family candidate: V = lambda u. u list u. On the identity probe, the active terms become NEXT(c), I, and V(-) wrappers, with a growing protected trailing spine. The number of V wrappers peeled between NEXT calls grows, so the invariant must cover V* NEXT, not extrapolate a constant trace length. No proof claimed yet.

`flow.py` implements conservative finite 0-CFA on the literal source; the 50-term pilot is inconclusive for all 50 (too much parser-continuation merging). This is discovery only, never a refutation verdict.

Family W/NEXT: `H ::= NEXT(c) | W(H)` with `W(s)=lambda u. u s u`.
Invariant configurations are `s I t Gamma` with `s,t in H` and arbitrary
trailing Gamma. The two steps are
`W(s) I t Gamma ->+ s I t Gamma` and
`NEXT(c) I t Gamma ->+ t I W(t) NEXT(K(c,I)) Gamma`.
The latter is the parser's exact unfold with this arm. No payload or trailing
term reaches the head. `PumpLemmas.wrapper_no_nf` checks the grammar progress
and clock descent in Lean, conditional on these two concrete beta equations.
`family_pump_no_nf` checks the general substitution-family/protected-tail
argument. Lean passed in 0.204 seconds; axioms only propext and Quot.sound.
Concrete macro realization is presently a separate handwritten/finite-check
obligation, not claimed as a literal-source Lean theorem.

Finite regular grammar checker: `grammar.py` merges lambda capture fields by
a finite context, keeps a known prefix of the pending spine, and saturates
reachable abstract configurations. Missing known operands, rigid heads, and
resource caps are UNKNOWN. A completely saturated graph with no terminal
state proves an infinite concrete head reduction by forward simulation.
First 1,000 normal arms: 515 grammar certificates, 172 substitution pumps,
4 finite wrong-head/value certificates, 309 still unresolved. `run.py`
examines demanded subterms of the expected exact normal form too, so a pump
in the returned value is distinguished from divergence at the root.

CRITICAL AUDIT FINDING. The supplied `holecheck.rs` rule for `G X Y Z` is
wrong for arms mentioning x. The literal generator is
`G = lambda x. (lambda p c s. B(s,c,p,x)) (x x)`, hence
`G X c s ->^4 B(s,c,X X,X)`, not `B(s,c,X X,G)`.
The supplied code substitutes G at lines 197-203; our initial macro compiler
copied that mistake. Fixed `classify.py`'s G rule to pass `var(0)` as the x
capture. All pre-`correct-*` artifacts are DISCOVERY ONLY and cannot certify
arms mentioning x. The W/NEXT lemma is unaffected (its V ignores x).
A symbolic witness with V=x and s=I gives correct `G Q C I ->^6 Q NEXT`,
while the erroneous unfold gives `G NEXT`, which weak-head reduces to an
abstraction. Thus the claimed soundness of the prior checker is false, and
even closing this capped list does not establish the full million-arm theorem.
Only fixed-list work continues; the forbidden fresh enumeration is not run.

The W/NEXT family now has a COMPLETE literal-source Lean realization:
`WrapperConcrete.not_selfinterpreter` excludes the actual 147-bit machine
whose V wire is `0001011011010` (lambda u. u list u). It proves the two
parametric reduction laws by kernel replay and substitution, proves the
25-step entry from the identity contract, and applies the invariant. No
premises about engine verdicts. Lean passed in 0.626 s; only propext and
Quot.sound. This strengthens the earlier conditional wrapper lemma.

All 4,417 corrected normal arms after finite beta simplification:
2,689 regular grammars, 475 pumps, 930 finite wrong results, 323 unknown.
`normal-secondary.json` is the current merged manifest. The independent
checker `verify.py` validates graph closure and rule-image language inclusion,
replays pump patterns, and checks every macro equation using a separate
literal de Bruijn reducer (`lambda_check.py`). First 830 original corrected
certificates passed that audit (0.712 s). Every normal arm's compiler rules
also passed: 58,118 symbolic macro equations, 1.003 s.

Normalization of the entire fixed 11,109 list independently recovered the
4,163 expansions to normal capped arms. A further 2,453 reach other normal
forms (includes 96 of the reported 172 large cases); 76 stay non-normal.
There are 823 additional unique residuals. Direct corrected checks certify
696 grammars, 3 pumps and 114 finite wrong results among these; 10 remain
unknown (`extra.json`). No new arm enumeration occurred.

Call/return grammar family: `eval_grammar.py` retains arguments as unevaluated
grammar labels and retains every argument of each partial application. It
constructs a finite closed solution of abstract weak-head evaluation equations;
an EMPTY root value set certifies no weak-head normal form. This avoids the
bounded pending-spine loss in the first grammar analysis. The distinct checker
in `verify.py` verifies all value-set closure constraints and every rule-image
language inclusion; it does not assume discovery reached a least fixed point.
The first 57 such certificates passed this independent audit in 0.080 s.
Across the 323 normal residuals it certifies 298; 25 remain.

The fixed-list raw macro compiler and finite certificates now cover 4,094 normal
arms and all 4,094 passed independent checking (4.072 s), before adding the
298 call/return certificates. The input NEXT byte string is also pinned in
Lean by `WrapperConcrete.next_wire`; the 13-bit arm is pinned by `arm_wire`.

Four more late substitution pumps were found with exact DAG sharing, including
entries at macro steps 1,020, 680, 30, and 360. `dag_pump.py` uses exact
hash-consing (structural node identities, not hash equality) and verifies a
finite substitution-stable loop. Three are normal arms and one is an extra
normalization residual. The earlier expanded-tree cap would miss their entry.
Unbounded growth or a long trace still never counts as a certificate.

Finite wrong-head family now also has a literal-source Lean witness:
`WrongHeadConcrete.not_selfinterpreter` excludes the 147-bit machine with
`V = x list list`, wire `0101111101010`. On the identity-program probe it
reaches rigid remainder R with SIX arguments in 38 actual beta steps.
`head_beta`/`head_betas` and confluence prove this incompatible with the
required C head. Thus an original capped "pump" really terminates at a wrong
head after correcting the generator substitution. This proof passed in
0.636 s with only propext and Quot.sound.

Final stronger prefix/pattern attempts produced no further certificates.
Current exact coverage: 11,077 / 11,109 original capped arms certified;
32 original arms remain. They normalize to 29 distinct residuals, including
21 of the 4,417 normal arms. `coverage.json`, `members.tsv`, and the three
`unresolved*.bits` files are the complete ledger. All 5,211 distinct certified
residuals passed the independent final audit, including 8,109 explicit beta
bridge steps. No already-refuted verdict from the faulty original checker
was used as a proof premise. The original million-arm lower-bound conclusion
remains unavailable, independently of the 32 residuals, because of the
kernel-confirmed generator-unfolding bug.

Additional independent checker audit: `matches_bug.rs` reports Some(false)
for the beta-equal closed terms `lambda z x. x (I I) (I I)` and
`lambda z x. x I I`. `GeneratorAudit.comparison_beta_equal` checks the two
contractions in Lean, with no axioms. Cause: `seen` is shared across the
independent argument comparisons. Whether this exact failure is exercised
by the original eight expected normal forms is not established; the report
keeps that scope distinction explicit.

A frozen pre-existing lab-feature binary was used for one native certificate
check on the 29 final residual invocations (two threads, 0.28 s). It found
zero certificates in its four supported classes; all stay unresolved.
No engine fate was added to the final ledger from that negative probe.
REPORT.md and the exact unresolved table are written. Final source/Lean
verification follows; no broad enumeration or repository mutation occurred.

Final audit completed: 5,211 residual certificates, 11,077 original arms, 8,109 beta bridges, and 68,319 symbolic macro equations checked in 8.946 seconds. All four Lean modules passed; lean-validation.json records the final run. No pumps-lane processes remain. All writes by this lane stayed in its assigned directory; other lanes have concurrent tracked-tree changes.
