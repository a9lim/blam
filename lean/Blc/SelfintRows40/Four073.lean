import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four511 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,0,1,2]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four512 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,0,2,1]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four513 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,0,3,0]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four514 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,1,0,2]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four515 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,1,1,1]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four516 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,1,2,0]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four517 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,2,0,1]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
