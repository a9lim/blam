import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row102 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [3,0,3,0]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [3,0,3,0] = [] := by decide
  rw [h]
  exact .nil

theorem row103 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [3,1,0,2]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [3,1,0,2] = [] := by decide
  rw [h]
  exact .nil

theorem row104 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [3,1,1,1]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [3,1,1,1] = [] := by decide
  rw [h]
  exact .nil

theorem row105 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [3,1,2,0]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [3,1,2,0] = [] := by decide
  rw [h]
  exact .nil

theorem row106 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [3,2,0,1]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [3,2,0,1] = [] := by decide
  rw [h]
  exact .nil

theorem row107 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [3,2,1,0]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [3,2,1,0] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
