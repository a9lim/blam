import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1376369370938 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v1376369370938 : ¬ MinimalInterpreter v1376369370938 :=
  cost_cut false 1 (by decide)

private def v1376369370586 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v1376369370586 : ¬ MinimalInterpreter v1376369370586 :=
  cost_cut false 1 (by decide)

private def v1376369343290 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v1376369343290 : ¬ MinimalInterpreter v1376369343290 :=
  cost_cut false 1 (by decide)

private def v1376369342938 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v1376369342938 : ¬ MinimalInterpreter v1376369342938 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376369336026 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v1376369336026 : ¬ MinimalInterpreter v1376369336026 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four784 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [2,1,1,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [2,1,1,0] = [v1376369370938,v1376369370586,v1376369343290,v1376369342938,v1376369336026] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376369370938) (.cons (no_v1376369370586) (.cons (no_v1376369343290) (.cons (no_v1376369342938) (.cons (no_v1376369336026) .nil)))))

theorem four785 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [2,2,0,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four786 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [0,0,2,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four787 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [0,1,1,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [0,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four788 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [0,1,2,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [0,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four789 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [0,2,0,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four790 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [2,0] [0,2,1,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [2,0] [0,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
