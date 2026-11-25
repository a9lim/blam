import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four469 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [1,0,2,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four470 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [1,1,0,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four471 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [1,1,1,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four472 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [1,2,0,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four473 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [2,0,0,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four474 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [2,0,1,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four475 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [2,1,0,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
