import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four476 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,0,3,3]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,0,3,3] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381370459102 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))))))
private theorem no_v1381370459102 : ¬ MinimalInterpreter v1381370459102 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (.app (.var 0) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.var 3))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370453470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 3))))))))
private theorem no_v1381370453470 : ¬ MinimalInterpreter v1381370453470 :=
  cost_cut false 1 (by decide)

private def v1381370545118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v1381370545118 : ¬ MinimalInterpreter v1381370545118 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.var 3))))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.app (.var 2) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.app (.var 1) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370547998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 3)))))))))
private theorem no_v1381370547998 : ¬ MinimalInterpreter v1381370547998 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 1)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 3))))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.app (.var 0) (so_dead (by decide) (.var 1))) (by decide) (by decide)))))

private def v1381370525470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 3))))))))
private theorem no_v1381370525470 : ¬ MinimalInterpreter v1381370525470 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 3)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 3)))) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370348510 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 2) (.var 3))))))))
private theorem no_v1381370348510 : ¬ MinimalInterpreter v1381370348510 :=
  cost_cut false 1 (by decide)

private def v1381370351390 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 3))))))))
private theorem no_v1381370351390 : ¬ MinimalInterpreter v1381370351390 :=
  cost_cut false 1 (by decide)

private def v1381370328862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 3)))))))
private theorem no_v1381370328862 : ¬ MinimalInterpreter v1381370328862 :=
  cost_cut false 1 (by decide)

private def v1381370279710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 3)))))))
private theorem no_v1381370279710 : ¬ MinimalInterpreter v1381370279710 :=
  cost_cut false 1 (by decide)

private def v1381375177694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))))))
private theorem no_v1381375177694 : ¬ MinimalInterpreter v1381375177694 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.var 3)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381375172062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 3))))))))
private theorem no_v1381375172062 : ¬ MinimalInterpreter v1381375172062 :=
  cost_cut false 1 (by decide)

private def v1381394052062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))))))
private theorem no_v1381394052062 : ¬ MinimalInterpreter v1381394052062 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.var 3)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381394046430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 3))))))))
private theorem no_v1381394046430 : ¬ MinimalInterpreter v1381394046430 :=
  cost_cut false 1 (by decide)

theorem four477 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,1,2,3]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,1,2,3] = [v1381370459102,v1381370453470,v1381370545118,v1381370547998,v1381370525470,v1381370348510,v1381370351390,v1381370328862,v1381370279710,v1381375177694,v1381375172062,v1381394052062,v1381394046430] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370459102) (.cons (no_v1381370453470) (.cons (no_v1381370545118) (.cons (no_v1381370547998) (.cons (no_v1381370525470) (.cons (no_v1381370348510) (.cons (no_v1381370351390) (.cons (no_v1381370328862) (.cons (no_v1381370279710) (.cons (no_v1381375177694) (.cons (no_v1381375172062) (.cons (no_v1381394052062) (.cons (no_v1381394046430) .nil)))))))))))))

private def v1381370459118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))))))
private theorem no_v1381370459118 : ¬ MinimalInterpreter v1381370459118 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (.app (.var 0) (so_dead (by decide) (.app (.var 1) (.app (.var 3) (.var 2))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370453486 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 2))))))))
private theorem no_v1381370453486 : ¬ MinimalInterpreter v1381370453486 :=
  cost_cut false 1 (by decide)

private def v1381370545134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v1381370545134 : ¬ MinimalInterpreter v1381370545134 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 2))))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.app (.var 3) (.var 2))))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370524142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 2)))))))
private theorem no_v1381370524142 : ¬ MinimalInterpreter v1381370524142 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 2))) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370348526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 2))))))))
private theorem no_v1381370348526 : ¬ MinimalInterpreter v1381370348526 :=
  cost_cut false 1 (by decide)

private def v1381370327534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 2))))))
private theorem no_v1381370327534 : ¬ MinimalInterpreter v1381370327534 :=
  cost_cut false 1 (by decide)

private def v1381370278382 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 2))))))
private theorem no_v1381370278382 : ¬ MinimalInterpreter v1381370278382 :=
  cost_cut false 1 (by decide)

private def v1381375177710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))))))
private theorem no_v1381375177710 : ¬ MinimalInterpreter v1381375177710 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 3) (.var 2)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381375172078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 2))))))))
private theorem no_v1381375172078 : ¬ MinimalInterpreter v1381375172078 :=
  cost_cut false 1 (by decide)

private def v1381394052078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))))))
private theorem no_v1381394052078 : ¬ MinimalInterpreter v1381394052078 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 3) (.var 2)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381394046446 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 2))))))))
private theorem no_v1381394046446 : ¬ MinimalInterpreter v1381394046446 :=
  cost_cut false 1 (by decide)

theorem four478 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,1,3,2]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,1,3,2] = [v1381370459118,v1381370453486,v1381370545134,v1381370524142,v1381370348526,v1381370327534,v1381370278382,v1381375177710,v1381375172078,v1381394052078,v1381394046446] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370459118) (.cons (no_v1381370453486) (.cons (no_v1381370545134) (.cons (no_v1381370524142) (.cons (no_v1381370348526) (.cons (no_v1381370327534) (.cons (no_v1381370278382) (.cons (no_v1381375177710) (.cons (no_v1381375172078) (.cons (no_v1381394052078) (.cons (no_v1381394046446) .nil)))))))))))

private def v1381370460638 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 3)))))))))
private theorem no_v1381370460638 : ¬ MinimalInterpreter v1381370460638 :=
  cost_cut false 1 (by decide)

private def v1381370453726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 3))))))))
private theorem no_v1381370453726 : ¬ MinimalInterpreter v1381370453726 :=
  cost_cut false 1 (by decide)

private def v1381370554142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1381370554142 : ¬ MinimalInterpreter v1381370554142 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 3))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370526494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1381370526494 : ¬ MinimalInterpreter v1381370526494 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 3)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 3)))) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370357534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v1381370357534 : ¬ MinimalInterpreter v1381370357534 :=
  cost_cut false 1 (by decide)

private def v1381370329886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 3)))))))
private theorem no_v1381370329886 : ¬ MinimalInterpreter v1381370329886 :=
  cost_cut false 1 (by decide)

private def v1381370280734 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v1381370280734 : ¬ MinimalInterpreter v1381370280734 :=
  cost_cut false 1 (by decide)

private def v1381375179230 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 3)))))))))
private theorem no_v1381375179230 : ¬ MinimalInterpreter v1381375179230 :=
  cost_cut false 1 (by decide)

private def v1381375172318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 3))))))))
private theorem no_v1381375172318 : ¬ MinimalInterpreter v1381375172318 :=
  cost_cut false 1 (by decide)

private def v1381394053598 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 3)))))))))
private theorem no_v1381394053598 : ¬ MinimalInterpreter v1381394053598 :=
  cost_cut false 1 (by decide)

private def v1381394046686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 3))))))))
private theorem no_v1381394046686 : ¬ MinimalInterpreter v1381394046686 :=
  cost_cut false 1 (by decide)

theorem four479 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,2,1,3]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,2,1,3] = [v1381370460638,v1381370453726,v1381370554142,v1381370526494,v1381370357534,v1381370329886,v1381370280734,v1381375179230,v1381375172318,v1381394053598,v1381394046686] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370460638) (.cons (no_v1381370453726) (.cons (no_v1381370554142) (.cons (no_v1381370526494) (.cons (no_v1381370357534) (.cons (no_v1381370329886) (.cons (no_v1381370280734) (.cons (no_v1381375179230) (.cons (no_v1381375172318) (.cons (no_v1381394053598) (.cons (no_v1381394046686) .nil)))))))))))

private def v1381370552814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 2)))))))))
private theorem no_v1381370552814 : ¬ MinimalInterpreter v1381370552814 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.app (.var 2) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.app (.var 1) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370554254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1381370554254 : ¬ MinimalInterpreter v1381370554254 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370526606 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1381370526606 : ¬ MinimalInterpreter v1381370526606 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1381370525934 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1381370525934 : ¬ MinimalInterpreter v1381370525934 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 2))) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370356206 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 2))))))))
private theorem no_v1381370356206 : ¬ MinimalInterpreter v1381370356206 :=
  cost_cut false 1 (by decide)

private def v1381370357646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v1381370357646 : ¬ MinimalInterpreter v1381370357646 :=
  cost_cut false 1 (by decide)

private def v1381370313198 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 2)))))))
private theorem no_v1381370313198 : ¬ MinimalInterpreter v1381370313198 :=
  cost_cut false 1 (by decide)

private def v1381370329998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.lam (.var 2)))))))
private theorem no_v1381370329998 : ¬ MinimalInterpreter v1381370329998 :=
  cost_cut false 1 (by decide)

private def v1381370280846 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v1381370280846 : ¬ MinimalInterpreter v1381370280846 :=
  cost_cut false 1 (by decide)

private def v1381370306286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 2)))) (.var 2))))))
private theorem no_v1381370306286 : ¬ MinimalInterpreter v1381370306286 :=
  cost_cut false 1 (by decide)

private def v1381370329326 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 2))))))
private theorem no_v1381370329326 : ¬ MinimalInterpreter v1381370329326 :=
  cost_cut false 1 (by decide)

private def v1381370280174 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 2))))))
private theorem no_v1381370280174 : ¬ MinimalInterpreter v1381370280174 :=
  cost_cut false 1 (by decide)

private def v1381370269422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 2))))))
private theorem no_v1381370269422 : ¬ MinimalInterpreter v1381370269422 :=
  cost_cut false 1 (by decide)

theorem four480 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,2,2,2]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,2,2,2] = [v1381370552814,v1381370554254,v1381370526606,v1381370525934,v1381370356206,v1381370357646,v1381370313198,v1381370329998,v1381370280846,v1381370306286,v1381370329326,v1381370280174,v1381370269422] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370552814) (.cons (no_v1381370554254) (.cons (no_v1381370526606) (.cons (no_v1381370525934) (.cons (no_v1381370356206) (.cons (no_v1381370357646) (.cons (no_v1381370313198) (.cons (no_v1381370329998) (.cons (no_v1381370280846) (.cons (no_v1381370306286) (.cons (no_v1381370329326) (.cons (no_v1381370280174) (.cons (no_v1381370269422) .nil)))))))))))))

private def v1381370460662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 3) (.var 1)))))))))
private theorem no_v1381370460662 : ¬ MinimalInterpreter v1381370460662 :=
  cost_cut false 1 (by decide)

private def v1381370453750 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))))))
private theorem no_v1381370453750 : ¬ MinimalInterpreter v1381370453750 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (.app (.var 0) (so_dead (by decide) (.app (.app (.var 2) (.var 3)) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370525942 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1381370525942 : ¬ MinimalInterpreter v1381370525942 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 3))) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 1)))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 2))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 3))) (.var 1))) (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_dead (by decide) (.var 1))) (by decide) (by decide)))))

private def v1381370306294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 1))))))
private theorem no_v1381370306294 : ¬ MinimalInterpreter v1381370306294 :=
  cost_cut false 1 (by decide)

private def v1381370329334 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 3)))) (.var 1))))))
private theorem no_v1381370329334 : ¬ MinimalInterpreter v1381370329334 :=
  cost_cut false 1 (by decide)

private def v1381370280182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 3))) (.var 1))))))
private theorem no_v1381370280182 : ¬ MinimalInterpreter v1381370280182 :=
  cost_cut false 1 (by decide)

private def v1381375179254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 1)))))))))
private theorem no_v1381375179254 : ¬ MinimalInterpreter v1381375179254 :=
  cost_cut false 1 (by decide)

private def v1381375172342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))))))
private theorem no_v1381375172342 : ¬ MinimalInterpreter v1381375172342 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 2) (.var 3)) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381394053622 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 1)))))))))
private theorem no_v1381394053622 : ¬ MinimalInterpreter v1381394053622 :=
  cost_cut false 1 (by decide)

private def v1381394046710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))))))
private theorem no_v1381394046710 : ¬ MinimalInterpreter v1381394046710 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 2) (.var 3)) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four481 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,2,3,1]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,2,3,1] = [v1381370460662,v1381370453750,v1381370525942,v1381370306294,v1381370329334,v1381370280182,v1381375179254,v1381375172342,v1381394053622,v1381394046710] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370460662) (.cons (no_v1381370453750) (.cons (no_v1381370525942) (.cons (no_v1381370306294) (.cons (no_v1381370329334) (.cons (no_v1381370280182) (.cons (no_v1381375179254) (.cons (no_v1381375172342) (.cons (no_v1381394053622) (.cons (no_v1381394046710) .nil))))))))))

theorem four482 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,3,0,3]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,3,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
