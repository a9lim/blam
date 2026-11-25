import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five384 : BadRow (bucket false 4 2 4 [3,0,0,1]) := by
  have h : bucket false 4 2 4 [3,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five385 : BadRow (bucket true 4 2 4 [3,0,0,1]) := by
  have h : bucket true 4 2 4 [3,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five386 : BadRow (bucket false 4 2 4 [3,0,1,0]) := by
  have h : bucket false 4 2 4 [3,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five387 : BadRow (bucket true 4 2 4 [3,0,1,0]) := by
  have h : bucket true 4 2 4 [3,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five388 : BadRow (bucket false 4 2 4 [3,1,0,0]) := by
  have h : bucket false 4 2 4 [3,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five389 : BadRow (bucket true 4 2 4 [3,1,0,0]) := by
  have h : bucket true 4 2 4 [3,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five390 : BadRow (bucket false 4 2 4 [4,0,0,0]) := by
  have h : bucket false 4 2 4 [4,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five391 : BadRow (bucket true 4 2 4 [4,0,0,0]) := by
  have h : bucket true 4 2 4 [4,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
