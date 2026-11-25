import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row90 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [0,0,0,3]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [0,0,0,3] = [] := by decide
  rw [h]
  exact .nil

private def v37849451758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v37849451758 : ¬ MinimalInterpreter v37849451758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v37849451374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v37849451374 : ¬ MinimalInterpreter v37849451374 :=
  cost_cut false 2 (by decide)

private def v37849445614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v37849445614 : ¬ MinimalInterpreter v37849445614 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v37849445230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v37849445230 : ¬ MinimalInterpreter v37849445230 :=
  cost_cut false 2 (by decide)

private def v37849443694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v37849443694 : ¬ MinimalInterpreter v37849443694 :=
  cost_cut false 2 (by decide)

private def v37849599214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v37849599214 : ¬ MinimalInterpreter v37849599214 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v37849598830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v37849598830 : ¬ MinimalInterpreter v37849598830 :=
  cost_cut false 2 (by decide)

private def v37850189038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v37850189038 : ¬ MinimalInterpreter v37850189038 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v37850188654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v37850188654 : ¬ MinimalInterpreter v37850188654 :=
  cost_cut false 2 (by decide)

theorem row91 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [0,0,1,2]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [0,0,1,2] = [v37849451758,v37849451374,v37849445614,v37849445230,v37849443694,v37849599214,v37849598830,v37850189038,v37850188654] := by decide
  rw [h]
  exact (.cons (no_v37849451758) (.cons (no_v37849451374) (.cons (no_v37849445614) (.cons (no_v37849445230) (.cons (no_v37849443694) (.cons (no_v37849599214) (.cons (no_v37849598830) (.cons (no_v37850189038) (.cons (no_v37850188654) .nil)))))))))

private def v37849451766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v37849451766 : ¬ MinimalInterpreter v37849451766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v37849451382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v37849451382 : ¬ MinimalInterpreter v37849451382 :=
  cost_cut false 2 (by decide)

private def v37849445622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v37849445622 : ¬ MinimalInterpreter v37849445622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v37849445238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v37849445238 : ¬ MinimalInterpreter v37849445238 :=
  cost_cut false 2 (by decide)

private def v37849443702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v37849443702 : ¬ MinimalInterpreter v37849443702 :=
  cost_cut false 2 (by decide)

private def v37849599222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v37849599222 : ¬ MinimalInterpreter v37849599222 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v37849598838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v37849598838 : ¬ MinimalInterpreter v37849598838 :=
  cost_cut false 2 (by decide)

private def v37850189046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v37850189046 : ¬ MinimalInterpreter v37850189046 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v37850188662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v37850188662 : ¬ MinimalInterpreter v37850188662 :=
  cost_cut false 2 (by decide)

theorem row92 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [0,0,2,1]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [0,0,2,1] = [v37849451766,v37849451382,v37849445622,v37849445238,v37849443702,v37849599222,v37849598838,v37850189046,v37850188662] := by decide
  rw [h]
  exact (.cons (no_v37849451766) (.cons (no_v37849451382) (.cons (no_v37849445622) (.cons (no_v37849445238) (.cons (no_v37849443702) (.cons (no_v37849599222) (.cons (no_v37849598838) (.cons (no_v37850189046) (.cons (no_v37850188662) .nil)))))))))

theorem row93 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [0,0,3,0]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [0,0,3,0] = [] := by decide
  rw [h]
  exact .nil

private def v37849452142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v37849452142 : ¬ MinimalInterpreter v37849452142 :=
  cost_cut false 2 (by decide)

private def v37849451438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v37849451438 : ¬ MinimalInterpreter v37849451438 :=
  cost_cut false 2 (by decide)

private def v37849445998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v37849445998 : ¬ MinimalInterpreter v37849445998 :=
  cost_cut false 2 (by decide)

private def v37849445294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v37849445294 : ¬ MinimalInterpreter v37849445294 :=
  cost_cut false 2 (by decide)

private def v37849443758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v37849443758 : ¬ MinimalInterpreter v37849443758 :=
  cost_cut false 2 (by decide)

private def v37849599598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v37849599598 : ¬ MinimalInterpreter v37849599598 :=
  cost_cut false 2 (by decide)

private def v37849598894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v37849598894 : ¬ MinimalInterpreter v37849598894 :=
  cost_cut false 2 (by decide)

private def v37850189422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v37850189422 : ¬ MinimalInterpreter v37850189422 :=
  cost_cut false 2 (by decide)

private def v37850188718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v37850188718 : ¬ MinimalInterpreter v37850188718 :=
  cost_cut false 2 (by decide)

theorem row94 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [0,1,0,2]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [0,1,0,2] = [v37849452142,v37849451438,v37849445998,v37849445294,v37849443758,v37849599598,v37849598894,v37850189422,v37850188718] := by decide
  rw [h]
  exact (.cons (no_v37849452142) (.cons (no_v37849451438) (.cons (no_v37849445998) (.cons (no_v37849445294) (.cons (no_v37849443758) (.cons (no_v37849599598) (.cons (no_v37849598894) (.cons (no_v37850189422) (.cons (no_v37850188718) .nil)))))))))

theorem row95 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [0,1,1,1]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [0,1,1,1] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows37
