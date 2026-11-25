import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four567 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,2,2,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,2,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four568 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,2,3,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,2,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four569 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,3,0,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,3,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four570 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,3,1,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,3,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four571 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,3,2,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,3,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four572 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,0,1,3]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four573 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,0,2,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
