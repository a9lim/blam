import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five344 : BadRow (bucket false 4 2 4 [0,2,2,0]) := by
  have h : bucket false 4 2 4 [0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five345 : BadRow (bucket true 4 2 4 [0,2,2,0]) := by
  have h : bucket true 4 2 4 [0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five346 : BadRow (bucket false 4 2 4 [0,3,0,1]) := by
  have h : bucket false 4 2 4 [0,3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five347 : BadRow (bucket true 4 2 4 [0,3,0,1]) := by
  have h : bucket true 4 2 4 [0,3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five348 : BadRow (bucket false 4 2 4 [0,3,1,0]) := by
  have h : bucket false 4 2 4 [0,3,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five349 : BadRow (bucket true 4 2 4 [0,3,1,0]) := by
  have h : bucket true 4 2 4 [0,3,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five350 : BadRow (bucket false 4 2 4 [0,4,0,0]) := by
  have h : bucket false 4 2 4 [0,4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five351 : BadRow (bucket true 4 2 4 [0,4,0,0]) := by
  have h : bucket true 4 2 4 [0,4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
