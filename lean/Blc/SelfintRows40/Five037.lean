import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five296 : BadRow (bucket false 4 2 3 [0,2,2]) := by
  have h : bucket false 4 2 3 [0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five297 : BadRow (bucket true 4 2 3 [0,2,2]) := by
  have h : bucket true 4 2 3 [0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five298 : BadRow (bucket false 4 2 3 [0,3,1]) := by
  have h : bucket false 4 2 3 [0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five299 : BadRow (bucket true 4 2 3 [0,3,1]) := by
  have h : bucket true 4 2 3 [0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five300 : BadRow (bucket false 4 2 3 [0,4,0]) := by
  have h : bucket false 4 2 3 [0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five301 : BadRow (bucket true 4 2 3 [0,4,0]) := by
  have h : bucket true 4 2 3 [0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five302 : BadRow (bucket false 4 2 3 [1,0,3]) := by
  have h : bucket false 4 2 3 [1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five303 : BadRow (bucket true 4 2 3 [1,0,3]) := by
  have h : bucket true 4 2 3 [1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
