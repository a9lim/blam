import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row180 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [0,0,0,3]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [0,0,0,3] = [] := by decide
  rw [h]
  exact .nil

private def v35232206062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v35232206062 : ¬ MinimalInterpreter v35232206062 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v35232205678 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v35232205678 : ¬ MinimalInterpreter v35232205678 :=
  cost_cut false 1 (by decide)

private def v35232199918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v35232199918 : ¬ MinimalInterpreter v35232199918 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v35232199534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v35232199534 : ¬ MinimalInterpreter v35232199534 :=
  cost_cut false 1 (by decide)

private def v35232197998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v35232197998 : ¬ MinimalInterpreter v35232197998 :=
  cost_cut false 1 (by decide)

private def v35232353518 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v35232353518 : ¬ MinimalInterpreter v35232353518 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v35232353134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v35232353134 : ¬ MinimalInterpreter v35232353134 :=
  cost_cut false 1 (by decide)

private def v35232943342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v35232943342 : ¬ MinimalInterpreter v35232943342 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v35232942958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v35232942958 : ¬ MinimalInterpreter v35232942958 :=
  cost_cut false 1 (by decide)

theorem row181 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [0,0,1,2]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [0,0,1,2] = [v35232206062,v35232205678,v35232199918,v35232199534,v35232197998,v35232353518,v35232353134,v35232943342,v35232942958] := by decide
  rw [h]
  exact (.cons (no_v35232206062) (.cons (no_v35232205678) (.cons (no_v35232199918) (.cons (no_v35232199534) (.cons (no_v35232197998) (.cons (no_v35232353518) (.cons (no_v35232353134) (.cons (no_v35232943342) (.cons (no_v35232942958) .nil)))))))))

private def v35232206070 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v35232206070 : ¬ MinimalInterpreter v35232206070 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v35232205686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v35232205686 : ¬ MinimalInterpreter v35232205686 :=
  cost_cut false 1 (by decide)

private def v35232199926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v35232199926 : ¬ MinimalInterpreter v35232199926 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v35232199542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v35232199542 : ¬ MinimalInterpreter v35232199542 :=
  cost_cut false 1 (by decide)

private def v35232198006 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v35232198006 : ¬ MinimalInterpreter v35232198006 :=
  cost_cut false 1 (by decide)

private def v35232353526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v35232353526 : ¬ MinimalInterpreter v35232353526 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v35232353142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v35232353142 : ¬ MinimalInterpreter v35232353142 :=
  cost_cut false 1 (by decide)

private def v35232943350 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v35232943350 : ¬ MinimalInterpreter v35232943350 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v35232942966 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v35232942966 : ¬ MinimalInterpreter v35232942966 :=
  cost_cut false 1 (by decide)

theorem row182 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [0,0,2,1]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [0,0,2,1] = [v35232206070,v35232205686,v35232199926,v35232199542,v35232198006,v35232353526,v35232353142,v35232943350,v35232942966] := by decide
  rw [h]
  exact (.cons (no_v35232206070) (.cons (no_v35232205686) (.cons (no_v35232199926) (.cons (no_v35232199542) (.cons (no_v35232198006) (.cons (no_v35232353526) (.cons (no_v35232353142) (.cons (no_v35232943350) (.cons (no_v35232942966) .nil)))))))))

theorem row183 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [0,0,3,0]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [0,0,3,0] = [] := by decide
  rw [h]
  exact .nil

private def v35232206446 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v35232206446 : ¬ MinimalInterpreter v35232206446 :=
  cost_cut false 1 (by decide)

private def v35232205742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v35232205742 : ¬ MinimalInterpreter v35232205742 :=
  cost_cut false 1 (by decide)

private def v35232200302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v35232200302 : ¬ MinimalInterpreter v35232200302 :=
  cost_cut false 1 (by decide)

private def v35232199598 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v35232199598 : ¬ MinimalInterpreter v35232199598 :=
  cost_cut false 1 (by decide)

private def v35232198062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v35232198062 : ¬ MinimalInterpreter v35232198062 :=
  cost_cut false 1 (by decide)

private def v35232353902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v35232353902 : ¬ MinimalInterpreter v35232353902 :=
  cost_cut false 1 (by decide)

private def v35232353198 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v35232353198 : ¬ MinimalInterpreter v35232353198 :=
  cost_cut false 1 (by decide)

private def v35232943726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v35232943726 : ¬ MinimalInterpreter v35232943726 :=
  cost_cut false 1 (by decide)

private def v35232943022 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v35232943022 : ¬ MinimalInterpreter v35232943022 :=
  cost_cut false 1 (by decide)

theorem row184 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [0,1,0,2]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [0,1,0,2] = [v35232206446,v35232205742,v35232200302,v35232199598,v35232198062,v35232353902,v35232353198,v35232943726,v35232943022] := by decide
  rw [h]
  exact (.cons (no_v35232206446) (.cons (no_v35232205742) (.cons (no_v35232200302) (.cons (no_v35232199598) (.cons (no_v35232198062) (.cons (no_v35232353902) (.cons (no_v35232353198) (.cons (no_v35232943726) (.cons (no_v35232943022) .nil)))))))))

theorem row185 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [0,1,1,1]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [0,1,1,1] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows37
