import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four707 : BadRow (markedRow ⟨2,2,0,2,4,6⟩ [0,0] [1,1,2,2]) := by
  have h : markedRow ⟨2,2,0,2,4,6⟩ [0,0] [1,1,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four708 : BadRow (markedRow ⟨2,2,0,2,4,6⟩ [0,0] [1,2,1,2]) := by
  have h : markedRow ⟨2,2,0,2,4,6⟩ [0,0] [1,2,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four709 : BadRow (markedRow ⟨2,2,0,2,4,6⟩ [0,0] [1,2,2,1]) := by
  have h : markedRow ⟨2,2,0,2,4,6⟩ [0,0] [1,2,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four710 : BadRow (markedRow ⟨2,2,0,2,4,6⟩ [0,0] [2,0,2,2]) := by
  have h : markedRow ⟨2,2,0,2,4,6⟩ [0,0] [2,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four711 : BadRow (markedRow ⟨2,2,0,2,4,6⟩ [0,0] [2,1,1,2]) := by
  have h : markedRow ⟨2,2,0,2,4,6⟩ [0,0] [2,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four712 : BadRow (markedRow ⟨2,2,0,2,4,6⟩ [0,0] [2,1,2,1]) := by
  have h : markedRow ⟨2,2,0,2,4,6⟩ [0,0] [2,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four713 : BadRow (markedRow ⟨2,2,0,2,4,6⟩ [0,0] [2,2,0,2]) := by
  have h : markedRow ⟨2,2,0,2,4,6⟩ [0,0] [2,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
