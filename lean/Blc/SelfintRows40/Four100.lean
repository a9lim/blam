import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four700 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [1,1,1,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four701 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [1,2,0,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four702 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [2,0,0,1]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four703 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [2,0,1,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four704 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [2,1,0,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four705 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [1,0] [3,0,0,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [1,0] [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four706 : BadRow (markedRow ⟨2,2,0,2,4,6⟩ [0,0] [0,2,2,2]) := by
  have h : markedRow ⟨2,2,0,2,4,6⟩ [0,0] [0,2,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
