import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five128 : BadRow (bucket false 3 2 5 [1,2,0,0,0]) := by
  have h : bucket false 3 2 5 [1,2,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five129 : BadRow (bucket true 3 2 5 [1,2,0,0,0]) := by
  have h : bucket true 3 2 5 [1,2,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five130 : BadRow (bucket false 3 2 5 [2,0,0,0,1]) := by
  have h : bucket false 3 2 5 [2,0,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five131 : BadRow (bucket true 3 2 5 [2,0,0,0,1]) := by
  have h : bucket true 3 2 5 [2,0,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five132 : BadRow (bucket false 3 2 5 [2,0,0,1,0]) := by
  have h : bucket false 3 2 5 [2,0,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five133 : BadRow (bucket true 3 2 5 [2,0,0,1,0]) := by
  have h : bucket true 3 2 5 [2,0,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five134 : BadRow (bucket false 3 2 5 [2,0,1,0,0]) := by
  have h : bucket false 3 2 5 [2,0,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five135 : BadRow (bucket true 3 2 5 [2,0,1,0,0]) := by
  have h : bucket true 3 2 5 [2,0,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
