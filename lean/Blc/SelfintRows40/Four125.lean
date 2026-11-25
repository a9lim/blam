import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381033365302 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381033365302 : ¬ MinimalInterpreter v1381033365302 :=
  cost_cut false 1 (by decide)

private def v1381033364438 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1381033364438 : ¬ MinimalInterpreter v1381033364438 :=
  cost_cut false 1 (by decide)

private def v1381033359158 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1381033359158 : ¬ MinimalInterpreter v1381033359158 :=
  cost_cut false 1 (by decide)

private def v1381033358294 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1381033358294 : ¬ MinimalInterpreter v1381033358294 :=
  cost_cut false 1 (by decide)

private def v1381033356758 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1381033356758 : ¬ MinimalInterpreter v1381033356758 :=
  cost_cut false 1 (by decide)

private def v1381033512758 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381033512758 : ¬ MinimalInterpreter v1381033512758 :=
  cost_cut false 1 (by decide)

private def v1381033511894 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1381033511894 : ¬ MinimalInterpreter v1381033511894 :=
  cost_cut false 1 (by decide)

private def v1381034102582 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381034102582 : ¬ MinimalInterpreter v1381034102582 :=
  cost_cut false 1 (by decide)

private def v1381034101718 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1381034101718 : ¬ MinimalInterpreter v1381034101718 :=
  cost_cut false 1 (by decide)

theorem four875 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [0,2,0,1]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [0,2,0,1] = [v1381033365302,v1381033364438,v1381033359158,v1381033358294,v1381033356758,v1381033512758,v1381033511894,v1381034102582,v1381034101718] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033365302) (.cons (no_v1381033364438) (.cons (no_v1381033359158) (.cons (no_v1381033358294) (.cons (no_v1381033356758) (.cons (no_v1381033512758) (.cons (no_v1381033511894) (.cons (no_v1381034102582) (.cons (no_v1381034101718) .nil)))))))))

private def v1381033365306 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381033365306 : ¬ MinimalInterpreter v1381033365306 :=
  cost_cut false 1 (by decide)

private def v1381033364442 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1381033364442 : ¬ MinimalInterpreter v1381033364442 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381033359162 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1381033359162 : ¬ MinimalInterpreter v1381033359162 :=
  cost_cut false 1 (by decide)

private def v1381033358298 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1381033358298 : ¬ MinimalInterpreter v1381033358298 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381033356762 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1381033356762 : ¬ MinimalInterpreter v1381033356762 :=
  cost_cut false 1 (by decide)

private def v1381033512762 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381033512762 : ¬ MinimalInterpreter v1381033512762 :=
  cost_cut false 1 (by decide)

private def v1381033511898 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1381033511898 : ¬ MinimalInterpreter v1381033511898 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1381034102586 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381034102586 : ¬ MinimalInterpreter v1381034102586 :=
  cost_cut false 1 (by decide)

private def v1381034101722 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1381034101722 : ¬ MinimalInterpreter v1381034101722 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem four876 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [0,2,1,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [0,2,1,0] = [v1381033365306,v1381033364442,v1381033359162,v1381033358298,v1381033356762,v1381033512762,v1381033511898,v1381034102586,v1381034101722] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033365306) (.cons (no_v1381033364442) (.cons (no_v1381033359162) (.cons (no_v1381033358298) (.cons (no_v1381033356762) (.cons (no_v1381033512762) (.cons (no_v1381033511898) (.cons (no_v1381034102586) (.cons (no_v1381034101722) .nil)))))))))

theorem four877 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [0,3,0,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381033371246 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381033371246 : ¬ MinimalInterpreter v1381033371246 :=
  cost_cut false 1 (by decide)

private def v1381033371054 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1381033371054 : ¬ MinimalInterpreter v1381033371054 :=
  cost_cut false 1 (by decide)

private def v1381033359982 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1381033359982 : ¬ MinimalInterpreter v1381033359982 :=
  cost_cut false 1 (by decide)

private def v1381033359790 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1381033359790 : ¬ MinimalInterpreter v1381033359790 :=
  cost_cut false 1 (by decide)

private def v1381033356974 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1381033356974 : ¬ MinimalInterpreter v1381033356974 :=
  cost_cut false 1 (by decide)

theorem four878 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [1,0,0,2]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [1,0,0,2] = [v1381033371246,v1381033371054,v1381033359982,v1381033359790,v1381033356974] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033371246) (.cons (no_v1381033371054) (.cons (no_v1381033359982) (.cons (no_v1381033359790) (.cons (no_v1381033356974) .nil)))))

theorem four879 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [1,0,1,1]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381033371258 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381033371258 : ¬ MinimalInterpreter v1381033371258 :=
  cost_cut false 1 (by decide)

private def v1381033371066 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1381033371066 : ¬ MinimalInterpreter v1381033371066 :=
  cost_cut false 1 (by decide)

private def v1381033359994 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v1381033359994 : ¬ MinimalInterpreter v1381033359994 :=
  cost_cut false 1 (by decide)

private def v1381033359802 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v1381033359802 : ¬ MinimalInterpreter v1381033359802 :=
  cost_cut false 1 (by decide)

private def v1381033356986 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v1381033356986 : ¬ MinimalInterpreter v1381033356986 :=
  cost_cut false 1 (by decide)

theorem four880 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [1,0,2,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [1,0,2,0] = [v1381033371258,v1381033371066,v1381033359994,v1381033359802,v1381033356986] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033371258) (.cons (no_v1381033371066) (.cons (no_v1381033359994) (.cons (no_v1381033359802) (.cons (no_v1381033356986) .nil)))))

theorem four881 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [1,1,0,1]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
