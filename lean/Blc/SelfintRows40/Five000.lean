import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five0 : BadRow (bucket false 3 2 1 [3]) := by
  have h : bucket false 3 2 1 [3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five1 : BadRow (bucket true 3 2 1 [3]) := by
  have h : bucket true 3 2 1 [3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five2 : BadRow (bucket false 3 2 2 [0,3]) := by
  have h : bucket false 3 2 2 [0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five3 : BadRow (bucket true 3 2 2 [0,3]) := by
  have h : bucket true 3 2 2 [0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five4 : BadRow (bucket false 3 2 2 [1,2]) := by
  have h : bucket false 3 2 2 [1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five5 : BadRow (bucket true 3 2 2 [1,2]) := by
  have h : bucket true 3 2 2 [1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five6 : BadRow (bucket false 3 2 2 [2,1]) := by
  have h : bucket false 3 2 2 [2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five7 : BadRow (bucket true 3 2 2 [2,1]) := by
  have h : bucket true 3 2 2 [2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
