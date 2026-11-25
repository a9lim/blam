import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row144 : BadRow (row ⟨1,2,0,2,4,6⟩ [0,0] [0,2,2,2]) := by
  have h : row ⟨1,2,0,2,4,6⟩ [0,0] [0,2,2,2] = [] := by decide
  rw [h]
  exact .nil

theorem row145 : BadRow (row ⟨1,2,0,2,4,6⟩ [0,0] [1,1,2,2]) := by
  have h : row ⟨1,2,0,2,4,6⟩ [0,0] [1,1,2,2] = [] := by decide
  rw [h]
  exact .nil

theorem row146 : BadRow (row ⟨1,2,0,2,4,6⟩ [0,0] [1,2,1,2]) := by
  have h : row ⟨1,2,0,2,4,6⟩ [0,0] [1,2,1,2] = [] := by decide
  rw [h]
  exact .nil

theorem row147 : BadRow (row ⟨1,2,0,2,4,6⟩ [0,0] [1,2,2,1]) := by
  have h : row ⟨1,2,0,2,4,6⟩ [0,0] [1,2,2,1] = [] := by decide
  rw [h]
  exact .nil

theorem row148 : BadRow (row ⟨1,2,0,2,4,6⟩ [0,0] [2,0,2,2]) := by
  have h : row ⟨1,2,0,2,4,6⟩ [0,0] [2,0,2,2] = [] := by decide
  rw [h]
  exact .nil

theorem row149 : BadRow (row ⟨1,2,0,2,4,6⟩ [0,0] [2,1,1,2]) := by
  have h : row ⟨1,2,0,2,4,6⟩ [0,0] [2,1,1,2] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
