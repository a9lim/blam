import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v37799129914 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v37799129914 : ¬ MinimalInterpreter v37799129914 :=
  chain_cut false 3 (by decide)

private def v37799129818 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v37799129818 : ¬ MinimalInterpreter v37799129818 :=
  chain_cut false 3 (by decide)

private def v37799116090 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v37799116090 : ¬ MinimalInterpreter v37799116090 :=
  chain_cut false 3 (by decide)

private def v37799115994 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v37799115994 : ¬ MinimalInterpreter v37799115994 :=
  chain_cut false 3 (by decide)

private def v37799112538 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v37799112538 : ¬ MinimalInterpreter v37799112538 :=
  chain_cut false 3 (by decide)

private def v37396476730 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v37396476730 : ¬ MinimalInterpreter v37396476730 :=
  chain_cut false 4 (by decide)

private def v37396476634 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v37396476634 : ¬ MinimalInterpreter v37396476634 :=
  chain_cut false 4 (by decide)

private def v37396462906 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v37396462906 : ¬ MinimalInterpreter v37396462906 :=
  chain_cut false 5 (by decide)

private def v37396462810 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v37396462810 : ¬ MinimalInterpreter v37396462810 :=
  chain_cut false 4 (by decide)

private def v37396459354 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v37396459354 : ¬ MinimalInterpreter v37396459354 :=
  chain_cut false 5 (by decide)

theorem row48 : BadRow (row ⟨0,3,0,2,4,3⟩ [0,0,0] [2,0,1,0]) := by
  have h : row ⟨0,3,0,2,4,3⟩ [0,0,0] [2,0,1,0] = [v37799129914,v37799129818,v37799116090,v37799115994,v37799112538,v37396476730,v37396476634,v37396462906,v37396462810,v37396459354] := by decide
  rw [h]
  exact (.cons (no_v37799129914) (.cons (no_v37799129818) (.cons (no_v37799116090) (.cons (no_v37799115994) (.cons (no_v37799112538) (.cons (no_v37396476730) (.cons (no_v37396476634) (.cons (no_v37396462906) (.cons (no_v37396462810) (.cons (no_v37396459354) .nil))))))))))

private def v37799130010 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v37799130010 : ¬ MinimalInterpreter v37799130010 :=
  chain_cut false 3 (by decide)

private def v37799129834 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v37799129834 : ¬ MinimalInterpreter v37799129834 :=
  chain_cut false 3 (by decide)

private def v37799116186 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v37799116186 : ¬ MinimalInterpreter v37799116186 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37799116010 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v37799116010 : ¬ MinimalInterpreter v37799116010 :=
  chain_cut false 3 (by decide)

private def v37799112554 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v37799112554 : ¬ MinimalInterpreter v37799112554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37396476826 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v37396476826 : ¬ MinimalInterpreter v37396476826 :=
  chain_cut false 4 (by decide)

private def v37396476650 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v37396476650 : ¬ MinimalInterpreter v37396476650 :=
  chain_cut false 4 (by decide)

private def v37396463002 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v37396463002 : ¬ MinimalInterpreter v37396463002 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37396462826 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v37396462826 : ¬ MinimalInterpreter v37396462826 :=
  chain_cut false 4 (by decide)

private def v37396459370 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v37396459370 : ¬ MinimalInterpreter v37396459370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row49 : BadRow (row ⟨0,3,0,2,4,3⟩ [0,0,0] [2,1,0,0]) := by
  have h : row ⟨0,3,0,2,4,3⟩ [0,0,0] [2,1,0,0] = [v37799130010,v37799129834,v37799116186,v37799116010,v37799112554,v37396476826,v37396476650,v37396463002,v37396462826,v37396459370] := by decide
  rw [h]
  exact (.cons (no_v37799130010) (.cons (no_v37799129834) (.cons (no_v37799116186) (.cons (no_v37799116010) (.cons (no_v37799112554) (.cons (no_v37396476826) (.cons (no_v37396476650) (.cons (no_v37396463002) (.cons (no_v37396462826) (.cons (no_v37396459370) .nil))))))))))

private def v37849609182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v37849609182 : ¬ MinimalInterpreter v37849609182 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3))))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3)))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37849607646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v37849607646 : ¬ MinimalInterpreter v37849607646 :=
  chain_cut false 2 (by decide)

private def v37849584606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3))))))))
private theorem no_v37849584606 : ¬ MinimalInterpreter v37849584606 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37849583070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 3)))))))
private theorem no_v37849583070 : ¬ MinimalInterpreter v37849583070 :=
  chain_cut false 2 (by decide)

private def v37849576926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 3)))))))
private theorem no_v37849576926 : ¬ MinimalInterpreter v37849576926 :=
  chain_cut false 2 (by decide)

private def v37850235870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v37850235870 : ¬ MinimalInterpreter v37850235870 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3))))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850137566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3))))))))
private theorem no_v37850137566 : ¬ MinimalInterpreter v37850137566 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37852558302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v37852558302 : ¬ MinimalInterpreter v37852558302 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v37852556766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v37852556766 : ¬ MinimalInterpreter v37852556766 :=
  chain_cut false 2 (by decide)

private def v37852595166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v37852595166 : ¬ MinimalInterpreter v37852595166 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.app (.var 0) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37861995486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v37861995486 : ¬ MinimalInterpreter v37861995486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v37861993950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v37861993950 : ¬ MinimalInterpreter v37861993950 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v37862032350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v37862032350 : ¬ MinimalInterpreter v37862032350 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem row50 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [0,0,2,3]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [0,0,2,3] = [v37849609182,v37849607646,v37849584606,v37849583070,v37849576926,v37850235870,v37850137566,v37852558302,v37852556766,v37852595166,v37861995486,v37861993950,v37862032350] := by decide
  rw [h]
  exact (.cons (no_v37849609182) (.cons (no_v37849607646) (.cons (no_v37849584606) (.cons (no_v37849583070) (.cons (no_v37849576926) (.cons (no_v37850235870) (.cons (no_v37850137566) (.cons (no_v37852558302) (.cons (no_v37852556766) (.cons (no_v37852595166) (.cons (no_v37861995486) (.cons (no_v37861993950) (.cons (no_v37862032350) .nil)))))))))))))

private def v37849609198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v37849609198 : ¬ MinimalInterpreter v37849609198 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2))))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2)))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37849607662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v37849607662 : ¬ MinimalInterpreter v37849607662 :=
  chain_cut false 2 (by decide)

private def v37849584622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2))))))))
private theorem no_v37849584622 : ¬ MinimalInterpreter v37849584622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37849583086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2)))))))
private theorem no_v37849583086 : ¬ MinimalInterpreter v37849583086 :=
  chain_cut false 2 (by decide)

private def v37849576942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 2)))))))
private theorem no_v37849576942 : ¬ MinimalInterpreter v37849576942 :=
  chain_cut false 2 (by decide)

private def v37850235886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v37850235886 : ¬ MinimalInterpreter v37850235886 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2))))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850137582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2))))))))
private theorem no_v37850137582 : ¬ MinimalInterpreter v37850137582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2)))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37852558318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v37852558318 : ¬ MinimalInterpreter v37852558318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v37852556782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v37852556782 : ¬ MinimalInterpreter v37852556782 :=
  chain_cut false 2 (by decide)

private def v37852595182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v37852595182 : ¬ MinimalInterpreter v37852595182 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.app (.var 0) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37861995502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v37861995502 : ¬ MinimalInterpreter v37861995502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v37861993966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v37861993966 : ¬ MinimalInterpreter v37861993966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v37862032366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v37862032366 : ¬ MinimalInterpreter v37862032366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem row51 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [0,0,3,2]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [0,0,3,2] = [v37849609198,v37849607662,v37849584622,v37849583086,v37849576942,v37850235886,v37850137582,v37852558318,v37852556782,v37852595182,v37861995502,v37861993966,v37862032366] := by decide
  rw [h]
  exact (.cons (no_v37849609198) (.cons (no_v37849607662) (.cons (no_v37849584622) (.cons (no_v37849583086) (.cons (no_v37849576942) (.cons (no_v37850235886) (.cons (no_v37850137582) (.cons (no_v37852558318) (.cons (no_v37852556782) (.cons (no_v37852595182) (.cons (no_v37861995502) (.cons (no_v37861993966) (.cons (no_v37862032366) .nil)))))))))))))

private def v37849610718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 3)))))))))
private theorem no_v37849610718 : ¬ MinimalInterpreter v37849610718 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 3)))) (.app (.var 0) (.app (.var 0) (.var 2))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v37849607902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3))))))))
private theorem no_v37849607902 : ¬ MinimalInterpreter v37849607902 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3))) (.app (.app (.var 0) (.var 0)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v37849586142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 3))))))))
private theorem no_v37849586142 : ¬ MinimalInterpreter v37849586142 :=
  chain_cut false 2 (by decide)

private def v37849583326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 3)))))))
private theorem no_v37849583326 : ¬ MinimalInterpreter v37849583326 :=
  chain_cut false 2 (by decide)

private def v37849577182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 3)))))))
private theorem no_v37849577182 : ¬ MinimalInterpreter v37849577182 :=
  chain_cut false 2 (by decide)

private def v37850243550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v37850243550 : ¬ MinimalInterpreter v37850243550 :=
  chain_cut false 2 (by decide)

private def v37850244894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v37850244894 : ¬ MinimalInterpreter v37850244894 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v37850233630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3))))))))
private theorem no_v37850233630 : ¬ MinimalInterpreter v37850233630 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 3)))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v37850145246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 3))))))))
private theorem no_v37850145246 : ¬ MinimalInterpreter v37850145246 :=
  chain_cut false 2 (by decide)

private def v37850146590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v37850146590 : ¬ MinimalInterpreter v37850146590 :=
  chain_cut false 2 (by decide)

private def v37850135326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 3)))))))
private theorem no_v37850135326 : ¬ MinimalInterpreter v37850135326 :=
  chain_cut false 2 (by decide)

private def v37850110750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v37850110750 : ¬ MinimalInterpreter v37850110750 :=
  chain_cut false 2 (by decide)

private def v37852602846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v37852602846 : ¬ MinimalInterpreter v37852602846 :=
  chain_cut false 2 (by decide)

private def v37862040030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v37862040030 : ¬ MinimalInterpreter v37862040030 :=
  cost_cut false 6 (by decide)

theorem row52 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [0,1,1,3]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [0,1,1,3] = [v37849610718,v37849607902,v37849586142,v37849583326,v37849577182,v37850243550,v37850244894,v37850233630,v37850145246,v37850146590,v37850135326,v37850110750,v37852602846,v37862040030] := by decide
  rw [h]
  exact (.cons (no_v37849610718) (.cons (no_v37849607902) (.cons (no_v37849586142) (.cons (no_v37849583326) (.cons (no_v37849577182) (.cons (no_v37850243550) (.cons (no_v37850244894) (.cons (no_v37850233630) (.cons (no_v37850145246) (.cons (no_v37850146590) (.cons (no_v37850135326) (.cons (no_v37850110750) (.cons (no_v37852602846) (.cons (no_v37862040030) .nil))))))))))))))

private def v37849610734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))))
private theorem no_v37849610734 : ¬ MinimalInterpreter v37849610734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))

private def v37849607918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))))
private theorem no_v37849607918 : ¬ MinimalInterpreter v37849607918 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v37849586158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2))))))))
private theorem no_v37849586158 : ¬ MinimalInterpreter v37849586158 :=
  cost_cut false 2 (by decide)

private def v37849583342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2)))))))
private theorem no_v37849583342 : ¬ MinimalInterpreter v37849583342 :=
  cost_cut false 2 (by decide)

private def v37849577198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2)))))))
private theorem no_v37849577198 : ¬ MinimalInterpreter v37849577198 :=
  cost_cut false 2 (by decide)

private def v37850245006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v37850245006 : ¬ MinimalInterpreter v37850245006 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850233742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2))))))))
private theorem no_v37850233742 : ¬ MinimalInterpreter v37850233742 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850233070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2)))))))
private theorem no_v37850233070 : ¬ MinimalInterpreter v37850233070 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 2))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850146702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v37850146702 : ¬ MinimalInterpreter v37850146702 :=
  chain_cut false 2 (by decide)

private def v37850135438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 2)))))))
private theorem no_v37850135438 : ¬ MinimalInterpreter v37850135438 :=
  chain_cut false 2 (by decide)

private def v37850110862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v37850110862 : ¬ MinimalInterpreter v37850110862 :=
  chain_cut false 2 (by decide)

private def v37850124014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 2)))) (.var 2))))))
private theorem no_v37850124014 : ¬ MinimalInterpreter v37850124014 :=
  chain_cut false 2 (by decide)

private def v37850134766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 2)))) (.var 2))))))
private theorem no_v37850134766 : ¬ MinimalInterpreter v37850134766 :=
  chain_cut false 2 (by decide)

private def v37850110190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 2))))))
private theorem no_v37850110190 : ¬ MinimalInterpreter v37850110190 :=
  chain_cut false 2 (by decide)

theorem row53 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [0,1,2,2]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [0,1,2,2] = [v37849610734,v37849607918,v37849586158,v37849583342,v37849577198,v37850245006,v37850233742,v37850233070,v37850146702,v37850135438,v37850110862,v37850124014,v37850134766,v37850110190] := by decide
  rw [h]
  exact (.cons (no_v37849610734) (.cons (no_v37849607918) (.cons (no_v37849586158) (.cons (no_v37849583342) (.cons (no_v37849577198) (.cons (no_v37850245006) (.cons (no_v37850233742) (.cons (no_v37850233070) (.cons (no_v37850146702) (.cons (no_v37850135438) (.cons (no_v37850110862) (.cons (no_v37850124014) (.cons (no_v37850134766) (.cons (no_v37850110190) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows37
