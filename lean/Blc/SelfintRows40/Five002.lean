import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five16 : BadRow (bucket false 3 2 3 [0,3,0]) := by
  have h : bucket false 3 2 3 [0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five17 : BadRow (bucket true 3 2 3 [0,3,0]) := by
  have h : bucket true 3 2 3 [0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five18 : BadRow (bucket false 3 2 3 [1,0,2]) := by
  have h : bucket false 3 2 3 [1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five19 : BadRow (bucket true 3 2 3 [1,0,2]) := by
  have h : bucket true 3 2 3 [1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five20 : BadRow (bucket false 3 2 3 [1,1,1]) := by
  have h : bucket false 3 2 3 [1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five21 : BadRow (bucket true 3 2 3 [1,1,1]) := by
  have h : bucket true 3 2 3 [1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five22 : BadRow (bucket false 3 2 3 [1,2,0]) := by
  have h : bucket false 3 2 3 [1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five23 : BadRow (bucket true 3 2 3 [1,2,0]) := by
  have h : bucket true 3 2 3 [1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
