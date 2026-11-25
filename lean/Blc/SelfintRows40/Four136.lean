import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four952 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [1,0,2,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four953 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [1,1,0,1]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four954 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [1,1,1,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four955 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [1,2,0,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four956 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [2,0,0,1]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four957 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [2,0,1,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four958 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [2,1,0,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
