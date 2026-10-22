# integrate2: promotion of the close46 Lean into lean/Blc

(Saved by the coordinator from the lane's returned report; the harness
refused the lane's own write.)

21 of close46's 22 modules are library modules `lean/Blc/SelfintX.lean`,
imported in `lean/Blc.lean` after `Blc.SelfintChead` in verify.py's order.
`promote.py` is rerunnable (a second run is byte-identical); `promote.out`
logs every transformation; `Audit.lean` / `audit.out` /
`headline_axioms.txt` print axioms for all 104 theorems the lane printed.

Transformations: new header (plain statement, class-bound.md pointer,
0-based frame), the lane's summary comment dropped, imports rewritten to
`Blc.*`, namespaces renamed by word-boundary regex, headline `#print`s
kept, blank runs collapsed. One comment edit (SourceBody: "other lane's
semantic inventory" → "finite semantic inventory"). Lane sources match
close46/verification.json hashes (0 of 26 differ); each promoted module with
renames undone and prints dropped equals its lane source.

Namespace map: Round3Role → SelfintRoleAlgebra; Close46 →
SelfintClosureBarrier; Close46BoundaryAlgebra → SelfintBoundaryAlgebra;
Close46Boundary → SelfintBoundaryChecks; Close46Source → SelfintSourceCost;
Close46Local → SelfintLocalCost; Close46Dispatch → SelfintDispatchAudit;
Close46Front → SelfintSourceFront; Close46Flat → SelfintFlatSemantics;
Close46X → SelfintX for FlatMinimum, RootFlat, FlatPrefix, LetSink,
HelperPair, ClosedSpecializer, LambdaSink, SourceBody, StreamHelpers,
StreamSpecializer, NeededHead, NestedLets. ReaderHoist (Round3Reader) is
byte-identical to round 3's floor/ReaderHoist.lean and to the copy inlined in
SelfintWiden as SelfintWidenHoist, so it was not promoted; dependents import
Blc.SelfintWiden. RoleAlgebra is byte-identical to round 3's
floor/RoleAlgebra.lean.

Headlines (new names): SelfintClosureBarrier.factories_cannot_read,
sharing_cannot_read, represented_reader_impossible;
SelfintSourceCost.contract_hoist_price, minimum_argument_charge;
SelfintStreamSpecializer.local_stream_floor, root_stream_floor,
specializer_boundary; SelfintLambdaSink.linear_saving_counterexample (29 →
31, no axioms); SelfintNestedLets.minimum_nested_alternative;
SelfintNeededHead.minimum_forget_fails, minimum_extra_use,
body_needed_sharing, forget_price; SelfintLocalCost.weighted_beta_at,
minimum_source_non_erasing, minimum_linear_source_charge;
SelfintSourceFront.reader_source_head, body_head_multiplicity;
SelfintFlatMinimum.minimum_flat_four; SelfintRootFlat.minimum_root_flat_is_hole;
SelfintLetSink.no_one_operand_spine_let; SelfintHelperPair.local_pair_floor;
SelfintClosedSpecializer.local_closed_floor, root_closed_floor.

Axioms: every theorem within {propext, Classical.choice, Quot.sound}; no
sorry/admit/axiom/native_decide/ofReduceBool. Build: `lake build Blc`, 99
jobs, 17.7 s for the 21 new modules. Lines 5,224 → 5,367. Four pre-existing
unused-simp-argument linter warnings in SelfintLambdaSink (lines 36, 39, 68,
74), left as is.
