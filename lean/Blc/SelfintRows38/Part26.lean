import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75363466486 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))
private theorem no_v75363466486 : ¬ MinimalInterpreter v75363466486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75363463030 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))
private theorem no_v75363463030 : ¬ MinimalInterpreter v75363463030 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v75363441910 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1)))))))
private theorem no_v75363441910 : ¬ MinimalInterpreter v75363441910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75363438454 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1))))))
private theorem no_v75363438454 : ¬ MinimalInterpreter v75363438454 :=
  chain_cut true 3 (by decide)

private def v75363432310 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1))))))
private theorem no_v75363432310 : ¬ MinimalInterpreter v75363432310 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row156 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [0,2,2,1]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [0,2,2,1] = [v75363466486,v75363463030,v75363441910,v75363438454,v75363432310] := by decide
  rw [h]
  exact (.cons (no_v75363466486) (.cons (no_v75363463030) (.cons (no_v75363441910) (.cons (no_v75363438454) (.cons (no_v75363432310) .nil)))))

private def v75363490286 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2))))))))
private theorem no_v75363490286 : ¬ MinimalInterpreter v75363490286 :=
  chain_cut true 3 (by decide)

private def v75363489518 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2)))))))
private theorem no_v75363489518 : ¬ MinimalInterpreter v75363489518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75363445230 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2)))))))
private theorem no_v75363445230 : ¬ MinimalInterpreter v75363445230 :=
  chain_cut true 3 (by decide)

private def v75363444462 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2))))))
private theorem no_v75363444462 : ¬ MinimalInterpreter v75363444462 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75363433198 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2))))))
private theorem no_v75363433198 : ¬ MinimalInterpreter v75363433198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row157 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [1,0,2,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [1,0,2,2] = [v75363490286,v75363489518,v75363445230,v75363444462,v75363433198] := by decide
  rw [h]
  exact (.cons (no_v75363490286) (.cons (no_v75363489518) (.cons (no_v75363445230) (.cons (no_v75363444462) (.cons (no_v75363433198) .nil)))))

theorem row158 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [1,1,1,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [1,1,1,2] = [] := by decide
  rw [h]
  exact .nil

theorem row159 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [1,1,2,1]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [1,1,2,1] = [] := by decide
  rw [h]
  exact .nil

private def v75363491438 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2))))))))
private theorem no_v75363491438 : ¬ MinimalInterpreter v75363491438 :=
  cost_cut true 3 (by decide)

private def v75363489710 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2)))))))
private theorem no_v75363489710 : ¬ MinimalInterpreter v75363489710 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75363446382 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2)))))))
private theorem no_v75363446382 : ¬ MinimalInterpreter v75363446382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75363444654 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2))))))
private theorem no_v75363444654 : ¬ MinimalInterpreter v75363444654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75363433390 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2))))))
private theorem no_v75363433390 : ¬ MinimalInterpreter v75363433390 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row160 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [1,2,0,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [1,2,0,2] = [v75363491438,v75363489710,v75363446382,v75363444654,v75363433390] := by decide
  rw [h]
  exact (.cons (no_v75363491438) (.cons (no_v75363489710) (.cons (no_v75363446382) (.cons (no_v75363444654) (.cons (no_v75363433390) .nil)))))

theorem row161 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [1,2,1,1]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [1,2,1,1] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
