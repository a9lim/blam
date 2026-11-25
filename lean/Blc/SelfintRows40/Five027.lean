import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five216 : BadRow (bucket false 3 3 5 [0,0,0,3,0]) := by
  have h : bucket false 3 3 5 [0,0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five217 : BadRow (bucket true 3 3 5 [0,0,0,3,0]) := by
  have h : bucket true 3 3 5 [0,0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five218 : BadRow (bucket false 3 3 5 [0,0,1,0,2]) := by
  have h : bucket false 3 3 5 [0,0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five219 : BadRow (bucket true 3 3 5 [0,0,1,0,2]) := by
  have h : bucket true 3 3 5 [0,0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five220 : BadRow (bucket false 3 3 5 [0,0,1,1,1]) := by
  have h : bucket false 3 3 5 [0,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five221 : BadRow (bucket true 3 3 5 [0,0,1,1,1]) := by
  have h : bucket true 3 3 5 [0,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five222 : BadRow (bucket false 3 3 5 [0,0,1,2,0]) := by
  have h : bucket false 3 3 5 [0,0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five223 : BadRow (bucket true 3 3 5 [0,0,1,2,0]) := by
  have h : bucket true 3 3 5 [0,0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
