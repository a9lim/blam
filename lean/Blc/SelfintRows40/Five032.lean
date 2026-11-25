import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five256 : BadRow (bucket false 3 3 5 [1,0,1,0,1]) := by
  have h : bucket false 3 3 5 [1,0,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five257 : BadRow (bucket true 3 3 5 [1,0,1,0,1]) := by
  have h : bucket true 3 3 5 [1,0,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five258 : BadRow (bucket false 3 3 5 [1,0,1,1,0]) := by
  have h : bucket false 3 3 5 [1,0,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five259 : BadRow (bucket true 3 3 5 [1,0,1,1,0]) := by
  have h : bucket true 3 3 5 [1,0,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five260 : BadRow (bucket false 3 3 5 [1,0,2,0,0]) := by
  have h : bucket false 3 3 5 [1,0,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five261 : BadRow (bucket true 3 3 5 [1,0,2,0,0]) := by
  have h : bucket true 3 3 5 [1,0,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five262 : BadRow (bucket false 3 3 5 [1,1,0,0,1]) := by
  have h : bucket false 3 3 5 [1,1,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five263 : BadRow (bucket true 3 3 5 [1,1,0,0,1]) := by
  have h : bucket true 3 3 5 [1,1,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
