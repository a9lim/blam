import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row408 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [1,1,1,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row409 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [1,1,2,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [1,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row410 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [1,2,0,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [1,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row411 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [1,2,1,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [1,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row412 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [1,3,0,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [1,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row413 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [2,0,0,2]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
