import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75700496186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v75700496186 : ¬ MinimalInterpreter v75700496186 :=
  chain_cut false 2 (by decide)

private def v75700495834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v75700495834 : ¬ MinimalInterpreter v75700495834 :=
  chain_cut false 2 (by decide)

private def v75700468538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v75700468538 : ¬ MinimalInterpreter v75700468538 :=
  chain_cut false 2 (by decide)

private def v75700468186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v75700468186 : ¬ MinimalInterpreter v75700468186 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700461274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v75700461274 : ¬ MinimalInterpreter v75700461274 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700299578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v75700299578 : ¬ MinimalInterpreter v75700299578 :=
  chain_cut false 2 (by decide)

private def v75700299226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v75700299226 : ¬ MinimalInterpreter v75700299226 :=
  chain_cut false 2 (by decide)

private def v75700271930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v75700271930 : ¬ MinimalInterpreter v75700271930 :=
  chain_cut false 2 (by decide)

private def v75700222778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v75700222778 : ¬ MinimalInterpreter v75700222778 :=
  chain_cut false 2 (by decide)

private def v75700271578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0))))))
private theorem no_v75700271578 : ¬ MinimalInterpreter v75700271578 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700264666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0))))))
private theorem no_v75700264666 : ¬ MinimalInterpreter v75700264666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700222426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v75700222426 : ¬ MinimalInterpreter v75700222426 :=
  chain_cut false 2 (by decide)

private def v75700215514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v75700215514 : ¬ MinimalInterpreter v75700215514 :=
  chain_cut false 2 (by decide)

private def v75700203226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v75700203226 : ¬ MinimalInterpreter v75700203226 :=
  chain_cut false 2 (by decide)

private def v75705214778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v75705214778 : ¬ MinimalInterpreter v75705214778 :=
  chain_cut false 2 (by decide)

private def v75705214426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v75705214426 : ¬ MinimalInterpreter v75705214426 :=
  chain_cut false 2 (by decide)

private def v75705187130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v75705187130 : ¬ MinimalInterpreter v75705187130 :=
  chain_cut false 2 (by decide)

private def v75705186778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v75705186778 : ¬ MinimalInterpreter v75705186778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75705179866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v75705179866 : ¬ MinimalInterpreter v75705179866 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75724089146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v75724089146 : ¬ MinimalInterpreter v75724089146 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v75724088794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v75724088794 : ¬ MinimalInterpreter v75724088794 :=
  w_cut false 0 (by decide)

private def v75724061498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v75724061498 : ¬ MinimalInterpreter v75724061498 :=
  w_cut false 0 (by decide)

private def v75724061146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v75724061146 : ¬ MinimalInterpreter v75724061146 :=
  w_cut false 0 (by decide)

private def v75724054234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v75724054234 : ¬ MinimalInterpreter v75724054234 :=
  w_cut false 0 (by decide)

theorem row18 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [0,2,1,1,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [0,2,1,1,0] = [v75700496186,v75700495834,v75700468538,v75700468186,v75700461274,v75700299578,v75700299226,v75700271930,v75700222778,v75700271578,v75700264666,v75700222426,v75700215514,v75700203226,v75705214778,v75705214426,v75705187130,v75705186778,v75705179866,v75724089146,v75724088794,v75724061498,v75724061146,v75724054234] := by decide
  rw [h]
  exact (.cons (no_v75700496186) (.cons (no_v75700495834) (.cons (no_v75700468538) (.cons (no_v75700468186) (.cons (no_v75700461274) (.cons (no_v75700299578) (.cons (no_v75700299226) (.cons (no_v75700271930) (.cons (no_v75700222778) (.cons (no_v75700271578) (.cons (no_v75700264666) (.cons (no_v75700222426) (.cons (no_v75700215514) (.cons (no_v75700203226) (.cons (no_v75705214778) (.cons (no_v75705214426) (.cons (no_v75705187130) (.cons (no_v75705186778) (.cons (no_v75705179866) (.cons (no_v75724089146) (.cons (no_v75724088794) (.cons (no_v75724061498) (.cons (no_v75724061146) (.cons (no_v75724054234) .nil))))))))))))))))))))))))

theorem row19 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [0,2,2,0,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [0,2,2,0,0] = [] := by decide
  rw [h]
  exact .nil

private def v75700686062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v75700686062 : ¬ MinimalInterpreter v75700686062 :=
  chain_cut false 2 (by decide)

private def v75700685678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v75700685678 : ¬ MinimalInterpreter v75700685678 :=
  chain_cut false 2 (by decide)

private def v75700679918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v75700679918 : ¬ MinimalInterpreter v75700679918 :=
  chain_cut false 2 (by decide)

private def v75700679534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v75700679534 : ¬ MinimalInterpreter v75700679534 :=
  chain_cut false 2 (by decide)

private def v75700677998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v75700677998 : ¬ MinimalInterpreter v75700677998 :=
  chain_cut false 2 (by decide)

private def v75700325614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v75700325614 : ¬ MinimalInterpreter v75700325614 :=
  chain_cut false 2 (by decide)

private def v75700325230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v75700325230 : ¬ MinimalInterpreter v75700325230 :=
  chain_cut false 2 (by decide)

private def v75700319470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v75700319470 : ¬ MinimalInterpreter v75700319470 :=
  chain_cut false 2 (by decide)

private def v75700229358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v75700229358 : ¬ MinimalInterpreter v75700229358 :=
  chain_cut false 2 (by decide)

private def v75700319086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v75700319086 : ¬ MinimalInterpreter v75700319086 :=
  chain_cut false 2 (by decide)

private def v75700317550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2))))))
private theorem no_v75700317550 : ¬ MinimalInterpreter v75700317550 :=
  chain_cut false 2 (by decide)

private def v75700228974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v75700228974 : ¬ MinimalInterpreter v75700228974 :=
  chain_cut false 2 (by decide)

private def v75700227438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v75700227438 : ¬ MinimalInterpreter v75700227438 :=
  chain_cut false 2 (by decide)

private def v75700204910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v75700204910 : ¬ MinimalInterpreter v75700204910 :=
  chain_cut false 2 (by decide)

private def v75706191086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v75706191086 : ¬ MinimalInterpreter v75706191086 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75706190702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v75706190702 : ¬ MinimalInterpreter v75706190702 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706184942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v75706184942 : ¬ MinimalInterpreter v75706184942 :=
  w_cut false 0 (by decide)

private def v75706184558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v75706184558 : ¬ MinimalInterpreter v75706184558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706183022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v75706183022 : ¬ MinimalInterpreter v75706183022 :=
  w_cut false 0 (by decide)

private def v75706338542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v75706338542 : ¬ MinimalInterpreter v75706338542 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75706338158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v75706338158 : ¬ MinimalInterpreter v75706338158 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75704896750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v75704896750 : ¬ MinimalInterpreter v75704896750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75704896366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v75704896366 : ¬ MinimalInterpreter v75704896366 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row20 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,0,1,2]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,0,1,2] = [v75700686062,v75700685678,v75700679918,v75700679534,v75700677998,v75700325614,v75700325230,v75700319470,v75700229358,v75700319086,v75700317550,v75700228974,v75700227438,v75700204910,v75706191086,v75706190702,v75706184942,v75706184558,v75706183022,v75706338542,v75706338158,v75704896750,v75704896366] := by decide
  rw [h]
  exact (.cons (no_v75700686062) (.cons (no_v75700685678) (.cons (no_v75700679918) (.cons (no_v75700679534) (.cons (no_v75700677998) (.cons (no_v75700325614) (.cons (no_v75700325230) (.cons (no_v75700319470) (.cons (no_v75700229358) (.cons (no_v75700319086) (.cons (no_v75700317550) (.cons (no_v75700228974) (.cons (no_v75700227438) (.cons (no_v75700204910) (.cons (no_v75706191086) (.cons (no_v75706190702) (.cons (no_v75706184942) (.cons (no_v75706184558) (.cons (no_v75706183022) (.cons (no_v75706338542) (.cons (no_v75706338158) (.cons (no_v75704896750) (.cons (no_v75704896366) .nil)))))))))))))))))))))))

private def v75700686070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v75700686070 : ¬ MinimalInterpreter v75700686070 :=
  chain_cut false 2 (by decide)

private def v75700685686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v75700685686 : ¬ MinimalInterpreter v75700685686 :=
  chain_cut false 2 (by decide)

private def v75700679926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v75700679926 : ¬ MinimalInterpreter v75700679926 :=
  chain_cut false 2 (by decide)

private def v75700679542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v75700679542 : ¬ MinimalInterpreter v75700679542 :=
  chain_cut false 2 (by decide)

private def v75700678006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v75700678006 : ¬ MinimalInterpreter v75700678006 :=
  chain_cut false 2 (by decide)

private def v75700325622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v75700325622 : ¬ MinimalInterpreter v75700325622 :=
  chain_cut false 2 (by decide)

private def v75700325238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v75700325238 : ¬ MinimalInterpreter v75700325238 :=
  chain_cut false 2 (by decide)

private def v75700319478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v75700319478 : ¬ MinimalInterpreter v75700319478 :=
  chain_cut false 2 (by decide)

private def v75700229366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v75700229366 : ¬ MinimalInterpreter v75700229366 :=
  chain_cut false 2 (by decide)

private def v75700319094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))))))
private theorem no_v75700319094 : ¬ MinimalInterpreter v75700319094 :=
  chain_cut false 2 (by decide)

private def v75700317558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))))))
private theorem no_v75700317558 : ¬ MinimalInterpreter v75700317558 :=
  chain_cut false 2 (by decide)

private def v75700228982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v75700228982 : ¬ MinimalInterpreter v75700228982 :=
  chain_cut false 2 (by decide)

private def v75700227446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v75700227446 : ¬ MinimalInterpreter v75700227446 :=
  chain_cut false 2 (by decide)

private def v75700204918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v75700204918 : ¬ MinimalInterpreter v75700204918 :=
  chain_cut false 2 (by decide)

private def v75706191094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v75706191094 : ¬ MinimalInterpreter v75706191094 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75706190710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v75706190710 : ¬ MinimalInterpreter v75706190710 :=
  w_cut false 0 (by decide)

private def v75706184950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v75706184950 : ¬ MinimalInterpreter v75706184950 :=
  w_cut false 0 (by decide)

private def v75706184566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v75706184566 : ¬ MinimalInterpreter v75706184566 :=
  w_cut false 0 (by decide)

private def v75706183030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v75706183030 : ¬ MinimalInterpreter v75706183030 :=
  w_cut false 0 (by decide)

private def v75706338550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v75706338550 : ¬ MinimalInterpreter v75706338550 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75706338166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v75706338166 : ¬ MinimalInterpreter v75706338166 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75704896758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v75704896758 : ¬ MinimalInterpreter v75704896758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75704896374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v75704896374 : ¬ MinimalInterpreter v75704896374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row21 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,0,2,1]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,0,2,1] = [v75700686070,v75700685686,v75700679926,v75700679542,v75700678006,v75700325622,v75700325238,v75700319478,v75700229366,v75700319094,v75700317558,v75700228982,v75700227446,v75700204918,v75706191094,v75706190710,v75706184950,v75706184566,v75706183030,v75706338550,v75706338166,v75704896758,v75704896374] := by decide
  rw [h]
  exact (.cons (no_v75700686070) (.cons (no_v75700685686) (.cons (no_v75700679926) (.cons (no_v75700679542) (.cons (no_v75700678006) (.cons (no_v75700325622) (.cons (no_v75700325238) (.cons (no_v75700319478) (.cons (no_v75700229366) (.cons (no_v75700319094) (.cons (no_v75700317558) (.cons (no_v75700228982) (.cons (no_v75700227446) (.cons (no_v75700204918) (.cons (no_v75706191094) (.cons (no_v75706190710) (.cons (no_v75706184950) (.cons (no_v75706184566) (.cons (no_v75706183030) (.cons (no_v75706338550) (.cons (no_v75706338166) (.cons (no_v75704896758) (.cons (no_v75704896374) .nil)))))))))))))))))))))))

private def v75700686446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v75700686446 : ¬ MinimalInterpreter v75700686446 :=
  chain_cut false 2 (by decide)

private def v75700685742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v75700685742 : ¬ MinimalInterpreter v75700685742 :=
  chain_cut false 2 (by decide)

private def v75700680302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v75700680302 : ¬ MinimalInterpreter v75700680302 :=
  chain_cut false 2 (by decide)

private def v75700679598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v75700679598 : ¬ MinimalInterpreter v75700679598 :=
  chain_cut false 2 (by decide)

private def v75700678062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v75700678062 : ¬ MinimalInterpreter v75700678062 :=
  chain_cut false 2 (by decide)

private def v75700325998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v75700325998 : ¬ MinimalInterpreter v75700325998 :=
  chain_cut false 2 (by decide)

private def v75700325294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v75700325294 : ¬ MinimalInterpreter v75700325294 :=
  chain_cut false 2 (by decide)

private def v75700319854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v75700319854 : ¬ MinimalInterpreter v75700319854 :=
  chain_cut false 2 (by decide)

private def v75700229742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v75700229742 : ¬ MinimalInterpreter v75700229742 :=
  chain_cut false 2 (by decide)

private def v75700319150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 2))))))
private theorem no_v75700319150 : ¬ MinimalInterpreter v75700319150 :=
  chain_cut false 2 (by decide)

private def v75700317614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 2))))))
private theorem no_v75700317614 : ¬ MinimalInterpreter v75700317614 :=
  chain_cut false 2 (by decide)

private def v75700229038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v75700229038 : ¬ MinimalInterpreter v75700229038 :=
  chain_cut false 2 (by decide)

private def v75700227502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v75700227502 : ¬ MinimalInterpreter v75700227502 :=
  chain_cut false 2 (by decide)

private def v75700204974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v75700204974 : ¬ MinimalInterpreter v75700204974 :=
  chain_cut false 2 (by decide)

private def v75706191470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v75706191470 : ¬ MinimalInterpreter v75706191470 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706190766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v75706190766 : ¬ MinimalInterpreter v75706190766 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706185326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v75706185326 : ¬ MinimalInterpreter v75706185326 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706184622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v75706184622 : ¬ MinimalInterpreter v75706184622 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706183086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v75706183086 : ¬ MinimalInterpreter v75706183086 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706338926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v75706338926 : ¬ MinimalInterpreter v75706338926 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706338222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v75706338222 : ¬ MinimalInterpreter v75706338222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75704897134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v75704897134 : ¬ MinimalInterpreter v75704897134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704896430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v75704896430 : ¬ MinimalInterpreter v75704896430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row22 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,1,0,2]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,1,0,2] = [v75700686446,v75700685742,v75700680302,v75700679598,v75700678062,v75700325998,v75700325294,v75700319854,v75700229742,v75700319150,v75700317614,v75700229038,v75700227502,v75700204974,v75706191470,v75706190766,v75706185326,v75706184622,v75706183086,v75706338926,v75706338222,v75704897134,v75704896430] := by decide
  rw [h]
  exact (.cons (no_v75700686446) (.cons (no_v75700685742) (.cons (no_v75700680302) (.cons (no_v75700679598) (.cons (no_v75700678062) (.cons (no_v75700325998) (.cons (no_v75700325294) (.cons (no_v75700319854) (.cons (no_v75700229742) (.cons (no_v75700319150) (.cons (no_v75700317614) (.cons (no_v75700229038) (.cons (no_v75700227502) (.cons (no_v75700204974) (.cons (no_v75706191470) (.cons (no_v75706190766) (.cons (no_v75706185326) (.cons (no_v75706184622) (.cons (no_v75706183086) (.cons (no_v75706338926) (.cons (no_v75706338222) (.cons (no_v75704897134) (.cons (no_v75704896430) .nil)))))))))))))))))))))))

theorem row23 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,1,1,1]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,0,1,1,1] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
