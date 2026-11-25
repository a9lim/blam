import Blc.SelfintSize43Profiles
import Blc.SelfintKernelFloor43

namespace Blc.SelfintSingleObject.Grammar43
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintWireCost SelfintNonlinearChain
open SourceRefutations OperandGrammar

theorem advance (four : Every Four (CoverGrids.fourGrid 43)) (five : Every Five grid) :
    SelfintSizeBound 44 := by
  apply bound_of_minima
  intro e he
  by_cases h : 44 ≤ wire e
  · exact h
  have hn : wire e = 43 := by have : 43 ≤ wire e := selfintSizeBound_43 e he.1; omega
  have hs := wire_slack e he.1
  have ⟨hl,_,_⟩ := interpreter_counts he.1
  rcases (show live e = 4 ∨ live e = 5 by omega) with h4|h5
  · obtain ⟨c,hc,fw,hf,aw,ha,mem⟩ := four_complete he h4
    rw [hn] at hc
    exact (((((four.get hc).get hf).get ha).get mem) he).elim
  · obtain ⟨c,hc,w,hw,mem⟩ := five_complete he h5 hn
    exact ((((five.get hc).get hw).get mem) he).elim

end Blc.SelfintSingleObject.Grammar43
