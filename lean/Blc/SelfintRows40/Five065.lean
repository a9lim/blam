import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five520 : BadRow (bucket false 4 2 5 [2,2,0,0,0]) := by
  have h : bucket false 4 2 5 [2,2,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five521 : BadRow (bucket true 4 2 5 [2,2,0,0,0]) := by
  have h : bucket true 4 2 5 [2,2,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five522 : BadRow (bucket false 4 2 5 [3,0,0,0,1]) := by
  have h : bucket false 4 2 5 [3,0,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five523 : BadRow (bucket true 4 2 5 [3,0,0,0,1]) := by
  have h : bucket true 4 2 5 [3,0,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five524 : BadRow (bucket false 4 2 5 [3,0,0,1,0]) := by
  have h : bucket false 4 2 5 [3,0,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five525 : BadRow (bucket true 4 2 5 [3,0,0,1,0]) := by
  have h : bucket true 4 2 5 [3,0,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five526 : BadRow (bucket false 4 2 5 [3,0,1,0,0]) := by
  have h : bucket false 4 2 5 [3,0,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five527 : BadRow (bucket true 4 2 5 [3,0,1,0,0]) := by
  have h : bucket true 4 2 5 [3,0,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
