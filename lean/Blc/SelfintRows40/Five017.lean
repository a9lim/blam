import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five136 : BadRow (bucket false 3 2 5 [2,1,0,0,0]) := by
  have h : bucket false 3 2 5 [2,1,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five137 : BadRow (bucket true 3 2 5 [2,1,0,0,0]) := by
  have h : bucket true 3 2 5 [2,1,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five138 : BadRow (bucket false 3 2 5 [3,0,0,0,0]) := by
  have h : bucket false 3 2 5 [3,0,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five139 : BadRow (bucket true 3 2 5 [3,0,0,0,0]) := by
  have h : bucket true 3 2 5 [3,0,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five140 : BadRow (bucket false 3 3 1 [3]) := by
  have h : bucket false 3 3 1 [3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five141 : BadRow (bucket true 3 3 1 [3]) := by
  have h : bucket true 3 3 1 [3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five142 : BadRow (bucket false 3 3 2 [0,3]) := by
  have h : bucket false 3 3 2 [0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five143 : BadRow (bucket true 3 3 2 [0,3]) := by
  have h : bucket true 3 3 2 [0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
