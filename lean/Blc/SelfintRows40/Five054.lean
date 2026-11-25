import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five432 : BadRow (bucket false 4 2 5 [0,1,1,1,1]) := by
  have h : bucket false 4 2 5 [0,1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five433 : BadRow (bucket true 4 2 5 [0,1,1,1,1]) := by
  have h : bucket true 4 2 5 [0,1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five434 : BadRow (bucket false 4 2 5 [0,1,1,2,0]) := by
  have h : bucket false 4 2 5 [0,1,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175237430906 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1175237430906 : ¬ MinimalInterpreter v1175237430906 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175237430202 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1175237430202 : ¬ MinimalInterpreter v1175237430202 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))

private def v1175234285178 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175234285178 : ¬ MinimalInterpreter v1175234285178 :=
  chain_cut false 3 (by decide)

private def v1175234284474 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1175234284474 : ¬ MinimalInterpreter v1175234284474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

theorem five435 : BadRow (bucket true 4 2 5 [0,1,1,2,0]) := by
  have h : bucket true 4 2 5 [0,1,1,2,0] = [v1175237430906,v1175237430202,v1175234285178,v1175234284474] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175237430906) (.cons (no_v1175237430202) (.cons (no_v1175234285178) (.cons (no_v1175234284474) .nil))))

theorem five436 : BadRow (bucket false 4 2 5 [0,1,2,0,1]) := by
  have h : bucket false 4 2 5 [0,1,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175237431094 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1175237431094 : ¬ MinimalInterpreter v1175237431094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175237430230 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1175237430230 : ¬ MinimalInterpreter v1175237430230 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234285366 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175234285366 : ¬ MinimalInterpreter v1175234285366 :=
  chain_cut false 3 (by decide)

private def v1175234284502 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1175234284502 : ¬ MinimalInterpreter v1175234284502 :=
  chain_cut false 3 (by decide)

private def v1175233524694 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 1)))))
private theorem no_v1175233524694 : ¬ MinimalInterpreter v1175233524694 :=
  chain_cut false 8 (by decide)

private def v1175233519062 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 1)))))
private theorem no_v1175233519062 : ¬ MinimalInterpreter v1175233519062 :=
  w_cut false 0 (by decide)

theorem five437 : BadRow (bucket true 4 2 5 [0,1,2,0,1]) := by
  have h : bucket true 4 2 5 [0,1,2,0,1] = [v1175237431094,v1175237430230,v1175234285366,v1175234284502,v1175233524694,v1175233519062] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175237431094) (.cons (no_v1175237430230) (.cons (no_v1175234285366) (.cons (no_v1175234284502) (.cons (no_v1175233524694) (.cons (no_v1175233519062) .nil))))))

theorem five438 : BadRow (bucket false 4 2 5 [0,1,2,1,0]) := by
  have h : bucket false 4 2 5 [0,1,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175237431098 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1175237431098 : ¬ MinimalInterpreter v1175237431098 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175237430234 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1175237430234 : ¬ MinimalInterpreter v1175237430234 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))

private def v1175234285370 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175234285370 : ¬ MinimalInterpreter v1175234285370 :=
  chain_cut false 3 (by decide)

private def v1175234284506 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1175234284506 : ¬ MinimalInterpreter v1175234284506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

theorem five439 : BadRow (bucket true 4 2 5 [0,1,2,1,0]) := by
  have h : bucket true 4 2 5 [0,1,2,1,0] = [v1175237431098,v1175237430234,v1175234285370,v1175234284506] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175237431098) (.cons (no_v1175237430234) (.cons (no_v1175234285370) (.cons (no_v1175234284506) .nil))))

end Blc.SelfintSingleObject.Rows40
