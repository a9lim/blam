import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381370461422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381370461422 : ¬ MinimalInterpreter v1381370461422 :=
  cost_cut false 1 (by decide)

private def v1381370453870 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 2))))))))
private theorem no_v1381370453870 : ¬ MinimalInterpreter v1381370453870 :=
  cost_cut false 1 (by decide)

private def v1381370313966 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 2)))))))
private theorem no_v1381370313966 : ¬ MinimalInterpreter v1381370313966 :=
  cost_cut false 1 (by decide)

private def v1381370269550 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 2))))))
private theorem no_v1381370269550 : ¬ MinimalInterpreter v1381370269550 :=
  cost_cut false 1 (by decide)

private def v1381375180014 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381375180014 : ¬ MinimalInterpreter v1381375180014 :=
  cost_cut false 1 (by decide)

private def v1381375172462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 2))))))))
private theorem no_v1381375172462 : ¬ MinimalInterpreter v1381375172462 :=
  cost_cut false 1 (by decide)

private def v1381394054382 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381394054382 : ¬ MinimalInterpreter v1381394054382 :=
  cost_cut false 1 (by decide)

private def v1381394046830 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 2))))))))
private theorem no_v1381394046830 : ¬ MinimalInterpreter v1381394046830 :=
  cost_cut false 1 (by decide)

theorem four483 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,3,1,2]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,3,1,2] = [v1381370461422,v1381370453870,v1381370313966,v1381370269550,v1381375180014,v1381375172462,v1381394054382,v1381394046830] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370461422) (.cons (no_v1381370453870) (.cons (no_v1381370313966) (.cons (no_v1381370269550) (.cons (no_v1381375180014) (.cons (no_v1381375172462) (.cons (no_v1381394054382) (.cons (no_v1381394046830) .nil))))))))

private def v1381370461430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381370461430 : ¬ MinimalInterpreter v1381370461430 :=
  cost_cut false 1 (by decide)

private def v1381370453878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))))))
private theorem no_v1381370453878 : ¬ MinimalInterpreter v1381370453878 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (.app (.var 0) (so_dead (by decide) (.app (.app (.var 3) (.var 2)) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370313974 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 2) (.var 1)))))))
private theorem no_v1381370313974 : ¬ MinimalInterpreter v1381370313974 :=
  cost_cut false 1 (by decide)

private def v1381370306422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 1))))))
private theorem no_v1381370306422 : ¬ MinimalInterpreter v1381370306422 :=
  cost_cut false 1 (by decide)

private def v1381370269558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 2)) (.var 1))))))
private theorem no_v1381370269558 : ¬ MinimalInterpreter v1381370269558 :=
  cost_cut false 1 (by decide)

private def v1381375180022 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381375180022 : ¬ MinimalInterpreter v1381375180022 :=
  cost_cut false 1 (by decide)

private def v1381375172470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))))))
private theorem no_v1381375172470 : ¬ MinimalInterpreter v1381375172470 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 3) (.var 2)) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381394054390 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381394054390 : ¬ MinimalInterpreter v1381394054390 :=
  cost_cut false 1 (by decide)

private def v1381394046838 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))))))
private theorem no_v1381394046838 : ¬ MinimalInterpreter v1381394046838 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 3) (.var 2)) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four484 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,3,2,1]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,3,2,1] = [v1381370461430,v1381370453878,v1381370313974,v1381370306422,v1381370269558,v1381375180022,v1381375172470,v1381394054390,v1381394046838] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370461430) (.cons (no_v1381370453878) (.cons (no_v1381370313974) (.cons (no_v1381370306422) (.cons (no_v1381370269558) (.cons (no_v1381375180022) (.cons (no_v1381375172470) (.cons (no_v1381394054390) (.cons (no_v1381394046838) .nil)))))))))

theorem four485 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,3,3,0]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [0,3,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381370704862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v1381370704862 : ¬ MinimalInterpreter v1381370704862 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (so_dead (by decide) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381370703326 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v1381370703326 : ¬ MinimalInterpreter v1381370703326 :=
  cost_cut false 1 (by decide)

private def v1381370741726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v1381370741726 : ¬ MinimalInterpreter v1381370741726 :=
  cost_cut false 1 (by decide)

private def v1381370744606 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 3)))))))))
private theorem no_v1381370744606 : ¬ MinimalInterpreter v1381370744606 :=
  cost_cut false 1 (by decide)

private def v1381370738462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 3))))))))
private theorem no_v1381370738462 : ¬ MinimalInterpreter v1381370738462 :=
  cost_cut false 1 (by decide)

private def v1381370381278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 2) (.var 3))))))))
private theorem no_v1381370381278 : ¬ MinimalInterpreter v1381370381278 :=
  cost_cut false 1 (by decide)

private def v1381370384158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 3))))))))
private theorem no_v1381370384158 : ¬ MinimalInterpreter v1381370384158 :=
  cost_cut false 1 (by decide)

private def v1381370378014 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 3)))))))
private theorem no_v1381370378014 : ¬ MinimalInterpreter v1381370378014 :=
  cost_cut false 1 (by decide)

private def v1381370287902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 3)))))))
private theorem no_v1381370287902 : ¬ MinimalInterpreter v1381370287902 :=
  cost_cut false 1 (by decide)

private def v1381376209886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v1381376209886 : ¬ MinimalInterpreter v1381376209886 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (.app (.var 1) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381376208350 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v1381376208350 : ¬ MinimalInterpreter v1381376208350 :=
  cost_cut false 1 (by decide)

private def v1381376246750 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v1381376246750 : ¬ MinimalInterpreter v1381376246750 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.app (.var 1) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four486 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,0,2,3]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,0,2,3] = [v1381370704862,v1381370703326,v1381370741726,v1381370744606,v1381370738462,v1381370381278,v1381370384158,v1381370378014,v1381370287902,v1381376209886,v1381376208350,v1381376246750] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370704862) (.cons (no_v1381370703326) (.cons (no_v1381370741726) (.cons (no_v1381370744606) (.cons (no_v1381370738462) (.cons (no_v1381370381278) (.cons (no_v1381370384158) (.cons (no_v1381370378014) (.cons (no_v1381370287902) (.cons (no_v1381376209886) (.cons (no_v1381376208350) (.cons (no_v1381376246750) .nil))))))))))))

private def v1381370704878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v1381370704878 : ¬ MinimalInterpreter v1381370704878 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (so_dead (by decide) (.app (.var 1) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381370703342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v1381370703342 : ¬ MinimalInterpreter v1381370703342 :=
  cost_cut false 1 (by decide)

private def v1381370741742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v1381370741742 : ¬ MinimalInterpreter v1381370741742 :=
  cost_cut false 1 (by decide)

private def v1381370737134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 2)))))))
private theorem no_v1381370737134 : ¬ MinimalInterpreter v1381370737134 :=
  cost_cut false 1 (by decide)

private def v1381370381294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.var 2))))))))
private theorem no_v1381370381294 : ¬ MinimalInterpreter v1381370381294 :=
  cost_cut false 1 (by decide)

private def v1381370376686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 2))))))
private theorem no_v1381370376686 : ¬ MinimalInterpreter v1381370376686 :=
  cost_cut false 1 (by decide)

private def v1381370286574 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 2))))))
private theorem no_v1381370286574 : ¬ MinimalInterpreter v1381370286574 :=
  cost_cut false 1 (by decide)

private def v1381376209902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v1381376209902 : ¬ MinimalInterpreter v1381376209902 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (.app (.var 1) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381376208366 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v1381376208366 : ¬ MinimalInterpreter v1381376208366 :=
  cost_cut false 1 (by decide)

private def v1381376246766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v1381376246766 : ¬ MinimalInterpreter v1381376246766 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.app (.var 1) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four487 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,0,3,2]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,0,3,2] = [v1381370704878,v1381370703342,v1381370741742,v1381370737134,v1381370381294,v1381370376686,v1381370286574,v1381376209902,v1381376208366,v1381376246766] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370704878) (.cons (no_v1381370703342) (.cons (no_v1381370741742) (.cons (no_v1381370737134) (.cons (no_v1381370381294) (.cons (no_v1381370376686) (.cons (no_v1381370286574) (.cons (no_v1381376209902) (.cons (no_v1381376208366) (.cons (no_v1381376246766) .nil))))))))))

private def v1381370706398 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 1) (.var 3)))))))))
private theorem no_v1381370706398 : ¬ MinimalInterpreter v1381370706398 :=
  cost_cut false 1 (by decide)

private def v1381370703582 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 3))))))))
private theorem no_v1381370703582 : ¬ MinimalInterpreter v1381370703582 :=
  cost_cut false 1 (by decide)

private def v1381370749406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v1381370749406 : ¬ MinimalInterpreter v1381370749406 :=
  cost_cut false 1 (by decide)

private def v1381370388958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.var 3))))))))
private theorem no_v1381370388958 : ¬ MinimalInterpreter v1381370388958 :=
  cost_cut false 1 (by decide)

private def v1381376254430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v1381376254430 : ¬ MinimalInterpreter v1381376254430 :=
  cost_cut false 1 (by decide)

theorem four488 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,1,1,3]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,1,1,3] = [v1381370706398,v1381370703582,v1381370749406,v1381370388958,v1381376254430] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370706398) (.cons (no_v1381370703582) (.cons (no_v1381370749406) (.cons (no_v1381370388958) (.cons (no_v1381376254430) .nil)))))

private def v1381370370542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 2)))))))
private theorem no_v1381370370542 : ¬ MinimalInterpreter v1381370370542 :=
  cost_cut false 1 (by decide)

private def v1381370367726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 2)))) (.var 2))))))
private theorem no_v1381370367726 : ¬ MinimalInterpreter v1381370367726 :=
  cost_cut false 1 (by decide)

private def v1381370283758 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 2))))))
private theorem no_v1381370283758 : ¬ MinimalInterpreter v1381370283758 :=
  cost_cut false 1 (by decide)

theorem four489 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,1,2,2]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,1,2,2] = [v1381370370542,v1381370367726,v1381370283758] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370370542) (.cons (no_v1381370367726) (.cons (no_v1381370283758) .nil)))

end Blc.SelfintSingleObject.Rows40
