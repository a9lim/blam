import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four49 : BadRow (markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [2,0,2,2]) := by
  have h : markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [2,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four50 : BadRow (markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [2,1,1,2]) := by
  have h : markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [2,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four51 : BadRow (markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [2,1,2,1]) := by
  have h : markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [2,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four52 : BadRow (markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [2,2,0,2]) := by
  have h : markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [2,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four53 : BadRow (markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [2,2,1,1]) := by
  have h : markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [2,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four54 : BadRow (markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [2,2,2,0]) := by
  have h : markedRow ⟨0,3,0,2,4,6⟩ [0,0,0] [2,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402308519902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 3)))))))))
private theorem no_v1402308519902 : ¬ MinimalInterpreter v1402308519902 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.app (.var 2) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 3)))) (.app (.var 1) (.app (.var 2) (.var 2))) (by decide) (by decide))) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402308492254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 3))))))))
private theorem no_v1402308492254 : ¬ MinimalInterpreter v1402308492254 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.app (.var 1) (.var 2)) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 3))) (.app (.app (.var 1) (.var 2)) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308323294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 3) (.var 3))))))))
private theorem no_v1402308323294 : ¬ MinimalInterpreter v1402308323294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308295646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 3)))))))
private theorem no_v1402308295646 : ¬ MinimalInterpreter v1402308295646 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308246494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 3)) (.var 3)))))))
private theorem no_v1402308246494 : ¬ MinimalInterpreter v1402308246494 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313238494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 3) (.var 3)))))))))
private theorem no_v1402313238494 : ¬ MinimalInterpreter v1402313238494 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 3) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.app (.var 2) (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.app (.var 3) (.var 3))))) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.var 2)))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402313210846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 3))))))))
private theorem no_v1402313210846 : ¬ MinimalInterpreter v1402313210846 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 3)))))) (.lam (r := (.lam (.app (.app (.var 1) (.var 2)) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.app (.var 2) (.var 3)) (.var 3)))) (so_dead (by decide) (.app (.app (.var 1) (.var 2)) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four55 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [0,2,3,3]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [0,2,3,3] = [v1402308519902,v1402308492254,v1402308323294,v1402308295646,v1402308246494,v1402313238494,v1402313210846] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308519902) (.cons (no_v1402308492254) (.cons (no_v1402308323294) (.cons (no_v1402308295646) (.cons (no_v1402308246494) (.cons (no_v1402313238494) (.cons (no_v1402313210846) .nil)))))))

end Blc.SelfintSingleObject.Rows40
