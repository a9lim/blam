import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five584 : BadRow (bucket false 4 3 4 [0,1,0,3]) := by
  have h : bucket false 4 3 4 [0,1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five585 : BadRow (bucket true 4 3 4 [0,1,0,3]) := by
  have h : bucket true 4 3 4 [0,1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five586 : BadRow (bucket false 4 3 4 [0,1,1,2]) := by
  have h : bucket false 4 3 4 [0,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five587 : BadRow (bucket true 4 3 4 [0,1,1,2]) := by
  have h : bucket true 4 3 4 [0,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five588 : BadRow (bucket false 4 3 4 [0,1,2,1]) := by
  have h : bucket false 4 3 4 [0,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five589 : BadRow (bucket true 4 3 4 [0,1,2,1]) := by
  have h : bucket true 4 3 4 [0,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five590 : BadRow (bucket false 4 3 4 [0,1,3,0]) := by
  have h : bucket false 4 3 4 [0,1,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five591 : BadRow (bucket true 4 3 4 [0,1,3,0]) := by
  have h : bucket true 4 3 4 [0,1,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
