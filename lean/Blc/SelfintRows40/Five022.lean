import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five176 : BadRow (bucket false 3 3 4 [0,0,3,0]) := by
  have h : bucket false 3 3 4 [0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five177 : BadRow (bucket true 3 3 4 [0,0,3,0]) := by
  have h : bucket true 3 3 4 [0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five178 : BadRow (bucket false 3 3 4 [0,1,0,2]) := by
  have h : bucket false 3 3 4 [0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five179 : BadRow (bucket true 3 3 4 [0,1,0,2]) := by
  have h : bucket true 3 3 4 [0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five180 : BadRow (bucket false 3 3 4 [0,1,1,1]) := by
  have h : bucket false 3 3 4 [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five181 : BadRow (bucket true 3 3 4 [0,1,1,1]) := by
  have h : bucket true 3 3 4 [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five182 : BadRow (bucket false 3 3 4 [0,1,2,0]) := by
  have h : bucket false 3 3 4 [0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five183 : BadRow (bucket true 3 3 4 [0,1,2,0]) := by
  have h : bucket true 3 3 4 [0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
