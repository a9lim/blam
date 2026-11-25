import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four392 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,2,0,0,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four393 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,2,0,1,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four394 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,2,1,0,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four395 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [1,0,0,0,2]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [1,0,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four396 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [1,0,0,1,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [1,0,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four397 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [1,0,0,2,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [1,0,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four398 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [1,0,1,0,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [1,0,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
