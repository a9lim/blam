import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five272 : BadRow (bucket false 3 3 5 [2,0,0,1,0]) := by
  have h : bucket false 3 3 5 [2,0,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five273 : BadRow (bucket true 3 3 5 [2,0,0,1,0]) := by
  have h : bucket true 3 3 5 [2,0,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five274 : BadRow (bucket false 3 3 5 [2,0,1,0,0]) := by
  have h : bucket false 3 3 5 [2,0,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five275 : BadRow (bucket true 3 3 5 [2,0,1,0,0]) := by
  have h : bucket true 3 3 5 [2,0,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five276 : BadRow (bucket false 3 3 5 [2,1,0,0,0]) := by
  have h : bucket false 3 3 5 [2,1,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five277 : BadRow (bucket true 3 3 5 [2,1,0,0,0]) := by
  have h : bucket true 3 3 5 [2,1,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five278 : BadRow (bucket false 3 3 5 [3,0,0,0,0]) := by
  have h : bucket false 3 3 5 [3,0,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five279 : BadRow (bucket true 3 3 5 [3,0,0,0,0]) := by
  have h : bucket true 3 3 5 [3,0,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
