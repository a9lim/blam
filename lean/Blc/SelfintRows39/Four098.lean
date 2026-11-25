import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v687412924026 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v687412924026 : ¬ MinimalInterpreter v687412924026 :=
  cost_cut false 1 (by decide)
private def v687412923322 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v687412923322 : ¬ MinimalInterpreter v687412923322 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v687412917882 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v687412917882 : ¬ MinimalInterpreter v687412917882 :=
  cost_cut false 1 (by decide)
private def v687412917178 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v687412917178 : ¬ MinimalInterpreter v687412917178 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v687412915642 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v687412915642 : ¬ MinimalInterpreter v687412915642 :=
  cost_cut false 1 (by decide)
private def v687413071482 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v687413071482 : ¬ MinimalInterpreter v687413071482 :=
  cost_cut false 1 (by decide)
private def v687413070778 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v687413070778 : ¬ MinimalInterpreter v687413070778 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v687413661306 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v687413661306 : ¬ MinimalInterpreter v687413661306 :=
  cost_cut false 1 (by decide)
private def v687413660602 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v687413660602 : ¬ MinimalInterpreter v687413660602 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row588 : BadRow (row ⟨3,2,0,2,4,3⟩ [0,0] [0,1,2,0]) := by
  have h : row ⟨3,2,0,2,4,3⟩ [0,0] [0,1,2,0] = [v687412924026,v687412923322,v687412917882,v687412917178,v687412915642,v687413071482,v687413070778,v687413661306,v687413660602] := by decide +kernel
  rw [h]
  exact (.cons (no_v687412924026) (.cons (no_v687412923322) (.cons (no_v687412917882) (.cons (no_v687412917178) (.cons (no_v687412915642) (.cons (no_v687413071482) (.cons (no_v687413070778) (.cons (no_v687413661306) (.cons (no_v687413660602) .nil)))))))))

private def v687412924214 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v687412924214 : ¬ MinimalInterpreter v687412924214 :=
  cost_cut false 1 (by decide)
private def v687412923350 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v687412923350 : ¬ MinimalInterpreter v687412923350 :=
  cost_cut false 1 (by decide)
private def v687412918070 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v687412918070 : ¬ MinimalInterpreter v687412918070 :=
  cost_cut false 1 (by decide)
private def v687412917206 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v687412917206 : ¬ MinimalInterpreter v687412917206 :=
  cost_cut false 1 (by decide)
private def v687412915670 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v687412915670 : ¬ MinimalInterpreter v687412915670 :=
  cost_cut false 1 (by decide)
private def v687413071670 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v687413071670 : ¬ MinimalInterpreter v687413071670 :=
  cost_cut false 1 (by decide)
private def v687413070806 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v687413070806 : ¬ MinimalInterpreter v687413070806 :=
  cost_cut false 1 (by decide)
private def v687413661494 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v687413661494 : ¬ MinimalInterpreter v687413661494 :=
  cost_cut false 1 (by decide)
private def v687413660630 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v687413660630 : ¬ MinimalInterpreter v687413660630 :=
  cost_cut false 1 (by decide)
theorem row589 : BadRow (row ⟨3,2,0,2,4,3⟩ [0,0] [0,2,0,1]) := by
  have h : row ⟨3,2,0,2,4,3⟩ [0,0] [0,2,0,1] = [v687412924214,v687412923350,v687412918070,v687412917206,v687412915670,v687413071670,v687413070806,v687413661494,v687413660630] := by decide +kernel
  rw [h]
  exact (.cons (no_v687412924214) (.cons (no_v687412923350) (.cons (no_v687412918070) (.cons (no_v687412917206) (.cons (no_v687412915670) (.cons (no_v687413071670) (.cons (no_v687413070806) (.cons (no_v687413661494) (.cons (no_v687413660630) .nil)))))))))

private def v687412924218 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v687412924218 : ¬ MinimalInterpreter v687412924218 :=
  cost_cut false 1 (by decide)
private def v687412923354 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v687412923354 : ¬ MinimalInterpreter v687412923354 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v687412918074 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v687412918074 : ¬ MinimalInterpreter v687412918074 :=
  cost_cut false 1 (by decide)
private def v687412917210 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v687412917210 : ¬ MinimalInterpreter v687412917210 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v687412915674 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v687412915674 : ¬ MinimalInterpreter v687412915674 :=
  cost_cut false 1 (by decide)
private def v687413071674 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v687413071674 : ¬ MinimalInterpreter v687413071674 :=
  cost_cut false 1 (by decide)
private def v687413070810 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v687413070810 : ¬ MinimalInterpreter v687413070810 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v687413661498 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v687413661498 : ¬ MinimalInterpreter v687413661498 :=
  cost_cut false 1 (by decide)
private def v687413660634 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v687413660634 : ¬ MinimalInterpreter v687413660634 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row590 : BadRow (row ⟨3,2,0,2,4,3⟩ [0,0] [0,2,1,0]) := by
  have h : row ⟨3,2,0,2,4,3⟩ [0,0] [0,2,1,0] = [v687412924218,v687412923354,v687412918074,v687412917210,v687412915674,v687413071674,v687413070810,v687413661498,v687413660634] := by decide +kernel
  rw [h]
  exact (.cons (no_v687412924218) (.cons (no_v687412923354) (.cons (no_v687412918074) (.cons (no_v687412917210) (.cons (no_v687412915674) (.cons (no_v687413071674) (.cons (no_v687413070810) (.cons (no_v687413661498) (.cons (no_v687413660634) .nil)))))))))

private def v687412930158 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v687412930158 : ¬ MinimalInterpreter v687412930158 :=
  cost_cut false 1 (by decide)
private def v687412929966 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v687412929966 : ¬ MinimalInterpreter v687412929966 :=
  cost_cut false 1 (by decide)
private def v687412918894 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v687412918894 : ¬ MinimalInterpreter v687412918894 :=
  cost_cut false 1 (by decide)
private def v687412918702 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v687412918702 : ¬ MinimalInterpreter v687412918702 :=
  cost_cut false 1 (by decide)
private def v687412915886 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v687412915886 : ¬ MinimalInterpreter v687412915886 :=
  cost_cut false 1 (by decide)
theorem row591 : BadRow (row ⟨3,2,0,2,4,3⟩ [0,0] [1,0,0,2]) := by
  have h : row ⟨3,2,0,2,4,3⟩ [0,0] [1,0,0,2] = [v687412930158,v687412929966,v687412918894,v687412918702,v687412915886] := by decide +kernel
  rw [h]
  exact (.cons (no_v687412930158) (.cons (no_v687412929966) (.cons (no_v687412918894) (.cons (no_v687412918702) (.cons (no_v687412915886) .nil)))))

theorem row592 : BadRow (row ⟨3,2,0,2,4,3⟩ [0,0] [1,0,1,1]) := by
  have h : row ⟨3,2,0,2,4,3⟩ [0,0] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v687412930170 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v687412930170 : ¬ MinimalInterpreter v687412930170 :=
  cost_cut false 1 (by decide)
private def v687412929978 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v687412929978 : ¬ MinimalInterpreter v687412929978 :=
  cost_cut false 1 (by decide)
private def v687412918906 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v687412918906 : ¬ MinimalInterpreter v687412918906 :=
  cost_cut false 1 (by decide)
private def v687412918714 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v687412918714 : ¬ MinimalInterpreter v687412918714 :=
  cost_cut false 1 (by decide)
private def v687412915898 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v687412915898 : ¬ MinimalInterpreter v687412915898 :=
  cost_cut false 1 (by decide)
theorem row593 : BadRow (row ⟨3,2,0,2,4,3⟩ [0,0] [1,0,2,0]) := by
  have h : row ⟨3,2,0,2,4,3⟩ [0,0] [1,0,2,0] = [v687412930170,v687412929978,v687412918906,v687412918714,v687412915898] := by decide +kernel
  rw [h]
  exact (.cons (no_v687412930170) (.cons (no_v687412929978) (.cons (no_v687412918906) (.cons (no_v687412918714) (.cons (no_v687412915898) .nil)))))

end Blc.SelfintSingleObject.Rows39
