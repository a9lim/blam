import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row264 : BadRow (row ⟨1,2,1,3,4,3⟩ [1,0] [0,2,1,0]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [1,0] [0,2,1,0] = [] := by decide
  rw [h]
  exact .nil

theorem row265 : BadRow (row ⟨1,2,1,3,4,3⟩ [1,0] [0,3,0,0]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [1,0] [0,3,0,0] = [] := by decide
  rw [h]
  exact .nil

theorem row266 : BadRow (row ⟨1,2,1,3,4,3⟩ [1,0] [1,0,0,2]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [1,0] [1,0,0,2] = [] := by decide
  rw [h]
  exact .nil

theorem row267 : BadRow (row ⟨1,2,1,3,4,3⟩ [1,0] [1,0,1,1]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [1,0] [1,0,1,1] = [] := by decide
  rw [h]
  exact .nil

theorem row268 : BadRow (row ⟨1,2,1,3,4,3⟩ [1,0] [1,0,2,0]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [1,0] [1,0,2,0] = [] := by decide
  rw [h]
  exact .nil

theorem row269 : BadRow (row ⟨1,2,1,3,4,3⟩ [1,0] [1,1,0,1]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [1,0] [1,1,0,1] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
