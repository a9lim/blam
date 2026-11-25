import Blc.SelfintSize45Profiles
import Blc.SelfintKernelFloor45

namespace Blc.SelfintSingleObject.Size45
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintWireCost SelfintNonlinearChain
open SourceRefutations OperandGrammar FiveLive Saturated Grammar43 ProfileGrid

/-- Covering the three finite grids excludes exactly 45 bits. -/
theorem advance (four : Every Four (CoverGrids.fourGrid 45))
    (five : Every Five (gridFor oldProfiles)) (eight : Every Eight (gridFor [(8,6,3)])) :
    SelfintSizeBound 46 := by
  apply bound_of_minima
  intro e hm
  by_cases h : 46 ≤ wire e
  · exact h
  have hw : wire e = 45 := by have lo : 45 ≤ wire e := selfintSizeBound_45 e hm.1; omega
  have hp : ∀ q, e ≠ .lam (.lam q) := by rintro q rfl; have := two_lambda_bound_46 hm.1; omega
  rcases resources hm.1 hw with h4|⟨h5,pf⟩|⟨hl,hv,hL,hX⟩
  · obtain ⟨c,hc,fw,hf,aw,ha,mem⟩ := four_complete hm h4
    rw [hw] at hc
    exact (((((four.get hc).get hf).get ha).get mem) hm).elim
  · have shape : leafCount e = 7 ∨ (leafCount e = 8 ∧ lamCount e = 5) := by
      simp [oldProfiles] at pf; omega
    obtain ⟨c,hc,w,hh,mem⟩ := five_mem_grid hm h5 pf shape hp
    exact ((((five.get hc).get hh).get mem) hm).elim
  · obtain ⟨c,hc,w,hh,mem⟩ := eight_mem_grid hm hl hv hL hX hp
    exact ((((eight.get hc).get hh).get mem) hm).elim

end Blc.SelfintSingleObject.Size45
