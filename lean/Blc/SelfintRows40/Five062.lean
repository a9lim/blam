import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five496 : BadRow (bucket false 4 2 5 [1,2,0,1,0]) := by
  have h : bucket false 4 2 5 [1,2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175239848762 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1175239848762 : ¬ MinimalInterpreter v1175239848762 :=
  chain_cut false 2 (by decide)

private def v1175239848666 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1175239848666 : ¬ MinimalInterpreter v1175239848666 :=
  chain_cut false 2 (by decide)

private def v1175239834938 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175239834938 : ¬ MinimalInterpreter v1175239834938 :=
  chain_cut false 2 (by decide)

private def v1175239834842 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v1175239834842 : ¬ MinimalInterpreter v1175239834842 :=
  chain_cut false 2 (by decide)

private def v1175239831386 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v1175239831386 : ¬ MinimalInterpreter v1175239831386 :=
  chain_cut false 2 (by decide)

private def v1175234559194 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 0)))))
private theorem no_v1175234559194 : ¬ MinimalInterpreter v1175234559194 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234555738 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))) (.var 0)))))
private theorem no_v1175234555738 : ¬ MinimalInterpreter v1175234555738 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five497 : BadRow (bucket true 4 2 5 [1,2,0,1,0]) := by
  have h : bucket true 4 2 5 [1,2,0,1,0] = [v1175239848762,v1175239848666,v1175239834938,v1175239834842,v1175239831386,v1175234559194,v1175234555738] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175239848762) (.cons (no_v1175239848666) (.cons (no_v1175239834938) (.cons (no_v1175239834842) (.cons (no_v1175239831386) (.cons (no_v1175234559194) (.cons (no_v1175234555738) .nil)))))))

theorem five498 : BadRow (bucket false 4 2 5 [1,2,1,0,0]) := by
  have h : bucket false 4 2 5 [1,2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175239848858 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1175239848858 : ¬ MinimalInterpreter v1175239848858 :=
  chain_cut false 2 (by decide)

private def v1175239848682 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1175239848682 : ¬ MinimalInterpreter v1175239848682 :=
  chain_cut false 2 (by decide)

private def v1175239835034 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1175239835034 : ¬ MinimalInterpreter v1175239835034 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175239834858 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v1175239834858 : ¬ MinimalInterpreter v1175239834858 :=
  chain_cut false 2 (by decide)

private def v1175239831402 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v1175239831402 : ¬ MinimalInterpreter v1175239831402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175234559210 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0)))))
private theorem no_v1175234559210 : ¬ MinimalInterpreter v1175234559210 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234555754 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 0)))))
private theorem no_v1175234555754 : ¬ MinimalInterpreter v1175234555754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide))))

theorem five499 : BadRow (bucket true 4 2 5 [1,2,1,0,0]) := by
  have h : bucket true 4 2 5 [1,2,1,0,0] = [v1175239848858,v1175239848682,v1175239835034,v1175239834858,v1175239831402,v1175234559210,v1175234555754] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175239848858) (.cons (no_v1175239848682) (.cons (no_v1175239835034) (.cons (no_v1175239834858) (.cons (no_v1175239831402) (.cons (no_v1175234559210) (.cons (no_v1175234555754) .nil)))))))

theorem five500 : BadRow (bucket false 4 2 5 [1,3,0,0,0]) := by
  have h : bucket false 4 2 5 [1,3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five501 : BadRow (bucket true 4 2 5 [1,3,0,0,0]) := by
  have h : bucket true 4 2 5 [1,3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five502 : BadRow (bucket false 4 2 5 [2,0,0,0,2]) := by
  have h : bucket false 4 2 5 [2,0,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five503 : BadRow (bucket true 4 2 5 [2,0,0,0,2]) := by
  have h : bucket true 4 2 5 [2,0,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
