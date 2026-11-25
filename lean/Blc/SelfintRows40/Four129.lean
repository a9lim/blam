import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four903 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [1,2,0,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four904 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [2,0,0,1]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four905 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [2,0,1,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four906 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [2,1,0,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four907 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [3,0,0,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four908 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [0,0,2,2]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1374825848046 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v1374825848046 : ¬ MinimalInterpreter v1374825848046 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1374825846638 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v1374825846638 : ¬ MinimalInterpreter v1374825846638 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1374825835758 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v1374825835758 : ¬ MinimalInterpreter v1374825835758 :=
  cost_cut false 1 (by decide)

private def v1374825834350 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v1374825834350 : ¬ MinimalInterpreter v1374825834350 :=
  cost_cut false 1 (by decide)

private def v1374825831278 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v1374825831278 : ¬ MinimalInterpreter v1374825831278 :=
  cost_cut false 1 (by decide)

theorem four909 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [0,1,1,2]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [0,1,1,2] = [v1374825848046,v1374825846638,v1374825835758,v1374825834350,v1374825831278] := by decide +kernel
  rw [h]
  exact (.cons (no_v1374825848046) (.cons (no_v1374825846638) (.cons (no_v1374825835758) (.cons (no_v1374825834350) (.cons (no_v1374825831278) .nil)))))

end Blc.SelfintSingleObject.Rows40
