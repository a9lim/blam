import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row414 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [2,0,1,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [2,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row415 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [2,0,2,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row416 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [2,1,0,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [2,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row417 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [2,1,1,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [2,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row418 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [2,2,0,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row419 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [3,0,0,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [3,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
