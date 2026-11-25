import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four287 : BadRow (markedRow ⟨1,2,1,2,4,7⟩ [0,1] [2,1,2,2]) := by
  have h : markedRow ⟨1,2,1,2,4,7⟩ [0,1] [2,1,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four288 : BadRow (markedRow ⟨1,2,1,2,4,7⟩ [0,1] [2,2,1,2]) := by
  have h : markedRow ⟨1,2,1,2,4,7⟩ [0,1] [2,2,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four289 : BadRow (markedRow ⟨1,2,1,2,4,7⟩ [0,1] [2,2,2,1]) := by
  have h : markedRow ⟨1,2,1,2,4,7⟩ [0,1] [2,2,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four290 : BadRow (markedRow ⟨1,2,1,2,4,7⟩ [1,0] [1,2,2,2]) := by
  have h : markedRow ⟨1,2,1,2,4,7⟩ [1,0] [1,2,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four291 : BadRow (markedRow ⟨1,2,1,2,4,7⟩ [1,0] [2,1,2,2]) := by
  have h : markedRow ⟨1,2,1,2,4,7⟩ [1,0] [2,1,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four292 : BadRow (markedRow ⟨1,2,1,2,4,7⟩ [1,0] [2,2,1,2]) := by
  have h : markedRow ⟨1,2,1,2,4,7⟩ [1,0] [2,2,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four293 : BadRow (markedRow ⟨1,2,1,2,4,7⟩ [1,0] [2,2,2,1]) := by
  have h : markedRow ⟨1,2,1,2,4,7⟩ [1,0] [2,2,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
