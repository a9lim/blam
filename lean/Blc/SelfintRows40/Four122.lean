import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four854 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,1,1,1]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1376134483578 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1376134483578 : ¬ MinimalInterpreter v1376134483578 :=
  cost_cut false 1 (by decide)

private def v1376134482874 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1376134482874 : ¬ MinimalInterpreter v1376134482874 :=
  cost_cut false 1 (by decide)

private def v1376134461050 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1376134461050 : ¬ MinimalInterpreter v1376134461050 :=
  cost_cut false 1 (by decide)

private def v1376134460346 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1376134460346 : ¬ MinimalInterpreter v1376134460346 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376134454714 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1376134454714 : ¬ MinimalInterpreter v1376134454714 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376134827642 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1376134827642 : ¬ MinimalInterpreter v1376134827642 :=
  cost_cut false 1 (by decide)

private def v1376134826938 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1376134826938 : ¬ MinimalInterpreter v1376134826938 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1376134743674 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v1376134743674 : ¬ MinimalInterpreter v1376134743674 :=
  cost_cut false 1 (by decide)

private def v1376134721978 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v1376134721978 : ¬ MinimalInterpreter v1376134721978 :=
  cost_cut false 1 (by decide)

theorem four855 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,1,2,0]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,1,2,0] = [v1376134483578,v1376134482874,v1376134461050,v1376134460346,v1376134454714,v1376134827642,v1376134826938,v1376134743674,v1376134721978] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134483578) (.cons (no_v1376134482874) (.cons (no_v1376134461050) (.cons (no_v1376134460346) (.cons (no_v1376134454714) (.cons (no_v1376134827642) (.cons (no_v1376134826938) (.cons (no_v1376134743674) (.cons (no_v1376134721978) .nil)))))))))

private def v1376134483766 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1376134483766 : ¬ MinimalInterpreter v1376134483766 :=
  cost_cut false 1 (by decide)

private def v1376134482902 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1376134482902 : ¬ MinimalInterpreter v1376134482902 :=
  cost_cut false 1 (by decide)

private def v1376134461238 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1376134461238 : ¬ MinimalInterpreter v1376134461238 :=
  cost_cut false 1 (by decide)

private def v1376134460374 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1376134460374 : ¬ MinimalInterpreter v1376134460374 :=
  cost_cut false 1 (by decide)

private def v1376134454742 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1376134454742 : ¬ MinimalInterpreter v1376134454742 :=
  cost_cut false 1 (by decide)

private def v1376134827830 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1376134827830 : ¬ MinimalInterpreter v1376134827830 :=
  cost_cut false 1 (by decide)

private def v1376134826966 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1376134826966 : ¬ MinimalInterpreter v1376134826966 :=
  cost_cut false 1 (by decide)

private def v1376134839494 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1376134839494 : ¬ MinimalInterpreter v1376134839494 :=
  cost_cut false 1 (by decide)

private def v1376134836038 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1376134836038 : ¬ MinimalInterpreter v1376134836038 :=
  cost_cut false 1 (by decide)

private def v1376134749382 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1376134749382 : ¬ MinimalInterpreter v1376134749382 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134745926 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1376134745926 : ¬ MinimalInterpreter v1376134745926 :=
  cost_cut false 1 (by decide)

private def v1376134723398 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1376134723398 : ¬ MinimalInterpreter v1376134723398 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four856 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,2,0,1]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,2,0,1] = [v1376134483766,v1376134482902,v1376134461238,v1376134460374,v1376134454742,v1376134827830,v1376134826966,v1376134839494,v1376134836038,v1376134749382,v1376134745926,v1376134723398] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134483766) (.cons (no_v1376134482902) (.cons (no_v1376134461238) (.cons (no_v1376134460374) (.cons (no_v1376134454742) (.cons (no_v1376134827830) (.cons (no_v1376134826966) (.cons (no_v1376134839494) (.cons (no_v1376134836038) (.cons (no_v1376134749382) (.cons (no_v1376134745926) (.cons (no_v1376134723398) .nil))))))))))))

private def v1376134483770 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1376134483770 : ¬ MinimalInterpreter v1376134483770 :=
  cost_cut false 1 (by decide)

private def v1376134482906 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1376134482906 : ¬ MinimalInterpreter v1376134482906 :=
  cost_cut false 1 (by decide)

private def v1376134461242 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1376134461242 : ¬ MinimalInterpreter v1376134461242 :=
  cost_cut false 1 (by decide)

private def v1376134460378 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1376134460378 : ¬ MinimalInterpreter v1376134460378 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376134454746 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1376134454746 : ¬ MinimalInterpreter v1376134454746 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376134827834 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1376134827834 : ¬ MinimalInterpreter v1376134827834 :=
  cost_cut false 1 (by decide)

private def v1376134826970 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1376134826970 : ¬ MinimalInterpreter v1376134826970 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1376134835994 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1376134835994 : ¬ MinimalInterpreter v1376134835994 :=
  cost_cut false 1 (by decide)

private def v1376134745882 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1376134745882 : ¬ MinimalInterpreter v1376134745882 :=
  cost_cut false 1 (by decide)

private def v1376134723354 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1376134723354 : ¬ MinimalInterpreter v1376134723354 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four857 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,2,1,0]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,2,1,0] = [v1376134483770,v1376134482906,v1376134461242,v1376134460378,v1376134454746,v1376134827834,v1376134826970,v1376134835994,v1376134745882,v1376134723354] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134483770) (.cons (no_v1376134482906) (.cons (no_v1376134461242) (.cons (no_v1376134460378) (.cons (no_v1376134454746) (.cons (no_v1376134827834) (.cons (no_v1376134826970) (.cons (no_v1376134835994) (.cons (no_v1376134745882) (.cons (no_v1376134723354) .nil))))))))))

private def v1376134483866 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0)))))))))
private theorem no_v1376134483866 : ¬ MinimalInterpreter v1376134483866 :=
  cost_cut false 1 (by decide)

private def v1376134482922 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0))))))))
private theorem no_v1376134482922 : ¬ MinimalInterpreter v1376134482922 :=
  cost_cut false 1 (by decide)

private def v1376134461338 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))
private theorem no_v1376134461338 : ¬ MinimalInterpreter v1376134461338 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1376134460394 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0)))))))
private theorem no_v1376134460394 : ¬ MinimalInterpreter v1376134460394 :=
  cost_cut false 1 (by decide)

private def v1376134454762 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))
private theorem no_v1376134454762 : ¬ MinimalInterpreter v1376134454762 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1376134743962 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))
private theorem no_v1376134743962 : ¬ MinimalInterpreter v1376134743962 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1376134722026 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0))))))
private theorem no_v1376134722026 : ¬ MinimalInterpreter v1376134722026 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

theorem four858 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,3,0,0]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [1,3,0,0] = [v1376134483866,v1376134482922,v1376134461338,v1376134460394,v1376134454762,v1376134743962,v1376134722026] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134483866) (.cons (no_v1376134482922) (.cons (no_v1376134461338) (.cons (no_v1376134460394) (.cons (no_v1376134454762) (.cons (no_v1376134743962) (.cons (no_v1376134722026) .nil)))))))

private def v1376134863246 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1376134863246 : ¬ MinimalInterpreter v1376134863246 :=
  cost_cut false 1 (by decide)

private def v1376134862478 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1376134862478 : ¬ MinimalInterpreter v1376134862478 :=
  cost_cut false 1 (by decide)

private def v1376134752654 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1376134752654 : ¬ MinimalInterpreter v1376134752654 :=
  cost_cut false 1 (by decide)

private def v1376134751886 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1376134751886 : ¬ MinimalInterpreter v1376134751886 :=
  cost_cut false 1 (by decide)

private def v1376134724238 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1376134724238 : ¬ MinimalInterpreter v1376134724238 :=
  cost_cut false 1 (by decide)

theorem four859 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [2,0,0,2]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [2,0,0,2] = [v1376134863246,v1376134862478,v1376134752654,v1376134751886,v1376134724238] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134863246) (.cons (no_v1376134862478) (.cons (no_v1376134752654) (.cons (no_v1376134751886) (.cons (no_v1376134724238) .nil)))))

private def v1376134489718 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v1376134489718 : ¬ MinimalInterpreter v1376134489718 :=
  cost_cut false 1 (by decide)

private def v1376134489526 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v1376134489526 : ¬ MinimalInterpreter v1376134489526 :=
  cost_cut false 1 (by decide)

private def v1376134462070 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v1376134462070 : ¬ MinimalInterpreter v1376134462070 :=
  cost_cut false 1 (by decide)

private def v1376134461878 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v1376134461878 : ¬ MinimalInterpreter v1376134461878 :=
  cost_cut false 1 (by decide)

private def v1376134454966 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v1376134454966 : ¬ MinimalInterpreter v1376134454966 :=
  cost_cut false 1 (by decide)

private def v1376134863302 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1376134863302 : ¬ MinimalInterpreter v1376134863302 :=
  cost_cut false 1 (by decide)

private def v1376134862534 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1376134862534 : ¬ MinimalInterpreter v1376134862534 :=
  cost_cut false 1 (by decide)

private def v1376134862390 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1376134862390 : ¬ MinimalInterpreter v1376134862390 :=
  cost_cut false 1 (by decide)

private def v1376134752710 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1376134752710 : ¬ MinimalInterpreter v1376134752710 :=
  cost_cut false 1 (by decide)

private def v1376134751942 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1376134751942 : ¬ MinimalInterpreter v1376134751942 :=
  cost_cut false 1 (by decide)

private def v1376134724294 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1376134724294 : ¬ MinimalInterpreter v1376134724294 :=
  cost_cut false 1 (by decide)

private def v1376134751798 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1376134751798 : ¬ MinimalInterpreter v1376134751798 :=
  cost_cut false 1 (by decide)

private def v1376134724150 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1))))))
private theorem no_v1376134724150 : ¬ MinimalInterpreter v1376134724150 :=
  cost_cut false 1 (by decide)

theorem four860 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [2,0,1,1]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [2,0,1,1] = [v1376134489718,v1376134489526,v1376134462070,v1376134461878,v1376134454966,v1376134863302,v1376134862534,v1376134862390,v1376134752710,v1376134751942,v1376134724294,v1376134751798,v1376134724150] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134489718) (.cons (no_v1376134489526) (.cons (no_v1376134462070) (.cons (no_v1376134461878) (.cons (no_v1376134454966) (.cons (no_v1376134863302) (.cons (no_v1376134862534) (.cons (no_v1376134862390) (.cons (no_v1376134752710) (.cons (no_v1376134751942) (.cons (no_v1376134724294) (.cons (no_v1376134751798) (.cons (no_v1376134724150) .nil)))))))))))))

end Blc.SelfintSingleObject.Rows40
