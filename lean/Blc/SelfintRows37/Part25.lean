import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row150 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [0,2,2,0]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [0,2,2,0] = [] := by decide
  rw [h]
  exact .nil

theorem row151 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [1,0,1,2]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [1,0,1,2] = [] := by decide
  rw [h]
  exact .nil

theorem row152 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [1,0,2,1]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [1,0,2,1] = [] := by decide
  rw [h]
  exact .nil

theorem row153 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [1,1,0,2]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [1,1,0,2] = [] := by decide
  rw [h]
  exact .nil

theorem row154 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [1,1,1,1]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [1,1,1,1] = [] := by decide
  rw [h]
  exact .nil

theorem row155 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [1,1,2,0]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [1,1,2,0] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows37
