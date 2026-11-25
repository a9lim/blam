import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five464 : BadRow (bucket false 4 2 5 [1,0,0,1,2]) := by
  have h : bucket false 4 2 5 [1,0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175239838958 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1175239838958 : ¬ MinimalInterpreter v1175239838958 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175239838574 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1175239838574 : ¬ MinimalInterpreter v1175239838574 :=
  chain_cut false 2 (by decide)

private def v1175239832814 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175239832814 : ¬ MinimalInterpreter v1175239832814 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175239832430 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v1175239832430 : ¬ MinimalInterpreter v1175239832430 :=
  chain_cut false 2 (by decide)

private def v1175239830894 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v1175239830894 : ¬ MinimalInterpreter v1175239830894 :=
  chain_cut false 2 (by decide)

private def v1175239986414 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1175239986414 : ¬ MinimalInterpreter v1175239986414 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175239986030 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1175239986030 : ¬ MinimalInterpreter v1175239986030 :=
  chain_cut false 2 (by decide)

private def v1175240576238 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1175240576238 : ¬ MinimalInterpreter v1175240576238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))

private def v1175240575854 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1175240575854 : ¬ MinimalInterpreter v1175240575854 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234809070 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175234809070 : ¬ MinimalInterpreter v1175234809070 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175234808686 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1175234808686 : ¬ MinimalInterpreter v1175234808686 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five465 : BadRow (bucket true 4 2 5 [1,0,0,1,2]) := by
  have h : bucket true 4 2 5 [1,0,0,1,2] = [v1175239838958,v1175239838574,v1175239832814,v1175239832430,v1175239830894,v1175239986414,v1175239986030,v1175240576238,v1175240575854,v1175234809070,v1175234808686] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175239838958) (.cons (no_v1175239838574) (.cons (no_v1175239832814) (.cons (no_v1175239832430) (.cons (no_v1175239830894) (.cons (no_v1175239986414) (.cons (no_v1175239986030) (.cons (no_v1175240576238) (.cons (no_v1175240575854) (.cons (no_v1175234809070) (.cons (no_v1175234808686) .nil)))))))))))

theorem five466 : BadRow (bucket false 4 2 5 [1,0,0,2,1]) := by
  have h : bucket false 4 2 5 [1,0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175239838966 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1175239838966 : ¬ MinimalInterpreter v1175239838966 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175239838582 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1175239838582 : ¬ MinimalInterpreter v1175239838582 :=
  chain_cut false 2 (by decide)

private def v1175239832822 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175239832822 : ¬ MinimalInterpreter v1175239832822 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175239832438 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v1175239832438 : ¬ MinimalInterpreter v1175239832438 :=
  chain_cut false 2 (by decide)

private def v1175239830902 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v1175239830902 : ¬ MinimalInterpreter v1175239830902 :=
  chain_cut false 2 (by decide)

private def v1175239986422 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1175239986422 : ¬ MinimalInterpreter v1175239986422 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175239986038 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1175239986038 : ¬ MinimalInterpreter v1175239986038 :=
  chain_cut false 2 (by decide)

private def v1175240576246 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1175240576246 : ¬ MinimalInterpreter v1175240576246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))

private def v1175240575862 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1175240575862 : ¬ MinimalInterpreter v1175240575862 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234809078 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175234809078 : ¬ MinimalInterpreter v1175234809078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175234808694 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1175234808694 : ¬ MinimalInterpreter v1175234808694 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five467 : BadRow (bucket true 4 2 5 [1,0,0,2,1]) := by
  have h : bucket true 4 2 5 [1,0,0,2,1] = [v1175239838966,v1175239838582,v1175239832822,v1175239832438,v1175239830902,v1175239986422,v1175239986038,v1175240576246,v1175240575862,v1175234809078,v1175234808694] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175239838966) (.cons (no_v1175239838582) (.cons (no_v1175239832822) (.cons (no_v1175239832438) (.cons (no_v1175239830902) (.cons (no_v1175239986422) (.cons (no_v1175239986038) (.cons (no_v1175240576246) (.cons (no_v1175240575862) (.cons (no_v1175234809078) (.cons (no_v1175234808694) .nil)))))))))))

theorem five468 : BadRow (bucket false 4 2 5 [1,0,0,3,0]) := by
  have h : bucket false 4 2 5 [1,0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five469 : BadRow (bucket true 4 2 5 [1,0,0,3,0]) := by
  have h : bucket true 4 2 5 [1,0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five470 : BadRow (bucket false 4 2 5 [1,0,1,0,2]) := by
  have h : bucket false 4 2 5 [1,0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175239839342 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1175239839342 : ¬ MinimalInterpreter v1175239839342 :=
  chain_cut false 2 (by decide)

private def v1175239838638 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1175239838638 : ¬ MinimalInterpreter v1175239838638 :=
  chain_cut false 2 (by decide)

private def v1175239833198 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175239833198 : ¬ MinimalInterpreter v1175239833198 :=
  chain_cut false 2 (by decide)

private def v1175239832494 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v1175239832494 : ¬ MinimalInterpreter v1175239832494 :=
  chain_cut false 2 (by decide)

private def v1175239830958 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v1175239830958 : ¬ MinimalInterpreter v1175239830958 :=
  chain_cut false 2 (by decide)

private def v1175239986798 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1175239986798 : ¬ MinimalInterpreter v1175239986798 :=
  chain_cut false 2 (by decide)

private def v1175239986094 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1175239986094 : ¬ MinimalInterpreter v1175239986094 :=
  chain_cut false 2 (by decide)

private def v1175240576622 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1175240576622 : ¬ MinimalInterpreter v1175240576622 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175240575918 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1175240575918 : ¬ MinimalInterpreter v1175240575918 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234809454 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175234809454 : ¬ MinimalInterpreter v1175234809454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234808750 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1175234808750 : ¬ MinimalInterpreter v1175234808750 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five471 : BadRow (bucket true 4 2 5 [1,0,1,0,2]) := by
  have h : bucket true 4 2 5 [1,0,1,0,2] = [v1175239839342,v1175239838638,v1175239833198,v1175239832494,v1175239830958,v1175239986798,v1175239986094,v1175240576622,v1175240575918,v1175234809454,v1175234808750] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175239839342) (.cons (no_v1175239838638) (.cons (no_v1175239833198) (.cons (no_v1175239832494) (.cons (no_v1175239830958) (.cons (no_v1175239986798) (.cons (no_v1175239986094) (.cons (no_v1175240576622) (.cons (no_v1175240575918) (.cons (no_v1175234809454) (.cons (no_v1175234808750) .nil)))))))))))

end Blc.SelfintSingleObject.Rows40
