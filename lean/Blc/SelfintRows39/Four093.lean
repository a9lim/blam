import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row558 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [1,1,0,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row559 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [1,1,1,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row560 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [1,2,0,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row561 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [2,0,0,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row562 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [2,0,1,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row563 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [2,1,0,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
