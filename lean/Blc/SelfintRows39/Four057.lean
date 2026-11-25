import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690684665654 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v690684665654 : ¬ MinimalInterpreter v690684665654 :=
  cost_cut false 1 (by decide)
private def v690684663766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v690684663766 : ¬ MinimalInterpreter v690684663766 :=
  cost_cut false 1 (by decide)
private def v690684620598 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 1))))))))
private theorem no_v690684620598 : ¬ MinimalInterpreter v690684620598 :=
  cost_cut false 1 (by decide)
private def v690684618710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 1)))))))
private theorem no_v690684618710 : ¬ MinimalInterpreter v690684618710 :=
  cost_cut false 1 (by decide)
private def v690684607446 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 1)))))))
private theorem no_v690684607446 : ¬ MinimalInterpreter v690684607446 :=
  cost_cut false 1 (by decide)
private def v690685185846 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))
private theorem no_v690685185846 : ¬ MinimalInterpreter v690685185846 :=
  cost_cut false 1 (by decide)
private def v690685141974 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 1))))))
private theorem no_v690685141974 : ¬ MinimalInterpreter v690685141974 :=
  cost_cut false 1 (by decide)
private def v690688106294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v690688106294 : ¬ MinimalInterpreter v690688106294 :=
  cost_cut false 1 (by decide)
private def v690688104406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v690688104406 : ¬ MinimalInterpreter v690688104406 :=
  cost_cut false 1 (by decide)
theorem row342 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [1,3,0,1]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [1,3,0,1] = [v690684665654,v690684663766,v690684620598,v690684618710,v690684607446,v690685185846,v690685141974,v690688106294,v690688104406] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684665654) (.cons (no_v690684663766) (.cons (no_v690684620598) (.cons (no_v690684618710) (.cons (no_v690684607446) (.cons (no_v690685185846) (.cons (no_v690685141974) (.cons (no_v690688106294) (.cons (no_v690688104406) .nil)))))))))

private def v690684665658 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v690684665658 : ¬ MinimalInterpreter v690684665658 :=
  cost_cut false 1 (by decide)
private def v690684663770 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v690684663770 : ¬ MinimalInterpreter v690684663770 :=
  cost_cut false 1 (by decide)
private def v690684620602 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.var 0))))))))
private theorem no_v690684620602 : ¬ MinimalInterpreter v690684620602 :=
  cost_cut false 1 (by decide)
private def v690684618714 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 0)))))))
private theorem no_v690684618714 : ¬ MinimalInterpreter v690684618714 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 2) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v690684607450 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 0)))))))
private theorem no_v690684607450 : ¬ MinimalInterpreter v690684607450 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v690685185850 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))
private theorem no_v690685185850 : ¬ MinimalInterpreter v690685185850 :=
  cost_cut false 1 (by decide)
private def v690685183962 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 1)))) (.var 0))))))
private theorem no_v690685183962 : ¬ MinimalInterpreter v690685183962 :=
  cost_cut false 1 (by decide)
private def v690685141978 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 1)) (.var 0))))))
private theorem no_v690685141978 : ¬ MinimalInterpreter v690685141978 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 1)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v690688106298 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v690688106298 : ¬ MinimalInterpreter v690688106298 :=
  cost_cut false 1 (by decide)
private def v690688104410 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v690688104410 : ¬ MinimalInterpreter v690688104410 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
theorem row343 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [1,3,1,0]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [1,3,1,0] = [v690684665658,v690684663770,v690684620602,v690684618714,v690684607450,v690685185850,v690685183962,v690685141978,v690688106298,v690688104410] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684665658) (.cons (no_v690684663770) (.cons (no_v690684620602) (.cons (no_v690684618714) (.cons (no_v690684607450) (.cons (no_v690685185850) (.cons (no_v690685183962) (.cons (no_v690685141978) (.cons (no_v690688106298) (.cons (no_v690688104410) .nil))))))))))

private def v690684677342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 3)))))))))
private theorem no_v690684677342 : ¬ MinimalInterpreter v690684677342 :=
  cost_cut false 1 (by decide)
private def v690684676958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 3))))))))
private theorem no_v690684676958 : ¬ MinimalInterpreter v690684676958 :=
  cost_cut false 1 (by decide)
private def v690684622046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 3))))))))
private theorem no_v690684622046 : ¬ MinimalInterpreter v690684622046 :=
  cost_cut false 1 (by decide)
private def v690684621662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 3)))))))
private theorem no_v690684621662 : ¬ MinimalInterpreter v690684621662 :=
  cost_cut false 1 (by decide)
private def v690684607838 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 3)))))))
private theorem no_v690684607838 : ¬ MinimalInterpreter v690684607838 :=
  cost_cut false 1 (by decide)
theorem row344 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [2,0,0,3]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [2,0,0,3] = [v690684677342,v690684676958,v690684622046,v690684621662,v690684607838] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684677342) (.cons (no_v690684676958) (.cons (no_v690684622046) (.cons (no_v690684621662) (.cons (no_v690684607838) .nil)))))

private def v690684677358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v690684677358 : ¬ MinimalInterpreter v690684677358 :=
  cost_cut false 1 (by decide)
private def v690684676974 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v690684676974 : ¬ MinimalInterpreter v690684676974 :=
  cost_cut false 1 (by decide)
private def v690684622062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v690684622062 : ¬ MinimalInterpreter v690684622062 :=
  cost_cut false 1 (by decide)
private def v690684621678 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v690684621678 : ¬ MinimalInterpreter v690684621678 :=
  cost_cut false 1 (by decide)
private def v690684607854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v690684607854 : ¬ MinimalInterpreter v690684607854 :=
  cost_cut false 1 (by decide)
private def v690685423854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v690685423854 : ¬ MinimalInterpreter v690685423854 :=
  cost_cut false 1 (by decide)
private def v690685424526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))))
private theorem no_v690685424526 : ¬ MinimalInterpreter v690685424526 :=
  cost_cut false 1 (by decide)
private def v690685422990 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))))
private theorem no_v690685422990 : ¬ MinimalInterpreter v690685422990 :=
  cost_cut false 1 (by decide)
private def v690685202670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v690685202670 : ¬ MinimalInterpreter v690685202670 :=
  cost_cut false 1 (by decide)
private def v690685203342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 2))))))))
private theorem no_v690685203342 : ¬ MinimalInterpreter v690685203342 :=
  cost_cut false 1 (by decide)
private def v690685201806 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 2)))))))
private theorem no_v690685201806 : ¬ MinimalInterpreter v690685201806 :=
  cost_cut false 1 (by decide)
private def v690685146510 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 2)))))))
private theorem no_v690685146510 : ¬ MinimalInterpreter v690685146510 :=
  cost_cut false 1 (by decide)
theorem row345 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [2,0,1,2]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [2,0,1,2] = [v690684677358,v690684676974,v690684622062,v690684621678,v690684607854,v690685423854,v690685424526,v690685422990,v690685202670,v690685203342,v690685201806,v690685146510] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684677358) (.cons (no_v690684676974) (.cons (no_v690684622062) (.cons (no_v690684621678) (.cons (no_v690684607854) (.cons (no_v690685423854) (.cons (no_v690685424526) (.cons (no_v690685422990) (.cons (no_v690685202670) (.cons (no_v690685203342) (.cons (no_v690685201806) (.cons (no_v690685146510) .nil))))))))))))

private def v690684677366 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v690684677366 : ¬ MinimalInterpreter v690684677366 :=
  cost_cut false 1 (by decide)
private def v690684676982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v690684676982 : ¬ MinimalInterpreter v690684676982 :=
  cost_cut false 1 (by decide)
private def v690684622070 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v690684622070 : ¬ MinimalInterpreter v690684622070 :=
  cost_cut false 1 (by decide)
private def v690684621686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v690684621686 : ¬ MinimalInterpreter v690684621686 :=
  cost_cut false 1 (by decide)
private def v690684607862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v690684607862 : ¬ MinimalInterpreter v690684607862 :=
  cost_cut false 1 (by decide)
private def v690685423862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v690685423862 : ¬ MinimalInterpreter v690685423862 :=
  cost_cut false 1 (by decide)
private def v690685422710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))))
private theorem no_v690685422710 : ¬ MinimalInterpreter v690685422710 :=
  cost_cut false 1 (by decide)
private def v690685202678 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v690685202678 : ¬ MinimalInterpreter v690685202678 :=
  cost_cut false 1 (by decide)
private def v690685201526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 1))))))
private theorem no_v690685201526 : ¬ MinimalInterpreter v690685201526 :=
  cost_cut false 1 (by decide)
private def v690685146230 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 1))))))
private theorem no_v690685146230 : ¬ MinimalInterpreter v690685146230 :=
  cost_cut false 1 (by decide)
theorem row346 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [2,0,2,1]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [2,0,2,1] = [v690684677366,v690684676982,v690684622070,v690684621686,v690684607862,v690685423862,v690685422710,v690685202678,v690685201526,v690685146230] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684677366) (.cons (no_v690684676982) (.cons (no_v690684622070) (.cons (no_v690684621686) (.cons (no_v690684607862) (.cons (no_v690685423862) (.cons (no_v690685422710) (.cons (no_v690685202678) (.cons (no_v690685201526) (.cons (no_v690685146230) .nil))))))))))

private def v690684677370 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 3) (.var 0)))))))))
private theorem no_v690684677370 : ¬ MinimalInterpreter v690684677370 :=
  cost_cut false 1 (by decide)
private def v690684676986 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 3)) (.var 0))))))))
private theorem no_v690684676986 : ¬ MinimalInterpreter v690684676986 :=
  cost_cut false 1 (by decide)
private def v690684622074 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 3) (.var 0))))))))
private theorem no_v690684622074 : ¬ MinimalInterpreter v690684622074 :=
  cost_cut false 1 (by decide)
private def v690684621690 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 3))) (.var 0)))))))
private theorem no_v690684621690 : ¬ MinimalInterpreter v690684621690 :=
  cost_cut false 1 (by decide)
private def v690684607866 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 3)) (.var 0)))))))
private theorem no_v690684607866 : ¬ MinimalInterpreter v690684607866 :=
  cost_cut false 1 (by decide)
theorem row347 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [2,0,3,0]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [2,0,3,0] = [v690684677370,v690684676986,v690684622074,v690684621690,v690684607866] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684677370) (.cons (no_v690684676986) (.cons (no_v690684622074) (.cons (no_v690684621690) (.cons (no_v690684607866) .nil)))))

end Blc.SelfintSingleObject.Rows39
