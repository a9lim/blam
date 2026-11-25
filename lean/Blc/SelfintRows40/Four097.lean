import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four679 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [1,1,0,1]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four680 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [1,1,1,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400964704154 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v1400964704154 : ¬ MinimalInterpreter v1400964704154 :=
  cost_cut false 2 (by decide)

private def v1400964703722 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v1400964703722 : ¬ MinimalInterpreter v1400964703722 :=
  cost_cut false 2 (by decide)

private def v1400964692890 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400964692890 : ¬ MinimalInterpreter v1400964692890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400964692458 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v1400964692458 : ¬ MinimalInterpreter v1400964692458 :=
  cost_cut false 2 (by decide)

private def v1400964689642 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v1400964689642 : ¬ MinimalInterpreter v1400964689642 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem four681 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [1,2,0,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [1,2,0,0] = [v1400964704154,v1400964703722,v1400964692890,v1400964692458,v1400964689642] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964704154) (.cons (no_v1400964703722) (.cons (no_v1400964692890) (.cons (no_v1400964692458) (.cons (no_v1400964689642) .nil)))))

private def v1400964707126 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1400964707126 : ¬ MinimalInterpreter v1400964707126 :=
  cost_cut false 2 (by decide)

private def v1400964707030 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1400964707030 : ¬ MinimalInterpreter v1400964707030 :=
  cost_cut false 2 (by decide)

private def v1400964693302 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400964693302 : ¬ MinimalInterpreter v1400964693302 :=
  cost_cut false 2 (by decide)

private def v1400964693206 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v1400964693206 : ¬ MinimalInterpreter v1400964693206 :=
  cost_cut false 2 (by decide)

private def v1400964689750 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v1400964689750 : ¬ MinimalInterpreter v1400964689750 :=
  cost_cut false 2 (by decide)

theorem four682 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [2,0,0,1]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [2,0,0,1] = [v1400964707126,v1400964707030,v1400964693302,v1400964693206,v1400964689750] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964707126) (.cons (no_v1400964707030) (.cons (no_v1400964693302) (.cons (no_v1400964693206) (.cons (no_v1400964689750) .nil)))))

private def v1400964707130 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1400964707130 : ¬ MinimalInterpreter v1400964707130 :=
  cost_cut false 2 (by decide)

private def v1400964707034 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1400964707034 : ¬ MinimalInterpreter v1400964707034 :=
  cost_cut false 2 (by decide)

private def v1400964693306 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400964693306 : ¬ MinimalInterpreter v1400964693306 :=
  cost_cut false 2 (by decide)

private def v1400964693210 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v1400964693210 : ¬ MinimalInterpreter v1400964693210 :=
  cost_cut false 2 (by decide)

private def v1400964689754 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v1400964689754 : ¬ MinimalInterpreter v1400964689754 :=
  cost_cut false 2 (by decide)

theorem four683 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [2,0,1,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [2,0,1,0] = [v1400964707130,v1400964707034,v1400964693306,v1400964693210,v1400964689754] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964707130) (.cons (no_v1400964707034) (.cons (no_v1400964693306) (.cons (no_v1400964693210) (.cons (no_v1400964689754) .nil)))))

private def v1400964707226 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1400964707226 : ¬ MinimalInterpreter v1400964707226 :=
  cost_cut false 2 (by decide)

private def v1400964707050 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1400964707050 : ¬ MinimalInterpreter v1400964707050 :=
  cost_cut false 2 (by decide)

private def v1400964693402 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400964693402 : ¬ MinimalInterpreter v1400964693402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400964693226 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v1400964693226 : ¬ MinimalInterpreter v1400964693226 :=
  cost_cut false 2 (by decide)

private def v1400964689770 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v1400964689770 : ¬ MinimalInterpreter v1400964689770 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem four684 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [2,1,0,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [2,1,0,0] = [v1400964707226,v1400964707050,v1400964693402,v1400964693226,v1400964689770] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964707226) (.cons (no_v1400964707050) (.cons (no_v1400964693402) (.cons (no_v1400964693226) (.cons (no_v1400964689770) .nil)))))

theorem four685 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [3,0,0,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
