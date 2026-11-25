import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five560 : BadRow (bucket false 4 3 3 [1,3,0]) := by
  have h : bucket false 4 3 3 [1,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five561 : BadRow (bucket true 4 3 3 [1,3,0]) := by
  have h : bucket true 4 3 3 [1,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five562 : BadRow (bucket false 4 3 3 [2,0,2]) := by
  have h : bucket false 4 3 3 [2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five563 : BadRow (bucket true 4 3 3 [2,0,2]) := by
  have h : bucket true 4 3 3 [2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five564 : BadRow (bucket false 4 3 3 [2,1,1]) := by
  have h : bucket false 4 3 3 [2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five565 : BadRow (bucket true 4 3 3 [2,1,1]) := by
  have h : bucket true 4 3 3 [2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five566 : BadRow (bucket false 4 3 3 [2,2,0]) := by
  have h : bucket false 4 3 3 [2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five567 : BadRow (bucket true 4 3 3 [2,2,0]) := by
  have h : bucket true 4 3 3 [2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
