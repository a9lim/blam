import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row24 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [1,0,1,1,0]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [1,0,1,1,0] = [] := by decide
  rw [h]
  exact .nil

private def v37850343322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v37850343322 : ¬ MinimalInterpreter v37850343322 :=
  chain_cut false 2 (by decide)

private def v37850342890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v37850342890 : ¬ MinimalInterpreter v37850342890 :=
  chain_cut false 2 (by decide)

private def v37850340250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v37850340250 : ¬ MinimalInterpreter v37850340250 :=
  chain_cut false 2 (by decide)

private def v37850339818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v37850339818 : ¬ MinimalInterpreter v37850339818 :=
  chain_cut false 2 (by decide)

private def v37850339050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v37850339050 : ¬ MinimalInterpreter v37850339050 :=
  chain_cut false 2 (by decide)

private def v37850163098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v37850163098 : ¬ MinimalInterpreter v37850163098 :=
  chain_cut false 2 (by decide)

private def v37850162666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v37850162666 : ¬ MinimalInterpreter v37850162666 :=
  chain_cut false 2 (by decide)

private def v37850160026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v37850160026 : ¬ MinimalInterpreter v37850160026 :=
  chain_cut false 2 (by decide)

private def v37850114970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v37850114970 : ¬ MinimalInterpreter v37850114970 :=
  chain_cut false 2 (by decide)

private def v37850159594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 0))))))
private theorem no_v37850159594 : ¬ MinimalInterpreter v37850159594 :=
  chain_cut false 2 (by decide)

private def v37850158826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 0))))))
private theorem no_v37850158826 : ¬ MinimalInterpreter v37850158826 :=
  chain_cut false 2 (by decide)

private def v37850114538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v37850114538 : ¬ MinimalInterpreter v37850114538 :=
  chain_cut false 2 (by decide)

private def v37850113770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v37850113770 : ¬ MinimalInterpreter v37850113770 :=
  chain_cut false 2 (by decide)

private def v37850102506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v37850102506 : ¬ MinimalInterpreter v37850102506 :=
  chain_cut false 2 (by decide)

theorem row25 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [1,0,2,0,0]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [1,0,2,0,0] = [v37850343322,v37850342890,v37850340250,v37850339818,v37850339050,v37850163098,v37850162666,v37850160026,v37850114970,v37850159594,v37850158826,v37850114538,v37850113770,v37850102506] := by decide
  rw [h]
  exact (.cons (no_v37850343322) (.cons (no_v37850342890) (.cons (no_v37850340250) (.cons (no_v37850339818) (.cons (no_v37850339050) (.cons (no_v37850163098) (.cons (no_v37850162666) (.cons (no_v37850160026) (.cons (no_v37850114970) (.cons (no_v37850159594) (.cons (no_v37850158826) (.cons (no_v37850114538) (.cons (no_v37850113770) (.cons (no_v37850102506) .nil))))))))))))))

theorem row26 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [1,1,0,0,1]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [1,1,0,0,1] = [] := by decide
  rw [h]
  exact .nil

theorem row27 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [1,1,0,1,0]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [1,1,0,1,0] = [] := by decide
  rw [h]
  exact .nil

theorem row28 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [1,1,1,0,0]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [1,1,1,0,0] = [] := by decide
  rw [h]
  exact .nil

private def v37850347930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))))))))
private theorem no_v37850347930 : ¬ MinimalInterpreter v37850347930 :=
  chain_cut false 2 (by decide)

private def v37850347882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))))))))
private theorem no_v37850347882 : ¬ MinimalInterpreter v37850347882 :=
  chain_cut false 2 (by decide)

private def v37850341018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))))))))
private theorem no_v37850341018 : ¬ MinimalInterpreter v37850341018 :=
  chain_cut false 2 (by decide)

private def v37850340970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)))))))
private theorem no_v37850340970 : ¬ MinimalInterpreter v37850340970 :=
  chain_cut false 2 (by decide)

private def v37850339242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0)))))))
private theorem no_v37850339242 : ¬ MinimalInterpreter v37850339242 :=
  chain_cut false 2 (by decide)

private def v37850167706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0))))))))
private theorem no_v37850167706 : ¬ MinimalInterpreter v37850167706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850167658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0)))))))
private theorem no_v37850167658 : ¬ MinimalInterpreter v37850167658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850160794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 0)))))))
private theorem no_v37850160794 : ¬ MinimalInterpreter v37850160794 :=
  chain_cut false 2 (by decide)

private def v37850115738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0)))))))
private theorem no_v37850115738 : ¬ MinimalInterpreter v37850115738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850160746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 0))))))
private theorem no_v37850160746 : ¬ MinimalInterpreter v37850160746 :=
  chain_cut false 2 (by decide)

private def v37850159018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 0))))))
private theorem no_v37850159018 : ¬ MinimalInterpreter v37850159018 :=
  chain_cut false 2 (by decide)

private def v37850115690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0))))))
private theorem no_v37850115690 : ¬ MinimalInterpreter v37850115690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850113962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.var 0))))))
private theorem no_v37850113962 : ¬ MinimalInterpreter v37850113962 :=
  chain_cut false 2 (by decide)

private def v37850102698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0))))))
private theorem no_v37850102698 : ¬ MinimalInterpreter v37850102698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row29 : BadRow (row ⟨0,2,0,2,5,3⟩ [0,0] [1,2,0,0,0]) := by
  have h : row ⟨0,2,0,2,5,3⟩ [0,0] [1,2,0,0,0] = [v37850347930,v37850347882,v37850341018,v37850340970,v37850339242,v37850167706,v37850167658,v37850160794,v37850115738,v37850160746,v37850159018,v37850115690,v37850113962,v37850102698] := by decide
  rw [h]
  exact (.cons (no_v37850347930) (.cons (no_v37850347882) (.cons (no_v37850341018) (.cons (no_v37850340970) (.cons (no_v37850339242) (.cons (no_v37850167706) (.cons (no_v37850167658) (.cons (no_v37850160794) (.cons (no_v37850115738) (.cons (no_v37850160746) (.cons (no_v37850159018) (.cons (no_v37850115690) (.cons (no_v37850113962) (.cons (no_v37850102698) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows37
