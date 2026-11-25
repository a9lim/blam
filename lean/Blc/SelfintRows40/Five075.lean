import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five600 : BadRow (bucket false 4 3 4 [0,3,1,0]) := by
  have h : bucket false 4 3 4 [0,3,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five601 : BadRow (bucket true 4 3 4 [0,3,1,0]) := by
  have h : bucket true 4 3 4 [0,3,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five602 : BadRow (bucket false 4 3 4 [0,4,0,0]) := by
  have h : bucket false 4 3 4 [0,4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five603 : BadRow (bucket true 4 3 4 [0,4,0,0]) := by
  have h : bucket true 4 3 4 [0,4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five604 : BadRow (bucket false 4 3 4 [1,0,0,3]) := by
  have h : bucket false 4 3 4 [1,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five605 : BadRow (bucket true 4 3 4 [1,0,0,3]) := by
  have h : bucket true 4 3 4 [1,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five606 : BadRow (bucket false 4 3 4 [1,0,1,2]) := by
  have h : bucket false 4 3 4 [1,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five607 : BadRow (bucket true 4 3 4 [1,0,1,2]) := by
  have h : bucket true 4 3 4 [1,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
