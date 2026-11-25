import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five320 : BadRow (bucket false 4 2 3 [4,0,0]) := by
  have h : bucket false 4 2 3 [4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five321 : BadRow (bucket true 4 2 3 [4,0,0]) := by
  have h : bucket true 4 2 3 [4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five322 : BadRow (bucket false 4 2 4 [0,0,0,4]) := by
  have h : bucket false 4 2 4 [0,0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five323 : BadRow (bucket true 4 2 4 [0,0,0,4]) := by
  have h : bucket true 4 2 4 [0,0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five324 : BadRow (bucket false 4 2 4 [0,0,1,3]) := by
  have h : bucket false 4 2 4 [0,0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five325 : BadRow (bucket true 4 2 4 [0,0,1,3]) := by
  have h : bucket true 4 2 4 [0,0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five326 : BadRow (bucket false 4 2 4 [0,0,2,2]) := by
  have h : bucket false 4 2 4 [0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five327 : BadRow (bucket true 4 2 4 [0,0,2,2]) := by
  have h : bucket true 4 2 4 [0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
