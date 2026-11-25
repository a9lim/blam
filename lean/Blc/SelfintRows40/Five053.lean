import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five424 : BadRow (bucket false 4 2 5 [0,1,0,1,2]) := by
  have h : bucket false 4 2 5 [0,1,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175237430510 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1175237430510 : ¬ MinimalInterpreter v1175237430510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))

private def v1175237430126 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1175237430126 : ¬ MinimalInterpreter v1175237430126 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234284782 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175234284782 : ¬ MinimalInterpreter v1175234284782 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175234284398 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1175234284398 : ¬ MinimalInterpreter v1175234284398 :=
  chain_cut false 3 (by decide)

theorem five425 : BadRow (bucket true 4 2 5 [0,1,0,1,2]) := by
  have h : bucket true 4 2 5 [0,1,0,1,2] = [v1175237430510,v1175237430126,v1175234284782,v1175234284398] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175237430510) (.cons (no_v1175237430126) (.cons (no_v1175234284782) (.cons (no_v1175234284398) .nil))))

theorem five426 : BadRow (bucket false 4 2 5 [0,1,0,2,1]) := by
  have h : bucket false 4 2 5 [0,1,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175237430518 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1175237430518 : ¬ MinimalInterpreter v1175237430518 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))

private def v1175237430134 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1175237430134 : ¬ MinimalInterpreter v1175237430134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234284790 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175234284790 : ¬ MinimalInterpreter v1175234284790 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175234284406 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1175234284406 : ¬ MinimalInterpreter v1175234284406 :=
  chain_cut false 3 (by decide)

private def v1175233524598 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 1)))))
private theorem no_v1175233524598 : ¬ MinimalInterpreter v1175233524598 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1175233518966 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 1)))))
private theorem no_v1175233518966 : ¬ MinimalInterpreter v1175233518966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem five427 : BadRow (bucket true 4 2 5 [0,1,0,2,1]) := by
  have h : bucket true 4 2 5 [0,1,0,2,1] = [v1175237430518,v1175237430134,v1175234284790,v1175234284406,v1175233524598,v1175233518966] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175237430518) (.cons (no_v1175237430134) (.cons (no_v1175234284790) (.cons (no_v1175234284406) (.cons (no_v1175233524598) (.cons (no_v1175233518966) .nil))))))

theorem five428 : BadRow (bucket false 4 2 5 [0,1,0,3,0]) := by
  have h : bucket false 4 2 5 [0,1,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five429 : BadRow (bucket true 4 2 5 [0,1,0,3,0]) := by
  have h : bucket true 4 2 5 [0,1,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five430 : BadRow (bucket false 4 2 5 [0,1,1,0,2]) := by
  have h : bucket false 4 2 5 [0,1,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175237430894 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1175237430894 : ¬ MinimalInterpreter v1175237430894 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175237430190 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1175237430190 : ¬ MinimalInterpreter v1175237430190 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234285166 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175234285166 : ¬ MinimalInterpreter v1175234285166 :=
  chain_cut false 3 (by decide)

private def v1175234284462 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1175234284462 : ¬ MinimalInterpreter v1175234284462 :=
  chain_cut false 3 (by decide)

theorem five431 : BadRow (bucket true 4 2 5 [0,1,1,0,2]) := by
  have h : bucket true 4 2 5 [0,1,1,0,2] = [v1175237430894,v1175237430190,v1175234285166,v1175234284462] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175237430894) (.cons (no_v1175237430190) (.cons (no_v1175234285166) (.cons (no_v1175234284462) .nil))))

end Blc.SelfintSingleObject.Rows40
