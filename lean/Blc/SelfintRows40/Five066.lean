import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five528 : BadRow (bucket false 4 2 5 [3,1,0,0,0]) := by
  have h : bucket false 4 2 5 [3,1,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five529 : BadRow (bucket true 4 2 5 [3,1,0,0,0]) := by
  have h : bucket true 4 2 5 [3,1,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five530 : BadRow (bucket false 4 2 5 [4,0,0,0,0]) := by
  have h : bucket false 4 2 5 [4,0,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five531 : BadRow (bucket true 4 2 5 [4,0,0,0,0]) := by
  have h : bucket true 4 2 5 [4,0,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five532 : BadRow (bucket false 4 3 1 [4]) := by
  have h : bucket false 4 3 1 [4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five533 : BadRow (bucket true 4 3 1 [4]) := by
  have h : bucket true 4 3 1 [4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five534 : BadRow (bucket false 4 3 2 [0,4]) := by
  have h : bucket false 4 3 2 [0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five535 : BadRow (bucket true 4 3 2 [0,4]) := by
  have h : bucket true 4 3 2 [0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
