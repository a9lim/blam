import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five184 : BadRow (bucket false 3 3 4 [0,2,0,1]) := by
  have h : bucket false 3 3 4 [0,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five185 : BadRow (bucket true 3 3 4 [0,2,0,1]) := by
  have h : bucket true 3 3 4 [0,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five186 : BadRow (bucket false 3 3 4 [0,2,1,0]) := by
  have h : bucket false 3 3 4 [0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five187 : BadRow (bucket true 3 3 4 [0,2,1,0]) := by
  have h : bucket true 3 3 4 [0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five188 : BadRow (bucket false 3 3 4 [0,3,0,0]) := by
  have h : bucket false 3 3 4 [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five189 : BadRow (bucket true 3 3 4 [0,3,0,0]) := by
  have h : bucket true 3 3 4 [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five190 : BadRow (bucket false 3 3 4 [1,0,0,2]) := by
  have h : bucket false 3 3 4 [1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five191 : BadRow (bucket true 3 3 4 [1,0,0,2]) := by
  have h : bucket true 3 3 4 [1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
