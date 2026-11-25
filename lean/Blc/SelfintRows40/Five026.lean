import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five208 : BadRow (bucket false 3 3 4 [3,0,0,0]) := by
  have h : bucket false 3 3 4 [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five209 : BadRow (bucket true 3 3 4 [3,0,0,0]) := by
  have h : bucket true 3 3 4 [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five210 : BadRow (bucket false 3 3 5 [0,0,0,0,3]) := by
  have h : bucket false 3 3 5 [0,0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five211 : BadRow (bucket true 3 3 5 [0,0,0,0,3]) := by
  have h : bucket true 3 3 5 [0,0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five212 : BadRow (bucket false 3 3 5 [0,0,0,1,2]) := by
  have h : bucket false 3 3 5 [0,0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five213 : BadRow (bucket true 3 3 5 [0,0,0,1,2]) := by
  have h : bucket true 3 3 5 [0,0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five214 : BadRow (bucket false 3 3 5 [0,0,0,2,1]) := by
  have h : bucket false 3 3 5 [0,0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five215 : BadRow (bucket true 3 3 5 [0,0,0,2,1]) := by
  have h : bucket true 3 3 5 [0,0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
