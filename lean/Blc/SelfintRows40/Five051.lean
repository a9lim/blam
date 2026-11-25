import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five408 : BadRow (bucket false 4 2 5 [0,0,1,3,0]) := by
  have h : bucket false 4 2 5 [0,0,1,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five409 : BadRow (bucket true 4 2 5 [0,0,1,3,0]) := by
  have h : bucket true 4 2 5 [0,0,1,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five410 : BadRow (bucket false 4 2 5 [0,0,2,0,2]) := by
  have h : bucket false 4 2 5 [0,0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five411 : BadRow (bucket true 4 2 5 [0,0,2,0,2]) := by
  have h : bucket true 4 2 5 [0,0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five412 : BadRow (bucket false 4 2 5 [0,0,2,1,1]) := by
  have h : bucket false 4 2 5 [0,0,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175233521590 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 1)))))
private theorem no_v1175233521590 : ¬ MinimalInterpreter v1175233521590 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 1)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide))))

private def v1175233518518 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))) (.var 1)))))
private theorem no_v1175233518518 : ¬ MinimalInterpreter v1175233518518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five413 : BadRow (bucket true 4 2 5 [0,0,2,1,1]) := by
  have h : bucket true 4 2 5 [0,0,2,1,1] = [v1175233521590,v1175233518518] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175233521590) (.cons (no_v1175233518518) .nil))

theorem five414 : BadRow (bucket false 4 2 5 [0,0,2,2,0]) := by
  have h : bucket false 4 2 5 [0,0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five415 : BadRow (bucket true 4 2 5 [0,0,2,2,0]) := by
  have h : bucket true 4 2 5 [0,0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
