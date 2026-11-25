import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1374825867062 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v1374825867062 : ¬ MinimalInterpreter v1374825867062 :=
  cost_cut false 1 (by decide)

private def v1374825866710 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v1374825866710 : ¬ MinimalInterpreter v1374825866710 :=
  cost_cut false 1 (by decide)

private def v1374825839414 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v1374825839414 : ¬ MinimalInterpreter v1374825839414 :=
  cost_cut false 1 (by decide)

private def v1374825839062 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v1374825839062 : ¬ MinimalInterpreter v1374825839062 :=
  cost_cut false 1 (by decide)

private def v1374825832150 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v1374825832150 : ¬ MinimalInterpreter v1374825832150 :=
  cost_cut false 1 (by decide)

theorem four924 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [2,1,0,1]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [2,1,0,1] = [v1374825867062,v1374825866710,v1374825839414,v1374825839062,v1374825832150] := by decide +kernel
  rw [h]
  exact (.cons (no_v1374825867062) (.cons (no_v1374825866710) (.cons (no_v1374825839414) (.cons (no_v1374825839062) (.cons (no_v1374825832150) .nil)))))

private def v1374825867066 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v1374825867066 : ¬ MinimalInterpreter v1374825867066 :=
  cost_cut false 1 (by decide)

private def v1374825866714 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v1374825866714 : ¬ MinimalInterpreter v1374825866714 :=
  cost_cut false 1 (by decide)

private def v1374825839418 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v1374825839418 : ¬ MinimalInterpreter v1374825839418 :=
  cost_cut false 1 (by decide)

private def v1374825839066 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v1374825839066 : ¬ MinimalInterpreter v1374825839066 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1374825832154 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v1374825832154 : ¬ MinimalInterpreter v1374825832154 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four925 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [2,1,1,0]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [2,1,1,0] = [v1374825867066,v1374825866714,v1374825839418,v1374825839066,v1374825832154] := by decide +kernel
  rw [h]
  exact (.cons (no_v1374825867066) (.cons (no_v1374825866714) (.cons (no_v1374825839418) (.cons (no_v1374825839066) (.cons (no_v1374825832154) .nil)))))

theorem four926 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [2,2,0,0]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1376050531566 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1376050531566 : ¬ MinimalInterpreter v1376050531566 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376050531182 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1376050531182 : ¬ MinimalInterpreter v1376050531182 :=
  cost_cut false 1 (by decide)

private def v1376050525422 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1376050525422 : ¬ MinimalInterpreter v1376050525422 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376050525038 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1376050525038 : ¬ MinimalInterpreter v1376050525038 :=
  cost_cut false 1 (by decide)

private def v1376050523502 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1376050523502 : ¬ MinimalInterpreter v1376050523502 :=
  cost_cut false 1 (by decide)

private def v1376050679022 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1376050679022 : ¬ MinimalInterpreter v1376050679022 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1376050678638 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1376050678638 : ¬ MinimalInterpreter v1376050678638 :=
  cost_cut false 1 (by decide)

private def v1376051268846 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1376051268846 : ¬ MinimalInterpreter v1376051268846 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376051268462 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1376051268462 : ¬ MinimalInterpreter v1376051268462 :=
  cost_cut false 1 (by decide)

theorem four927 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,0,1,2]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,0,1,2] = [v1376050531566,v1376050531182,v1376050525422,v1376050525038,v1376050523502,v1376050679022,v1376050678638,v1376051268846,v1376051268462] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376050531566) (.cons (no_v1376050531182) (.cons (no_v1376050525422) (.cons (no_v1376050525038) (.cons (no_v1376050523502) (.cons (no_v1376050679022) (.cons (no_v1376050678638) (.cons (no_v1376051268846) (.cons (no_v1376051268462) .nil)))))))))

private def v1376050531574 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1376050531574 : ¬ MinimalInterpreter v1376050531574 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376050531190 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1376050531190 : ¬ MinimalInterpreter v1376050531190 :=
  cost_cut false 1 (by decide)

private def v1376050525430 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1376050525430 : ¬ MinimalInterpreter v1376050525430 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376050525046 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1376050525046 : ¬ MinimalInterpreter v1376050525046 :=
  cost_cut false 1 (by decide)

private def v1376050523510 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1376050523510 : ¬ MinimalInterpreter v1376050523510 :=
  cost_cut false 1 (by decide)

private def v1376050679030 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1376050679030 : ¬ MinimalInterpreter v1376050679030 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1376050678646 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1376050678646 : ¬ MinimalInterpreter v1376050678646 :=
  cost_cut false 1 (by decide)

private def v1376051268854 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1376051268854 : ¬ MinimalInterpreter v1376051268854 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376051268470 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1376051268470 : ¬ MinimalInterpreter v1376051268470 :=
  cost_cut false 1 (by decide)

theorem four928 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,0,2,1]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,0,2,1] = [v1376050531574,v1376050531190,v1376050525430,v1376050525046,v1376050523510,v1376050679030,v1376050678646,v1376051268854,v1376051268470] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376050531574) (.cons (no_v1376050531190) (.cons (no_v1376050525430) (.cons (no_v1376050525046) (.cons (no_v1376050523510) (.cons (no_v1376050679030) (.cons (no_v1376050678646) (.cons (no_v1376051268854) (.cons (no_v1376051268470) .nil)))))))))

private def v1376050531950 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1376050531950 : ¬ MinimalInterpreter v1376050531950 :=
  cost_cut false 1 (by decide)

private def v1376050531246 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1376050531246 : ¬ MinimalInterpreter v1376050531246 :=
  cost_cut false 1 (by decide)

private def v1376050525806 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1376050525806 : ¬ MinimalInterpreter v1376050525806 :=
  cost_cut false 1 (by decide)

private def v1376050525102 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1376050525102 : ¬ MinimalInterpreter v1376050525102 :=
  cost_cut false 1 (by decide)

private def v1376050523566 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1376050523566 : ¬ MinimalInterpreter v1376050523566 :=
  cost_cut false 1 (by decide)

private def v1376050679406 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1376050679406 : ¬ MinimalInterpreter v1376050679406 :=
  cost_cut false 1 (by decide)

private def v1376050678702 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1376050678702 : ¬ MinimalInterpreter v1376050678702 :=
  cost_cut false 1 (by decide)

private def v1376051269230 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1376051269230 : ¬ MinimalInterpreter v1376051269230 :=
  cost_cut false 1 (by decide)

private def v1376051268526 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1376051268526 : ¬ MinimalInterpreter v1376051268526 :=
  cost_cut false 1 (by decide)

theorem four929 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,1,0,2]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,1,0,2] = [v1376050531950,v1376050531246,v1376050525806,v1376050525102,v1376050523566,v1376050679406,v1376050678702,v1376051269230,v1376051268526] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376050531950) (.cons (no_v1376050531246) (.cons (no_v1376050525806) (.cons (no_v1376050525102) (.cons (no_v1376050523566) (.cons (no_v1376050679406) (.cons (no_v1376050678702) (.cons (no_v1376051269230) (.cons (no_v1376051268526) .nil)))))))))

theorem four930 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,1,1,1]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
