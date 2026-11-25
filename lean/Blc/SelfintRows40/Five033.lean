import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five264 : BadRow (bucket false 3 3 5 [1,1,0,1,0]) := by
  have h : bucket false 3 3 5 [1,1,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five265 : BadRow (bucket true 3 3 5 [1,1,0,1,0]) := by
  have h : bucket true 3 3 5 [1,1,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five266 : BadRow (bucket false 3 3 5 [1,1,1,0,0]) := by
  have h : bucket false 3 3 5 [1,1,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five267 : BadRow (bucket true 3 3 5 [1,1,1,0,0]) := by
  have h : bucket true 3 3 5 [1,1,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five268 : BadRow (bucket false 3 3 5 [1,2,0,0,0]) := by
  have h : bucket false 3 3 5 [1,2,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five269 : BadRow (bucket true 3 3 5 [1,2,0,0,0]) := by
  have h : bucket true 3 3 5 [1,2,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five270 : BadRow (bucket false 3 3 5 [2,0,0,0,1]) := by
  have h : bucket false 3 3 5 [2,0,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five271 : BadRow (bucket true 3 3 5 [2,0,0,0,1]) := by
  have h : bucket true 3 3 5 [2,0,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
