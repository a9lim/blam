import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five616 : BadRow (bucket false 4 3 4 [1,1,2,0]) := by
  have h : bucket false 4 3 4 [1,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five617 : BadRow (bucket true 4 3 4 [1,1,2,0]) := by
  have h : bucket true 4 3 4 [1,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five618 : BadRow (bucket false 4 3 4 [1,2,0,1]) := by
  have h : bucket false 4 3 4 [1,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five619 : BadRow (bucket true 4 3 4 [1,2,0,1]) := by
  have h : bucket true 4 3 4 [1,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five620 : BadRow (bucket false 4 3 4 [1,2,1,0]) := by
  have h : bucket false 4 3 4 [1,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five621 : BadRow (bucket true 4 3 4 [1,2,1,0]) := by
  have h : bucket true 4 3 4 [1,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five622 : BadRow (bucket false 4 3 4 [1,3,0,0]) := by
  have h : bucket false 4 3 4 [1,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five623 : BadRow (bucket true 4 3 4 [1,3,0,0]) := by
  have h : bucket true 4 3 4 [1,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
