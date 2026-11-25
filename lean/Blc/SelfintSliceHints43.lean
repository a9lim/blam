import Blc.SelfintSplit43
import Blc.SelfintRowReplay

namespace Blc.SelfintSingleObject.Split43
open Term SelfintLowerBound OperandGrammar SourceRefutations RowReplay

/-- A grammar slice may use the same small set of exclusion hints at every
position. Explicit exceptional sources are compared with their full terms. -/
theorem tryHints {ts : List Term} (bank : Nat → Hint) (ids : List Nat) {hard : List Term}
    (ok : (prefilter ts).all (fun t => (ids.any fun i => rejects t (bank i)) || hard.contains t) = true)
    (bad : BadRow hard) : BadRow ts := by
  apply row_of_forall
  intro t ht hm
  have mem : t ∈ prefilter ts := List.mem_filter.mpr ⟨ht, FactorFilter.static_required hm⟩
  rcases Bool.or_eq_true_iff.mp (List.all_eq_true.mp ok t mem) with hint | explicit
  · obtain ⟨i, _, hi⟩ := List.any_eq_true.mp hint
    exact rejects_sound (bank i) hi hm
  · exact bad.get (List.contains_iff_mem.mp explicit) hm

end Blc.SelfintSingleObject.Split43
