import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four560 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,0,2,3]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,0,2,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four561 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,0,3,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,0,3,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four562 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,1,1,3]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,1,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four563 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,1,2,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,1,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four564 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,1,3,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,1,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four565 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,2,0,3]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,2,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four566 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,2,1,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [0,2,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
