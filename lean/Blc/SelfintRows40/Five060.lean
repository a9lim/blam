import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five480 : BadRow (bucket false 4 2 5 [1,0,3,0,0]) := by
  have h : bucket false 4 2 5 [1,0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five481 : BadRow (bucket true 4 2 5 [1,0,3,0,0]) := by
  have h : bucket true 4 2 5 [1,0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five482 : BadRow (bucket false 4 2 5 [1,1,0,0,2]) := by
  have h : bucket false 4 2 5 [1,1,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175239845486 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v1175239845486 : ¬ MinimalInterpreter v1175239845486 :=
  chain_cut false 2 (by decide)

private def v1175239845294 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v1175239845294 : ¬ MinimalInterpreter v1175239845294 :=
  chain_cut false 2 (by decide)

private def v1175239834222 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175239834222 : ¬ MinimalInterpreter v1175239834222 :=
  chain_cut false 2 (by decide)

private def v1175239834030 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))))
private theorem no_v1175239834030 : ¬ MinimalInterpreter v1175239834030 :=
  chain_cut false 2 (by decide)

private def v1175239831214 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))))
private theorem no_v1175239831214 : ¬ MinimalInterpreter v1175239831214 :=
  chain_cut false 2 (by decide)

theorem five483 : BadRow (bucket true 4 2 5 [1,1,0,0,2]) := by
  have h : bucket true 4 2 5 [1,1,0,0,2] = [v1175239845486,v1175239845294,v1175239834222,v1175239834030,v1175239831214] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175239845486) (.cons (no_v1175239845294) (.cons (no_v1175239834222) (.cons (no_v1175239834030) (.cons (no_v1175239831214) .nil)))))

theorem five484 : BadRow (bucket false 4 2 5 [1,1,0,1,1]) := by
  have h : bucket false 4 2 5 [1,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five485 : BadRow (bucket true 4 2 5 [1,1,0,1,1]) := by
  have h : bucket true 4 2 5 [1,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five486 : BadRow (bucket false 4 2 5 [1,1,0,2,0]) := by
  have h : bucket false 4 2 5 [1,1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175239845498 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v1175239845498 : ¬ MinimalInterpreter v1175239845498 :=
  chain_cut false 2 (by decide)

private def v1175239845306 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v1175239845306 : ¬ MinimalInterpreter v1175239845306 :=
  chain_cut false 2 (by decide)

private def v1175239834234 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175239834234 : ¬ MinimalInterpreter v1175239834234 :=
  chain_cut false 2 (by decide)

private def v1175239834042 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v1175239834042 : ¬ MinimalInterpreter v1175239834042 :=
  chain_cut false 2 (by decide)

private def v1175239831226 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v1175239831226 : ¬ MinimalInterpreter v1175239831226 :=
  chain_cut false 2 (by decide)

private def v1175234558394 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0)))))
private theorem no_v1175234558394 : ¬ MinimalInterpreter v1175234558394 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234555578 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 0)))))
private theorem no_v1175234555578 : ¬ MinimalInterpreter v1175234555578 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five487 : BadRow (bucket true 4 2 5 [1,1,0,2,0]) := by
  have h : bucket true 4 2 5 [1,1,0,2,0] = [v1175239845498,v1175239845306,v1175239834234,v1175239834042,v1175239831226,v1175234558394,v1175234555578] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175239845498) (.cons (no_v1175239845306) (.cons (no_v1175239834234) (.cons (no_v1175239834042) (.cons (no_v1175239831226) (.cons (no_v1175234558394) (.cons (no_v1175234555578) .nil)))))))

end Blc.SelfintSingleObject.Rows40
