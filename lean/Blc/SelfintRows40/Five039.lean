import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five312 : BadRow (bucket false 4 2 3 [2,1,1]) := by
  have h : bucket false 4 2 3 [2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five313 : BadRow (bucket true 4 2 3 [2,1,1]) := by
  have h : bucket true 4 2 3 [2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five314 : BadRow (bucket false 4 2 3 [2,2,0]) := by
  have h : bucket false 4 2 3 [2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five315 : BadRow (bucket true 4 2 3 [2,2,0]) := by
  have h : bucket true 4 2 3 [2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five316 : BadRow (bucket false 4 2 3 [3,0,1]) := by
  have h : bucket false 4 2 3 [3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five317 : BadRow (bucket true 4 2 3 [3,0,1]) := by
  have h : bucket true 4 2 3 [3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five318 : BadRow (bucket false 4 2 3 [3,1,0]) := by
  have h : bucket false 4 2 3 [3,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five319 : BadRow (bucket true 4 2 3 [3,1,0]) := by
  have h : bucket true 4 2 3 [3,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
