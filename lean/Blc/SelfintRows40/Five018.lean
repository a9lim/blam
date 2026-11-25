import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five144 : BadRow (bucket false 3 3 2 [1,2]) := by
  have h : bucket false 3 3 2 [1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five145 : BadRow (bucket true 3 3 2 [1,2]) := by
  have h : bucket true 3 3 2 [1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five146 : BadRow (bucket false 3 3 2 [2,1]) := by
  have h : bucket false 3 3 2 [2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five147 : BadRow (bucket true 3 3 2 [2,1]) := by
  have h : bucket true 3 3 2 [2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five148 : BadRow (bucket false 3 3 2 [3,0]) := by
  have h : bucket false 3 3 2 [3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five149 : BadRow (bucket true 3 3 2 [3,0]) := by
  have h : bucket true 3 3 2 [3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five150 : BadRow (bucket false 3 3 3 [0,0,3]) := by
  have h : bucket false 3 3 3 [0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five151 : BadRow (bucket true 3 3 3 [0,0,3]) := by
  have h : bucket true 3 3 3 [0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
