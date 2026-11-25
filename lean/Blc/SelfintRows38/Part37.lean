import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row222 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [1,1,1,1]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [1,1,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v70464425594 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v70464425594 : ¬ MinimalInterpreter v70464425594 :=
  cost_cut false 1 (by decide)

private def v70464424890 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v70464424890 : ¬ MinimalInterpreter v70464424890 :=
  cost_cut false 1 (by decide)

private def v70464403066 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v70464403066 : ¬ MinimalInterpreter v70464403066 :=
  cost_cut false 1 (by decide)

private def v70464402362 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v70464402362 : ¬ MinimalInterpreter v70464402362 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v70464396730 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v70464396730 : ¬ MinimalInterpreter v70464396730 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v70464769658 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v70464769658 : ¬ MinimalInterpreter v70464769658 :=
  cost_cut false 1 (by decide)

private def v70464768954 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v70464768954 : ¬ MinimalInterpreter v70464768954 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v70464685690 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v70464685690 : ¬ MinimalInterpreter v70464685690 :=
  cost_cut false 1 (by decide)

private def v70464663994 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v70464663994 : ¬ MinimalInterpreter v70464663994 :=
  cost_cut false 1 (by decide)

theorem row223 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [1,1,2,0]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [1,1,2,0] = [v70464425594,v70464424890,v70464403066,v70464402362,v70464396730,v70464769658,v70464768954,v70464685690,v70464663994] := by decide
  rw [h]
  exact (.cons (no_v70464425594) (.cons (no_v70464424890) (.cons (no_v70464403066) (.cons (no_v70464402362) (.cons (no_v70464396730) (.cons (no_v70464769658) (.cons (no_v70464768954) (.cons (no_v70464685690) (.cons (no_v70464663994) .nil)))))))))

private def v70464425782 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v70464425782 : ¬ MinimalInterpreter v70464425782 :=
  cost_cut false 1 (by decide)

private def v70464424918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v70464424918 : ¬ MinimalInterpreter v70464424918 :=
  cost_cut false 1 (by decide)

private def v70464403254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v70464403254 : ¬ MinimalInterpreter v70464403254 :=
  cost_cut false 1 (by decide)

private def v70464402390 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v70464402390 : ¬ MinimalInterpreter v70464402390 :=
  cost_cut false 1 (by decide)

private def v70464396758 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v70464396758 : ¬ MinimalInterpreter v70464396758 :=
  cost_cut false 1 (by decide)

private def v70464769846 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v70464769846 : ¬ MinimalInterpreter v70464769846 :=
  cost_cut false 1 (by decide)

private def v70464768982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v70464768982 : ¬ MinimalInterpreter v70464768982 :=
  cost_cut false 1 (by decide)

private def v70464781510 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v70464781510 : ¬ MinimalInterpreter v70464781510 :=
  cost_cut false 1 (by decide)

private def v70464778054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1))))))))
private theorem no_v70464778054 : ¬ MinimalInterpreter v70464778054 :=
  cost_cut false 1 (by decide)

private def v70464691398 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v70464691398 : ¬ MinimalInterpreter v70464691398 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70464687942 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1)))))))
private theorem no_v70464687942 : ¬ MinimalInterpreter v70464687942 :=
  cost_cut false 1 (by decide)

private def v70464665414 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v70464665414 : ¬ MinimalInterpreter v70464665414 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row224 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [1,2,0,1]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [1,2,0,1] = [v70464425782,v70464424918,v70464403254,v70464402390,v70464396758,v70464769846,v70464768982,v70464781510,v70464778054,v70464691398,v70464687942,v70464665414] := by decide
  rw [h]
  exact (.cons (no_v70464425782) (.cons (no_v70464424918) (.cons (no_v70464403254) (.cons (no_v70464402390) (.cons (no_v70464396758) (.cons (no_v70464769846) (.cons (no_v70464768982) (.cons (no_v70464781510) (.cons (no_v70464778054) (.cons (no_v70464691398) (.cons (no_v70464687942) (.cons (no_v70464665414) .nil))))))))))))

private def v70464425786 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v70464425786 : ¬ MinimalInterpreter v70464425786 :=
  cost_cut false 1 (by decide)

private def v70464424922 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v70464424922 : ¬ MinimalInterpreter v70464424922 :=
  cost_cut false 1 (by decide)

private def v70464403258 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v70464403258 : ¬ MinimalInterpreter v70464403258 :=
  cost_cut false 1 (by decide)

private def v70464402394 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v70464402394 : ¬ MinimalInterpreter v70464402394 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v70464396762 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v70464396762 : ¬ MinimalInterpreter v70464396762 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v70464769850 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v70464769850 : ¬ MinimalInterpreter v70464769850 :=
  cost_cut false 1 (by decide)

private def v70464768986 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v70464768986 : ¬ MinimalInterpreter v70464768986 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v70464778010 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))))
private theorem no_v70464778010 : ¬ MinimalInterpreter v70464778010 :=
  cost_cut false 1 (by decide)

private def v70464687898 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0))))))
private theorem no_v70464687898 : ¬ MinimalInterpreter v70464687898 :=
  cost_cut false 1 (by decide)

private def v70464665370 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))))
private theorem no_v70464665370 : ¬ MinimalInterpreter v70464665370 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row225 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [1,2,1,0]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [1,2,1,0] = [v70464425786,v70464424922,v70464403258,v70464402394,v70464396762,v70464769850,v70464768986,v70464778010,v70464687898,v70464665370] := by decide
  rw [h]
  exact (.cons (no_v70464425786) (.cons (no_v70464424922) (.cons (no_v70464403258) (.cons (no_v70464402394) (.cons (no_v70464396762) (.cons (no_v70464769850) (.cons (no_v70464768986) (.cons (no_v70464778010) (.cons (no_v70464687898) (.cons (no_v70464665370) .nil))))))))))

private def v70464425882 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0)))))))))
private theorem no_v70464425882 : ¬ MinimalInterpreter v70464425882 :=
  cost_cut false 1 (by decide)

private def v70464424938 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0))))))))
private theorem no_v70464424938 : ¬ MinimalInterpreter v70464424938 :=
  cost_cut false 1 (by decide)

private def v70464403354 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))
private theorem no_v70464403354 : ¬ MinimalInterpreter v70464403354 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v70464402410 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0)))))))
private theorem no_v70464402410 : ¬ MinimalInterpreter v70464402410 :=
  cost_cut false 1 (by decide)

private def v70464396778 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))
private theorem no_v70464396778 : ¬ MinimalInterpreter v70464396778 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v70464685978 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))
private theorem no_v70464685978 : ¬ MinimalInterpreter v70464685978 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v70464664042 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0))))))
private theorem no_v70464664042 : ¬ MinimalInterpreter v70464664042 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

theorem row226 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [1,3,0,0]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [1,3,0,0] = [v70464425882,v70464424938,v70464403354,v70464402410,v70464396778,v70464685978,v70464664042] := by decide
  rw [h]
  exact (.cons (no_v70464425882) (.cons (no_v70464424938) (.cons (no_v70464403354) (.cons (no_v70464402410) (.cons (no_v70464396778) (.cons (no_v70464685978) (.cons (no_v70464664042) .nil)))))))

private def v70464805262 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v70464805262 : ¬ MinimalInterpreter v70464805262 :=
  cost_cut false 1 (by decide)

private def v70464804494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))
private theorem no_v70464804494 : ¬ MinimalInterpreter v70464804494 :=
  cost_cut false 1 (by decide)

private def v70464694670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v70464694670 : ¬ MinimalInterpreter v70464694670 :=
  cost_cut false 1 (by decide)

private def v70464693902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2)))))))
private theorem no_v70464693902 : ¬ MinimalInterpreter v70464693902 :=
  cost_cut false 1 (by decide)

private def v70464666254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v70464666254 : ¬ MinimalInterpreter v70464666254 :=
  cost_cut false 1 (by decide)

theorem row227 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [2,0,0,2]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [2,0,0,2] = [v70464805262,v70464804494,v70464694670,v70464693902,v70464666254] := by decide
  rw [h]
  exact (.cons (no_v70464805262) (.cons (no_v70464804494) (.cons (no_v70464694670) (.cons (no_v70464693902) (.cons (no_v70464666254) .nil)))))

end Blc.SelfintSingleObject.Rows38
