import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four686 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,0,0,3]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four687 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,0,1,2]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four688 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,0,2,1]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four689 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,0,3,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four690 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,1,0,2]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four691 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,1,1,1]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four692 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,1,2,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
