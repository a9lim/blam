import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four294 : BadRow (markedRow ⟨1,2,2,2,4,6⟩ [1,1] [0,2,2,2]) := by
  have h : markedRow ⟨1,2,2,2,4,6⟩ [1,1] [0,2,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four295 : BadRow (markedRow ⟨1,2,2,2,4,6⟩ [1,1] [1,1,2,2]) := by
  have h : markedRow ⟨1,2,2,2,4,6⟩ [1,1] [1,1,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four296 : BadRow (markedRow ⟨1,2,2,2,4,6⟩ [1,1] [1,2,1,2]) := by
  have h : markedRow ⟨1,2,2,2,4,6⟩ [1,1] [1,2,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four297 : BadRow (markedRow ⟨1,2,2,2,4,6⟩ [1,1] [1,2,2,1]) := by
  have h : markedRow ⟨1,2,2,2,4,6⟩ [1,1] [1,2,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four298 : BadRow (markedRow ⟨1,2,2,2,4,6⟩ [1,1] [2,0,2,2]) := by
  have h : markedRow ⟨1,2,2,2,4,6⟩ [1,1] [2,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four299 : BadRow (markedRow ⟨1,2,2,2,4,6⟩ [1,1] [2,1,1,2]) := by
  have h : markedRow ⟨1,2,2,2,4,6⟩ [1,1] [2,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four300 : BadRow (markedRow ⟨1,2,2,2,4,6⟩ [1,1] [2,1,2,1]) := by
  have h : markedRow ⟨1,2,2,2,4,6⟩ [1,1] [2,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
