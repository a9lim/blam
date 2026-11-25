import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five120 : BadRow (bucket false 3 2 5 [1,0,2,0,0]) := by
  have h : bucket false 3 2 5 [1,0,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five121 : BadRow (bucket true 3 2 5 [1,0,2,0,0]) := by
  have h : bucket true 3 2 5 [1,0,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five122 : BadRow (bucket false 3 2 5 [1,1,0,0,1]) := by
  have h : bucket false 3 2 5 [1,1,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five123 : BadRow (bucket true 3 2 5 [1,1,0,0,1]) := by
  have h : bucket true 3 2 5 [1,1,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five124 : BadRow (bucket false 3 2 5 [1,1,0,1,0]) := by
  have h : bucket false 3 2 5 [1,1,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five125 : BadRow (bucket true 3 2 5 [1,1,0,1,0]) := by
  have h : bucket true 3 2 5 [1,1,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five126 : BadRow (bucket false 3 2 5 [1,1,1,0,0]) := by
  have h : bucket false 3 2 5 [1,1,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five127 : BadRow (bucket true 3 2 5 [1,1,1,0,0]) := by
  have h : bucket true 3 2 5 [1,1,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
