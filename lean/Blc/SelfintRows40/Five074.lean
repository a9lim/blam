import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five592 : BadRow (bucket false 4 3 4 [0,2,0,2]) := by
  have h : bucket false 4 3 4 [0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five593 : BadRow (bucket true 4 3 4 [0,2,0,2]) := by
  have h : bucket true 4 3 4 [0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five594 : BadRow (bucket false 4 3 4 [0,2,1,1]) := by
  have h : bucket false 4 3 4 [0,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five595 : BadRow (bucket true 4 3 4 [0,2,1,1]) := by
  have h : bucket true 4 3 4 [0,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five596 : BadRow (bucket false 4 3 4 [0,2,2,0]) := by
  have h : bucket false 4 3 4 [0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five597 : BadRow (bucket true 4 3 4 [0,2,2,0]) := by
  have h : bucket true 4 3 4 [0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five598 : BadRow (bucket false 4 3 4 [0,3,0,1]) := by
  have h : bucket false 4 3 4 [0,3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five599 : BadRow (bucket true 4 3 4 [0,3,0,1]) := by
  have h : bucket true 4 3 4 [0,3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
