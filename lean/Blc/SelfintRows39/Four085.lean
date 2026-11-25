import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row510 : BadRow (row ⟨2,2,1,2,4,4⟩ [1,0] [2,0,0,2]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [1,0] [2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row511 : BadRow (row ⟨2,2,1,2,4,4⟩ [1,0] [2,0,1,1]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [1,0] [2,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row512 : BadRow (row ⟨2,2,1,2,4,4⟩ [1,0] [2,0,2,0]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [1,0] [2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row513 : BadRow (row ⟨2,2,1,2,4,4⟩ [1,0] [2,1,0,1]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [1,0] [2,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row514 : BadRow (row ⟨2,2,1,2,4,4⟩ [1,0] [2,1,1,0]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [1,0] [2,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row515 : BadRow (row ⟨2,2,1,2,4,4⟩ [1,0] [2,2,0,0]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [1,0] [2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
