import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five232 : BadRow (bucket false 3 3 5 [0,1,0,1,1]) := by
  have h : bucket false 3 3 5 [0,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five233 : BadRow (bucket true 3 3 5 [0,1,0,1,1]) := by
  have h : bucket true 3 3 5 [0,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five234 : BadRow (bucket false 3 3 5 [0,1,0,2,0]) := by
  have h : bucket false 3 3 5 [0,1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five235 : BadRow (bucket true 3 3 5 [0,1,0,2,0]) := by
  have h : bucket true 3 3 5 [0,1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five236 : BadRow (bucket false 3 3 5 [0,1,1,0,1]) := by
  have h : bucket false 3 3 5 [0,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five237 : BadRow (bucket true 3 3 5 [0,1,1,0,1]) := by
  have h : bucket true 3 3 5 [0,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five238 : BadRow (bucket false 3 3 5 [0,1,1,1,0]) := by
  have h : bucket false 3 3 5 [0,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five239 : BadRow (bucket true 3 3 5 [0,1,1,1,0]) := by
  have h : bucket true 3 3 5 [0,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
