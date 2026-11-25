import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five472 : BadRow (bucket false 4 2 5 [1,0,1,1,1]) := by
  have h : bucket false 4 2 5 [1,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five473 : BadRow (bucket true 4 2 5 [1,0,1,1,1]) := by
  have h : bucket true 4 2 5 [1,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five474 : BadRow (bucket false 4 2 5 [1,0,1,2,0]) := by
  have h : bucket false 4 2 5 [1,0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175239839354 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1175239839354 : ¬ MinimalInterpreter v1175239839354 :=
  chain_cut false 2 (by decide)

private def v1175239838650 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1175239838650 : ¬ MinimalInterpreter v1175239838650 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175239833210 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175239833210 : ¬ MinimalInterpreter v1175239833210 :=
  chain_cut false 2 (by decide)

private def v1175239832506 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v1175239832506 : ¬ MinimalInterpreter v1175239832506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175239830970 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v1175239830970 : ¬ MinimalInterpreter v1175239830970 :=
  chain_cut false 2 (by decide)

private def v1175239986810 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1175239986810 : ¬ MinimalInterpreter v1175239986810 :=
  chain_cut false 2 (by decide)

private def v1175239986106 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1175239986106 : ¬ MinimalInterpreter v1175239986106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175240576634 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1175240576634 : ¬ MinimalInterpreter v1175240576634 :=
  chain_cut true 6 (by decide)

private def v1175240575930 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1175240575930 : ¬ MinimalInterpreter v1175240575930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))

private def v1175234809466 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175234809466 : ¬ MinimalInterpreter v1175234809466 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234808762 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1175234808762 : ¬ MinimalInterpreter v1175234808762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175234556858 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0)))))
private theorem no_v1175234556858 : ¬ MinimalInterpreter v1175234556858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide))))

private def v1175234555322 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.var 0)))))
private theorem no_v1175234555322 : ¬ MinimalInterpreter v1175234555322 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five475 : BadRow (bucket true 4 2 5 [1,0,1,2,0]) := by
  have h : bucket true 4 2 5 [1,0,1,2,0] = [v1175239839354,v1175239838650,v1175239833210,v1175239832506,v1175239830970,v1175239986810,v1175239986106,v1175240576634,v1175240575930,v1175234809466,v1175234808762,v1175234556858,v1175234555322] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175239839354) (.cons (no_v1175239838650) (.cons (no_v1175239833210) (.cons (no_v1175239832506) (.cons (no_v1175239830970) (.cons (no_v1175239986810) (.cons (no_v1175239986106) (.cons (no_v1175240576634) (.cons (no_v1175240575930) (.cons (no_v1175234809466) (.cons (no_v1175234808762) (.cons (no_v1175234556858) (.cons (no_v1175234555322) .nil)))))))))))))

theorem five476 : BadRow (bucket false 4 2 5 [1,0,2,0,1]) := by
  have h : bucket false 4 2 5 [1,0,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175239839542 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1175239839542 : ¬ MinimalInterpreter v1175239839542 :=
  chain_cut false 2 (by decide)

private def v1175239838678 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1175239838678 : ¬ MinimalInterpreter v1175239838678 :=
  chain_cut false 2 (by decide)

private def v1175239833398 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175239833398 : ¬ MinimalInterpreter v1175239833398 :=
  chain_cut false 2 (by decide)

private def v1175239832534 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v1175239832534 : ¬ MinimalInterpreter v1175239832534 :=
  chain_cut false 2 (by decide)

private def v1175239830998 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v1175239830998 : ¬ MinimalInterpreter v1175239830998 :=
  chain_cut false 2 (by decide)

private def v1175239986998 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1175239986998 : ¬ MinimalInterpreter v1175239986998 :=
  chain_cut false 2 (by decide)

private def v1175239986134 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1175239986134 : ¬ MinimalInterpreter v1175239986134 :=
  chain_cut false 2 (by decide)

private def v1175240576822 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1175240576822 : ¬ MinimalInterpreter v1175240576822 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175240575958 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1175240575958 : ¬ MinimalInterpreter v1175240575958 :=
  chain_cut true 5 (by decide)

private def v1175234809654 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175234809654 : ¬ MinimalInterpreter v1175234809654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234808790 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1175234808790 : ¬ MinimalInterpreter v1175234808790 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five477 : BadRow (bucket true 4 2 5 [1,0,2,0,1]) := by
  have h : bucket true 4 2 5 [1,0,2,0,1] = [v1175239839542,v1175239838678,v1175239833398,v1175239832534,v1175239830998,v1175239986998,v1175239986134,v1175240576822,v1175240575958,v1175234809654,v1175234808790] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175239839542) (.cons (no_v1175239838678) (.cons (no_v1175239833398) (.cons (no_v1175239832534) (.cons (no_v1175239830998) (.cons (no_v1175239986998) (.cons (no_v1175239986134) (.cons (no_v1175240576822) (.cons (no_v1175240575958) (.cons (no_v1175234809654) (.cons (no_v1175234808790) .nil)))))))))))

theorem five478 : BadRow (bucket false 4 2 5 [1,0,2,1,0]) := by
  have h : bucket false 4 2 5 [1,0,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175239839546 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1175239839546 : ¬ MinimalInterpreter v1175239839546 :=
  chain_cut false 2 (by decide)

private def v1175239838682 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1175239838682 : ¬ MinimalInterpreter v1175239838682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175239833402 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175239833402 : ¬ MinimalInterpreter v1175239833402 :=
  chain_cut false 2 (by decide)

private def v1175239832538 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v1175239832538 : ¬ MinimalInterpreter v1175239832538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175239831002 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v1175239831002 : ¬ MinimalInterpreter v1175239831002 :=
  chain_cut false 2 (by decide)

private def v1175239987002 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1175239987002 : ¬ MinimalInterpreter v1175239987002 :=
  chain_cut false 2 (by decide)

private def v1175239986138 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1175239986138 : ¬ MinimalInterpreter v1175239986138 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175240576826 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1175240576826 : ¬ MinimalInterpreter v1175240576826 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175240575962 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1175240575962 : ¬ MinimalInterpreter v1175240575962 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))

private def v1175234809658 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1175234809658 : ¬ MinimalInterpreter v1175234809658 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234808794 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1175234808794 : ¬ MinimalInterpreter v1175234808794 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175234556890 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0)))))
private theorem no_v1175234556890 : ¬ MinimalInterpreter v1175234556890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide))))

private def v1175234555354 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))) (.var 0)))))
private theorem no_v1175234555354 : ¬ MinimalInterpreter v1175234555354 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five479 : BadRow (bucket true 4 2 5 [1,0,2,1,0]) := by
  have h : bucket true 4 2 5 [1,0,2,1,0] = [v1175239839546,v1175239838682,v1175239833402,v1175239832538,v1175239831002,v1175239987002,v1175239986138,v1175240576826,v1175240575962,v1175234809658,v1175234808794,v1175234556890,v1175234555354] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175239839546) (.cons (no_v1175239838682) (.cons (no_v1175239833402) (.cons (no_v1175239832538) (.cons (no_v1175239831002) (.cons (no_v1175239987002) (.cons (no_v1175239986138) (.cons (no_v1175240576826) (.cons (no_v1175240575962) (.cons (no_v1175234809658) (.cons (no_v1175234808794) (.cons (no_v1175234556890) (.cons (no_v1175234555354) .nil)))))))))))))

end Blc.SelfintSingleObject.Rows40
