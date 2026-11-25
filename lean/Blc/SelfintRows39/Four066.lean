import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row396 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [0,1,2,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [0,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row397 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [0,1,3,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [0,1,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row398 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [0,2,0,2]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row399 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [0,2,1,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [0,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row400 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [0,2,2,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row401 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [0,3,0,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [0,3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
