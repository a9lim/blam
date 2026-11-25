import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five240 : BadRow (bucket false 3 3 5 [0,1,2,0,0]) := by
  have h : bucket false 3 3 5 [0,1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five241 : BadRow (bucket true 3 3 5 [0,1,2,0,0]) := by
  have h : bucket true 3 3 5 [0,1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five242 : BadRow (bucket false 3 3 5 [0,2,0,0,1]) := by
  have h : bucket false 3 3 5 [0,2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five243 : BadRow (bucket true 3 3 5 [0,2,0,0,1]) := by
  have h : bucket true 3 3 5 [0,2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five244 : BadRow (bucket false 3 3 5 [0,2,0,1,0]) := by
  have h : bucket false 3 3 5 [0,2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five245 : BadRow (bucket true 3 3 5 [0,2,0,1,0]) := by
  have h : bucket true 3 3 5 [0,2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five246 : BadRow (bucket false 3 3 5 [0,2,1,0,0]) := by
  have h : bucket false 3 3 5 [0,2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five247 : BadRow (bucket true 3 3 5 [0,2,1,0,0]) := by
  have h : bucket true 3 3 5 [0,2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
