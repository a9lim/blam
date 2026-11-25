import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four791 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [0,2,2,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four792 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,0,1,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four793 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,0,2,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four794 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,1,0,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four795 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,1,1,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four796 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,1,2,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four797 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,2,0,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [1,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
