import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402306940730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))))))
private theorem no_v1402306940730 : ¬ MinimalInterpreter v1402306940730 :=
  cost_cut false 2 (by decide)

private def v1402306939866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))))
private theorem no_v1402306939866 : ¬ MinimalInterpreter v1402306939866 :=
  cost_cut false 2 (by decide)

private def v1402306918202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402306918202 : ¬ MinimalInterpreter v1402306918202 :=
  cost_cut false 2 (by decide)

private def v1402306917338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))))
private theorem no_v1402306917338 : ¬ MinimalInterpreter v1402306917338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402306911706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))))
private theorem no_v1402306911706 : ¬ MinimalInterpreter v1402306911706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402307284794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))))
private theorem no_v1402307284794 : ¬ MinimalInterpreter v1402307284794 :=
  cost_cut false 2 (by decide)

private def v1402307283930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))))
private theorem no_v1402307283930 : ¬ MinimalInterpreter v1402307283930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))))

private def v1402307292954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))))))
private theorem no_v1402307292954 : ¬ MinimalInterpreter v1402307292954 :=
  cost_cut false 2 (by decide)

private def v1402307202842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0))))))))
private theorem no_v1402307202842 : ¬ MinimalInterpreter v1402307202842 :=
  cost_cut false 2 (by decide)

private def v1402307180314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402307180314 : ¬ MinimalInterpreter v1402307180314 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem four273 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,2,1,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,2,1,0] = [v1402306940730,v1402306939866,v1402306918202,v1402306917338,v1402306911706,v1402307284794,v1402307283930,v1402307292954,v1402307202842,v1402307180314] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306940730) (.cons (no_v1402306939866) (.cons (no_v1402306918202) (.cons (no_v1402306917338) (.cons (no_v1402306911706) (.cons (no_v1402307284794) (.cons (no_v1402307283930) (.cons (no_v1402307292954) (.cons (no_v1402307202842) (.cons (no_v1402307180314) .nil))))))))))

private def v1402306940826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0)))))))))))
private theorem no_v1402306940826 : ¬ MinimalInterpreter v1402306940826 :=
  cost_cut false 2 (by decide)

private def v1402306939882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0))))))))))
private theorem no_v1402306939882 : ¬ MinimalInterpreter v1402306939882 :=
  cost_cut false 2 (by decide)

private def v1402306918298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402306918298 : ¬ MinimalInterpreter v1402306918298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402306917354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0)))))))))
private theorem no_v1402306917354 : ¬ MinimalInterpreter v1402306917354 :=
  cost_cut false 2 (by decide)

private def v1402306911722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))))
private theorem no_v1402306911722 : ¬ MinimalInterpreter v1402306911722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402307200922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402307200922 : ¬ MinimalInterpreter v1402307200922 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))))

private def v1402307178986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0))))))))
private theorem no_v1402307178986 : ¬ MinimalInterpreter v1402307178986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))))

theorem four274 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,3,0,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,3,0,0] = [v1402306940826,v1402306939882,v1402306918298,v1402306917354,v1402306911722,v1402307200922,v1402307178986] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306940826) (.cons (no_v1402306939882) (.cons (no_v1402306918298) (.cons (no_v1402306917354) (.cons (no_v1402306911722) (.cons (no_v1402307200922) (.cons (no_v1402307178986) .nil)))))))

private def v1402307320206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))))
private theorem no_v1402307320206 : ¬ MinimalInterpreter v1402307320206 :=
  cost_cut false 2 (by decide)

private def v1402307319438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))))
private theorem no_v1402307319438 : ¬ MinimalInterpreter v1402307319438 :=
  cost_cut false 2 (by decide)

private def v1402307209614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402307209614 : ¬ MinimalInterpreter v1402307209614 :=
  cost_cut false 2 (by decide)

private def v1402307208846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2)))))))))
private theorem no_v1402307208846 : ¬ MinimalInterpreter v1402307208846 :=
  cost_cut false 2 (by decide)

private def v1402307181198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402307181198 : ¬ MinimalInterpreter v1402307181198 :=
  cost_cut false 2 (by decide)

theorem four275 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [2,0,0,2]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [2,0,0,2] = [v1402307320206,v1402307319438,v1402307209614,v1402307208846,v1402307181198] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307320206) (.cons (no_v1402307319438) (.cons (no_v1402307209614) (.cons (no_v1402307208846) (.cons (no_v1402307181198) .nil)))))

private def v1402306946678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))))))
private theorem no_v1402306946678 : ¬ MinimalInterpreter v1402306946678 :=
  cost_cut false 2 (by decide)

private def v1402306946486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))))))
private theorem no_v1402306946486 : ¬ MinimalInterpreter v1402306946486 :=
  cost_cut false 2 (by decide)

private def v1402306919030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402306919030 : ¬ MinimalInterpreter v1402306919030 :=
  cost_cut false 2 (by decide)

private def v1402306918838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))))))
private theorem no_v1402306918838 : ¬ MinimalInterpreter v1402306918838 :=
  cost_cut false 2 (by decide)

private def v1402306911926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))))))
private theorem no_v1402306911926 : ¬ MinimalInterpreter v1402306911926 :=
  cost_cut false 2 (by decide)

private def v1402307320262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))))))
private theorem no_v1402307320262 : ¬ MinimalInterpreter v1402307320262 :=
  cost_cut false 2 (by decide)

private def v1402307319494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))))))
private theorem no_v1402307319494 : ¬ MinimalInterpreter v1402307319494 :=
  cost_cut false 2 (by decide)

private def v1402307319350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))))))
private theorem no_v1402307319350 : ¬ MinimalInterpreter v1402307319350 :=
  cost_cut false 2 (by decide)

private def v1402307209670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402307209670 : ¬ MinimalInterpreter v1402307209670 :=
  cost_cut false 2 (by decide)

private def v1402307208902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1)))))))))
private theorem no_v1402307208902 : ¬ MinimalInterpreter v1402307208902 :=
  cost_cut false 2 (by decide)

private def v1402307181254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402307181254 : ¬ MinimalInterpreter v1402307181254 :=
  cost_cut false 2 (by decide)

private def v1402307208758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1))))))))
private theorem no_v1402307208758 : ¬ MinimalInterpreter v1402307208758 :=
  cost_cut false 2 (by decide)

private def v1402307181110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402307181110 : ¬ MinimalInterpreter v1402307181110 :=
  cost_cut false 2 (by decide)

theorem four276 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [2,0,1,1]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [2,0,1,1] = [v1402306946678,v1402306946486,v1402306919030,v1402306918838,v1402306911926,v1402307320262,v1402307319494,v1402307319350,v1402307209670,v1402307208902,v1402307181254,v1402307208758,v1402307181110] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306946678) (.cons (no_v1402306946486) (.cons (no_v1402306919030) (.cons (no_v1402306918838) (.cons (no_v1402306911926) (.cons (no_v1402307320262) (.cons (no_v1402307319494) (.cons (no_v1402307319350) (.cons (no_v1402307209670) (.cons (no_v1402307208902) (.cons (no_v1402307181254) (.cons (no_v1402307208758) (.cons (no_v1402307181110) .nil)))))))))))))

private def v1402307319354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))))))
private theorem no_v1402307319354 : ¬ MinimalInterpreter v1402307319354 :=
  cost_cut false 2 (by decide)

private def v1402307208762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0))))))))
private theorem no_v1402307208762 : ¬ MinimalInterpreter v1402307208762 :=
  cost_cut false 2 (by decide)

private def v1402307181114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402307181114 : ¬ MinimalInterpreter v1402307181114 :=
  cost_cut false 2 (by decide)

theorem four277 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [2,0,2,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [2,0,2,0] = [v1402307319354,v1402307208762,v1402307181114] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307319354) (.cons (no_v1402307208762) (.cons (no_v1402307181114) .nil)))

private def v1402306946870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))))))))))
private theorem no_v1402306946870 : ¬ MinimalInterpreter v1402306946870 :=
  cost_cut false 2 (by decide)

private def v1402306946518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))))))))))
private theorem no_v1402306946518 : ¬ MinimalInterpreter v1402306946518 :=
  cost_cut false 2 (by decide)

private def v1402306919222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402306919222 : ¬ MinimalInterpreter v1402306919222 :=
  cost_cut false 2 (by decide)

private def v1402306918870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)))))))))
private theorem no_v1402306918870 : ¬ MinimalInterpreter v1402306918870 :=
  cost_cut false 2 (by decide)

private def v1402306911958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)))))))))
private theorem no_v1402306911958 : ¬ MinimalInterpreter v1402306911958 :=
  cost_cut false 2 (by decide)

private def v1402307321030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))))))
private theorem no_v1402307321030 : ¬ MinimalInterpreter v1402307321030 :=
  cost_cut false 2 (by decide)

private def v1402307319622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))))))
private theorem no_v1402307319622 : ¬ MinimalInterpreter v1402307319622 :=
  cost_cut false 2 (by decide)

private def v1402307210438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402307210438 : ¬ MinimalInterpreter v1402307210438 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307207990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402307207990 : ¬ MinimalInterpreter v1402307207990 :=
  cost_cut false 2 (by decide)

private def v1402307209030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1)))))))))
private theorem no_v1402307209030 : ¬ MinimalInterpreter v1402307209030 :=
  cost_cut false 2 (by decide)

private def v1402307181382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402307181382 : ¬ MinimalInterpreter v1402307181382 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307180758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1))))))))
private theorem no_v1402307180758 : ¬ MinimalInterpreter v1402307180758 :=
  cost_cut false 2 (by decide)

theorem four278 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [2,1,0,1]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [2,1,0,1] = [v1402306946870,v1402306946518,v1402306919222,v1402306918870,v1402306911958,v1402307321030,v1402307319622,v1402307210438,v1402307207990,v1402307209030,v1402307181382,v1402307180758] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306946870) (.cons (no_v1402306946518) (.cons (no_v1402306919222) (.cons (no_v1402306918870) (.cons (no_v1402306911958) (.cons (no_v1402307321030) (.cons (no_v1402307319622) (.cons (no_v1402307210438) (.cons (no_v1402307207990) (.cons (no_v1402307209030) (.cons (no_v1402307181382) (.cons (no_v1402307180758) .nil))))))))))))

private def v1402306946874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))))
private theorem no_v1402306946874 : ¬ MinimalInterpreter v1402306946874 :=
  cost_cut false 2 (by decide)

private def v1402306946522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))))
private theorem no_v1402306946522 : ¬ MinimalInterpreter v1402306946522 :=
  cost_cut false 2 (by decide)

private def v1402306919226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402306919226 : ¬ MinimalInterpreter v1402306919226 :=
  cost_cut false 2 (by decide)

private def v1402306918874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))))
private theorem no_v1402306918874 : ¬ MinimalInterpreter v1402306918874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402306911962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))))
private theorem no_v1402306911962 : ¬ MinimalInterpreter v1402306911962 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402307319578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))))))
private theorem no_v1402307319578 : ¬ MinimalInterpreter v1402307319578 :=
  cost_cut false 2 (by decide)

private def v1402307207994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402307207994 : ¬ MinimalInterpreter v1402307207994 :=
  cost_cut false 2 (by decide)

private def v1402307208986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))))
private theorem no_v1402307208986 : ¬ MinimalInterpreter v1402307208986 :=
  cost_cut false 2 (by decide)

private def v1402307181338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402307181338 : ¬ MinimalInterpreter v1402307181338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307180762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0))))))))
private theorem no_v1402307180762 : ¬ MinimalInterpreter v1402307180762 :=
  cost_cut false 2 (by decide)

theorem four279 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [2,1,1,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [2,1,1,0] = [v1402306946874,v1402306946522,v1402306919226,v1402306918874,v1402306911962,v1402307319578,v1402307207994,v1402307208986,v1402307181338,v1402307180762] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306946874) (.cons (no_v1402306946522) (.cons (no_v1402306919226) (.cons (no_v1402306918874) (.cons (no_v1402306911962) (.cons (no_v1402307319578) (.cons (no_v1402307207994) (.cons (no_v1402307208986) (.cons (no_v1402307181338) (.cons (no_v1402307180762) .nil))))))))))

end Blc.SelfintSingleObject.Rows40
