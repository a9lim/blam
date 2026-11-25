import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v37849452154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v37849452154 : ¬ MinimalInterpreter v37849452154 :=
  cost_cut false 2 (by decide)

private def v37849451450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v37849451450 : ¬ MinimalInterpreter v37849451450 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v37849446010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v37849446010 : ¬ MinimalInterpreter v37849446010 :=
  cost_cut false 2 (by decide)

private def v37849445306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v37849445306 : ¬ MinimalInterpreter v37849445306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v37849443770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v37849443770 : ¬ MinimalInterpreter v37849443770 :=
  cost_cut false 2 (by decide)

private def v37849599610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v37849599610 : ¬ MinimalInterpreter v37849599610 :=
  cost_cut false 2 (by decide)

private def v37849598906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v37849598906 : ¬ MinimalInterpreter v37849598906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v37850189434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v37850189434 : ¬ MinimalInterpreter v37850189434 :=
  cost_cut false 2 (by decide)

private def v37850188730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v37850188730 : ¬ MinimalInterpreter v37850188730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

theorem row96 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [0,1,2,0]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [0,1,2,0] = [v37849452154,v37849451450,v37849446010,v37849445306,v37849443770,v37849599610,v37849598906,v37850189434,v37850188730] := by decide
  rw [h]
  exact (.cons (no_v37849452154) (.cons (no_v37849451450) (.cons (no_v37849446010) (.cons (no_v37849445306) (.cons (no_v37849443770) (.cons (no_v37849599610) (.cons (no_v37849598906) (.cons (no_v37850189434) (.cons (no_v37850188730) .nil)))))))))

private def v37849452342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v37849452342 : ¬ MinimalInterpreter v37849452342 :=
  cost_cut false 2 (by decide)

private def v37849451478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v37849451478 : ¬ MinimalInterpreter v37849451478 :=
  cost_cut false 2 (by decide)

private def v37849446198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v37849446198 : ¬ MinimalInterpreter v37849446198 :=
  cost_cut false 2 (by decide)

private def v37849445334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v37849445334 : ¬ MinimalInterpreter v37849445334 :=
  cost_cut false 2 (by decide)

private def v37849443798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v37849443798 : ¬ MinimalInterpreter v37849443798 :=
  cost_cut false 2 (by decide)

private def v37849599798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v37849599798 : ¬ MinimalInterpreter v37849599798 :=
  cost_cut false 2 (by decide)

private def v37849598934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v37849598934 : ¬ MinimalInterpreter v37849598934 :=
  cost_cut false 2 (by decide)

private def v37850189622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v37850189622 : ¬ MinimalInterpreter v37850189622 :=
  cost_cut false 2 (by decide)

private def v37850188758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v37850188758 : ¬ MinimalInterpreter v37850188758 :=
  cost_cut false 2 (by decide)

theorem row97 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [0,2,0,1]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [0,2,0,1] = [v37849452342,v37849451478,v37849446198,v37849445334,v37849443798,v37849599798,v37849598934,v37850189622,v37850188758] := by decide
  rw [h]
  exact (.cons (no_v37849452342) (.cons (no_v37849451478) (.cons (no_v37849446198) (.cons (no_v37849445334) (.cons (no_v37849443798) (.cons (no_v37849599798) (.cons (no_v37849598934) (.cons (no_v37850189622) (.cons (no_v37850188758) .nil)))))))))

private def v37849452346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v37849452346 : ¬ MinimalInterpreter v37849452346 :=
  cost_cut false 2 (by decide)

private def v37849451482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v37849451482 : ¬ MinimalInterpreter v37849451482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v37849446202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v37849446202 : ¬ MinimalInterpreter v37849446202 :=
  cost_cut false 2 (by decide)

private def v37849445338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v37849445338 : ¬ MinimalInterpreter v37849445338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v37849443802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v37849443802 : ¬ MinimalInterpreter v37849443802 :=
  cost_cut false 2 (by decide)

private def v37849599802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v37849599802 : ¬ MinimalInterpreter v37849599802 :=
  cost_cut false 2 (by decide)

private def v37849598938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v37849598938 : ¬ MinimalInterpreter v37849598938 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v37850189626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v37850189626 : ¬ MinimalInterpreter v37850189626 :=
  cost_cut false 2 (by decide)

private def v37850188762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v37850188762 : ¬ MinimalInterpreter v37850188762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

theorem row98 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [0,2,1,0]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [0,2,1,0] = [v37849452346,v37849451482,v37849446202,v37849445338,v37849443802,v37849599802,v37849598938,v37850189626,v37850188762] := by decide
  rw [h]
  exact (.cons (no_v37849452346) (.cons (no_v37849451482) (.cons (no_v37849446202) (.cons (no_v37849445338) (.cons (no_v37849443802) (.cons (no_v37849599802) (.cons (no_v37849598938) (.cons (no_v37850189626) (.cons (no_v37850188762) .nil)))))))))

theorem row99 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [0,3,0,0]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [0,3,0,0] = [] := by decide
  rw [h]
  exact .nil

private def v37849458286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v37849458286 : ¬ MinimalInterpreter v37849458286 :=
  cost_cut false 2 (by decide)

private def v37849458094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v37849458094 : ¬ MinimalInterpreter v37849458094 :=
  cost_cut false 2 (by decide)

private def v37849447022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))))
private theorem no_v37849447022 : ¬ MinimalInterpreter v37849447022 :=
  cost_cut false 2 (by decide)

private def v37849446830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))))
private theorem no_v37849446830 : ¬ MinimalInterpreter v37849446830 :=
  cost_cut false 2 (by decide)

private def v37849444014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))))
private theorem no_v37849444014 : ¬ MinimalInterpreter v37849444014 :=
  cost_cut false 2 (by decide)

theorem row100 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [1,0,0,2]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [1,0,0,2] = [v37849458286,v37849458094,v37849447022,v37849446830,v37849444014] := by decide
  rw [h]
  exact (.cons (no_v37849458286) (.cons (no_v37849458094) (.cons (no_v37849447022) (.cons (no_v37849446830) (.cons (no_v37849444014) .nil)))))

theorem row101 : BadRow (row ⟨0,2,0,4,4,3⟩ [0,0] [1,0,1,1]) := by
  have h : row ⟨0,2,0,4,4,3⟩ [0,0] [1,0,1,1] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows37
