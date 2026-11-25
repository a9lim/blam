import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five392 : BadRow (bucket false 4 2 5 [0,0,0,0,4]) := by
  have h : bucket false 4 2 5 [0,0,0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five393 : BadRow (bucket true 4 2 5 [0,0,0,0,4]) := by
  have h : bucket true 4 2 5 [0,0,0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five394 : BadRow (bucket false 4 2 5 [0,0,0,1,3]) := by
  have h : bucket false 4 2 5 [0,0,0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five395 : BadRow (bucket true 4 2 5 [0,0,0,1,3]) := by
  have h : bucket true 4 2 5 [0,0,0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five396 : BadRow (bucket false 4 2 5 [0,0,0,2,2]) := by
  have h : bucket false 4 2 5 [0,0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five397 : BadRow (bucket true 4 2 5 [0,0,0,2,2]) := by
  have h : bucket true 4 2 5 [0,0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five398 : BadRow (bucket false 4 2 5 [0,0,0,3,1]) := by
  have h : bucket false 4 2 5 [0,0,0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five399 : BadRow (bucket true 4 2 5 [0,0,0,3,1]) := by
  have h : bucket true 4 2 5 [0,0,0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
