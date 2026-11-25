import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five448 : BadRow (bucket false 4 2 5 [0,2,1,0,1]) := by
  have h : bucket false 4 2 5 [0,2,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175233526230 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 1)))))
private theorem no_v1175233526230 : ¬ MinimalInterpreter v1175233526230 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1175233519318 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 1)))))
private theorem no_v1175233519318 : ¬ MinimalInterpreter v1175233519318 :=
  w_cut false 0 (by decide)

theorem five449 : BadRow (bucket true 4 2 5 [0,2,1,0,1]) := by
  have h : bucket true 4 2 5 [0,2,1,0,1] = [v1175233526230,v1175233519318] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175233526230) (.cons (no_v1175233519318) .nil))

theorem five450 : BadRow (bucket false 4 2 5 [0,2,1,1,0]) := by
  have h : bucket false 4 2 5 [0,2,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five451 : BadRow (bucket true 4 2 5 [0,2,1,1,0]) := by
  have h : bucket true 4 2 5 [0,2,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five452 : BadRow (bucket false 4 2 5 [0,2,2,0,0]) := by
  have h : bucket false 4 2 5 [0,2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five453 : BadRow (bucket true 4 2 5 [0,2,2,0,0]) := by
  have h : bucket true 4 2 5 [0,2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five454 : BadRow (bucket false 4 2 5 [0,3,0,0,1]) := by
  have h : bucket false 4 2 5 [0,3,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five455 : BadRow (bucket true 4 2 5 [0,3,0,0,1]) := by
  have h : bucket true 4 2 5 [0,3,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
