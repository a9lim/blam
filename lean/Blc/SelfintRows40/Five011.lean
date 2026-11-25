import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five88 : BadRow (bucket false 3 2 5 [0,0,3,0,0]) := by
  have h : bucket false 3 2 5 [0,0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five89 : BadRow (bucket true 3 2 5 [0,0,3,0,0]) := by
  have h : bucket true 3 2 5 [0,0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five90 : BadRow (bucket false 3 2 5 [0,1,0,0,2]) := by
  have h : bucket false 3 2 5 [0,1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five91 : BadRow (bucket true 3 2 5 [0,1,0,0,2]) := by
  have h : bucket true 3 2 5 [0,1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five92 : BadRow (bucket false 3 2 5 [0,1,0,1,1]) := by
  have h : bucket false 3 2 5 [0,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five93 : BadRow (bucket true 3 2 5 [0,1,0,1,1]) := by
  have h : bucket true 3 2 5 [0,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five94 : BadRow (bucket false 3 2 5 [0,1,0,2,0]) := by
  have h : bucket false 3 2 5 [0,1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five95 : BadRow (bucket true 3 2 5 [0,1,0,2,0]) := by
  have h : bucket true 3 2 5 [0,1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
