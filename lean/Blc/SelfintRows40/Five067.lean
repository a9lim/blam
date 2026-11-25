import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five536 : BadRow (bucket false 4 3 2 [1,3]) := by
  have h : bucket false 4 3 2 [1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five537 : BadRow (bucket true 4 3 2 [1,3]) := by
  have h : bucket true 4 3 2 [1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five538 : BadRow (bucket false 4 3 2 [2,2]) := by
  have h : bucket false 4 3 2 [2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five539 : BadRow (bucket true 4 3 2 [2,2]) := by
  have h : bucket true 4 3 2 [2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five540 : BadRow (bucket false 4 3 2 [3,1]) := by
  have h : bucket false 4 3 2 [3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five541 : BadRow (bucket true 4 3 2 [3,1]) := by
  have h : bucket true 4 3 2 [3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five542 : BadRow (bucket false 4 3 2 [4,0]) := by
  have h : bucket false 4 3 2 [4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five543 : BadRow (bucket true 4 3 2 [4,0]) := by
  have h : bucket true 4 3 2 [4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
