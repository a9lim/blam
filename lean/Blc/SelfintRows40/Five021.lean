import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five168 : BadRow (bucket false 3 3 3 [3,0,0]) := by
  have h : bucket false 3 3 3 [3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five169 : BadRow (bucket true 3 3 3 [3,0,0]) := by
  have h : bucket true 3 3 3 [3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five170 : BadRow (bucket false 3 3 4 [0,0,0,3]) := by
  have h : bucket false 3 3 4 [0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five171 : BadRow (bucket true 3 3 4 [0,0,0,3]) := by
  have h : bucket true 3 3 4 [0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five172 : BadRow (bucket false 3 3 4 [0,0,1,2]) := by
  have h : bucket false 3 3 4 [0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five173 : BadRow (bucket true 3 3 4 [0,0,1,2]) := by
  have h : bucket true 3 3 4 [0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five174 : BadRow (bucket false 3 3 4 [0,0,2,1]) := by
  have h : bucket false 3 3 4 [0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five175 : BadRow (bucket true 3 3 4 [0,0,2,1]) := by
  have h : bucket true 3 3 4 [0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
