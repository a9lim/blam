import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381370830074 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1381370830074 : ¬ MinimalInterpreter v1381370830074 :=
  cost_cut false 1 (by decide)

private def v1381370828666 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1381370828666 : ¬ MinimalInterpreter v1381370828666 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 2) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1381370846330 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1381370846330 : ¬ MinimalInterpreter v1381370846330 :=
  cost_cut false 1 (by decide)

private def v1381370403962 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1381370403962 : ¬ MinimalInterpreter v1381370403962 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 3)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370293370 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 3))) (.var 0))))))
private theorem no_v1381370293370 : ¬ MinimalInterpreter v1381370293370 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 3))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 3))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four504 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,1,3,0]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,1,3,0] = [v1381370830074,v1381370828666,v1381370846330,v1381370403962,v1381370293370] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370830074) (.cons (no_v1381370828666) (.cons (no_v1381370846330) (.cons (no_v1381370403962) (.cons (no_v1381370293370) .nil)))))

private def v1381370853774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1381370853774 : ¬ MinimalInterpreter v1381370853774 :=
  cost_cut false 1 (by decide)

private def v1381370846862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1381370846862 : ¬ MinimalInterpreter v1381370846862 :=
  cost_cut false 1 (by decide)

private def v1381370411406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1381370411406 : ¬ MinimalInterpreter v1381370411406 :=
  cost_cut false 1 (by decide)

private def v1381370400366 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 2)))))))
private theorem no_v1381370400366 : ¬ MinimalInterpreter v1381370400366 :=
  cost_cut false 1 (by decide)

private def v1381370404494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1381370404494 : ¬ MinimalInterpreter v1381370404494 :=
  cost_cut false 1 (by decide)

private def v1381370293902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1381370293902 : ¬ MinimalInterpreter v1381370293902 :=
  cost_cut false 1 (by decide)

private def v1381370291118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 2))))))
private theorem no_v1381370291118 : ¬ MinimalInterpreter v1381370291118 :=
  cost_cut false 1 (by decide)

theorem four505 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,2,0,2]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,2,0,2] = [v1381370853774,v1381370846862,v1381370411406,v1381370400366,v1381370404494,v1381370293902,v1381370291118] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370853774) (.cons (no_v1381370846862) (.cons (no_v1381370411406) (.cons (no_v1381370400366) (.cons (no_v1381370404494) (.cons (no_v1381370293902) (.cons (no_v1381370291118) .nil)))))))

private def v1381370830454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v1381370830454 : ¬ MinimalInterpreter v1381370830454 :=
  cost_cut false 1 (by decide)

private def v1381370828726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v1381370828726 : ¬ MinimalInterpreter v1381370828726 :=
  cost_cut false 1 (by decide)

private def v1381370853830 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1381370853830 : ¬ MinimalInterpreter v1381370853830 :=
  cost_cut false 1 (by decide)

private def v1381370846918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1381370846918 : ¬ MinimalInterpreter v1381370846918 :=
  cost_cut false 1 (by decide)

private def v1381370846774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1381370846774 : ¬ MinimalInterpreter v1381370846774 :=
  cost_cut false 1 (by decide)

private def v1381370411462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1381370411462 : ¬ MinimalInterpreter v1381370411462 :=
  cost_cut false 1 (by decide)

private def v1381370404550 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1381370404550 : ¬ MinimalInterpreter v1381370404550 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370293958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1381370293958 : ¬ MinimalInterpreter v1381370293958 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1381370398646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 1)))) (.var 1))))))
private theorem no_v1381370398646 : ¬ MinimalInterpreter v1381370398646 :=
  cost_cut false 1 (by decide)

private def v1381370404406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1381370404406 : ¬ MinimalInterpreter v1381370404406 :=
  cost_cut false 1 (by decide)

private def v1381370293814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 1))) (.var 1))))))
private theorem no_v1381370293814 : ¬ MinimalInterpreter v1381370293814 :=
  cost_cut false 1 (by decide)

theorem four506 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,2,1,1]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,2,1,1] = [v1381370830454,v1381370828726,v1381370853830,v1381370846918,v1381370846774,v1381370411462,v1381370404550,v1381370293958,v1381370398646,v1381370404406,v1381370293814] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370830454) (.cons (no_v1381370828726) (.cons (no_v1381370853830) (.cons (no_v1381370846918) (.cons (no_v1381370846774) (.cons (no_v1381370411462) (.cons (no_v1381370404550) (.cons (no_v1381370293958) (.cons (no_v1381370398646) (.cons (no_v1381370404406) (.cons (no_v1381370293814) .nil)))))))))))

private def v1381370846778 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1381370846778 : ¬ MinimalInterpreter v1381370846778 :=
  cost_cut false 1 (by decide)

private def v1381370400378 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 2) (.var 0)))))))
private theorem no_v1381370400378 : ¬ MinimalInterpreter v1381370400378 :=
  cost_cut false 1 (by decide)

private def v1381370398650 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 2)))) (.var 0))))))
private theorem no_v1381370398650 : ¬ MinimalInterpreter v1381370398650 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.app (.var 2) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.app (.var 1) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370404410 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1381370404410 : ¬ MinimalInterpreter v1381370404410 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370293818 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 2))) (.var 0))))))
private theorem no_v1381370293818 : ¬ MinimalInterpreter v1381370293818 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 2)) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1381370291130 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 2)) (.var 0))))))
private theorem no_v1381370291130 : ¬ MinimalInterpreter v1381370291130 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 2)) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four507 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,2,2,0]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,2,2,0] = [v1381370846778,v1381370400378,v1381370398650,v1381370404410,v1381370293818,v1381370291130] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370846778) (.cons (no_v1381370400378) (.cons (no_v1381370398650) (.cons (no_v1381370404410) (.cons (no_v1381370293818) (.cons (no_v1381370291130) .nil))))))

private def v1381370830646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381370830646 : ¬ MinimalInterpreter v1381370830646 :=
  cost_cut false 1 (by decide)

private def v1381370828758 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1381370828758 : ¬ MinimalInterpreter v1381370828758 :=
  cost_cut false 1 (by decide)

private def v1381370400566 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))
private theorem no_v1381370400566 : ¬ MinimalInterpreter v1381370400566 :=
  cost_cut false 1 (by decide)

private def v1381370291158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 3))) (.var 0)) (.var 1))))))
private theorem no_v1381370291158 : ¬ MinimalInterpreter v1381370291158 :=
  cost_cut false 1 (by decide)

theorem four508 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,3,0,1]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,3,0,1] = [v1381370830646,v1381370828758,v1381370400566,v1381370291158] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370830646) (.cons (no_v1381370828758) (.cons (no_v1381370400566) (.cons (no_v1381370291158) .nil))))

private def v1381370830650 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381370830650 : ¬ MinimalInterpreter v1381370830650 :=
  cost_cut false 1 (by decide)

private def v1381370828762 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1381370828762 : ¬ MinimalInterpreter v1381370828762 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 2) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1381370400570 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))
private theorem no_v1381370400570 : ¬ MinimalInterpreter v1381370400570 :=
  cost_cut false 1 (by decide)

private def v1381370291162 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 3))) (.var 1)) (.var 0))))))
private theorem no_v1381370291162 : ¬ MinimalInterpreter v1381370291162 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 3))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 1)))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 2))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 3))) (.var 1)) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_dead (by decide) (.var 1))) (by decide) (by decide)))))

theorem four509 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,3,1,0]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,3,1,0] = [v1381370830650,v1381370828762,v1381370400570,v1381370291162] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370830650) (.cons (no_v1381370828762) (.cons (no_v1381370400570) (.cons (no_v1381370291162) .nil))))

theorem four510 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,0,0,3]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
