import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row540 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [1,0,1,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v688184682106 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v688184682106 : ¬ MinimalInterpreter v688184682106 :=
  cost_cut false 1 (by decide)
private def v688184681914 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v688184681914 : ¬ MinimalInterpreter v688184681914 :=
  cost_cut false 1 (by decide)
private def v688184670842 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v688184670842 : ¬ MinimalInterpreter v688184670842 :=
  cost_cut false 1 (by decide)
private def v688184670650 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v688184670650 : ¬ MinimalInterpreter v688184670650 :=
  cost_cut false 1 (by decide)
private def v688184667834 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v688184667834 : ¬ MinimalInterpreter v688184667834 :=
  cost_cut false 1 (by decide)
theorem row541 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [1,0,2,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [1,0,2,0] = [v688184682106,v688184681914,v688184670842,v688184670650,v688184667834] := by decide +kernel
  rw [h]
  exact (.cons (no_v688184682106) (.cons (no_v688184681914) (.cons (no_v688184670842) (.cons (no_v688184670650) (.cons (no_v688184667834) .nil)))))

theorem row542 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [1,1,0,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row543 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [1,1,1,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v688184682394 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v688184682394 : ¬ MinimalInterpreter v688184682394 :=
  cost_cut false 1 (by decide)
private def v688184681962 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v688184681962 : ¬ MinimalInterpreter v688184681962 :=
  cost_cut false 1 (by decide)
private def v688184671130 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v688184671130 : ¬ MinimalInterpreter v688184671130 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688184670698 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v688184670698 : ¬ MinimalInterpreter v688184670698 :=
  cost_cut false 1 (by decide)
private def v688184667882 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v688184667882 : ¬ MinimalInterpreter v688184667882 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row544 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [1,2,0,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [1,2,0,0] = [v688184682394,v688184681962,v688184671130,v688184670698,v688184667882] := by decide +kernel
  rw [h]
  exact (.cons (no_v688184682394) (.cons (no_v688184681962) (.cons (no_v688184671130) (.cons (no_v688184670698) (.cons (no_v688184667882) .nil)))))

private def v688184685366 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v688184685366 : ¬ MinimalInterpreter v688184685366 :=
  cost_cut false 1 (by decide)
private def v688184685270 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v688184685270 : ¬ MinimalInterpreter v688184685270 :=
  cost_cut false 1 (by decide)
private def v688184671542 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v688184671542 : ¬ MinimalInterpreter v688184671542 :=
  cost_cut false 1 (by decide)
private def v688184671446 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v688184671446 : ¬ MinimalInterpreter v688184671446 :=
  cost_cut false 1 (by decide)
private def v688184667990 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v688184667990 : ¬ MinimalInterpreter v688184667990 :=
  cost_cut false 1 (by decide)
theorem row545 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [2,0,0,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [2,0,0,1] = [v688184685366,v688184685270,v688184671542,v688184671446,v688184667990] := by decide +kernel
  rw [h]
  exact (.cons (no_v688184685366) (.cons (no_v688184685270) (.cons (no_v688184671542) (.cons (no_v688184671446) (.cons (no_v688184667990) .nil)))))

end Blc.SelfintSingleObject.Rows39
