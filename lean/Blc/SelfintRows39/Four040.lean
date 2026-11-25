import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row240 : BadRow (row ⟨1,2,1,2,4,6⟩ [0,1] [1,2,1,2]) := by
  have h : row ⟨1,2,1,2,4,6⟩ [0,1] [1,2,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row241 : BadRow (row ⟨1,2,1,2,4,6⟩ [0,1] [1,2,2,1]) := by
  have h : row ⟨1,2,1,2,4,6⟩ [0,1] [1,2,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row242 : BadRow (row ⟨1,2,1,2,4,6⟩ [0,1] [2,0,2,2]) := by
  have h : row ⟨1,2,1,2,4,6⟩ [0,1] [2,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row243 : BadRow (row ⟨1,2,1,2,4,6⟩ [0,1] [2,1,1,2]) := by
  have h : row ⟨1,2,1,2,4,6⟩ [0,1] [2,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row244 : BadRow (row ⟨1,2,1,2,4,6⟩ [0,1] [2,1,2,1]) := by
  have h : row ⟨1,2,1,2,4,6⟩ [0,1] [2,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row245 : BadRow (row ⟨1,2,1,2,4,6⟩ [0,1] [2,2,0,2]) := by
  have h : row ⟨1,2,1,2,4,6⟩ [0,1] [2,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
