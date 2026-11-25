import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five632 : BadRow (bucket false 4 3 4 [2,1,1,0]) := by
  have h : bucket false 4 3 4 [2,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five633 : BadRow (bucket true 4 3 4 [2,1,1,0]) := by
  have h : bucket true 4 3 4 [2,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five634 : BadRow (bucket false 4 3 4 [2,2,0,0]) := by
  have h : bucket false 4 3 4 [2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five635 : BadRow (bucket true 4 3 4 [2,2,0,0]) := by
  have h : bucket true 4 3 4 [2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five636 : BadRow (bucket false 4 3 4 [3,0,0,1]) := by
  have h : bucket false 4 3 4 [3,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five637 : BadRow (bucket true 4 3 4 [3,0,0,1]) := by
  have h : bucket true 4 3 4 [3,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five638 : BadRow (bucket false 4 3 4 [3,0,1,0]) := by
  have h : bucket false 4 3 4 [3,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five639 : BadRow (bucket true 4 3 4 [3,0,1,0]) := by
  have h : bucket true 4 3 4 [3,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
