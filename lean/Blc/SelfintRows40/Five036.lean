import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five288 : BadRow (bucket false 4 2 2 [3,1]) := by
  have h : bucket false 4 2 2 [3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five289 : BadRow (bucket true 4 2 2 [3,1]) := by
  have h : bucket true 4 2 2 [3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five290 : BadRow (bucket false 4 2 2 [4,0]) := by
  have h : bucket false 4 2 2 [4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five291 : BadRow (bucket true 4 2 2 [4,0]) := by
  have h : bucket true 4 2 2 [4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five292 : BadRow (bucket false 4 2 3 [0,0,4]) := by
  have h : bucket false 4 2 3 [0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five293 : BadRow (bucket true 4 2 3 [0,0,4]) := by
  have h : bucket true 4 2 3 [0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five294 : BadRow (bucket false 4 2 3 [0,1,3]) := by
  have h : bucket false 4 2 3 [0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five295 : BadRow (bucket true 4 2 3 [0,1,3]) := by
  have h : bucket true 4 2 3 [0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
