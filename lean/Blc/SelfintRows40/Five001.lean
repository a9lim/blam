import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five8 : BadRow (bucket false 3 2 2 [3,0]) := by
  have h : bucket false 3 2 2 [3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five9 : BadRow (bucket true 3 2 2 [3,0]) := by
  have h : bucket true 3 2 2 [3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five10 : BadRow (bucket false 3 2 3 [0,0,3]) := by
  have h : bucket false 3 2 3 [0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five11 : BadRow (bucket true 3 2 3 [0,0,3]) := by
  have h : bucket true 3 2 3 [0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five12 : BadRow (bucket false 3 2 3 [0,1,2]) := by
  have h : bucket false 3 2 3 [0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five13 : BadRow (bucket true 3 2 3 [0,1,2]) := by
  have h : bucket true 3 2 3 [0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five14 : BadRow (bucket false 3 2 3 [0,2,1]) := by
  have h : bucket false 3 2 3 [0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five15 : BadRow (bucket true 3 2 3 [0,2,1]) := by
  have h : bucket true 3 2 3 [0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
