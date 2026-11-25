import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five776 : BadRow (bucket false 4 3 5 [3,0,0,1,0]) := by
  have h : bucket false 4 3 5 [3,0,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five777 : BadRow (bucket true 4 3 5 [3,0,0,1,0]) := by
  have h : bucket true 4 3 5 [3,0,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five778 : BadRow (bucket false 4 3 5 [3,0,1,0,0]) := by
  have h : bucket false 4 3 5 [3,0,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five779 : BadRow (bucket true 4 3 5 [3,0,1,0,0]) := by
  have h : bucket true 4 3 5 [3,0,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five780 : BadRow (bucket false 4 3 5 [3,1,0,0,0]) := by
  have h : bucket false 4 3 5 [3,1,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five781 : BadRow (bucket true 4 3 5 [3,1,0,0,0]) := by
  have h : bucket true 4 3 5 [3,1,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five782 : BadRow (bucket false 4 3 5 [4,0,0,0,0]) := by
  have h : bucket false 4 3 5 [4,0,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five783 : BadRow (bucket true 4 3 5 [4,0,0,0,0]) := by
  have h : bucket true 4 3 5 [4,0,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
