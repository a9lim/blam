import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row294 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [2,2,0,0]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [2,2,0,0] = [] := by decide
  rw [h]
  exact .nil

private def v70380473582 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v70380473582 : ¬ MinimalInterpreter v70380473582 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70380473198 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v70380473198 : ¬ MinimalInterpreter v70380473198 :=
  cost_cut false 1 (by decide)

private def v70380467438 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v70380467438 : ¬ MinimalInterpreter v70380467438 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70380467054 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v70380467054 : ¬ MinimalInterpreter v70380467054 :=
  cost_cut false 1 (by decide)

private def v70380465518 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v70380465518 : ¬ MinimalInterpreter v70380465518 :=
  cost_cut false 1 (by decide)

private def v70380621038 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v70380621038 : ¬ MinimalInterpreter v70380621038 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v70380620654 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v70380620654 : ¬ MinimalInterpreter v70380620654 :=
  cost_cut false 1 (by decide)

private def v70381210862 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v70381210862 : ¬ MinimalInterpreter v70381210862 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v70381210478 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v70381210478 : ¬ MinimalInterpreter v70381210478 :=
  cost_cut false 1 (by decide)

theorem row295 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [0,0,1,2]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [0,0,1,2] = [v70380473582,v70380473198,v70380467438,v70380467054,v70380465518,v70380621038,v70380620654,v70381210862,v70381210478] := by decide
  rw [h]
  exact (.cons (no_v70380473582) (.cons (no_v70380473198) (.cons (no_v70380467438) (.cons (no_v70380467054) (.cons (no_v70380465518) (.cons (no_v70380621038) (.cons (no_v70380620654) (.cons (no_v70381210862) (.cons (no_v70381210478) .nil)))))))))

private def v70380473590 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v70380473590 : ¬ MinimalInterpreter v70380473590 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70380473206 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v70380473206 : ¬ MinimalInterpreter v70380473206 :=
  cost_cut false 1 (by decide)

private def v70380467446 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v70380467446 : ¬ MinimalInterpreter v70380467446 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70380467062 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v70380467062 : ¬ MinimalInterpreter v70380467062 :=
  cost_cut false 1 (by decide)

private def v70380465526 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v70380465526 : ¬ MinimalInterpreter v70380465526 :=
  cost_cut false 1 (by decide)

private def v70380621046 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v70380621046 : ¬ MinimalInterpreter v70380621046 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v70380620662 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v70380620662 : ¬ MinimalInterpreter v70380620662 :=
  cost_cut false 1 (by decide)

private def v70381210870 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v70381210870 : ¬ MinimalInterpreter v70381210870 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v70381210486 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v70381210486 : ¬ MinimalInterpreter v70381210486 :=
  cost_cut false 1 (by decide)

theorem row296 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [0,0,2,1]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [0,0,2,1] = [v70380473590,v70380473206,v70380467446,v70380467062,v70380465526,v70380621046,v70380620662,v70381210870,v70381210486] := by decide
  rw [h]
  exact (.cons (no_v70380473590) (.cons (no_v70380473206) (.cons (no_v70380467446) (.cons (no_v70380467062) (.cons (no_v70380465526) (.cons (no_v70380621046) (.cons (no_v70380620662) (.cons (no_v70381210870) (.cons (no_v70381210486) .nil)))))))))

private def v70380473966 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v70380473966 : ¬ MinimalInterpreter v70380473966 :=
  cost_cut false 1 (by decide)

private def v70380473262 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v70380473262 : ¬ MinimalInterpreter v70380473262 :=
  cost_cut false 1 (by decide)

private def v70380467822 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v70380467822 : ¬ MinimalInterpreter v70380467822 :=
  cost_cut false 1 (by decide)

private def v70380467118 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v70380467118 : ¬ MinimalInterpreter v70380467118 :=
  cost_cut false 1 (by decide)

private def v70380465582 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v70380465582 : ¬ MinimalInterpreter v70380465582 :=
  cost_cut false 1 (by decide)

private def v70380621422 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v70380621422 : ¬ MinimalInterpreter v70380621422 :=
  cost_cut false 1 (by decide)

private def v70380620718 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v70380620718 : ¬ MinimalInterpreter v70380620718 :=
  cost_cut false 1 (by decide)

private def v70381211246 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v70381211246 : ¬ MinimalInterpreter v70381211246 :=
  cost_cut false 1 (by decide)

private def v70381210542 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v70381210542 : ¬ MinimalInterpreter v70381210542 :=
  cost_cut false 1 (by decide)

theorem row297 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [0,1,0,2]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [0,1,0,2] = [v70380473966,v70380473262,v70380467822,v70380467118,v70380465582,v70380621422,v70380620718,v70381211246,v70381210542] := by decide
  rw [h]
  exact (.cons (no_v70380473966) (.cons (no_v70380473262) (.cons (no_v70380467822) (.cons (no_v70380467118) (.cons (no_v70380465582) (.cons (no_v70380621422) (.cons (no_v70380620718) (.cons (no_v70381211246) (.cons (no_v70381210542) .nil)))))))))

theorem row298 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [0,1,1,1]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [0,1,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v70380473978 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v70380473978 : ¬ MinimalInterpreter v70380473978 :=
  cost_cut false 1 (by decide)

private def v70380473274 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v70380473274 : ¬ MinimalInterpreter v70380473274 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70380467834 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v70380467834 : ¬ MinimalInterpreter v70380467834 :=
  cost_cut false 1 (by decide)

private def v70380467130 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v70380467130 : ¬ MinimalInterpreter v70380467130 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70380465594 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v70380465594 : ¬ MinimalInterpreter v70380465594 :=
  cost_cut false 1 (by decide)

private def v70380621434 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v70380621434 : ¬ MinimalInterpreter v70380621434 :=
  cost_cut false 1 (by decide)

private def v70380620730 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v70380620730 : ¬ MinimalInterpreter v70380620730 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v70381211258 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v70381211258 : ¬ MinimalInterpreter v70381211258 :=
  cost_cut false 1 (by decide)

private def v70381210554 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v70381210554 : ¬ MinimalInterpreter v70381210554 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem row299 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [0,1,2,0]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [0,1,2,0] = [v70380473978,v70380473274,v70380467834,v70380467130,v70380465594,v70380621434,v70380620730,v70381211258,v70381210554] := by decide
  rw [h]
  exact (.cons (no_v70380473978) (.cons (no_v70380473274) (.cons (no_v70380467834) (.cons (no_v70380467130) (.cons (no_v70380465594) (.cons (no_v70380621434) (.cons (no_v70380620730) (.cons (no_v70381211258) (.cons (no_v70381210554) .nil)))))))))

end Blc.SelfintSingleObject.Rows38
