import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five504 : BadRow (bucket false 4 2 5 [2,0,0,1,1]) := by
  have h : bucket false 4 2 5 [2,0,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five505 : BadRow (bucket true 4 2 5 [2,0,0,1,1]) := by
  have h : bucket true 4 2 5 [2,0,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five506 : BadRow (bucket false 4 2 5 [2,0,0,2,0]) := by
  have h : bucket false 4 2 5 [2,0,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five507 : BadRow (bucket true 4 2 5 [2,0,0,2,0]) := by
  have h : bucket true 4 2 5 [2,0,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five508 : BadRow (bucket false 4 2 5 [2,0,1,0,1]) := by
  have h : bucket false 4 2 5 [2,0,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five509 : BadRow (bucket true 4 2 5 [2,0,1,0,1]) := by
  have h : bucket true 4 2 5 [2,0,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five510 : BadRow (bucket false 4 2 5 [2,0,1,1,0]) := by
  have h : bucket false 4 2 5 [2,0,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five511 : BadRow (bucket true 4 2 5 [2,0,1,1,0]) := by
  have h : bucket true 4 2 5 [2,0,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
