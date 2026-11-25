import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five280 : BadRow (bucket false 4 2 1 [4]) := by
  have h : bucket false 4 2 1 [4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five281 : BadRow (bucket true 4 2 1 [4]) := by
  have h : bucket true 4 2 1 [4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five282 : BadRow (bucket false 4 2 2 [0,4]) := by
  have h : bucket false 4 2 2 [0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five283 : BadRow (bucket true 4 2 2 [0,4]) := by
  have h : bucket true 4 2 2 [0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five284 : BadRow (bucket false 4 2 2 [1,3]) := by
  have h : bucket false 4 2 2 [1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five285 : BadRow (bucket true 4 2 2 [1,3]) := by
  have h : bucket true 4 2 2 [1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five286 : BadRow (bucket false 4 2 2 [2,2]) := by
  have h : bucket false 4 2 2 [2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five287 : BadRow (bucket true 4 2 2 [2,2]) := by
  have h : bucket true 4 2 2 [2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
