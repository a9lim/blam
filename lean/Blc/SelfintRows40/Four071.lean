import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381370707578 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381370707578 : ¬ MinimalInterpreter v1381370707578 :=
  cost_cut false 1 (by decide)

private def v1381370703802 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v1381370703802 : ¬ MinimalInterpreter v1381370703802 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))) (so_dead (by decide) (.app (.var 1) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381370371706 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 2) (.var 0)))))))
private theorem no_v1381370371706 : ¬ MinimalInterpreter v1381370371706 :=
  cost_cut false 1 (by decide)

private def v1381370367930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 2)))) (.var 0))))))
private theorem no_v1381370367930 : ¬ MinimalInterpreter v1381370367930 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.app (.var 3) (.var 2)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370283962 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 2)) (.var 0))))))
private theorem no_v1381370283962 : ¬ MinimalInterpreter v1381370283962 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 2)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381376212602 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381376212602 : ¬ MinimalInterpreter v1381376212602 :=
  cost_cut false 1 (by decide)

private def v1381376208826 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v1381376208826 : ¬ MinimalInterpreter v1381376208826 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))) (.app (.var 1) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

theorem four497 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,3,2,0]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,3,2,0] = [v1381370707578,v1381370703802,v1381370371706,v1381370367930,v1381370283962,v1381376212602,v1381376208826] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370707578) (.cons (no_v1381370703802) (.cons (no_v1381370371706) (.cons (no_v1381370367930) (.cons (no_v1381370283962) (.cons (no_v1381376212602) (.cons (no_v1381376208826) .nil)))))))

private def v1381370829278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1381370829278 : ¬ MinimalInterpreter v1381370829278 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 2) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1381370828510 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1381370828510 : ¬ MinimalInterpreter v1381370828510 :=
  cost_cut false 1 (by decide)

private def v1381370849054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1381370849054 : ¬ MinimalInterpreter v1381370849054 :=
  cost_cut false 1 (by decide)

private def v1381370845982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1381370845982 : ¬ MinimalInterpreter v1381370845982 :=
  cost_cut false 1 (by decide)

private def v1381370406686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v1381370406686 : ¬ MinimalInterpreter v1381370406686 :=
  cost_cut false 1 (by decide)

private def v1381370403614 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 3)))))))
private theorem no_v1381370403614 : ¬ MinimalInterpreter v1381370403614 :=
  cost_cut false 1 (by decide)

private def v1381370293022 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v1381370293022 : ¬ MinimalInterpreter v1381370293022 :=
  cost_cut false 1 (by decide)

theorem four498 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,0,1,3]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,0,1,3] = [v1381370829278,v1381370828510,v1381370849054,v1381370845982,v1381370406686,v1381370403614,v1381370293022] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370829278) (.cons (no_v1381370828510) (.cons (no_v1381370849054) (.cons (no_v1381370845982) (.cons (no_v1381370406686) (.cons (no_v1381370403614) (.cons (no_v1381370293022) .nil)))))))

private def v1381370847726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))))))
private theorem no_v1381370847726 : ¬ MinimalInterpreter v1381370847726 :=
  cost_cut false 1 (by decide)

private def v1381370849166 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1381370849166 : ¬ MinimalInterpreter v1381370849166 :=
  cost_cut false 1 (by decide)

private def v1381370846094 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1381370846094 : ¬ MinimalInterpreter v1381370846094 :=
  cost_cut false 1 (by decide)

private def v1381370845422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1381370845422 : ¬ MinimalInterpreter v1381370845422 :=
  cost_cut false 1 (by decide)

private def v1381370405358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 2))))))))
private theorem no_v1381370405358 : ¬ MinimalInterpreter v1381370405358 :=
  cost_cut false 1 (by decide)

private def v1381370406798 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v1381370406798 : ¬ MinimalInterpreter v1381370406798 :=
  cost_cut false 1 (by decide)

private def v1381370403726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.lam (.var 2)))))))
private theorem no_v1381370403726 : ¬ MinimalInterpreter v1381370403726 :=
  cost_cut false 1 (by decide)

private def v1381370293134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v1381370293134 : ¬ MinimalInterpreter v1381370293134 :=
  cost_cut false 1 (by decide)

private def v1381370403054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))
private theorem no_v1381370403054 : ¬ MinimalInterpreter v1381370403054 :=
  cost_cut false 1 (by decide)

private def v1381370292462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 2))))))
private theorem no_v1381370292462 : ¬ MinimalInterpreter v1381370292462 :=
  cost_cut false 1 (by decide)

theorem four499 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,0,2,2]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,0,2,2] = [v1381370847726,v1381370849166,v1381370846094,v1381370845422,v1381370405358,v1381370406798,v1381370403726,v1381370293134,v1381370403054,v1381370292462] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370847726) (.cons (no_v1381370849166) (.cons (no_v1381370846094) (.cons (no_v1381370845422) (.cons (no_v1381370405358) (.cons (no_v1381370406798) (.cons (no_v1381370403726) (.cons (no_v1381370293134) (.cons (no_v1381370403054) (.cons (no_v1381370292462) .nil))))))))))

private def v1381370829302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1381370829302 : ¬ MinimalInterpreter v1381370829302 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 2) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1381370828534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1381370828534 : ¬ MinimalInterpreter v1381370828534 :=
  cost_cut false 1 (by decide)

private def v1381370845430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1381370845430 : ¬ MinimalInterpreter v1381370845430 :=
  cost_cut false 1 (by decide)

private def v1381370403062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))
private theorem no_v1381370403062 : ¬ MinimalInterpreter v1381370403062 :=
  cost_cut false 1 (by decide)

private def v1381370292470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 3))) (.var 1))))))
private theorem no_v1381370292470 : ¬ MinimalInterpreter v1381370292470 :=
  cost_cut false 1 (by decide)

theorem four500 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,0,3,1]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,0,3,1] = [v1381370829302,v1381370828534,v1381370845430,v1381370403062,v1381370292470] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370829302) (.cons (no_v1381370828534) (.cons (no_v1381370845430) (.cons (no_v1381370403062) (.cons (no_v1381370292470) .nil)))))

private def v1381370830046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1381370830046 : ¬ MinimalInterpreter v1381370830046 :=
  cost_cut false 1 (by decide)

private def v1381370828638 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1381370828638 : ¬ MinimalInterpreter v1381370828638 :=
  cost_cut false 1 (by decide)

private def v1381370852126 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1381370852126 : ¬ MinimalInterpreter v1381370852126 :=
  cost_cut false 1 (by decide)

private def v1381370846494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1381370846494 : ¬ MinimalInterpreter v1381370846494 :=
  cost_cut false 1 (by decide)

private def v1381370409758 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1381370409758 : ¬ MinimalInterpreter v1381370409758 :=
  cost_cut false 1 (by decide)

private def v1381370404126 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1381370404126 : ¬ MinimalInterpreter v1381370404126 :=
  cost_cut false 1 (by decide)

private def v1381370293534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1381370293534 : ¬ MinimalInterpreter v1381370293534 :=
  cost_cut false 1 (by decide)

theorem four501 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,1,0,3]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,1,0,3] = [v1381370830046,v1381370828638,v1381370852126,v1381370846494,v1381370409758,v1381370404126,v1381370293534] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370830046) (.cons (no_v1381370828638) (.cons (no_v1381370852126) (.cons (no_v1381370846494) (.cons (no_v1381370409758) (.cons (no_v1381370404126) (.cons (no_v1381370293534) .nil)))))))

private def v1381370830062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381370830062 : ¬ MinimalInterpreter v1381370830062 :=
  cost_cut false 1 (by decide)

private def v1381370828654 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v1381370828654 : ¬ MinimalInterpreter v1381370828654 :=
  cost_cut false 1 (by decide)

private def v1381370851566 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v1381370851566 : ¬ MinimalInterpreter v1381370851566 :=
  cost_cut false 1 (by decide)

private def v1381370846318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1381370846318 : ¬ MinimalInterpreter v1381370846318 :=
  cost_cut false 1 (by decide)

private def v1381370409198 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v1381370409198 : ¬ MinimalInterpreter v1381370409198 :=
  cost_cut false 1 (by decide)

private def v1381370399982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v1381370399982 : ¬ MinimalInterpreter v1381370399982 :=
  cost_cut false 1 (by decide)

private def v1381370403950 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1381370403950 : ¬ MinimalInterpreter v1381370403950 :=
  cost_cut false 1 (by decide)

private def v1381370293358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 2))))))
private theorem no_v1381370293358 : ¬ MinimalInterpreter v1381370293358 :=
  cost_cut false 1 (by decide)

private def v1381370291054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v1381370291054 : ¬ MinimalInterpreter v1381370291054 :=
  cost_cut false 1 (by decide)

theorem four502 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,1,1,2]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,1,1,2] = [v1381370830062,v1381370828654,v1381370851566,v1381370846318,v1381370409198,v1381370399982,v1381370403950,v1381370293358,v1381370291054] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370830062) (.cons (no_v1381370828654) (.cons (no_v1381370851566) (.cons (no_v1381370846318) (.cons (no_v1381370409198) (.cons (no_v1381370399982) (.cons (no_v1381370403950) (.cons (no_v1381370293358) (.cons (no_v1381370291054) .nil)))))))))

private def v1381370830070 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381370830070 : ¬ MinimalInterpreter v1381370830070 :=
  cost_cut false 1 (by decide)

private def v1381370828662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v1381370828662 : ¬ MinimalInterpreter v1381370828662 :=
  cost_cut false 1 (by decide)

private def v1381370851574 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v1381370851574 : ¬ MinimalInterpreter v1381370851574 :=
  cost_cut false 1 (by decide)

private def v1381370852294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1381370852294 : ¬ MinimalInterpreter v1381370852294 :=
  cost_cut false 1 (by decide)

private def v1381370846662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1381370846662 : ¬ MinimalInterpreter v1381370846662 :=
  cost_cut false 1 (by decide)

private def v1381370409206 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v1381370409206 : ¬ MinimalInterpreter v1381370409206 :=
  cost_cut false 1 (by decide)

private def v1381370409926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1381370409926 : ¬ MinimalInterpreter v1381370409926 :=
  cost_cut false 1 (by decide)

private def v1381370399990 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v1381370399990 : ¬ MinimalInterpreter v1381370399990 :=
  cost_cut false 1 (by decide)

private def v1381370404294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1381370404294 : ¬ MinimalInterpreter v1381370404294 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370293702 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1381370293702 : ¬ MinimalInterpreter v1381370293702 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370398582 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 2)))) (.var 1))))))
private theorem no_v1381370398582 : ¬ MinimalInterpreter v1381370398582 :=
  cost_cut false 1 (by decide)

private def v1381370291062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v1381370291062 : ¬ MinimalInterpreter v1381370291062 :=
  cost_cut false 1 (by decide)

theorem four503 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,1,2,1]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [2,1,2,1] = [v1381370830070,v1381370828662,v1381370851574,v1381370852294,v1381370846662,v1381370409206,v1381370409926,v1381370399990,v1381370404294,v1381370293702,v1381370398582,v1381370291062] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370830070) (.cons (no_v1381370828662) (.cons (no_v1381370851574) (.cons (no_v1381370852294) (.cons (no_v1381370846662) (.cons (no_v1381370409206) (.cons (no_v1381370409926) (.cons (no_v1381370399990) (.cons (no_v1381370404294) (.cons (no_v1381370293702) (.cons (no_v1381370398582) (.cons (no_v1381370291062) .nil))))))))))))

end Blc.SelfintSingleObject.Rows40
