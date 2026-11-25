import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five416 : BadRow (bucket false 4 2 5 [0,0,3,0,1]) := by
  have h : bucket false 4 2 5 [0,0,3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five417 : BadRow (bucket true 4 2 5 [0,0,3,0,1]) := by
  have h : bucket true 4 2 5 [0,0,3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five418 : BadRow (bucket false 4 2 5 [0,0,3,1,0]) := by
  have h : bucket false 4 2 5 [0,0,3,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five419 : BadRow (bucket true 4 2 5 [0,0,3,1,0]) := by
  have h : bucket true 4 2 5 [0,0,3,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five420 : BadRow (bucket false 4 2 5 [0,0,4,0,0]) := by
  have h : bucket false 4 2 5 [0,0,4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five421 : BadRow (bucket true 4 2 5 [0,0,4,0,0]) := by
  have h : bucket true 4 2 5 [0,0,4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five422 : BadRow (bucket false 4 2 5 [0,1,0,0,3]) := by
  have h : bucket false 4 2 5 [0,1,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five423 : BadRow (bucket true 4 2 5 [0,1,0,0,3]) := by
  have h : bucket true 4 2 5 [0,1,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
