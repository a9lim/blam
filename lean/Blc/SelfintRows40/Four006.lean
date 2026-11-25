import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402314811190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402314811190 : ¬ MinimalInterpreter v1402314811190 :=
  chain_cut true 7 (by decide)

private def v1402314810838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v1402314810838 : ¬ MinimalInterpreter v1402314810838 :=
  chain_cut true 7 (by decide)

private def v1402314783542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402314783542 : ¬ MinimalInterpreter v1402314783542 :=
  chain_cut false 5 (by decide)

private def v1402314783190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v1402314783190 : ¬ MinimalInterpreter v1402314783190 :=
  chain_cut false 5 (by decide)

private def v1402314776278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v1402314776278 : ¬ MinimalInterpreter v1402314776278 :=
  chain_cut false 5 (by decide)

private def v1402313041718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v1402313041718 : ¬ MinimalInterpreter v1402313041718 :=
  w_cut false 0 (by decide)

private def v1402313041366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v1402313041366 : ¬ MinimalInterpreter v1402313041366 :=
  w_cut false 0 (by decide)

private def v1402313014070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402313014070 : ¬ MinimalInterpreter v1402313014070 :=
  chain_cut true 9 (by decide)

private def v1402312571702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312571702 : ¬ MinimalInterpreter v1402312571702 :=
  w_cut false 0 (by decide)

private def v1402313013718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 1))))))
private theorem no_v1402313013718 : ¬ MinimalInterpreter v1402313013718 :=
  chain_cut true 9 (by decide)

private def v1402313006806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 1))))))
private theorem no_v1402313006806 : ¬ MinimalInterpreter v1402313006806 :=
  chain_cut false 6 (by decide)

private def v1402312571350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v1402312571350 : ¬ MinimalInterpreter v1402312571350 :=
  w_cut false 0 (by decide)

private def v1402312564438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v1402312564438 : ¬ MinimalInterpreter v1402312564438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312453846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v1402312453846 : ¬ MinimalInterpreter v1402312453846 :=
  w_cut false 0 (by decide)

theorem four42 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,2,1,0,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,2,1,0,1] = [v1402314811190,v1402314810838,v1402314783542,v1402314783190,v1402314776278,v1402313041718,v1402313041366,v1402313014070,v1402312571702,v1402313013718,v1402313006806,v1402312571350,v1402312564438,v1402312453846] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314811190) (.cons (no_v1402314810838) (.cons (no_v1402314783542) (.cons (no_v1402314783190) (.cons (no_v1402314776278) (.cons (no_v1402313041718) (.cons (no_v1402313041366) (.cons (no_v1402313014070) (.cons (no_v1402312571702) (.cons (no_v1402313013718) (.cons (no_v1402313006806) (.cons (no_v1402312571350) (.cons (no_v1402312564438) (.cons (no_v1402312453846) .nil))))))))))))))

private def v1402314811194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402314811194 : ¬ MinimalInterpreter v1402314811194 :=
  chain_cut true 7 (by decide)

private def v1402314810842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v1402314810842 : ¬ MinimalInterpreter v1402314810842 :=
  chain_cut true 7 (by decide)

private def v1402314783546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402314783546 : ¬ MinimalInterpreter v1402314783546 :=
  chain_cut false 5 (by decide)

private def v1402314783194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v1402314783194 : ¬ MinimalInterpreter v1402314783194 :=
  chain_cut false 5 (by decide)

private def v1402314776282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v1402314776282 : ¬ MinimalInterpreter v1402314776282 :=
  chain_cut false 5 (by decide)

private def v1402313041722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v1402313041722 : ¬ MinimalInterpreter v1402313041722 :=
  w_cut false 0 (by decide)

private def v1402313041370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v1402313041370 : ¬ MinimalInterpreter v1402313041370 :=
  w_cut false 0 (by decide)

private def v1402313014074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402313014074 : ¬ MinimalInterpreter v1402313014074 :=
  chain_cut true 9 (by decide)

private def v1402312571706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312571706 : ¬ MinimalInterpreter v1402312571706 :=
  w_cut false 0 (by decide)

private def v1402313013722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0))))))
private theorem no_v1402313013722 : ¬ MinimalInterpreter v1402313013722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 0)) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313006810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0))))))
private theorem no_v1402313006810 : ¬ MinimalInterpreter v1402313006810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312571354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v1402312571354 : ¬ MinimalInterpreter v1402312571354 :=
  w_cut false 0 (by decide)

private def v1402312564442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v1402312564442 : ¬ MinimalInterpreter v1402312564442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 1)) (.var 0)) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312453850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v1402312453850 : ¬ MinimalInterpreter v1402312453850 :=
  w_cut false 0 (by decide)

theorem four43 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,2,1,1,0]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,2,1,1,0] = [v1402314811194,v1402314810842,v1402314783546,v1402314783194,v1402314776282,v1402313041722,v1402313041370,v1402313014074,v1402312571706,v1402313013722,v1402313006810,v1402312571354,v1402312564442,v1402312453850] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314811194) (.cons (no_v1402314810842) (.cons (no_v1402314783546) (.cons (no_v1402314783194) (.cons (no_v1402314776282) (.cons (no_v1402313041722) (.cons (no_v1402313041370) (.cons (no_v1402313014074) (.cons (no_v1402312571706) (.cons (no_v1402313013722) (.cons (no_v1402313006810) (.cons (no_v1402312571354) (.cons (no_v1402312564442) (.cons (no_v1402312453850) .nil))))))))))))))

theorem four44 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,2,2,0,0]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four45 : BadRow (markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [0,2,2,2]) := by
  have h : markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [0,2,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four46 : BadRow (markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [1,1,2,2]) := by
  have h : markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [1,1,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four47 : BadRow (markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [1,2,1,2]) := by
  have h : markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [1,2,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four48 : BadRow (markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [1,2,2,1]) := by
  have h : markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [1,2,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
