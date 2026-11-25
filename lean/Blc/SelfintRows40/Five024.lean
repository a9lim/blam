import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five192 : BadRow (bucket false 3 3 4 [1,0,1,1]) := by
  have h : bucket false 3 3 4 [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five193 : BadRow (bucket true 3 3 4 [1,0,1,1]) := by
  have h : bucket true 3 3 4 [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five194 : BadRow (bucket false 3 3 4 [1,0,2,0]) := by
  have h : bucket false 3 3 4 [1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five195 : BadRow (bucket true 3 3 4 [1,0,2,0]) := by
  have h : bucket true 3 3 4 [1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five196 : BadRow (bucket false 3 3 4 [1,1,0,1]) := by
  have h : bucket false 3 3 4 [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five197 : BadRow (bucket true 3 3 4 [1,1,0,1]) := by
  have h : bucket true 3 3 4 [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five198 : BadRow (bucket false 3 3 4 [1,1,1,0]) := by
  have h : bucket false 3 3 4 [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five199 : BadRow (bucket true 3 3 4 [1,1,1,0]) := by
  have h : bucket true 3 3 4 [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
