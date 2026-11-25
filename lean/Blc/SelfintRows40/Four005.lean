import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four35 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,1,1,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314804858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402314804858 : ¬ MinimalInterpreter v1402314804858 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314804154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1402314804154 : ¬ MinimalInterpreter v1402314804154 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314782330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1402314782330 : ¬ MinimalInterpreter v1402314782330 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314781626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1402314781626 : ¬ MinimalInterpreter v1402314781626 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314775994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1402314775994 : ¬ MinimalInterpreter v1402314775994 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313035386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1402313035386 : ¬ MinimalInterpreter v1402313035386 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313034682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1402313034682 : ¬ MinimalInterpreter v1402313034682 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313012858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402313012858 : ¬ MinimalInterpreter v1402313012858 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312570490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312570490 : ¬ MinimalInterpreter v1402312570490 :=
  chain_cut false 4 (by decide)

private def v1402313012154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v1402313012154 : ¬ MinimalInterpreter v1402313012154 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313006522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0))))))
private theorem no_v1402313006522 : ¬ MinimalInterpreter v1402313006522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312569786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1402312569786 : ¬ MinimalInterpreter v1402312569786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 2))) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312564154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v1402312564154 : ¬ MinimalInterpreter v1402312564154 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 2)) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312453562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1402312453562 : ¬ MinimalInterpreter v1402312453562 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four36 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,1,2,0]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,1,2,0] = [v1402314804858,v1402314804154,v1402314782330,v1402314781626,v1402314775994,v1402313035386,v1402313034682,v1402313012858,v1402312570490,v1402313012154,v1402313006522,v1402312569786,v1402312564154,v1402312453562] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314804858) (.cons (no_v1402314804154) (.cons (no_v1402314782330) (.cons (no_v1402314781626) (.cons (no_v1402314775994) (.cons (no_v1402313035386) (.cons (no_v1402313034682) (.cons (no_v1402313012858) (.cons (no_v1402312570490) (.cons (no_v1402313012154) (.cons (no_v1402313006522) (.cons (no_v1402312569786) (.cons (no_v1402312564154) (.cons (no_v1402312453562) .nil))))))))))))))

private def v1402314805046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402314805046 : ¬ MinimalInterpreter v1402314805046 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314804182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1402314804182 : ¬ MinimalInterpreter v1402314804182 :=
  chain_cut true 5 (by decide)

private def v1402314782518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402314782518 : ¬ MinimalInterpreter v1402314782518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314781654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1402314781654 : ¬ MinimalInterpreter v1402314781654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314776022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1402314776022 : ¬ MinimalInterpreter v1402314776022 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313035574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1402313035574 : ¬ MinimalInterpreter v1402313035574 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313034710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1402313034710 : ¬ MinimalInterpreter v1402313034710 :=
  chain_cut true 6 (by decide)

private def v1402313013046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402313013046 : ¬ MinimalInterpreter v1402313013046 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312570678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312570678 : ¬ MinimalInterpreter v1402312570678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402313012182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 1))))))
private theorem no_v1402313012182 : ¬ MinimalInterpreter v1402313012182 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313006550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 1))))))
private theorem no_v1402313006550 : ¬ MinimalInterpreter v1402313006550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312569814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1402312569814 : ¬ MinimalInterpreter v1402312569814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312564182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.var 1))))))
private theorem no_v1402312564182 : ¬ MinimalInterpreter v1402312564182 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312453590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1402312453590 : ¬ MinimalInterpreter v1402312453590 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four37 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,2,0,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,2,0,1] = [v1402314805046,v1402314804182,v1402314782518,v1402314781654,v1402314776022,v1402313035574,v1402313034710,v1402313013046,v1402312570678,v1402313012182,v1402313006550,v1402312569814,v1402312564182,v1402312453590] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314805046) (.cons (no_v1402314804182) (.cons (no_v1402314782518) (.cons (no_v1402314781654) (.cons (no_v1402314776022) (.cons (no_v1402313035574) (.cons (no_v1402313034710) (.cons (no_v1402313013046) (.cons (no_v1402312570678) (.cons (no_v1402313012182) (.cons (no_v1402313006550) (.cons (no_v1402312569814) (.cons (no_v1402312564182) (.cons (no_v1402312453590) .nil))))))))))))))

private def v1402314805050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402314805050 : ¬ MinimalInterpreter v1402314805050 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314804186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1402314804186 : ¬ MinimalInterpreter v1402314804186 :=
  chain_cut true 5 (by decide)

private def v1402314782522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402314782522 : ¬ MinimalInterpreter v1402314782522 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314781658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1402314781658 : ¬ MinimalInterpreter v1402314781658 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314776026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1402314776026 : ¬ MinimalInterpreter v1402314776026 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313035578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1402313035578 : ¬ MinimalInterpreter v1402313035578 :=
  chain_cut true 7 (by decide)

private def v1402313034714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1402313034714 : ¬ MinimalInterpreter v1402313034714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 1) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313013050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402313013050 : ¬ MinimalInterpreter v1402313013050 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312570682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312570682 : ¬ MinimalInterpreter v1402312570682 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402313012186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 0))))))
private theorem no_v1402313012186 : ¬ MinimalInterpreter v1402313012186 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313006554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 0))))))
private theorem no_v1402313006554 : ¬ MinimalInterpreter v1402313006554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312569818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1402312569818 : ¬ MinimalInterpreter v1402312569818 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 1))) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312564186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 1)) (.var 0))))))
private theorem no_v1402312564186 : ¬ MinimalInterpreter v1402312564186 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 1)) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312453594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1402312453594 : ¬ MinimalInterpreter v1402312453594 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four38 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,2,1,0]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,2,1,0] = [v1402314805050,v1402314804186,v1402314782522,v1402314781658,v1402314776026,v1402313035578,v1402313034714,v1402313013050,v1402312570682,v1402313012186,v1402313006554,v1402312569818,v1402312564186,v1402312453594] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314805050) (.cons (no_v1402314804186) (.cons (no_v1402314782522) (.cons (no_v1402314781658) (.cons (no_v1402314776026) (.cons (no_v1402313035578) (.cons (no_v1402313034714) (.cons (no_v1402313013050) (.cons (no_v1402312570682) (.cons (no_v1402313012186) (.cons (no_v1402313006554) (.cons (no_v1402312569818) (.cons (no_v1402312564186) (.cons (no_v1402312453594) .nil))))))))))))))

theorem four39 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,2,0,0,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314810998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402314810998 : ¬ MinimalInterpreter v1402314810998 :=
  chain_cut true 7 (by decide)

private def v1402314810806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v1402314810806 : ¬ MinimalInterpreter v1402314810806 :=
  chain_cut true 7 (by decide)

private def v1402314783350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v1402314783350 : ¬ MinimalInterpreter v1402314783350 :=
  chain_cut false 5 (by decide)

private def v1402314783158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v1402314783158 : ¬ MinimalInterpreter v1402314783158 :=
  chain_cut false 5 (by decide)

private def v1402314776246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v1402314776246 : ¬ MinimalInterpreter v1402314776246 :=
  chain_cut false 5 (by decide)

private def v1402313041526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v1402313041526 : ¬ MinimalInterpreter v1402313041526 :=
  w_cut false 0 (by decide)

private def v1402313041334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v1402313041334 : ¬ MinimalInterpreter v1402313041334 :=
  w_cut false 0 (by decide)

private def v1402313013878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 1)))))))
private theorem no_v1402313013878 : ¬ MinimalInterpreter v1402313013878 :=
  chain_cut true 9 (by decide)

private def v1402312571510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v1402312571510 : ¬ MinimalInterpreter v1402312571510 :=
  w_cut false 0 (by decide)

private def v1402313013686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 1))))))
private theorem no_v1402313013686 : ¬ MinimalInterpreter v1402313013686 :=
  chain_cut true 9 (by decide)

private def v1402313006774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 1))))))
private theorem no_v1402313006774 : ¬ MinimalInterpreter v1402313006774 :=
  chain_cut false 6 (by decide)

private def v1402312571318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v1402312571318 : ¬ MinimalInterpreter v1402312571318 :=
  w_cut false 0 (by decide)

private def v1402312564406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)) (.var 1))))))
private theorem no_v1402312564406 : ¬ MinimalInterpreter v1402312564406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312453814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v1402312453814 : ¬ MinimalInterpreter v1402312453814 :=
  w_cut false 0 (by decide)

theorem four40 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,2,0,1,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,2,0,1,1] = [v1402314810998,v1402314810806,v1402314783350,v1402314783158,v1402314776246,v1402313041526,v1402313041334,v1402313013878,v1402312571510,v1402313013686,v1402313006774,v1402312571318,v1402312564406,v1402312453814] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314810998) (.cons (no_v1402314810806) (.cons (no_v1402314783350) (.cons (no_v1402314783158) (.cons (no_v1402314776246) (.cons (no_v1402313041526) (.cons (no_v1402313041334) (.cons (no_v1402313013878) (.cons (no_v1402312571510) (.cons (no_v1402313013686) (.cons (no_v1402313006774) (.cons (no_v1402312571318) (.cons (no_v1402312564406) (.cons (no_v1402312453814) .nil))))))))))))))

theorem four41 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,2,0,2,0]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
