import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four742 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,0,2,1]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four743 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,1,0,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four744 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,1,1,1]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four745 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,1,2,0]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four746 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,2,0,1]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four747 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,2,1,0]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four748 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [0,0,2,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
