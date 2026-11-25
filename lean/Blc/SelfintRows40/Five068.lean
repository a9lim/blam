import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five544 : BadRow (bucket false 4 3 3 [0,0,4]) := by
  have h : bucket false 4 3 3 [0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five545 : BadRow (bucket true 4 3 3 [0,0,4]) := by
  have h : bucket true 4 3 3 [0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five546 : BadRow (bucket false 4 3 3 [0,1,3]) := by
  have h : bucket false 4 3 3 [0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five547 : BadRow (bucket true 4 3 3 [0,1,3]) := by
  have h : bucket true 4 3 3 [0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five548 : BadRow (bucket false 4 3 3 [0,2,2]) := by
  have h : bucket false 4 3 3 [0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five549 : BadRow (bucket true 4 3 3 [0,2,2]) := by
  have h : bucket true 4 3 3 [0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five550 : BadRow (bucket false 4 3 3 [0,3,1]) := by
  have h : bucket false 4 3 3 [0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five551 : BadRow (bucket true 4 3 3 [0,3,1]) := by
  have h : bucket true 4 3 3 [0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
