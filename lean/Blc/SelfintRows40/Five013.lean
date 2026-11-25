import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five104 : BadRow (bucket false 3 2 5 [0,2,0,1,0]) := by
  have h : bucket false 3 2 5 [0,2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five105 : BadRow (bucket true 3 2 5 [0,2,0,1,0]) := by
  have h : bucket true 3 2 5 [0,2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five106 : BadRow (bucket false 3 2 5 [0,2,1,0,0]) := by
  have h : bucket false 3 2 5 [0,2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five107 : BadRow (bucket true 3 2 5 [0,2,1,0,0]) := by
  have h : bucket true 3 2 5 [0,2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five108 : BadRow (bucket false 3 2 5 [0,3,0,0,0]) := by
  have h : bucket false 3 2 5 [0,3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five109 : BadRow (bucket true 3 2 5 [0,3,0,0,0]) := by
  have h : bucket true 3 2 5 [0,3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five110 : BadRow (bucket false 3 2 5 [1,0,0,0,2]) := by
  have h : bucket false 3 2 5 [1,0,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five111 : BadRow (bucket true 3 2 5 [1,0,0,0,2]) := by
  have h : bucket true 3 2 5 [1,0,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
