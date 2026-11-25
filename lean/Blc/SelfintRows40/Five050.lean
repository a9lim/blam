import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five400 : BadRow (bucket false 4 2 5 [0,0,0,4,0]) := by
  have h : bucket false 4 2 5 [0,0,0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five401 : BadRow (bucket true 4 2 5 [0,0,0,4,0]) := by
  have h : bucket true 4 2 5 [0,0,0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five402 : BadRow (bucket false 4 2 5 [0,0,1,0,3]) := by
  have h : bucket false 4 2 5 [0,0,1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five403 : BadRow (bucket true 4 2 5 [0,0,1,0,3]) := by
  have h : bucket true 4 2 5 [0,0,1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five404 : BadRow (bucket false 4 2 5 [0,0,1,1,2]) := by
  have h : bucket false 4 2 5 [0,0,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five405 : BadRow (bucket true 4 2 5 [0,0,1,1,2]) := by
  have h : bucket true 4 2 5 [0,0,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five406 : BadRow (bucket false 4 2 5 [0,0,1,2,1]) := by
  have h : bucket false 4 2 5 [0,0,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175233521526 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 1)))))
private theorem no_v1175233521526 : ¬ MinimalInterpreter v1175233521526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 1)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide))))

private def v1175233518454 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.var 1)))))
private theorem no_v1175233518454 : ¬ MinimalInterpreter v1175233518454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five407 : BadRow (bucket true 4 2 5 [0,0,1,2,1]) := by
  have h : bucket true 4 2 5 [0,0,1,2,1] = [v1175233521526,v1175233518454] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175233521526) (.cons (no_v1175233518454) .nil))

end Blc.SelfintSingleObject.Rows40
