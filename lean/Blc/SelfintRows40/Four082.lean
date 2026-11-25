import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four574 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,0,3,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four575 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,1,0,3]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four576 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,1,1,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four577 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,1,2,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four578 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,1,3,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,1,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four579 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,2,0,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four580 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,2,1,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
