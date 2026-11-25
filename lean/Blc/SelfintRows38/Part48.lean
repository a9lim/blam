import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v69155802938 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v69155802938 : ¬ MinimalInterpreter v69155802938 :=
  cost_cut false 1 (by decide)

private def v69155802074 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v69155802074 : ¬ MinimalInterpreter v69155802074 :=
  cost_cut false 1 (by decide)

private def v69155780410 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v69155780410 : ¬ MinimalInterpreter v69155780410 :=
  cost_cut false 1 (by decide)

private def v69155779546 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v69155779546 : ¬ MinimalInterpreter v69155779546 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v69155773914 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v69155773914 : ¬ MinimalInterpreter v69155773914 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v69156147002 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v69156147002 : ¬ MinimalInterpreter v69156147002 :=
  cost_cut false 1 (by decide)

private def v69156146138 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v69156146138 : ¬ MinimalInterpreter v69156146138 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row288 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [1,2,1,0]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [1,2,1,0] = [v69155802938,v69155802074,v69155780410,v69155779546,v69155773914,v69156147002,v69156146138] := by decide
  rw [h]
  exact (.cons (no_v69155802938) (.cons (no_v69155802074) (.cons (no_v69155780410) (.cons (no_v69155779546) (.cons (no_v69155773914) (.cons (no_v69156147002) (.cons (no_v69156146138) .nil)))))))

theorem row289 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [2,0,0,2]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [2,0,0,2] = [] := by decide
  rw [h]
  exact .nil

private def v69155808886 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v69155808886 : ¬ MinimalInterpreter v69155808886 :=
  cost_cut false 1 (by decide)

private def v69155808694 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v69155808694 : ¬ MinimalInterpreter v69155808694 :=
  cost_cut false 1 (by decide)

private def v69155781238 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v69155781238 : ¬ MinimalInterpreter v69155781238 :=
  cost_cut false 1 (by decide)

private def v69155781046 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v69155781046 : ¬ MinimalInterpreter v69155781046 :=
  cost_cut false 1 (by decide)

private def v69155774134 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v69155774134 : ¬ MinimalInterpreter v69155774134 :=
  cost_cut false 1 (by decide)

theorem row290 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [2,0,1,1]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [2,0,1,1] = [v69155808886,v69155808694,v69155781238,v69155781046,v69155774134] := by decide
  rw [h]
  exact (.cons (no_v69155808886) (.cons (no_v69155808694) (.cons (no_v69155781238) (.cons (no_v69155781046) (.cons (no_v69155774134) .nil)))))

theorem row291 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [2,0,2,0]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [2,0,2,0] = [] := by decide
  rw [h]
  exact .nil

private def v69155809078 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v69155809078 : ¬ MinimalInterpreter v69155809078 :=
  cost_cut false 1 (by decide)

private def v69155808726 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v69155808726 : ¬ MinimalInterpreter v69155808726 :=
  cost_cut false 1 (by decide)

private def v69155781430 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v69155781430 : ¬ MinimalInterpreter v69155781430 :=
  cost_cut false 1 (by decide)

private def v69155781078 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v69155781078 : ¬ MinimalInterpreter v69155781078 :=
  cost_cut false 1 (by decide)

private def v69155774166 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v69155774166 : ¬ MinimalInterpreter v69155774166 :=
  cost_cut false 1 (by decide)

theorem row292 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [2,1,0,1]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [2,1,0,1] = [v69155809078,v69155808726,v69155781430,v69155781078,v69155774166] := by decide
  rw [h]
  exact (.cons (no_v69155809078) (.cons (no_v69155808726) (.cons (no_v69155781430) (.cons (no_v69155781078) (.cons (no_v69155774166) .nil)))))

private def v69155809082 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v69155809082 : ¬ MinimalInterpreter v69155809082 :=
  cost_cut false 1 (by decide)

private def v69155808730 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v69155808730 : ¬ MinimalInterpreter v69155808730 :=
  cost_cut false 1 (by decide)

private def v69155781434 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v69155781434 : ¬ MinimalInterpreter v69155781434 :=
  cost_cut false 1 (by decide)

private def v69155781082 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v69155781082 : ¬ MinimalInterpreter v69155781082 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v69155774170 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v69155774170 : ¬ MinimalInterpreter v69155774170 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row293 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [2,1,1,0]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [2,1,1,0] = [v69155809082,v69155808730,v69155781434,v69155781082,v69155774170] := by decide
  rw [h]
  exact (.cons (no_v69155809082) (.cons (no_v69155808730) (.cons (no_v69155781434) (.cons (no_v69155781082) (.cons (no_v69155774170) .nil)))))

end Blc.SelfintSingleObject.Rows38
