import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five576 : BadRow (bucket false 4 3 4 [0,0,1,3]) := by
  have h : bucket false 4 3 4 [0,0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five577 : BadRow (bucket true 4 3 4 [0,0,1,3]) := by
  have h : bucket true 4 3 4 [0,0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five578 : BadRow (bucket false 4 3 4 [0,0,2,2]) := by
  have h : bucket false 4 3 4 [0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five579 : BadRow (bucket true 4 3 4 [0,0,2,2]) := by
  have h : bucket true 4 3 4 [0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five580 : BadRow (bucket false 4 3 4 [0,0,3,1]) := by
  have h : bucket false 4 3 4 [0,0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five581 : BadRow (bucket true 4 3 4 [0,0,3,1]) := by
  have h : bucket true 4 3 4 [0,0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five582 : BadRow (bucket false 4 3 4 [0,0,4,0]) := by
  have h : bucket false 4 3 4 [0,0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five583 : BadRow (bucket true 4 3 4 [0,0,4,0]) := by
  have h : bucket true 4 3 4 [0,0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
