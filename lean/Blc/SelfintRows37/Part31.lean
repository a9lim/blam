import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v35232206458 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v35232206458 : ¬ MinimalInterpreter v35232206458 :=
  cost_cut false 1 (by decide)

private def v35232205754 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v35232205754 : ¬ MinimalInterpreter v35232205754 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v35232200314 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v35232200314 : ¬ MinimalInterpreter v35232200314 :=
  cost_cut false 1 (by decide)

private def v35232199610 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v35232199610 : ¬ MinimalInterpreter v35232199610 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v35232198074 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v35232198074 : ¬ MinimalInterpreter v35232198074 :=
  cost_cut false 1 (by decide)

private def v35232353914 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v35232353914 : ¬ MinimalInterpreter v35232353914 :=
  cost_cut false 1 (by decide)

private def v35232353210 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v35232353210 : ¬ MinimalInterpreter v35232353210 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v35232943738 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v35232943738 : ¬ MinimalInterpreter v35232943738 :=
  cost_cut false 1 (by decide)

private def v35232943034 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v35232943034 : ¬ MinimalInterpreter v35232943034 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem row186 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [0,1,2,0]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [0,1,2,0] = [v35232206458,v35232205754,v35232200314,v35232199610,v35232198074,v35232353914,v35232353210,v35232943738,v35232943034] := by decide
  rw [h]
  exact (.cons (no_v35232206458) (.cons (no_v35232205754) (.cons (no_v35232200314) (.cons (no_v35232199610) (.cons (no_v35232198074) (.cons (no_v35232353914) (.cons (no_v35232353210) (.cons (no_v35232943738) (.cons (no_v35232943034) .nil)))))))))

private def v35232206646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v35232206646 : ¬ MinimalInterpreter v35232206646 :=
  cost_cut false 1 (by decide)

private def v35232205782 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v35232205782 : ¬ MinimalInterpreter v35232205782 :=
  cost_cut false 1 (by decide)

private def v35232200502 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v35232200502 : ¬ MinimalInterpreter v35232200502 :=
  cost_cut false 1 (by decide)

private def v35232199638 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v35232199638 : ¬ MinimalInterpreter v35232199638 :=
  cost_cut false 1 (by decide)

private def v35232198102 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v35232198102 : ¬ MinimalInterpreter v35232198102 :=
  cost_cut false 1 (by decide)

private def v35232354102 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v35232354102 : ¬ MinimalInterpreter v35232354102 :=
  cost_cut false 1 (by decide)

private def v35232353238 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v35232353238 : ¬ MinimalInterpreter v35232353238 :=
  cost_cut false 1 (by decide)

private def v35232943926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v35232943926 : ¬ MinimalInterpreter v35232943926 :=
  cost_cut false 1 (by decide)

private def v35232943062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v35232943062 : ¬ MinimalInterpreter v35232943062 :=
  cost_cut false 1 (by decide)

theorem row187 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [0,2,0,1]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [0,2,0,1] = [v35232206646,v35232205782,v35232200502,v35232199638,v35232198102,v35232354102,v35232353238,v35232943926,v35232943062] := by decide
  rw [h]
  exact (.cons (no_v35232206646) (.cons (no_v35232205782) (.cons (no_v35232200502) (.cons (no_v35232199638) (.cons (no_v35232198102) (.cons (no_v35232354102) (.cons (no_v35232353238) (.cons (no_v35232943926) (.cons (no_v35232943062) .nil)))))))))

private def v35232206650 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v35232206650 : ¬ MinimalInterpreter v35232206650 :=
  cost_cut false 1 (by decide)

private def v35232205786 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v35232205786 : ¬ MinimalInterpreter v35232205786 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v35232200506 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v35232200506 : ¬ MinimalInterpreter v35232200506 :=
  cost_cut false 1 (by decide)

private def v35232199642 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v35232199642 : ¬ MinimalInterpreter v35232199642 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v35232198106 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v35232198106 : ¬ MinimalInterpreter v35232198106 :=
  cost_cut false 1 (by decide)

private def v35232354106 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v35232354106 : ¬ MinimalInterpreter v35232354106 :=
  cost_cut false 1 (by decide)

private def v35232353242 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v35232353242 : ¬ MinimalInterpreter v35232353242 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v35232943930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v35232943930 : ¬ MinimalInterpreter v35232943930 :=
  cost_cut false 1 (by decide)

private def v35232943066 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v35232943066 : ¬ MinimalInterpreter v35232943066 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem row188 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [0,2,1,0]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [0,2,1,0] = [v35232206650,v35232205786,v35232200506,v35232199642,v35232198106,v35232354106,v35232353242,v35232943930,v35232943066] := by decide
  rw [h]
  exact (.cons (no_v35232206650) (.cons (no_v35232205786) (.cons (no_v35232200506) (.cons (no_v35232199642) (.cons (no_v35232198106) (.cons (no_v35232354106) (.cons (no_v35232353242) (.cons (no_v35232943930) (.cons (no_v35232943066) .nil)))))))))

theorem row189 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [0,3,0,0]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [0,3,0,0] = [] := by decide
  rw [h]
  exact .nil

private def v35232212590 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v35232212590 : ¬ MinimalInterpreter v35232212590 :=
  cost_cut false 1 (by decide)

private def v35232212398 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v35232212398 : ¬ MinimalInterpreter v35232212398 :=
  cost_cut false 1 (by decide)

private def v35232201326 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v35232201326 : ¬ MinimalInterpreter v35232201326 :=
  cost_cut false 1 (by decide)

private def v35232201134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v35232201134 : ¬ MinimalInterpreter v35232201134 :=
  cost_cut false 1 (by decide)

private def v35232198318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v35232198318 : ¬ MinimalInterpreter v35232198318 :=
  cost_cut false 1 (by decide)

theorem row190 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [1,0,0,2]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [1,0,0,2] = [v35232212590,v35232212398,v35232201326,v35232201134,v35232198318] := by decide
  rw [h]
  exact (.cons (no_v35232212590) (.cons (no_v35232212398) (.cons (no_v35232201326) (.cons (no_v35232201134) (.cons (no_v35232198318) .nil)))))

theorem row191 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [1,0,1,1]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [1,0,1,1] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows37
