import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five200 : BadRow (bucket false 3 3 4 [1,2,0,0]) := by
  have h : bucket false 3 3 4 [1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five201 : BadRow (bucket true 3 3 4 [1,2,0,0]) := by
  have h : bucket true 3 3 4 [1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five202 : BadRow (bucket false 3 3 4 [2,0,0,1]) := by
  have h : bucket false 3 3 4 [2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five203 : BadRow (bucket true 3 3 4 [2,0,0,1]) := by
  have h : bucket true 3 3 4 [2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five204 : BadRow (bucket false 3 3 4 [2,0,1,0]) := by
  have h : bucket false 3 3 4 [2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five205 : BadRow (bucket true 3 3 4 [2,0,1,0]) := by
  have h : bucket true 3 3 4 [2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five206 : BadRow (bucket false 3 3 4 [2,1,0,0]) := by
  have h : bucket false 3 3 4 [2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five207 : BadRow (bucket true 3 3 4 [2,1,0,0]) := by
  have h : bucket true 3 3 4 [2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
