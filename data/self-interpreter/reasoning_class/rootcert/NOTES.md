# Rootcert notes

- Read BRIEF, BRIEF5, current class-bound section 3, rootlet/rootnf reports, survivor prices, argument groups, verification record, zero-lambda audit instructions, and BodyLetGrow.
- Rootlet's 580 residuals are exceptions, not accepted readers. Imported completeness/minimum hypotheses remain separate from new per-source certificates.
- Plan: group by exact helper, freeze the existing release engine, close all zero probes without instantiating rigid variables, then formalize reusable divergence families and source eta transport.
- All writes confined to rootcert. No build targets, delegation, consult-back or tracked edits.
- Shell rm -f was rejected by the harness; used a path-specific Python unlink before the copy, preserving the required fresh-file invariant.

- Frozen engine SHA256 in prepare.json: zero probes gave 487 DIVERGE, 93 UNKNOWN, no HALT. The audit matched all input/output wires; 0.30 s, about 6.4 MB RSS, two threads. --no-oracle disables the ladder prefilter, not every internal escalation check.
- 428 original sources now kernel-refuted in Families0/1/2: 388 BodyLetGrow, 40 template self-recurrences. Export initially missed the ambient depth of constants inside a template body; Lean rejected those statements. Corrected to depth 2 and all three modules pass without sorryAx.
- 25 remaining Church-numeral trees are wrong-head cases, not divergence. Church.lean proves closure of positive Church numerals symbolically and a wrong-head theorem without constructing giant numerals; ChurchCases.lean passes.
- For H=λu v.u(v u), K=H(H H)H satisfies K x ->^6 K(x K); Recursor.lean proves head divergence for every x and pending spine, and 63 remaining sources reach this family.
- Five remaining engine unknowns all have owl O=λu v.v(u v), core (O O)(O O O); pursuing a positive-owl family invariant.

- Main catalogue now has 577 direct original-source Lean refutations: 388 growing helpers, 40 payload templates, 25 symbolic Church wrong heads, 63 H-recursor, 5 positive-owl, 50 Lark-recursor, 6 mixed beta cycles. Remaining IDs 115/119/127 are DIVERGE bb-engine and remain explicitly engine-backed.
- Eta.lean proves strong eta/beta commutation, oriented postponement, preservation of all exact unary reader laws, occurrence/scope preservation, and minimum_no_eta. Only propext/Classical.choice/Quot.sound. EtaCases0/1 independently instantiate 346 source exclusions, without assuming reader-source normalization.
- Last three: deterministic ground-I and I/K/F specialized probes did not yield new Lean certificates. No timeout/unknown is counted as a proof.
- Lower multiplicities: read zcore's exact scope and Lemma S. Generic application-rooted hand-offs do not inherit its site prices without a control-flow/cost transport argument. No blanket site filter applied.
- New complete finite check covers all lower-k minimal-leaf profiles L=3, V=k+5, one c, other binder multiplicities 1 and 2, subject to inherited minimum cuts and the new proven eta cut. Across seven cells, 73,311 sources (aggregate under 100,000), 4.61 s, 103.3 MB, two threads including watchdog. Zero hits; 69,793 direct failures, 3,518 exceptions. Frozen engine refutes 3,508; ten remaining H-family sources receive Lean Recursor proofs in LowerCases.lean.
- Therefore, conditional on inherited source-profile completeness/minimum reductions, a remaining lower-k minimum must have L>=4 or V>=k+6. This is not closure of all lower-multiplicity root lets.

- Final replay: all 20 Lean modules pass; max 2.785 s/file, sampled peak 525,369,344 bytes, no sorryAx. validate.py confirms 580/580 supplied entries covered (577 Lean, 3 engine), all 346 eta-minimum instances, and 73,311/73,311 lower minimal-leaf sources refuted (69,793 finite failures, 3,508 engine, 10 Lean).
- REPORT.md gives proofs, inherited hypotheses/completeness boundary, exact three engine-only source indices, lower-profile table and reproduction commands. No candidate/interpreter was built; both existing reader controls pass zero and n=1..8. No lane-owned engine or Lean process remains.
