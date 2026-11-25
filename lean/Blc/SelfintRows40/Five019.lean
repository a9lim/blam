import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five152 : BadRow (bucket false 3 3 3 [0,1,2]) := by
  have h : bucket false 3 3 3 [0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five153 : BadRow (bucket true 3 3 3 [0,1,2]) := by
  have h : bucket true 3 3 3 [0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five154 : BadRow (bucket false 3 3 3 [0,2,1]) := by
  have h : bucket false 3 3 3 [0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five155 : BadRow (bucket true 3 3 3 [0,2,1]) := by
  have h : bucket true 3 3 3 [0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five156 : BadRow (bucket false 3 3 3 [0,3,0]) := by
  have h : bucket false 3 3 3 [0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five157 : BadRow (bucket true 3 3 3 [0,3,0]) := by
  have h : bucket true 3 3 3 [0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five158 : BadRow (bucket false 3 3 3 [1,0,2]) := by
  have h : bucket false 3 3 3 [1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five159 : BadRow (bucket true 3 3 3 [1,0,2]) := by
  have h : bucket true 3 3 3 [1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
