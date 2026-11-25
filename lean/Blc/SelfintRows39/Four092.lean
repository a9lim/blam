import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row552 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [0,1,2,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row553 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [0,2,0,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [0,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row554 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [0,2,1,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row555 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [1,0,0,2]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row556 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [1,0,1,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row557 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [1,0,2,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
