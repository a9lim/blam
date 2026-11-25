import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row324 : BadRow (row ⟨2,2,1,2,4,3⟩ [1,0] [2,0,0,1]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [1,0] [2,0,0,1] = [] := by decide
  rw [h]
  exact .nil

theorem row325 : BadRow (row ⟨2,2,1,2,4,3⟩ [1,0] [2,0,1,0]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [1,0] [2,0,1,0] = [] := by decide
  rw [h]
  exact .nil

theorem row326 : BadRow (row ⟨2,2,1,2,4,3⟩ [1,0] [2,1,0,0]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [1,0] [2,1,0,0] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
