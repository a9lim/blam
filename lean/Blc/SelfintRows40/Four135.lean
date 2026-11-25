import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four945 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,1,0,2]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four946 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,1,1,1]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four947 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,1,2,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four948 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,2,0,1]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four949 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,2,1,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four950 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [1,0,0,2]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four951 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [1,0,1,1]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
