import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five160 : BadRow (bucket false 3 3 3 [1,1,1]) := by
  have h : bucket false 3 3 3 [1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five161 : BadRow (bucket true 3 3 3 [1,1,1]) := by
  have h : bucket true 3 3 3 [1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five162 : BadRow (bucket false 3 3 3 [1,2,0]) := by
  have h : bucket false 3 3 3 [1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five163 : BadRow (bucket true 3 3 3 [1,2,0]) := by
  have h : bucket true 3 3 3 [1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five164 : BadRow (bucket false 3 3 3 [2,0,1]) := by
  have h : bucket false 3 3 3 [2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five165 : BadRow (bucket true 3 3 3 [2,0,1]) := by
  have h : bucket true 3 3 3 [2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five166 : BadRow (bucket false 3 3 3 [2,1,0]) := by
  have h : bucket false 3 3 3 [2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five167 : BadRow (bucket true 3 3 3 [2,1,0]) := by
  have h : bucket true 3 3 3 [2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
