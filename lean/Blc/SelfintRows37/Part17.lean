import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v37849458298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v37849458298 : ¬ MinimalInterpreter v37849458298 :=
  cost_cut false 2 (by decide)

private def v37849458106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v37849458106 : ¬ MinimalInterpreter v37849458106 :=
  cost_cut false 2 (by decide)

private def v37849447034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v37849447034 : ¬ MinimalInterpreter v37849447034 :=
  cost_cut false 2 (by decide)

private def v37849446842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v37849446842 : ¬ MinimalInterpreter v37849446842 :=
  cost_cut false 2 (by decide)

private def v37849444026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v37849444026 : ¬ MinimalInterpreter v37849444026 :=
  cost_cut false 2 (by decide)

theorem row102 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [1,0,2,0]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [1,0,2,0] = [v37849458298,v37849458106,v37849447034,v37849446842,v37849444026] := by decide
  rw [h]
  exact (.cons (no_v37849458298) (.cons (no_v37849458106) (.cons (no_v37849447034) (.cons (no_v37849446842) (.cons (no_v37849444026) .nil)))))

theorem row103 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [1,1,0,1]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [1,1,0,1] = [] := by decide
  rw [h]
  exact .nil

theorem row104 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [1,1,1,0]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [1,1,1,0] = [] := by decide
  rw [h]
  exact .nil

private def v37849458586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v37849458586 : ¬ MinimalInterpreter v37849458586 :=
  cost_cut false 2 (by decide)

private def v37849458154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v37849458154 : ¬ MinimalInterpreter v37849458154 :=
  cost_cut false 2 (by decide)

private def v37849447322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v37849447322 : ¬ MinimalInterpreter v37849447322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v37849446890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v37849446890 : ¬ MinimalInterpreter v37849446890 :=
  cost_cut false 2 (by decide)

private def v37849444074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v37849444074 : ¬ MinimalInterpreter v37849444074 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem row105 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [1,2,0,0]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [1,2,0,0] = [v37849458586,v37849458154,v37849447322,v37849446890,v37849444074] := by decide
  rw [h]
  exact (.cons (no_v37849458586) (.cons (no_v37849458154) (.cons (no_v37849447322) (.cons (no_v37849446890) (.cons (no_v37849444074) .nil)))))

private def v37849461558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v37849461558 : ¬ MinimalInterpreter v37849461558 :=
  cost_cut false 2 (by decide)

private def v37849461462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v37849461462 : ¬ MinimalInterpreter v37849461462 :=
  cost_cut false 2 (by decide)

private def v37849447734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v37849447734 : ¬ MinimalInterpreter v37849447734 :=
  cost_cut false 2 (by decide)

private def v37849447638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v37849447638 : ¬ MinimalInterpreter v37849447638 :=
  cost_cut false 2 (by decide)

private def v37849444182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v37849444182 : ¬ MinimalInterpreter v37849444182 :=
  cost_cut false 2 (by decide)

theorem row106 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [2,0,0,1]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [2,0,0,1] = [v37849461558,v37849461462,v37849447734,v37849447638,v37849444182] := by decide
  rw [h]
  exact (.cons (no_v37849461558) (.cons (no_v37849461462) (.cons (no_v37849447734) (.cons (no_v37849447638) (.cons (no_v37849444182) .nil)))))

private def v37849461562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v37849461562 : ¬ MinimalInterpreter v37849461562 :=
  cost_cut false 2 (by decide)

private def v37849461466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v37849461466 : ¬ MinimalInterpreter v37849461466 :=
  cost_cut false 2 (by decide)

private def v37849447738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v37849447738 : ¬ MinimalInterpreter v37849447738 :=
  cost_cut false 2 (by decide)

private def v37849447642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v37849447642 : ¬ MinimalInterpreter v37849447642 :=
  cost_cut false 2 (by decide)

private def v37849444186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v37849444186 : ¬ MinimalInterpreter v37849444186 :=
  cost_cut false 2 (by decide)

theorem row107 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [2,0,1,0]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [2,0,1,0] = [v37849461562,v37849461466,v37849447738,v37849447642,v37849444186] := by decide
  rw [h]
  exact (.cons (no_v37849461562) (.cons (no_v37849461466) (.cons (no_v37849447738) (.cons (no_v37849447642) (.cons (no_v37849444186) .nil)))))

end Blc.SelfintSingleObject.Rows37
