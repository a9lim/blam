import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five568 : BadRow (bucket false 4 3 3 [3,0,1]) := by
  have h : bucket false 4 3 3 [3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five569 : BadRow (bucket true 4 3 3 [3,0,1]) := by
  have h : bucket true 4 3 3 [3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five570 : BadRow (bucket false 4 3 3 [3,1,0]) := by
  have h : bucket false 4 3 3 [3,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five571 : BadRow (bucket true 4 3 3 [3,1,0]) := by
  have h : bucket true 4 3 3 [3,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five572 : BadRow (bucket false 4 3 3 [4,0,0]) := by
  have h : bucket false 4 3 3 [4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five573 : BadRow (bucket true 4 3 3 [4,0,0]) := by
  have h : bucket true 4 3 3 [4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five574 : BadRow (bucket false 4 3 4 [0,0,0,4]) := by
  have h : bucket false 4 3 4 [0,0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five575 : BadRow (bucket true 4 3 4 [0,0,0,4]) := by
  have h : bucket true 4 3 4 [0,0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
