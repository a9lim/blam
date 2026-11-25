import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five552 : BadRow (bucket false 4 3 3 [0,4,0]) := by
  have h : bucket false 4 3 3 [0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five553 : BadRow (bucket true 4 3 3 [0,4,0]) := by
  have h : bucket true 4 3 3 [0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five554 : BadRow (bucket false 4 3 3 [1,0,3]) := by
  have h : bucket false 4 3 3 [1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five555 : BadRow (bucket true 4 3 3 [1,0,3]) := by
  have h : bucket true 4 3 3 [1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five556 : BadRow (bucket false 4 3 3 [1,1,2]) := by
  have h : bucket false 4 3 3 [1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five557 : BadRow (bucket true 4 3 3 [1,1,2]) := by
  have h : bucket true 4 3 3 [1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five558 : BadRow (bucket false 4 3 3 [1,2,1]) := by
  have h : bucket false 4 3 3 [1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five559 : BadRow (bucket true 4 3 3 [1,2,1]) := by
  have h : bucket true 4 3 3 [1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
