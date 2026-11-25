import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four826 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,2,0,1]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four827 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,2,1,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four828 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [1,0,0,2]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four829 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [1,0,1,1]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four830 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [1,0,2,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four831 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [1,1,0,1]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four832 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [1,1,1,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
