import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four581 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,2,2,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four582 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,3,0,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four583 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,3,1,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [1,3,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four584 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,0,0,3]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four585 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,0,1,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four586 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,0,2,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four587 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,0,3,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [2,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
