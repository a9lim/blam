import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row174 : BadRow (row ⟨1,2,1,2,4,5⟩ [1,0] [1,1,1,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [1,0] [1,1,1,2] = [] := by decide
  rw [h]
  exact .nil

theorem row175 : BadRow (row ⟨1,2,1,2,4,5⟩ [1,0] [1,1,2,1]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [1,0] [1,1,2,1] = [] := by decide
  rw [h]
  exact .nil

theorem row176 : BadRow (row ⟨1,2,1,2,4,5⟩ [1,0] [1,2,0,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [1,0] [1,2,0,2] = [] := by decide
  rw [h]
  exact .nil

theorem row177 : BadRow (row ⟨1,2,1,2,4,5⟩ [1,0] [1,2,1,1]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [1,0] [1,2,1,1] = [] := by decide
  rw [h]
  exact .nil

theorem row178 : BadRow (row ⟨1,2,1,2,4,5⟩ [1,0] [1,2,2,0]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [1,0] [1,2,2,0] = [] := by decide
  rw [h]
  exact .nil

theorem row179 : BadRow (row ⟨1,2,1,2,4,5⟩ [1,0] [2,0,1,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [1,0] [2,0,1,2] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
