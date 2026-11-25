import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four588 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,1,0,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four589 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,1,1,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four590 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,1,2,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four591 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,2,0,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four592 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,2,1,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four593 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,3,0,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four594 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [3,0,0,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [3,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
