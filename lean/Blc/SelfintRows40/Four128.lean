import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four896 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [0,2,1,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four897 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [0,3,0,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four898 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [1,0,0,2]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four899 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [1,0,1,1]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four900 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [1,0,2,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four901 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [1,1,0,1]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four902 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [1,1,1,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
