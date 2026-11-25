import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four462 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,1,0,2]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four463 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,1,1,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four464 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,1,2,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four465 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,2,0,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four466 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,2,1,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four467 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [1,0,0,2]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four468 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [1,0,1,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
