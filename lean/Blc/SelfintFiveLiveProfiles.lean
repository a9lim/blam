import Blc.SelfintFiveLiveAtom

namespace Blc.SelfintSingleObject
open Term SelfintLowerBound SelfintFloor SelfintWireCost SelfintNonlinearChain SelfintCapture

/-- Extra leaves, unused lambda positions, and excess raw index cost
account for every bit above the live-binder floor. -/
theorem wire_slack (e : Term) (he : IsSelfInterpreter e) :
    wire e = 6 * live e + 9 + 2 * (lamCount e - live e) +
      4 * (leafCount e - (live e + 2)) + (indexSum e - 3) := by
  have ⟨_,_,hw⟩ := interpreter_counts he
  have := live_le_lamCount e; have := leaves_bound e
  have := selfInterpreter_two_nonlinear he; have := wire_identity e
  omega

/-- At sizes 39 through 42 a five-live interpreter uses every leaf
allowed by the two incomparable duplications. Its only slack is in
dead lambdas and raw index cost. -/
theorem five_live_through_42 {e} (he : IsSelfInterpreter e) (hl : live e = 5) (hn : wire e ≤ 42) :
    leafCount e = 7 ∧ nonlinear e = 2 ∧ AtMostTwo e ∧
    ((lamCount e = 5 ∧ indexSum e + 36 = wire e) ∨
     (lamCount e = 6 ∧ indexSum e + 38 = wire e)) := by
  have ⟨_,_,hw⟩ := interpreter_counts he
  have := live_le_lamCount e; have := leaves_bound e
  have := selfInterpreter_two_nonlinear he; have := wire_identity e
  refine ⟨by omega,by omega,atMostTwo_of_leaf_eq _ (by omega),?_⟩
  omega

/-- A closed operand duplicated at most once needs eight bits to
survive its redex in any context of a global minimum. -/
theorem closed_argument_eight (k : Context) {b a} (hm : MinimalInterpreter (k.fill (.app (.lam b) a)))
    (hc : Closed a) (h2 : occ 0 b ≤ 2) : 8 ≤ wire a := by
  have hd := wire_beta_delta b a
  have hm' := minimal_redex_nonshrinking k b a hm
  have ho := minimal_no_erasing k b a hm
  rw [SelfintFloor.freeLeaves_closed a 0 hc] at hd
  change _ = ((occ 0 b : Int) - 1) * wire a + (-1 : Int) * occDepth 0 b - _ - _ - _ at hd
  simp only [Int.neg_mul,Int.one_mul] at hd
  rcases (show occ 0 b = 1 ∨ occ 0 b = 2 by omega) with h | h <;>
    simp [h] at hd hm' <;> omega

#print axioms wire_slack
#print axioms five_live_through_42
#print axioms closed_argument_eight
end Blc.SelfintSingleObject
