Task "integrate-lean": promote verified round-4 Lean files into the repo's
lean/Blc library.

Repo /Users/a9lim/Work/blam (branch dev). You MAY create new files under
lean/Blc/ and edit lean/Blc.lean (append imports only). Do NOT modify any
existing lean/Blc/*.lean module, do NOT touch anything else tracked, do NOT
commit. Scratch files go in /Users/a9lim/Work/blam/tmp/round4/integrate/.

Every source below already compiles standalone (from lean/:
LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean lean -j2 FILE),
without sorry. Promote each to a library module:

| source (tmp/round4/...) | new module | namespace rename |
|---|---|---|
| widen/Widen.lean | Blc/SelfintWiden.lean | keep Blc.SelfintWiden; Blc.Round3Reader → Blc.SelfintWidenHoist |
| probelean/Probe.lean | Blc/SelfintProbe.lean | Blc.DivergentProbe → Blc.SelfintProbe |
| escape/Slots.lean | Blc/SelfintProbeSlots.lean | import Blc.SelfintProbe; keep ONLY the declarations not already in Probe.lean (it pastes Probe.lean); its own namespace → Blc.SelfintProbeSlots |
| probelean/Derive.lean | Blc/SelfintProbeDerive.lean | import Blc.SelfintProbe (and SelfintProbeSlots if it uses Slots' lemmas); drop pasted copies; Blc.ProbeInterface → Blc.SelfintProbeDerive |
| values/LemmaT.lean | Blc/SelfintValuesTransfer.lean | Blc.ValuesLemmaT → Blc.SelfintValuesTransfer |
| values/lean/ValuesH3.lean | Blc/SelfintValues.lean | `import Widen` → `import Blc.SelfintWiden` (its local Widen.lean is a frozen PREFIX of widen/Widen.lean; check every name it uses still exists); Blc.ValuesH3 → Blc.SelfintValues |
| knot/KnotHeads.lean | Blc/SelfintKnotHeads.lean | Blc.KnotHeads → Blc.SelfintKnotHeads |
| lean146/Final146.lean | Blc/SelfintReader30.lean | Blc.Lean146* → Blc.SelfintReader30* (Lean146, Lean146Live, Lean146Enum, Lean146Accounting, Lean146Final, ...: rename consistently, including qualified references) |
| global/GlobalBarriers.lean | Blc/SelfintGlobalBarriers.lean | Blc.Round4Global → Blc.SelfintGlobalBarriers |
| global/SpineBarriers.lean | Blc/SelfintSpineBarriers.lean | Blc.Round4Spines → Blc.SelfintSpineBarriers |
| global/TowerBarriers.lean | Blc/SelfintTowerBarriers.lean | Blc.Round4Towers → Blc.SelfintTowerBarriers |
| chead/lean/ModeNext.lean | Blc/SelfintChead.lean | Blc.Chead → Blc.SelfintChead |

Conventions (look at lean/Blc/SelfintRecursion.lean and SelfintClass.lean):
a /- ... -/ header of a few lines saying what the module proves, with no
unconditional-162 claim; doc references go to
docs/classical/self-interpreter/class-bound.md (or global-floor.md for the
three Barriers modules); any comment naming tmp/round4/<lane>/ becomes
data/self-interpreter/reasoning_class/<lane>/. Keep proofs byte-for-byte
apart from renames and the de-duplication. Before renaming a namespace,
grep lean/Blc for clashes. Keep `#print axioms` lines only for the headline
theorems (as SelfintClass.lean does) — or drop them all, if that is the
repo's prevalent style; say which.

Verify: from lean/, `lake build Blc` must succeed (it builds only new
modules; Final146-derived SelfintReader30 alone takes ~70 s; run it in the
foreground with a 15-minute timeout, nothing in parallel). Then grep the new
modules for sorry/admit/axiom declarations (must be none) and record each
headline theorem's #print axioms. Headline theorems whose new
fully-qualified names I need: frontier_optimal_iff_reader_floor,
frontier_dominated_full, unrestricted_next_assembly_lower,
unrestricted_knot_multiplicity, sub162_knot_localization, the OneLet
covered_admin_frontier theorem, counterexample_is_interpreter (widen);
lemmaA, lemmaA_after_two, classify_continuation,
probe_two_argument_corollary (probe); lemmaA_two_slots (slots);
derive_from_source_hypotheses, semantic_retval_from_contract (derive);
transfer_reader (values transfer); share_dominated, transfer_dominated,
wholePrefix_dominated_law, floor_of_dominated, vnext_two_leaves,
wp162_strip (values); the KnotHeads headline theorems; reader_weight_30,
class_bound_146 (reader30); the main theorems of the three Barriers modules;
value_next_bound, rest_next_bound, cassembly_lower, split_class_165 (chead).

Write /Users/a9lim/Work/blam/tmp/round4/integrate/REPORT.md: the file list
with line counts, every rename and de-duplication you made, the lake build
command and its wall time, the axiom audit, and the table of new
fully-qualified headline names. Keep each response under ~10k output
tokens; if the harness refuses REPORT.md, return the report as text.
