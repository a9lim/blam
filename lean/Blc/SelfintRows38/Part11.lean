import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75700401118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))))))
private theorem no_v75700401118 : ¬ MinimalInterpreter v75700401118 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (.app (.var 0) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.var 3))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700395486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 3))))))))
private theorem no_v75700395486 : ¬ MinimalInterpreter v75700395486 :=
  chain_cut false 2 (by decide)

private def v75700487134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v75700487134 : ¬ MinimalInterpreter v75700487134 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.var 3))))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.app (.var 2) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.app (.var 1) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700490014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 3)))))))))
private theorem no_v75700490014 : ¬ MinimalInterpreter v75700490014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 1)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 3))))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.app (.var 0) (so_dead (by decide) (.var 1))) (by decide) (by decide)))))

private def v75700467486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 3))))))))
private theorem no_v75700467486 : ¬ MinimalInterpreter v75700467486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 3)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 3)))) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700290526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 2) (.var 3))))))))
private theorem no_v75700290526 : ¬ MinimalInterpreter v75700290526 :=
  chain_cut false 2 (by decide)

private def v75700293406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 3))))))))
private theorem no_v75700293406 : ¬ MinimalInterpreter v75700293406 :=
  chain_cut true 4 (by decide)

private def v75700270878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 3)))))))
private theorem no_v75700270878 : ¬ MinimalInterpreter v75700270878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700221726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 3)))))))
private theorem no_v75700221726 : ¬ MinimalInterpreter v75700221726 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75705119710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))))))
private theorem no_v75705119710 : ¬ MinimalInterpreter v75705119710 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.var 3)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75705114078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 3))))))))
private theorem no_v75705114078 : ¬ MinimalInterpreter v75705114078 :=
  chain_cut false 2 (by decide)

private def v75723994078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))))))
private theorem no_v75723994078 : ¬ MinimalInterpreter v75723994078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.var 3)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75723988446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 3))))))))
private theorem no_v75723988446 : ¬ MinimalInterpreter v75723988446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row66 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [0,1,2,3]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [0,1,2,3] = [v75700401118,v75700395486,v75700487134,v75700490014,v75700467486,v75700290526,v75700293406,v75700270878,v75700221726,v75705119710,v75705114078,v75723994078,v75723988446] := by decide
  rw [h]
  exact (.cons (no_v75700401118) (.cons (no_v75700395486) (.cons (no_v75700487134) (.cons (no_v75700490014) (.cons (no_v75700467486) (.cons (no_v75700290526) (.cons (no_v75700293406) (.cons (no_v75700270878) (.cons (no_v75700221726) (.cons (no_v75705119710) (.cons (no_v75705114078) (.cons (no_v75723994078) (.cons (no_v75723988446) .nil)))))))))))))

private def v75700401134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))))))
private theorem no_v75700401134 : ¬ MinimalInterpreter v75700401134 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (.app (.var 0) (so_dead (by decide) (.app (.var 1) (.app (.var 3) (.var 2))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700395502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 2))))))))
private theorem no_v75700395502 : ¬ MinimalInterpreter v75700395502 :=
  chain_cut false 2 (by decide)

private def v75700487150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v75700487150 : ¬ MinimalInterpreter v75700487150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 2))))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.app (.var 3) (.var 2))))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700466158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 2)))))))
private theorem no_v75700466158 : ¬ MinimalInterpreter v75700466158 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 2))) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700290542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 2))))))))
private theorem no_v75700290542 : ¬ MinimalInterpreter v75700290542 :=
  chain_cut false 2 (by decide)

private def v75700269550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 2))))))
private theorem no_v75700269550 : ¬ MinimalInterpreter v75700269550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700220398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 2))))))
private theorem no_v75700220398 : ¬ MinimalInterpreter v75700220398 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75705119726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))))))
private theorem no_v75705119726 : ¬ MinimalInterpreter v75705119726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 3) (.var 2)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75705114094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 2))))))))
private theorem no_v75705114094 : ¬ MinimalInterpreter v75705114094 :=
  chain_cut false 2 (by decide)

private def v75723994094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))))))
private theorem no_v75723994094 : ¬ MinimalInterpreter v75723994094 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 3) (.var 2)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75723988462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 2))))))))
private theorem no_v75723988462 : ¬ MinimalInterpreter v75723988462 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row67 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [0,1,3,2]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [0,1,3,2] = [v75700401134,v75700395502,v75700487150,v75700466158,v75700290542,v75700269550,v75700220398,v75705119726,v75705114094,v75723994094,v75723988462] := by decide
  rw [h]
  exact (.cons (no_v75700401134) (.cons (no_v75700395502) (.cons (no_v75700487150) (.cons (no_v75700466158) (.cons (no_v75700290542) (.cons (no_v75700269550) (.cons (no_v75700220398) (.cons (no_v75705119726) (.cons (no_v75705114094) (.cons (no_v75723994094) (.cons (no_v75723988462) .nil)))))))))))

private def v75700402654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 3)))))))))
private theorem no_v75700402654 : ¬ MinimalInterpreter v75700402654 :=
  chain_cut false 2 (by decide)

private def v75700395742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 3))))))))
private theorem no_v75700395742 : ¬ MinimalInterpreter v75700395742 :=
  chain_cut false 2 (by decide)

private def v75700496158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v75700496158 : ¬ MinimalInterpreter v75700496158 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 3))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700468510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 3))))))))
private theorem no_v75700468510 : ¬ MinimalInterpreter v75700468510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 3)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 3)))) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700299550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v75700299550 : ¬ MinimalInterpreter v75700299550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75700271902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 3)))))))
private theorem no_v75700271902 : ¬ MinimalInterpreter v75700271902 :=
  chain_cut true 3 (by decide)

private def v75700222750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v75700222750 : ¬ MinimalInterpreter v75700222750 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75705121246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 3)))))))))
private theorem no_v75705121246 : ¬ MinimalInterpreter v75705121246 :=
  chain_cut false 2 (by decide)

private def v75705114334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 3))))))))
private theorem no_v75705114334 : ¬ MinimalInterpreter v75705114334 :=
  chain_cut false 2 (by decide)

private def v75723995614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 3)))))))))
private theorem no_v75723995614 : ¬ MinimalInterpreter v75723995614 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75723988702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 3))))))))
private theorem no_v75723988702 : ¬ MinimalInterpreter v75723988702 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row68 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [0,2,1,3]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [0,2,1,3] = [v75700402654,v75700395742,v75700496158,v75700468510,v75700299550,v75700271902,v75700222750,v75705121246,v75705114334,v75723995614,v75723988702] := by decide
  rw [h]
  exact (.cons (no_v75700402654) (.cons (no_v75700395742) (.cons (no_v75700496158) (.cons (no_v75700468510) (.cons (no_v75700299550) (.cons (no_v75700271902) (.cons (no_v75700222750) (.cons (no_v75705121246) (.cons (no_v75705114334) (.cons (no_v75723995614) (.cons (no_v75723988702) .nil)))))))))))

private def v75700494830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 2)))))))))
private theorem no_v75700494830 : ¬ MinimalInterpreter v75700494830 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.app (.var 2) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.app (.var 1) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700496270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v75700496270 : ¬ MinimalInterpreter v75700496270 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700468622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.lam (.var 2))))))))
private theorem no_v75700468622 : ¬ MinimalInterpreter v75700468622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v75700467950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 2)))))))
private theorem no_v75700467950 : ¬ MinimalInterpreter v75700467950 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 2))) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700298222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 2))))))))
private theorem no_v75700298222 : ¬ MinimalInterpreter v75700298222 :=
  chain_cut false 2 (by decide)

private def v75700299662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v75700299662 : ¬ MinimalInterpreter v75700299662 :=
  chain_cut true 3 (by decide)

private def v75700255214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 2)))))))
private theorem no_v75700255214 : ¬ MinimalInterpreter v75700255214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75700272014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.lam (.var 2)))))))
private theorem no_v75700272014 : ¬ MinimalInterpreter v75700272014 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v75700222862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v75700222862 : ¬ MinimalInterpreter v75700222862 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v75700248302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 2)))) (.var 2))))))
private theorem no_v75700248302 : ¬ MinimalInterpreter v75700248302 :=
  chain_cut false 2 (by decide)

private def v75700271342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 2))))))
private theorem no_v75700271342 : ¬ MinimalInterpreter v75700271342 :=
  chain_cut true 3 (by decide)

private def v75700222190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 2))))))
private theorem no_v75700222190 : ¬ MinimalInterpreter v75700222190 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75700211438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 2))))))
private theorem no_v75700211438 : ¬ MinimalInterpreter v75700211438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row69 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [0,2,2,2]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [0,2,2,2] = [v75700494830,v75700496270,v75700468622,v75700467950,v75700298222,v75700299662,v75700255214,v75700272014,v75700222862,v75700248302,v75700271342,v75700222190,v75700211438] := by decide
  rw [h]
  exact (.cons (no_v75700494830) (.cons (no_v75700496270) (.cons (no_v75700468622) (.cons (no_v75700467950) (.cons (no_v75700298222) (.cons (no_v75700299662) (.cons (no_v75700255214) (.cons (no_v75700272014) (.cons (no_v75700222862) (.cons (no_v75700248302) (.cons (no_v75700271342) (.cons (no_v75700222190) (.cons (no_v75700211438) .nil)))))))))))))

private def v75700402678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 3) (.var 1)))))))))
private theorem no_v75700402678 : ¬ MinimalInterpreter v75700402678 :=
  chain_cut false 2 (by decide)

private def v75700395766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))))))
private theorem no_v75700395766 : ¬ MinimalInterpreter v75700395766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (.app (.var 0) (so_dead (by decide) (.app (.app (.var 2) (.var 3)) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700467958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 3))) (.var 1)))))))
private theorem no_v75700467958 : ¬ MinimalInterpreter v75700467958 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 3))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 1)))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 2))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 3))) (.var 1))) (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_dead (by decide) (.var 1))) (by decide) (by decide)))))

private def v75700248310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 1))))))
private theorem no_v75700248310 : ¬ MinimalInterpreter v75700248310 :=
  chain_cut false 2 (by decide)

private def v75700271350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 3)))) (.var 1))))))
private theorem no_v75700271350 : ¬ MinimalInterpreter v75700271350 :=
  chain_cut true 4 (by decide)

private def v75700222198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 3))) (.var 1))))))
private theorem no_v75700222198 : ¬ MinimalInterpreter v75700222198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75705121270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 1)))))))))
private theorem no_v75705121270 : ¬ MinimalInterpreter v75705121270 :=
  chain_cut false 2 (by decide)

private def v75705114358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))))))
private theorem no_v75705114358 : ¬ MinimalInterpreter v75705114358 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 2) (.var 3)) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75723995638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 1)))))))))
private theorem no_v75723995638 : ¬ MinimalInterpreter v75723995638 :=
  chain_cut false 6 (by decide)

private def v75723988726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))))))
private theorem no_v75723988726 : ¬ MinimalInterpreter v75723988726 :=
  w_cut false 0 (by decide)

theorem row70 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [0,2,3,1]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [0,2,3,1] = [v75700402678,v75700395766,v75700467958,v75700248310,v75700271350,v75700222198,v75705121270,v75705114358,v75723995638,v75723988726] := by decide
  rw [h]
  exact (.cons (no_v75700402678) (.cons (no_v75700395766) (.cons (no_v75700467958) (.cons (no_v75700248310) (.cons (no_v75700271350) (.cons (no_v75700222198) (.cons (no_v75705121270) (.cons (no_v75705114358) (.cons (no_v75723995638) (.cons (no_v75723988726) .nil))))))))))

theorem row71 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [0,3,0,3]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [0,3,0,3] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
