import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five456 : BadRow (bucket false 4 2 5 [0,3,0,1,0]) := by
  have h : bucket false 4 2 5 [0,3,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five457 : BadRow (bucket true 4 2 5 [0,3,0,1,0]) := by
  have h : bucket true 4 2 5 [0,3,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five458 : BadRow (bucket false 4 2 5 [0,3,1,0,0]) := by
  have h : bucket false 4 2 5 [0,3,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five459 : BadRow (bucket true 4 2 5 [0,3,1,0,0]) := by
  have h : bucket true 4 2 5 [0,3,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five460 : BadRow (bucket false 4 2 5 [0,4,0,0,0]) := by
  have h : bucket false 4 2 5 [0,4,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five461 : BadRow (bucket true 4 2 5 [0,4,0,0,0]) := by
  have h : bucket true 4 2 5 [0,4,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five462 : BadRow (bucket false 4 2 5 [1,0,0,0,3]) := by
  have h : bucket false 4 2 5 [1,0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five463 : BadRow (bucket true 4 2 5 [1,0,0,0,3]) := by
  have h : bucket true 4 2 5 [1,0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
