import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five80 : BadRow (bucket false 3 2 5 [0,0,1,1,1]) := by
  have h : bucket false 3 2 5 [0,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five81 : BadRow (bucket true 3 2 5 [0,0,1,1,1]) := by
  have h : bucket true 3 2 5 [0,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five82 : BadRow (bucket false 3 2 5 [0,0,1,2,0]) := by
  have h : bucket false 3 2 5 [0,0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five83 : BadRow (bucket true 3 2 5 [0,0,1,2,0]) := by
  have h : bucket true 3 2 5 [0,0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five84 : BadRow (bucket false 3 2 5 [0,0,2,0,1]) := by
  have h : bucket false 3 2 5 [0,0,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five85 : BadRow (bucket true 3 2 5 [0,0,2,0,1]) := by
  have h : bucket true 3 2 5 [0,0,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five86 : BadRow (bucket false 3 2 5 [0,0,2,1,0]) := by
  have h : bucket false 3 2 5 [0,0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five87 : BadRow (bucket true 3 2 5 [0,0,2,1,0]) := by
  have h : bucket true 3 2 5 [0,0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
