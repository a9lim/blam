import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four385 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,2,1,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four386 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,1,0,0,2]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four387 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,1,0,1,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four388 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,1,0,2,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four389 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,1,1,0,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four390 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,1,1,1,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four391 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,1,2,0,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
