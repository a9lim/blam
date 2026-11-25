import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row246 : BadRow (row ⟨1,2,1,2,4,6⟩ [0,1] [2,2,1,1]) := by
  have h : row ⟨1,2,1,2,4,6⟩ [0,1] [2,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row247 : BadRow (row ⟨1,2,1,2,4,6⟩ [0,1] [2,2,2,0]) := by
  have h : row ⟨1,2,1,2,4,6⟩ [0,1] [2,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row248 : BadRow (row ⟨1,2,1,2,4,6⟩ [1,0] [0,2,2,2]) := by
  have h : row ⟨1,2,1,2,4,6⟩ [1,0] [0,2,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row249 : BadRow (row ⟨1,2,1,2,4,6⟩ [1,0] [1,1,2,2]) := by
  have h : row ⟨1,2,1,2,4,6⟩ [1,0] [1,1,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row250 : BadRow (row ⟨1,2,1,2,4,6⟩ [1,0] [1,2,1,2]) := by
  have h : row ⟨1,2,1,2,4,6⟩ [1,0] [1,2,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row251 : BadRow (row ⟨1,2,1,2,4,6⟩ [1,0] [1,2,2,1]) := by
  have h : row ⟨1,2,1,2,4,6⟩ [1,0] [1,2,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
