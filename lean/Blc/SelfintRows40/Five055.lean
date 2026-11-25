import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five440 : BadRow (bucket false 4 2 5 [0,1,3,0,0]) := by
  have h : bucket false 4 2 5 [0,1,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five441 : BadRow (bucket true 4 2 5 [0,1,3,0,0]) := by
  have h : bucket true 4 2 5 [0,1,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five442 : BadRow (bucket false 4 2 5 [0,2,0,0,2]) := by
  have h : bucket false 4 2 5 [0,2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five443 : BadRow (bucket true 4 2 5 [0,2,0,0,2]) := by
  have h : bucket true 4 2 5 [0,2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five444 : BadRow (bucket false 4 2 5 [0,2,0,1,1]) := by
  have h : bucket false 4 2 5 [0,2,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175233526198 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 1)))))
private theorem no_v1175233526198 : ¬ MinimalInterpreter v1175233526198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1175233519286 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))) (.var 1)))))
private theorem no_v1175233519286 : ¬ MinimalInterpreter v1175233519286 :=
  chain_cut false 6 (by decide)

theorem five445 : BadRow (bucket true 4 2 5 [0,2,0,1,1]) := by
  have h : bucket true 4 2 5 [0,2,0,1,1] = [v1175233526198,v1175233519286] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175233526198) (.cons (no_v1175233519286) .nil))

theorem five446 : BadRow (bucket false 4 2 5 [0,2,0,2,0]) := by
  have h : bucket false 4 2 5 [0,2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five447 : BadRow (bucket true 4 2 5 [0,2,0,2,0]) := by
  have h : bucket true 4 2 5 [0,2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
