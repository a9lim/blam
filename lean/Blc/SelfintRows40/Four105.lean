import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four735 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [1,0,2,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [1,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four736 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [1,1,1,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [1,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four737 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [1,1,2,1]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [1,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four738 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [1,2,0,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [1,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four739 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [1,2,1,1]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [1,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four740 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [1,2,2,0]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [1,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four741 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,0,1,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [2,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
