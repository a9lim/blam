/- All thirteen explicit residuals are excluded against IsSelfInterpreter.
This list theorem is not an enumeration or a global size theorem. -/
import Protected461

namespace Blc.Round3Floor38

def residuals : List Term :=
  [e448, e449, e454, e455, e460, e461, e466, e467, e472, e473, e478, e479, e572]

theorem residuals_excluded (e : Term) (h : e ∈ residuals) : ¬ IsSelfInterpreter e := by
  simp only [residuals, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl
  · exact e448_not_selfinterpreter
  · exact e449_not_selfinterpreter
  · exact e454_not_selfinterpreter
  · exact e455_not_selfinterpreter
  · exact e460_not_selfinterpreter
  · exact Protected461.e461_not_selfinterpreter
  · exact e466_not_selfinterpreter
  · exact e467_not_selfinterpreter
  · exact e472_not_selfinterpreter
  · exact e473_not_selfinterpreter
  · exact e478_not_selfinterpreter
  · exact e479_not_selfinterpreter
  · exact e572_not_selfinterpreter

#print axioms residuals_excluded

end Blc.Round3Floor38
