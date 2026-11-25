import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five512 : BadRow (bucket false 4 2 5 [2,0,2,0,0]) := by
  have h : bucket false 4 2 5 [2,0,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five513 : BadRow (bucket true 4 2 5 [2,0,2,0,0]) := by
  have h : bucket true 4 2 5 [2,0,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five514 : BadRow (bucket false 4 2 5 [2,1,0,0,1]) := by
  have h : bucket false 4 2 5 [2,1,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five515 : BadRow (bucket true 4 2 5 [2,1,0,0,1]) := by
  have h : bucket true 4 2 5 [2,1,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five516 : BadRow (bucket false 4 2 5 [2,1,0,1,0]) := by
  have h : bucket false 4 2 5 [2,1,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five517 : BadRow (bucket true 4 2 5 [2,1,0,1,0]) := by
  have h : bucket true 4 2 5 [2,1,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five518 : BadRow (bucket false 4 2 5 [2,1,1,0,0]) := by
  have h : bucket false 4 2 5 [2,1,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five519 : BadRow (bucket true 4 2 5 [2,1,1,0,0]) := by
  have h : bucket true 4 2 5 [2,1,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
