import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five624 : BadRow (bucket false 4 3 4 [2,0,0,2]) := by
  have h : bucket false 4 3 4 [2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five625 : BadRow (bucket true 4 3 4 [2,0,0,2]) := by
  have h : bucket true 4 3 4 [2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five626 : BadRow (bucket false 4 3 4 [2,0,1,1]) := by
  have h : bucket false 4 3 4 [2,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five627 : BadRow (bucket true 4 3 4 [2,0,1,1]) := by
  have h : bucket true 4 3 4 [2,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five628 : BadRow (bucket false 4 3 4 [2,0,2,0]) := by
  have h : bucket false 4 3 4 [2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five629 : BadRow (bucket true 4 3 4 [2,0,2,0]) := by
  have h : bucket true 4 3 4 [2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five630 : BadRow (bucket false 4 3 4 [2,1,0,1]) := by
  have h : bucket false 4 3 4 [2,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five631 : BadRow (bucket true 4 3 4 [2,1,0,1]) := by
  have h : bucket true 4 3 4 [2,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
