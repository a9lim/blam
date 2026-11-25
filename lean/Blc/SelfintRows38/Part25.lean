import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row150 : BadRow (row ⟨1,2,0,2,4,6⟩ [0,0] [2,1,2,1]) := by
  have h : row ⟨1,2,0,2,4,6⟩ [0,0] [2,1,2,1] = [] := by decide
  rw [h]
  exact .nil

theorem row151 : BadRow (row ⟨1,2,0,2,4,6⟩ [0,0] [2,2,0,2]) := by
  have h : row ⟨1,2,0,2,4,6⟩ [0,0] [2,2,0,2] = [] := by decide
  rw [h]
  exact .nil

theorem row152 : BadRow (row ⟨1,2,0,2,4,6⟩ [0,0] [2,2,1,1]) := by
  have h : row ⟨1,2,0,2,4,6⟩ [0,0] [2,2,1,1] = [] := by decide
  rw [h]
  exact .nil

theorem row153 : BadRow (row ⟨1,2,0,2,4,6⟩ [0,0] [2,2,2,0]) := by
  have h : row ⟨1,2,0,2,4,6⟩ [0,0] [2,2,2,0] = [] := by decide
  rw [h]
  exact .nil

private def v75363465710 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))
private theorem no_v75363465710 : ¬ MinimalInterpreter v75363465710 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v75363462894 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))
private theorem no_v75363462894 : ¬ MinimalInterpreter v75363462894 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75363441134 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2)))))))
private theorem no_v75363441134 : ¬ MinimalInterpreter v75363441134 :=
  chain_cut true 3 (by decide)

private def v75363438318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2))))))
private theorem no_v75363438318 : ¬ MinimalInterpreter v75363438318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75363432174 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2))))))
private theorem no_v75363432174 : ¬ MinimalInterpreter v75363432174 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row154 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [0,1,2,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [0,1,2,2] = [v75363465710,v75363462894,v75363441134,v75363438318,v75363432174] := by decide
  rw [h]
  exact (.cons (no_v75363465710) (.cons (no_v75363462894) (.cons (no_v75363441134) (.cons (no_v75363438318) (.cons (no_v75363432174) .nil)))))

private def v75363466478 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))
private theorem no_v75363466478 : ¬ MinimalInterpreter v75363466478 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75363463022 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))
private theorem no_v75363463022 : ¬ MinimalInterpreter v75363463022 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75363441902 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2)))))))
private theorem no_v75363441902 : ¬ MinimalInterpreter v75363441902 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75363438446 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2))))))
private theorem no_v75363438446 : ¬ MinimalInterpreter v75363438446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75363432302 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2))))))
private theorem no_v75363432302 : ¬ MinimalInterpreter v75363432302 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row155 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [0,2,1,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [0,2,1,2] = [v75363466478,v75363463022,v75363441902,v75363438446,v75363432302] := by decide
  rw [h]
  exact (.cons (no_v75363466478) (.cons (no_v75363463022) (.cons (no_v75363441902) (.cons (no_v75363438446) (.cons (no_v75363432302) .nil)))))

end Blc.SelfintSingleObject.Rows38
