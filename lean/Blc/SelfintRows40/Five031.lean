import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five248 : BadRow (bucket false 3 3 5 [0,3,0,0,0]) := by
  have h : bucket false 3 3 5 [0,3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five249 : BadRow (bucket true 3 3 5 [0,3,0,0,0]) := by
  have h : bucket true 3 3 5 [0,3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five250 : BadRow (bucket false 3 3 5 [1,0,0,0,2]) := by
  have h : bucket false 3 3 5 [1,0,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five251 : BadRow (bucket true 3 3 5 [1,0,0,0,2]) := by
  have h : bucket true 3 3 5 [1,0,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five252 : BadRow (bucket false 3 3 5 [1,0,0,1,1]) := by
  have h : bucket false 3 3 5 [1,0,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five253 : BadRow (bucket true 3 3 5 [1,0,0,1,1]) := by
  have h : bucket true 3 3 5 [1,0,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five254 : BadRow (bucket false 3 3 5 [1,0,0,2,0]) := by
  have h : bucket false 3 3 5 [1,0,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five255 : BadRow (bucket true 3 3 5 [1,0,0,2,0]) := by
  have h : bucket true 3 3 5 [1,0,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
