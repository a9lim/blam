import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five24 : BadRow (bucket false 3 2 3 [2,0,1]) := by
  have h : bucket false 3 2 3 [2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five25 : BadRow (bucket true 3 2 3 [2,0,1]) := by
  have h : bucket true 3 2 3 [2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five26 : BadRow (bucket false 3 2 3 [2,1,0]) := by
  have h : bucket false 3 2 3 [2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five27 : BadRow (bucket true 3 2 3 [2,1,0]) := by
  have h : bucket true 3 2 3 [2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five28 : BadRow (bucket false 3 2 3 [3,0,0]) := by
  have h : bucket false 3 2 3 [3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five29 : BadRow (bucket true 3 2 3 [3,0,0]) := by
  have h : bucket true 3 2 3 [3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five30 : BadRow (bucket false 3 2 4 [0,0,0,3]) := by
  have h : bucket false 3 2 4 [0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five31 : BadRow (bucket true 3 2 4 [0,0,0,3]) := by
  have h : bucket true 3 2 4 [0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
