import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five72 : BadRow (bucket false 3 2 5 [0,0,0,1,2]) := by
  have h : bucket false 3 2 5 [0,0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five73 : BadRow (bucket true 3 2 5 [0,0,0,1,2]) := by
  have h : bucket true 3 2 5 [0,0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five74 : BadRow (bucket false 3 2 5 [0,0,0,2,1]) := by
  have h : bucket false 3 2 5 [0,0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five75 : BadRow (bucket true 3 2 5 [0,0,0,2,1]) := by
  have h : bucket true 3 2 5 [0,0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five76 : BadRow (bucket false 3 2 5 [0,0,0,3,0]) := by
  have h : bucket false 3 2 5 [0,0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five77 : BadRow (bucket true 3 2 5 [0,0,0,3,0]) := by
  have h : bucket true 3 2 5 [0,0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five78 : BadRow (bucket false 3 2 5 [0,0,1,0,2]) := by
  have h : bucket false 3 2 5 [0,0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five79 : BadRow (bucket true 3 2 5 [0,0,1,0,2]) := by
  have h : bucket true 3 2 5 [0,0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
