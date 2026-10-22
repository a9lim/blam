# Reasoning lanes on the separated class: widening it and the reader weight

The fourth round of parallel reasoning lanes (2026-10-21/22) on a sub-162 BLC
self-interpreter or a proof that 162 is optimal, coordinated by a Claude
seat. `BRIEF.md` is the shared brief and `BRIEF5.md` its update for the fifth
wave of lanes; each directory keeps its own
`PROMPT.md` (and `FOLLOWUP*.md` where a lane was continued), its working
`NOTES.md` and its `REPORT.md` (several Claude lanes' harness refused that
write, and the coordinator saved the returned text). `coord/SYNTHESIS.md` is
the coordinator's running record of every lane result as it arrived.
Codex ran `close46`, `widen`, `arch`, `global`, `probelean`, `share46`,
`lean146`, `loop`, `zerolam`, `needbinder`, `bodyredex`, `jerase`, `handlerlet`, `rootnf`, `firstop` and the reviews `review_hole` and `review_types`; Claude ran `jn`, `escape`, `knot`, `fresh`, `values`, `depth02`,
`bridgeadv`, `nextctor`, `chead`, `hole`, `d1open`, `root`, `adv5`, `types`, `zcore`, the statement audit
`audit1` and the Lean promotions `integrate` and `integrate2`. Lanes consulted Codex for
fresh-context reviews where their reports say so.

**No interpreter below 162 was found.** The round's results are recorded in
`docs/classical/self-interpreter/class-bound.md` (§2–5),
`interpreter.md` §6 (about thirty correct interpreters of 163–265 bits) and
`global-floor.md` §10. The Lean that the reports cite now lives in
`lean/Blc/` under the module names below; the lane copies here are the
working versions.

| lane | result | where it lives now |
|---|---|---|
| lean146 | the reader weight 30 and the class bound 146 fully kernel-checked: minimum counterexamples, the non-λ elimination, a complete Lean enumerator for the 3,484 layouts | `Blc/SelfintReader30.lean`, `class-bound.md` §2 |
| widen | NEXT of any syntax above the price frontier `q ≥ 92`, `q + 3F ≥ 104` keeps the minimum; optimal iff `w ≥ 46`; the four-free-leaf and per-reader-price claims refuted; unrestricted NEXT `q ≥ 32`, class `≥ 76`, knot multiplicity; one-let NEXTs | `Blc/SelfintWiden.lean`, `class-bound.md` §4.1 |
| nextctor | constructive side of the NEXT frontier: best NEXTs 92/F4, 99/F3, 105/F2; a 93-bit NEXT gives a 163; family exclusions | `class-bound.md` §4.1, `interpreter.md` §6 |
| values | any value representation with a converter: the exchange rate and domination theorems; whole-prefix values; cell bound for `λu. λr. B` | `Blc/SelfintValues.lean`, `Blc/SelfintValuesTransfer.lean`, `class-bound.md` §4.2 |
| knot | Lemma B: every two-port opaque recursion scheme costs `≥ 26 + a + b`, the 162's knot unique; Lemma C repaired; knotless three-binder heads excluded | `Blc/SelfintKnotHeads.lean`, `class-bound.md` §4.3 |
| chead | the continuation-headed split class `≥ 165`; mode NEXT bounds; conversions `+23`, `+10`; mode sharing never optimal | `Blc/SelfintChead.lean`, `class-bound.md` §4.4 |
| escape, probelean | the forwarding lemma for unsolvable probes; the variable law's rest part and NEXT's data flow derived from the contract; five correct counterexamples to the other hypotheses; the dual-operand readers are class members | `Blc/SelfintProbe.lean`, `SelfintProbeSlots.lean`, `SelfintProbeDerive.lean`, `class-bound.md` §4.5 |
| close46 | kernel-checked sharing exclusions (factories, closed and stream-dependent specializers), exact source-cost balance, first-head classification, let-sinking, the linear-let counterexample, the needed extra uses of self-headed lets, nested-let exchange | `Blc/SelfintClosureBarrier.lean`, `SelfintStreamSpecializer`, `SelfintSourceCost`, `SelfintNeededHead`, `SelfintNestedLets` and fifteen more (`integrate2/promote.py` has the map), `class-bound.md` §3 |
| jn | minimal pieces (unary core 20 unique, zero core 12, j/N operand 25, arm 22); the first-dispatch normal form; the additive decomposition refuted; depth-1 dispatcher families closed | `class-bound.md` §3 |
| depth02 | depth ≥ 2 and depth-0 readers with `j` a λ's argument closed; two flaws in round 3's depth reduction | `class-bound.md` §3 |
| bridgeadv, share46 | the exact let-saving formula and two-productive-uses lemma; counting cannot bound sharing; sharing families closed | `class-bound.md` §3 |
| hole | the exact core decomposition; the anchor reduction of depth-1 readers whose hole's parent is rigid on a zero stream to four families; the minimum-reader bound in the 162's family | `class-bound.md` §3 |
| review_hole | adversarial review of hole: dispensability, the price identity and the index-shift arithmetic confirmed; the persistence step refuted by correct readers of weight 59, 84 and 104; the unary-only wrapper check that repairs the 162-family bound | `class-bound.md` §3 |
| d1open | every s-spine reader whose first operand reaches the first dispatch with no β-redex on its head path has `w ≥ 46` (one skeleton over the cap); the deletion lemma; `λb. b X Y` with three or more trailing operands closed | `class-bound.md` §3 |
| global | ceilings for probe-based floors (88 on identity towers, 154 on Church spines); no β-preserving conversion into the class | `Blc/Selfint{Global,Spine,Tower}Barriers.lean`, `global-floor.md` §10, `class-bound.md` §5 |
| root | six sub-families of depth-0 shared-let and application-rooted readers out of a minimum below 46; the exact root-let weight; forced uses; the pull lemma | `class-bound.md` §3 |
| bodyredex | readers whose stream-λ body is a let: in a minimum below 46, at most four uses, a λ inside the argument, and `j` inside it when linear (`FlatRestHole.lean`) | `class-bound.md` §3 |
| jerase | where the source `j` dies (reader source, a unary `F`, the terminal `K`; `Erasure.lean`) and why that does not price a reader (`Witnesses.lean`: the 162 erases `j` at the terminal `K`; readers of 58 and 70) | `class-bound.md` §3 |
| types | intersection-type role supports (the shared skeleton never holds `c` or `j`; the bit-variable lemma; the shared-let split identity) and a demand-driven derivation search over β-normal readers: none below 46, sharp at the 162 (`narrow2.py`, `narrow3.py`; reviewed in `review_types`) | `class-bound.md` §3 |
| review_types | Codex's adversarial review of the β-normal bound: every run reproduced, an independent enumerator compared on single laws, a single-law tabling defect found, and the needed-occurrence argument that makes the joint-law search sound | `class-bound.md` §3 |
| review_types2 | a second, fresh Claude review of the β-normal bound (the brief was written for Gemini, whose quota had run out): sound; hand proofs for the two engine-certified cut-offs; tabled and untabled searches agree on joint laws | `class-bound.md` §3 |
| zcore | dispatch sites: one closed `s I` anchor anywhere forces `w ≥ 46` (equality only the 162); two sites or one heavy site force 46, so a reader below 46 has at most one site saving 8–15; the three unary cores through 23 bits; the uniform zero-compatible-core statement refuted | `class-bound.md` §3 |
| handlerlet | no minimum reader below 46 has a literal λ as its first handler: every nonlinear let inside it fails (117,059 sources; 1,868 normalizer exceptions in `Exceptions1–4.lean`; prices in `Prices.lean`) | `class-bound.md` §3 |
| rootnf | the root-let profile bound `w ≥ 4k + 22 + 4d` (`RootProfile.lean`: at most five uses below 46); the multi-hole repair of the normalization bridge | `class-bound.md` §3 |
| firstop | redexes inside a `j`-free non-λ first operand have two to five uses in a minimum below 46 (`LinearCertificates.lean`); the handler-sinking inequality; the contextual hoist price | `class-bound.md` §3 |
| needbinder | the whole-cell opener `λs. s (λb t. B) j` out of a minimum reader below 46 (hoisting price in `OpenerHoist.lean`, normalizer exceptions in `NonlinearExceptions.lean`); the 162-family spine `λs. s A (λu. D) j` narrowed to `|A| ≥ 11`, `|D| ≤ 18`; a needed-binder witness of weight 75 | `class-bound.md` §3 |
| zerolam | three zero-λ parent shapes out of a minimum reader (literal let, closed transport, disjoint redispatch at 53); the rigid-ancestor anchor and its whole-body witness of weight 75 | `class-bound.md` §3 |
| loop | the unary run need not be periodic: a correct reader of weight 221 with a growing counter (`Slow.lean`, kernel-checked); the 162's skip is input-generated; conditional pumping, suffix exposure, union accounting; the 164's family `≥ 48` and the hoisted 165's `≥ 49` by rigid shielding (`Shield.lean`, `Prices.lean`) | `class-bound.md` §3 |
| adv5 | the constructive adversary of wave 5: about twenty readers by design, none below 52; the near misses that locate the defect (the 162 is a 40-bit near miss plus its absorber); the depth-0 shared window `(λx n s. M) A j` closed by a complete check | `class-bound.md` §3 |
| arch, fresh | first-principles architectures, all already priced or above 162 (163, 167, 169, 201) | `interpreter.md` §6 |
| audit1 | statement audit of the widen, close46 and probelean Lean: every headline theorem says what its report claims | — |

Compute note. Several Claude lanes closed reader families with complete
finite checks of up to a few million terms (each under two minutes but two),
before the coordinator capped checks at 100,000 terms; their reports list
every such run. They test both laws at `n = 1, 2, 3` and certify every
fuel or size cut-off, so an empty check refutes its family. Frozen `blam`
binaries, compiled Lean, pickled pools and the lean146 lane's generated
intermediate Lean (`ReaderChecks*.lean`, `CompactRow*`, `Coverage.lean`;
regenerate with `lean146/regenerate.py`) are omitted. Scripts may name
`tmp/round4/<lane>/` paths from where they ran.
