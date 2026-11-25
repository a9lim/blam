import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five224 : BadRow (bucket false 3 3 5 [0,0,2,0,1]) := by
  have h : bucket false 3 3 5 [0,0,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five225 : BadRow (bucket true 3 3 5 [0,0,2,0,1]) := by
  have h : bucket true 3 3 5 [0,0,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five226 : BadRow (bucket false 3 3 5 [0,0,2,1,0]) := by
  have h : bucket false 3 3 5 [0,0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five227 : BadRow (bucket true 3 3 5 [0,0,2,1,0]) := by
  have h : bucket true 3 3 5 [0,0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five228 : BadRow (bucket false 3 3 5 [0,0,3,0,0]) := by
  have h : bucket false 3 3 5 [0,0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five229 : BadRow (bucket true 3 3 5 [0,0,3,0,0]) := by
  have h : bucket true 3 3 5 [0,0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five230 : BadRow (bucket false 3 3 5 [0,1,0,0,2]) := by
  have h : bucket false 3 3 5 [0,1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five231 : BadRow (bucket true 3 3 5 [0,1,0,0,2]) := by
  have h : bucket true 3 3 5 [0,1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
