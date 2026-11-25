import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381369353786 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1381369353786 : ¬ MinimalInterpreter v1381369353786 :=
  cost_cut false 1 (by decide)

private def v1381369243194 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v1381369243194 : ¬ MinimalInterpreter v1381369243194 :=
  cost_cut false 1 (by decide)

private def v1381369215546 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1381369215546 : ¬ MinimalInterpreter v1381369215546 :=
  cost_cut false 1 (by decide)

theorem four658 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [2,0,2,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [2,0,2,0] = [v1381369353786,v1381369243194,v1381369215546] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381369353786) (.cons (no_v1381369243194) (.cons (no_v1381369215546) .nil)))

private def v1381368981302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))))
private theorem no_v1381368981302 : ¬ MinimalInterpreter v1381368981302 :=
  cost_cut false 1 (by decide)

private def v1381368980950 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))))
private theorem no_v1381368980950 : ¬ MinimalInterpreter v1381368980950 :=
  cost_cut false 1 (by decide)

private def v1381368953654 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381368953654 : ¬ MinimalInterpreter v1381368953654 :=
  cost_cut false 1 (by decide)

private def v1381368953302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))))
private theorem no_v1381368953302 : ¬ MinimalInterpreter v1381368953302 :=
  cost_cut false 1 (by decide)

private def v1381368946390 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))))
private theorem no_v1381368946390 : ¬ MinimalInterpreter v1381368946390 :=
  cost_cut false 1 (by decide)

private def v1381369355462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1381369355462 : ¬ MinimalInterpreter v1381369355462 :=
  cost_cut false 1 (by decide)

private def v1381369354054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1381369354054 : ¬ MinimalInterpreter v1381369354054 :=
  cost_cut false 1 (by decide)

private def v1381369244870 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1381369244870 : ¬ MinimalInterpreter v1381369244870 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369242422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1))))))))
private theorem no_v1381369242422 : ¬ MinimalInterpreter v1381369242422 :=
  cost_cut false 1 (by decide)

private def v1381369243462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1381369243462 : ¬ MinimalInterpreter v1381369243462 :=
  cost_cut false 1 (by decide)

private def v1381369215814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1381369215814 : ¬ MinimalInterpreter v1381369215814 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369215190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1)))))))
private theorem no_v1381369215190 : ¬ MinimalInterpreter v1381369215190 :=
  cost_cut false 1 (by decide)

theorem four659 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [2,1,0,1]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [2,1,0,1] = [v1381368981302,v1381368980950,v1381368953654,v1381368953302,v1381368946390,v1381369355462,v1381369354054,v1381369244870,v1381369242422,v1381369243462,v1381369215814,v1381369215190] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368981302) (.cons (no_v1381368980950) (.cons (no_v1381368953654) (.cons (no_v1381368953302) (.cons (no_v1381368946390) (.cons (no_v1381369355462) (.cons (no_v1381369354054) (.cons (no_v1381369244870) (.cons (no_v1381369242422) (.cons (no_v1381369243462) (.cons (no_v1381369215814) (.cons (no_v1381369215190) .nil))))))))))))

private def v1381368981306 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))))
private theorem no_v1381368981306 : ¬ MinimalInterpreter v1381368981306 :=
  cost_cut false 1 (by decide)

private def v1381368980954 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))))
private theorem no_v1381368980954 : ¬ MinimalInterpreter v1381368980954 :=
  cost_cut false 1 (by decide)

private def v1381368953658 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381368953658 : ¬ MinimalInterpreter v1381368953658 :=
  cost_cut false 1 (by decide)

private def v1381368953306 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))))
private theorem no_v1381368953306 : ¬ MinimalInterpreter v1381368953306 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381368946394 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))))
private theorem no_v1381368946394 : ¬ MinimalInterpreter v1381368946394 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381369354010 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1381369354010 : ¬ MinimalInterpreter v1381369354010 :=
  cost_cut false 1 (by decide)

private def v1381369242426 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0))))))))
private theorem no_v1381369242426 : ¬ MinimalInterpreter v1381369242426 :=
  cost_cut false 1 (by decide)

private def v1381369243418 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1381369243418 : ¬ MinimalInterpreter v1381369243418 :=
  cost_cut false 1 (by decide)

private def v1381369215770 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1381369215770 : ¬ MinimalInterpreter v1381369215770 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369215194 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0)))))))
private theorem no_v1381369215194 : ¬ MinimalInterpreter v1381369215194 :=
  cost_cut false 1 (by decide)

theorem four660 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [2,1,1,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [2,1,1,0] = [v1381368981306,v1381368980954,v1381368953658,v1381368953306,v1381368946394,v1381369354010,v1381369242426,v1381369243418,v1381369215770,v1381369215194] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368981306) (.cons (no_v1381368980954) (.cons (no_v1381368953658) (.cons (no_v1381368953306) (.cons (no_v1381368946394) (.cons (no_v1381369354010) (.cons (no_v1381369242426) (.cons (no_v1381369243418) (.cons (no_v1381369215770) (.cons (no_v1381369215194) .nil))))))))))

private def v1381369242522 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))))))
private theorem no_v1381369242522 : ¬ MinimalInterpreter v1381369242522 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369215210 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))))))
private theorem no_v1381369215210 : ¬ MinimalInterpreter v1381369215210 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four661 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [2,2,0,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [2,2,0,0] = [v1381369242522,v1381369215210] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381369242522) (.cons (no_v1381369215210) .nil))

private def v1381368984374 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1381368984374 : ¬ MinimalInterpreter v1381368984374 :=
  cost_cut false 1 (by decide)

private def v1381368984278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1381368984278 : ¬ MinimalInterpreter v1381368984278 :=
  cost_cut false 1 (by decide)

private def v1381368954166 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381368954166 : ¬ MinimalInterpreter v1381368954166 :=
  cost_cut false 1 (by decide)

private def v1381368954070 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v1381368954070 : ¬ MinimalInterpreter v1381368954070 :=
  cost_cut false 1 (by decide)

private def v1381368946518 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v1381368946518 : ¬ MinimalInterpreter v1381368946518 :=
  cost_cut false 1 (by decide)

theorem four662 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [3,0,0,1]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [3,0,0,1] = [v1381368984374,v1381368984278,v1381368954166,v1381368954070,v1381368946518] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368984374) (.cons (no_v1381368984278) (.cons (no_v1381368954166) (.cons (no_v1381368954070) (.cons (no_v1381368946518) .nil)))))

private def v1381368984378 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1381368984378 : ¬ MinimalInterpreter v1381368984378 :=
  cost_cut false 1 (by decide)

private def v1381368984282 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1381368984282 : ¬ MinimalInterpreter v1381368984282 :=
  cost_cut false 1 (by decide)

private def v1381368954170 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381368954170 : ¬ MinimalInterpreter v1381368954170 :=
  cost_cut false 1 (by decide)

private def v1381368954074 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v1381368954074 : ¬ MinimalInterpreter v1381368954074 :=
  cost_cut false 1 (by decide)

private def v1381368946522 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v1381368946522 : ¬ MinimalInterpreter v1381368946522 :=
  cost_cut false 1 (by decide)

theorem four663 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [3,0,1,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [3,0,1,0] = [v1381368984378,v1381368984282,v1381368954170,v1381368954074,v1381368946522] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368984378) (.cons (no_v1381368984282) (.cons (no_v1381368954170) (.cons (no_v1381368954074) (.cons (no_v1381368946522) .nil)))))

private def v1381368984474 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1381368984474 : ¬ MinimalInterpreter v1381368984474 :=
  cost_cut false 1 (by decide)

private def v1381368984298 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1381368984298 : ¬ MinimalInterpreter v1381368984298 :=
  cost_cut false 1 (by decide)

private def v1381368954266 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1381368954266 : ¬ MinimalInterpreter v1381368954266 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1381368954090 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v1381368954090 : ¬ MinimalInterpreter v1381368954090 :=
  cost_cut false 1 (by decide)

private def v1381368946538 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v1381368946538 : ¬ MinimalInterpreter v1381368946538 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

theorem four664 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [3,1,0,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [3,1,0,0] = [v1381368984474,v1381368984298,v1381368954266,v1381368954090,v1381368946538] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368984474) (.cons (no_v1381368984298) (.cons (no_v1381368954266) (.cons (no_v1381368954090) (.cons (no_v1381368946538) .nil)))))

end Blc.SelfintSingleObject.Rows40
