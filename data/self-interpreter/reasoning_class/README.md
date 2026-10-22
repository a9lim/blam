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
`lean146` and the review `review_hole`; Claude ran `jn`, `escape`, `knot`, `fresh`, `values`, `depth02`,
`bridgeadv`, `nextctor`, `chead`, `hole`, `d1open`, the statement audit
`audit1` and the Lean promotion `integrate`. Lanes consulted Codex for
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
| close46 | kernel-checked sharing exclusions (factories, closed specializers), exact source-cost balance, first-head classification, let-sinking | `class-bound.md` §3 |
| jn | minimal pieces (unary core 20 unique, zero core 12, j/N operand 25, arm 22); the first-dispatch normal form; the additive decomposition refuted; depth-1 dispatcher families closed | `class-bound.md` §3 |
| depth02 | depth ≥ 2 and depth-0 readers with `j` a λ's argument closed; two flaws in round 3's depth reduction | `class-bound.md` §3 |
| bridgeadv, share46 | the exact let-saving formula and two-productive-uses lemma; counting cannot bound sharing; sharing families closed | `class-bound.md` §3 |
| hole | the exact core decomposition; the anchor reduction of depth-1 readers whose hole's parent is rigid on a zero stream to four families; the minimum-reader bound in the 162's family | `class-bound.md` §3 |
| review_hole | adversarial review of hole: dispensability, the price identity and the index-shift arithmetic confirmed; the persistence step refuted by correct readers of weight 59, 84 and 104; the unary-only wrapper check that repairs the 162-family bound | `class-bound.md` §3 |
| d1open | jn's open depth-1 families by reasoning | `class-bound.md` §3 |
| global | ceilings for probe-based floors (88 on identity towers, 154 on Church spines); no β-preserving conversion into the class | `Blc/Selfint{Global,Spine,Tower}Barriers.lean`, `global-floor.md` §10, `class-bound.md` §5 |
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
