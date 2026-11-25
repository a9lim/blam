import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row156 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [1,2,0,1]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [1,2,0,1] = [] := by decide
  rw [h]
  exact .nil

theorem row157 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [1,2,1,0]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [1,2,1,0] = [] := by decide
  rw [h]
  exact .nil

theorem row158 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [2,0,0,2]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [2,0,0,2] = [] := by decide
  rw [h]
  exact .nil

theorem row159 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [2,0,1,1]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [2,0,1,1] = [] := by decide
  rw [h]
  exact .nil

theorem row160 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [2,0,2,0]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [2,0,2,0] = [] := by decide
  rw [h]
  exact .nil

theorem row161 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [2,1,0,1]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [2,1,0,1] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows37
