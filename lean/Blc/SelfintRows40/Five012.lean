import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five96 : BadRow (bucket false 3 2 5 [0,1,1,0,1]) := by
  have h : bucket false 3 2 5 [0,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five97 : BadRow (bucket true 3 2 5 [0,1,1,0,1]) := by
  have h : bucket true 3 2 5 [0,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five98 : BadRow (bucket false 3 2 5 [0,1,1,1,0]) := by
  have h : bucket false 3 2 5 [0,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five99 : BadRow (bucket true 3 2 5 [0,1,1,1,0]) := by
  have h : bucket true 3 2 5 [0,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five100 : BadRow (bucket false 3 2 5 [0,1,2,0,0]) := by
  have h : bucket false 3 2 5 [0,1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five101 : BadRow (bucket true 3 2 5 [0,1,2,0,0]) := by
  have h : bucket true 3 2 5 [0,1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five102 : BadRow (bucket false 3 2 5 [0,2,0,0,1]) := by
  have h : bucket false 3 2 5 [0,2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five103 : BadRow (bucket true 3 2 5 [0,2,0,0,1]) := by
  have h : bucket true 3 2 5 [0,2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
