import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1376134470878 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1376134470878 : ¬ MinimalInterpreter v1376134470878 :=
  cost_cut false 1 (by decide)

private def v1376134469470 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1376134469470 : ¬ MinimalInterpreter v1376134469470 :=
  cost_cut false 1 (by decide)

private def v1376134458590 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 3))))))))
private theorem no_v1376134458590 : ¬ MinimalInterpreter v1376134458590 :=
  cost_cut false 1 (by decide)

private def v1376134457182 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 3)))))))
private theorem no_v1376134457182 : ¬ MinimalInterpreter v1376134457182 :=
  cost_cut false 1 (by decide)

private def v1376134454110 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 3)))))))
private theorem no_v1376134454110 : ¬ MinimalInterpreter v1376134454110 :=
  cost_cut false 1 (by decide)

private def v1376134765790 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1376134765790 : ¬ MinimalInterpreter v1376134765790 :=
  cost_cut false 1 (by decide)

private def v1376134764382 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1376134764382 : ¬ MinimalInterpreter v1376134764382 :=
  cost_cut false 1 (by decide)

private def v1376134787870 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1376134787870 : ¬ MinimalInterpreter v1376134787870 :=
  cost_cut false 1 (by decide)

private def v1376134782238 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1376134782238 : ¬ MinimalInterpreter v1376134782238 :=
  cost_cut false 1 (by decide)

private def v1376134738718 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1376134738718 : ¬ MinimalInterpreter v1376134738718 :=
  cost_cut false 1 (by decide)

private def v1376134733086 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1376134733086 : ¬ MinimalInterpreter v1376134733086 :=
  cost_cut false 1 (by decide)

private def v1376134720798 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1376134720798 : ¬ MinimalInterpreter v1376134720798 :=
  cost_cut false 1 (by decide)

private def v1376135967518 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1376135967518 : ¬ MinimalInterpreter v1376135967518 :=
  cost_cut false 1 (by decide)

private def v1376135961886 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1376135961886 : ¬ MinimalInterpreter v1376135961886 :=
  cost_cut false 1 (by decide)

private def v1376140664030 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1376140664030 : ¬ MinimalInterpreter v1376140664030 :=
  cost_cut false 1 (by decide)

private def v1376140662622 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1376140662622 : ¬ MinimalInterpreter v1376140662622 :=
  cost_cut false 1 (by decide)

private def v1376140686110 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1376140686110 : ¬ MinimalInterpreter v1376140686110 :=
  cost_cut false 1 (by decide)

private def v1376140680478 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1376140680478 : ¬ MinimalInterpreter v1376140680478 :=
  cost_cut false 1 (by decide)

theorem four840 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,1,0,3]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,1,0,3] = [v1376134470878,v1376134469470,v1376134458590,v1376134457182,v1376134454110,v1376134765790,v1376134764382,v1376134787870,v1376134782238,v1376134738718,v1376134733086,v1376134720798,v1376135967518,v1376135961886,v1376140664030,v1376140662622,v1376140686110,v1376140680478] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134470878) (.cons (no_v1376134469470) (.cons (no_v1376134458590) (.cons (no_v1376134457182) (.cons (no_v1376134454110) (.cons (no_v1376134765790) (.cons (no_v1376134764382) (.cons (no_v1376134787870) (.cons (no_v1376134782238) (.cons (no_v1376134738718) (.cons (no_v1376134733086) (.cons (no_v1376134720798) (.cons (no_v1376135967518) (.cons (no_v1376135961886) (.cons (no_v1376140664030) (.cons (no_v1376140662622) (.cons (no_v1376140686110) (.cons (no_v1376140680478) .nil))))))))))))))))))

private def v1376134470894 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v1376134470894 : ¬ MinimalInterpreter v1376134470894 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376134469486 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v1376134469486 : ¬ MinimalInterpreter v1376134469486 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376134458606 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v1376134458606 : ¬ MinimalInterpreter v1376134458606 :=
  cost_cut false 1 (by decide)

private def v1376134457198 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v1376134457198 : ¬ MinimalInterpreter v1376134457198 :=
  cost_cut false 1 (by decide)

private def v1376134454126 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v1376134454126 : ¬ MinimalInterpreter v1376134454126 :=
  cost_cut false 1 (by decide)

private def v1376134782062 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1376134782062 : ¬ MinimalInterpreter v1376134782062 :=
  cost_cut false 1 (by decide)

private def v1376134728942 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v1376134728942 : ¬ MinimalInterpreter v1376134728942 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134732910 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1376134732910 : ¬ MinimalInterpreter v1376134732910 :=
  cost_cut false 1 (by decide)

private def v1376134720622 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 2))))))
private theorem no_v1376134720622 : ¬ MinimalInterpreter v1376134720622 :=
  cost_cut false 1 (by decide)

private def v1376134718318 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v1376134718318 : ¬ MinimalInterpreter v1376134718318 :=
  cost_cut false 1 (by decide)

private def v1376135961710 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1376135961710 : ¬ MinimalInterpreter v1376135961710 :=
  cost_cut false 1 (by decide)

private def v1376140680302 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1376140680302 : ¬ MinimalInterpreter v1376140680302 :=
  cost_cut false 1 (by decide)

theorem four841 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,1,1,2]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,1,1,2] = [v1376134470894,v1376134469486,v1376134458606,v1376134457198,v1376134454126,v1376134782062,v1376134728942,v1376134732910,v1376134720622,v1376134718318,v1376135961710,v1376140680302] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134470894) (.cons (no_v1376134469486) (.cons (no_v1376134458606) (.cons (no_v1376134457198) (.cons (no_v1376134454126) (.cons (no_v1376134782062) (.cons (no_v1376134728942) (.cons (no_v1376134732910) (.cons (no_v1376134720622) (.cons (no_v1376134718318) (.cons (no_v1376135961710) (.cons (no_v1376140680302) .nil))))))))))))

private def v1376134470902 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v1376134470902 : ¬ MinimalInterpreter v1376134470902 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376134469494 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v1376134469494 : ¬ MinimalInterpreter v1376134469494 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376134458614 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))))))))
private theorem no_v1376134458614 : ¬ MinimalInterpreter v1376134458614 :=
  cost_cut false 1 (by decide)

private def v1376134457206 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)))))))
private theorem no_v1376134457206 : ¬ MinimalInterpreter v1376134457206 :=
  cost_cut false 1 (by decide)

private def v1376134454134 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)))))))
private theorem no_v1376134454134 : ¬ MinimalInterpreter v1376134454134 :=
  cost_cut false 1 (by decide)

private def v1376134788038 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1376134788038 : ¬ MinimalInterpreter v1376134788038 :=
  cost_cut false 1 (by decide)

private def v1376134782406 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1376134782406 : ¬ MinimalInterpreter v1376134782406 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134738886 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1376134738886 : ¬ MinimalInterpreter v1376134738886 :=
  cost_cut false 1 (by decide)

private def v1376134728950 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v1376134728950 : ¬ MinimalInterpreter v1376134728950 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134733254 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1376134733254 : ¬ MinimalInterpreter v1376134733254 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134720966 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1376134720966 : ¬ MinimalInterpreter v1376134720966 :=
  cost_cut false 1 (by decide)

private def v1376134718326 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v1376134718326 : ¬ MinimalInterpreter v1376134718326 :=
  cost_cut false 1 (by decide)

private def v1376135967686 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1376135967686 : ¬ MinimalInterpreter v1376135967686 :=
  cost_cut false 1 (by decide)

private def v1376135962054 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1376135962054 : ¬ MinimalInterpreter v1376135962054 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1376140686278 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1376140686278 : ¬ MinimalInterpreter v1376140686278 :=
  cost_cut false 1 (by decide)

private def v1376140680646 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1376140680646 : ¬ MinimalInterpreter v1376140680646 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four842 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,1,2,1]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,1,2,1] = [v1376134470902,v1376134469494,v1376134458614,v1376134457206,v1376134454134,v1376134788038,v1376134782406,v1376134738886,v1376134728950,v1376134733254,v1376134720966,v1376134718326,v1376135967686,v1376135962054,v1376140686278,v1376140680646] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134470902) (.cons (no_v1376134469494) (.cons (no_v1376134458614) (.cons (no_v1376134457206) (.cons (no_v1376134454134) (.cons (no_v1376134788038) (.cons (no_v1376134782406) (.cons (no_v1376134738886) (.cons (no_v1376134728950) (.cons (no_v1376134733254) (.cons (no_v1376134720966) (.cons (no_v1376134718326) (.cons (no_v1376135967686) (.cons (no_v1376135962054) (.cons (no_v1376140686278) (.cons (no_v1376140680646) .nil))))))))))))))))

private def v1376134470906 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1376134470906 : ¬ MinimalInterpreter v1376134470906 :=
  cost_cut false 1 (by decide)

private def v1376134469498 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1376134469498 : ¬ MinimalInterpreter v1376134469498 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1376134458618 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 0))))))))
private theorem no_v1376134458618 : ¬ MinimalInterpreter v1376134458618 :=
  cost_cut false 1 (by decide)

private def v1376134457210 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)))))))
private theorem no_v1376134457210 : ¬ MinimalInterpreter v1376134457210 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1376134454138 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 0)))))))
private theorem no_v1376134454138 : ¬ MinimalInterpreter v1376134454138 :=
  cost_cut false 1 (by decide)

private def v1376134765818 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1376134765818 : ¬ MinimalInterpreter v1376134765818 :=
  cost_cut false 1 (by decide)

private def v1376134764410 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1376134764410 : ¬ MinimalInterpreter v1376134764410 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1376134782074 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1376134782074 : ¬ MinimalInterpreter v1376134782074 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1376134732922 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1376134732922 : ¬ MinimalInterpreter v1376134732922 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1376134720634 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 0))))))
private theorem no_v1376134720634 : ¬ MinimalInterpreter v1376134720634 :=
  cost_cut false 1 (by decide)

private def v1376135961722 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1376135961722 : ¬ MinimalInterpreter v1376135961722 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1376140664058 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1376140664058 : ¬ MinimalInterpreter v1376140664058 :=
  cost_cut false 1 (by decide)

private def v1376140662650 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1376140662650 : ¬ MinimalInterpreter v1376140662650 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1376140680314 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1376140680314 : ¬ MinimalInterpreter v1376140680314 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

theorem four843 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,1,3,0]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,1,3,0] = [v1376134470906,v1376134469498,v1376134458618,v1376134457210,v1376134454138,v1376134765818,v1376134764410,v1376134782074,v1376134732922,v1376134720634,v1376135961722,v1376140664058,v1376140662650,v1376140680314] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134470906) (.cons (no_v1376134469498) (.cons (no_v1376134458618) (.cons (no_v1376134457210) (.cons (no_v1376134454138) (.cons (no_v1376134765818) (.cons (no_v1376134764410) (.cons (no_v1376134782074) (.cons (no_v1376134732922) (.cons (no_v1376134720634) (.cons (no_v1376135961722) (.cons (no_v1376140664058) (.cons (no_v1376140662650) (.cons (no_v1376140680314) .nil))))))))))))))

private def v1376134789518 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1376134789518 : ¬ MinimalInterpreter v1376134789518 :=
  cost_cut false 1 (by decide)

private def v1376134782606 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1376134782606 : ¬ MinimalInterpreter v1376134782606 :=
  cost_cut false 1 (by decide)

private def v1376134740366 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1376134740366 : ¬ MinimalInterpreter v1376134740366 :=
  cost_cut false 1 (by decide)

private def v1376134729326 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 2)))))))
private theorem no_v1376134729326 : ¬ MinimalInterpreter v1376134729326 :=
  cost_cut false 1 (by decide)

private def v1376134733454 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1376134733454 : ¬ MinimalInterpreter v1376134733454 :=
  cost_cut false 1 (by decide)

private def v1376134721166 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1376134721166 : ¬ MinimalInterpreter v1376134721166 :=
  cost_cut false 1 (by decide)

private def v1376134718382 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2))))))
private theorem no_v1376134718382 : ¬ MinimalInterpreter v1376134718382 :=
  cost_cut false 1 (by decide)

private def v1376135969166 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1376135969166 : ¬ MinimalInterpreter v1376135969166 :=
  cost_cut false 1 (by decide)

private def v1376135962254 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1376135962254 : ¬ MinimalInterpreter v1376135962254 :=
  cost_cut false 1 (by decide)

private def v1376140687758 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1376140687758 : ¬ MinimalInterpreter v1376140687758 :=
  cost_cut false 1 (by decide)

private def v1376140680846 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1376140680846 : ¬ MinimalInterpreter v1376140680846 :=
  cost_cut false 1 (by decide)

theorem four844 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,2,0,2]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,2,0,2] = [v1376134789518,v1376134782606,v1376134740366,v1376134729326,v1376134733454,v1376134721166,v1376134718382,v1376135969166,v1376135962254,v1376140687758,v1376140680846] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134789518) (.cons (no_v1376134782606) (.cons (no_v1376134740366) (.cons (no_v1376134729326) (.cons (no_v1376134733454) (.cons (no_v1376134721166) (.cons (no_v1376134718382) (.cons (no_v1376135969166) (.cons (no_v1376135962254) (.cons (no_v1376140687758) (.cons (no_v1376140680846) .nil)))))))))))

private def v1376134471286 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v1376134471286 : ¬ MinimalInterpreter v1376134471286 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376134469558 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v1376134469558 : ¬ MinimalInterpreter v1376134469558 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376134458998 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v1376134458998 : ¬ MinimalInterpreter v1376134458998 :=
  cost_cut false 1 (by decide)

private def v1376134457270 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v1376134457270 : ¬ MinimalInterpreter v1376134457270 :=
  cost_cut false 1 (by decide)

private def v1376134454198 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v1376134454198 : ¬ MinimalInterpreter v1376134454198 :=
  cost_cut false 1 (by decide)

private def v1376134789574 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1376134789574 : ¬ MinimalInterpreter v1376134789574 :=
  cost_cut false 1 (by decide)

private def v1376134782662 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1376134782662 : ¬ MinimalInterpreter v1376134782662 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134782518 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1376134782518 : ¬ MinimalInterpreter v1376134782518 :=
  cost_cut false 1 (by decide)

private def v1376134740422 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1376134740422 : ¬ MinimalInterpreter v1376134740422 :=
  cost_cut false 1 (by decide)

private def v1376134733510 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1376134733510 : ¬ MinimalInterpreter v1376134733510 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134721222 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1376134721222 : ¬ MinimalInterpreter v1376134721222 :=
  cost_cut false 1 (by decide)

private def v1376134733366 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1376134733366 : ¬ MinimalInterpreter v1376134733366 :=
  cost_cut false 1 (by decide)

private def v1376134721078 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 1))))))
private theorem no_v1376134721078 : ¬ MinimalInterpreter v1376134721078 :=
  cost_cut false 1 (by decide)

private def v1376135969222 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1376135969222 : ¬ MinimalInterpreter v1376135969222 :=
  cost_cut false 1 (by decide)

private def v1376135962310 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1376135962310 : ¬ MinimalInterpreter v1376135962310 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1376135962166 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1376135962166 : ¬ MinimalInterpreter v1376135962166 :=
  cost_cut false 1 (by decide)

private def v1376140687814 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1376140687814 : ¬ MinimalInterpreter v1376140687814 :=
  cost_cut false 1 (by decide)

private def v1376140680902 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1376140680902 : ¬ MinimalInterpreter v1376140680902 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376140680758 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1376140680758 : ¬ MinimalInterpreter v1376140680758 :=
  cost_cut false 1 (by decide)

theorem four845 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,2,1,1]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,2,1,1] = [v1376134471286,v1376134469558,v1376134458998,v1376134457270,v1376134454198,v1376134789574,v1376134782662,v1376134782518,v1376134740422,v1376134733510,v1376134721222,v1376134733366,v1376134721078,v1376135969222,v1376135962310,v1376135962166,v1376140687814,v1376140680902,v1376140680758] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134471286) (.cons (no_v1376134469558) (.cons (no_v1376134458998) (.cons (no_v1376134457270) (.cons (no_v1376134454198) (.cons (no_v1376134789574) (.cons (no_v1376134782662) (.cons (no_v1376134782518) (.cons (no_v1376134740422) (.cons (no_v1376134733510) (.cons (no_v1376134721222) (.cons (no_v1376134733366) (.cons (no_v1376134721078) (.cons (no_v1376135969222) (.cons (no_v1376135962310) (.cons (no_v1376135962166) (.cons (no_v1376140687814) (.cons (no_v1376140680902) (.cons (no_v1376140680758) .nil)))))))))))))))))))

private def v1376134782522 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1376134782522 : ¬ MinimalInterpreter v1376134782522 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134729338 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 0)))))))
private theorem no_v1376134729338 : ¬ MinimalInterpreter v1376134729338 :=
  cost_cut false 1 (by decide)

private def v1376134733370 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1376134733370 : ¬ MinimalInterpreter v1376134733370 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134721082 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0))))))
private theorem no_v1376134721082 : ¬ MinimalInterpreter v1376134721082 :=
  cost_cut false 1 (by decide)

private def v1376134718394 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 0))))))
private theorem no_v1376134718394 : ¬ MinimalInterpreter v1376134718394 :=
  cost_cut false 1 (by decide)

private def v1376135962170 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1376135962170 : ¬ MinimalInterpreter v1376135962170 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1376140680762 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1376140680762 : ¬ MinimalInterpreter v1376140680762 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four846 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,2,2,0]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,2,2,0] = [v1376134782522,v1376134729338,v1376134733370,v1376134721082,v1376134718394,v1376135962170,v1376140680762] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134782522) (.cons (no_v1376134729338) (.cons (no_v1376134733370) (.cons (no_v1376134721082) (.cons (no_v1376134718394) (.cons (no_v1376135962170) (.cons (no_v1376140680762) .nil)))))))

end Blc.SelfintSingleObject.Rows40
