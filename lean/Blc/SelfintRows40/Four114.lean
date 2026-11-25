import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four798 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,2,1,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four799 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [2,0,0,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four800 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [2,0,1,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [2,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four801 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [2,0,2,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four802 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [2,1,0,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [2,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four803 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [2,1,1,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [2,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four804 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [2,2,0,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
