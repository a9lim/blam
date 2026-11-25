import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400964697722 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1400964697722 : ¬ MinimalInterpreter v1400964697722 :=
  cost_cut false 2 (by decide)

private def v1400964697018 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1400964697018 : ¬ MinimalInterpreter v1400964697018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400964691578 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400964691578 : ¬ MinimalInterpreter v1400964691578 :=
  cost_cut false 2 (by decide)

private def v1400964690874 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v1400964690874 : ¬ MinimalInterpreter v1400964690874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400964689338 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v1400964689338 : ¬ MinimalInterpreter v1400964689338 :=
  cost_cut false 2 (by decide)

private def v1400964845178 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1400964845178 : ¬ MinimalInterpreter v1400964845178 :=
  cost_cut false 2 (by decide)

private def v1400964844474 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1400964844474 : ¬ MinimalInterpreter v1400964844474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1400965435002 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1400965435002 : ¬ MinimalInterpreter v1400965435002 :=
  cost_cut false 2 (by decide)

private def v1400965434298 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1400965434298 : ¬ MinimalInterpreter v1400965434298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

theorem four672 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,1,2,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,1,2,0] = [v1400964697722,v1400964697018,v1400964691578,v1400964690874,v1400964689338,v1400964845178,v1400964844474,v1400965435002,v1400965434298] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964697722) (.cons (no_v1400964697018) (.cons (no_v1400964691578) (.cons (no_v1400964690874) (.cons (no_v1400964689338) (.cons (no_v1400964845178) (.cons (no_v1400964844474) (.cons (no_v1400965435002) (.cons (no_v1400965434298) .nil)))))))))

private def v1400964697910 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1400964697910 : ¬ MinimalInterpreter v1400964697910 :=
  cost_cut false 2 (by decide)

private def v1400964697046 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1400964697046 : ¬ MinimalInterpreter v1400964697046 :=
  cost_cut false 2 (by decide)

private def v1400964691766 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400964691766 : ¬ MinimalInterpreter v1400964691766 :=
  cost_cut false 2 (by decide)

private def v1400964690902 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v1400964690902 : ¬ MinimalInterpreter v1400964690902 :=
  cost_cut false 2 (by decide)

private def v1400964689366 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v1400964689366 : ¬ MinimalInterpreter v1400964689366 :=
  cost_cut false 2 (by decide)

private def v1400964845366 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1400964845366 : ¬ MinimalInterpreter v1400964845366 :=
  cost_cut false 2 (by decide)

private def v1400964844502 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1400964844502 : ¬ MinimalInterpreter v1400964844502 :=
  cost_cut false 2 (by decide)

private def v1400965435190 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1400965435190 : ¬ MinimalInterpreter v1400965435190 :=
  cost_cut false 2 (by decide)

private def v1400965434326 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1400965434326 : ¬ MinimalInterpreter v1400965434326 :=
  cost_cut false 2 (by decide)

theorem four673 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,2,0,1]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,2,0,1] = [v1400964697910,v1400964697046,v1400964691766,v1400964690902,v1400964689366,v1400964845366,v1400964844502,v1400965435190,v1400965434326] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964697910) (.cons (no_v1400964697046) (.cons (no_v1400964691766) (.cons (no_v1400964690902) (.cons (no_v1400964689366) (.cons (no_v1400964845366) (.cons (no_v1400964844502) (.cons (no_v1400965435190) (.cons (no_v1400965434326) .nil)))))))))

private def v1400964697914 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1400964697914 : ¬ MinimalInterpreter v1400964697914 :=
  cost_cut false 2 (by decide)

private def v1400964697050 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1400964697050 : ¬ MinimalInterpreter v1400964697050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400964691770 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400964691770 : ¬ MinimalInterpreter v1400964691770 :=
  cost_cut false 2 (by decide)

private def v1400964690906 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v1400964690906 : ¬ MinimalInterpreter v1400964690906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400964689370 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v1400964689370 : ¬ MinimalInterpreter v1400964689370 :=
  cost_cut false 2 (by decide)

private def v1400964845370 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1400964845370 : ¬ MinimalInterpreter v1400964845370 :=
  cost_cut false 2 (by decide)

private def v1400964844506 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1400964844506 : ¬ MinimalInterpreter v1400964844506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1400965435194 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1400965435194 : ¬ MinimalInterpreter v1400965435194 :=
  cost_cut false 2 (by decide)

private def v1400965434330 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1400965434330 : ¬ MinimalInterpreter v1400965434330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

theorem four674 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,2,1,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,2,1,0] = [v1400964697914,v1400964697050,v1400964691770,v1400964690906,v1400964689370,v1400964845370,v1400964844506,v1400965435194,v1400965434330] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964697914) (.cons (no_v1400964697050) (.cons (no_v1400964691770) (.cons (no_v1400964690906) (.cons (no_v1400964689370) (.cons (no_v1400964845370) (.cons (no_v1400964844506) (.cons (no_v1400965435194) (.cons (no_v1400965434330) .nil)))))))))

theorem four675 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,3,0,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400964703854 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v1400964703854 : ¬ MinimalInterpreter v1400964703854 :=
  cost_cut false 2 (by decide)

private def v1400964703662 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v1400964703662 : ¬ MinimalInterpreter v1400964703662 :=
  cost_cut false 2 (by decide)

private def v1400964692590 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400964692590 : ¬ MinimalInterpreter v1400964692590 :=
  cost_cut false 2 (by decide)

private def v1400964692398 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))))
private theorem no_v1400964692398 : ¬ MinimalInterpreter v1400964692398 :=
  cost_cut false 2 (by decide)

private def v1400964689582 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))))
private theorem no_v1400964689582 : ¬ MinimalInterpreter v1400964689582 :=
  cost_cut false 2 (by decide)

theorem four676 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [1,0,0,2]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [1,0,0,2] = [v1400964703854,v1400964703662,v1400964692590,v1400964692398,v1400964689582] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964703854) (.cons (no_v1400964703662) (.cons (no_v1400964692590) (.cons (no_v1400964692398) (.cons (no_v1400964689582) .nil)))))

theorem four677 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [1,0,1,1]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400964703866 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v1400964703866 : ¬ MinimalInterpreter v1400964703866 :=
  cost_cut false 2 (by decide)

private def v1400964703674 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v1400964703674 : ¬ MinimalInterpreter v1400964703674 :=
  cost_cut false 2 (by decide)

private def v1400964692602 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400964692602 : ¬ MinimalInterpreter v1400964692602 :=
  cost_cut false 2 (by decide)

private def v1400964692410 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v1400964692410 : ¬ MinimalInterpreter v1400964692410 :=
  cost_cut false 2 (by decide)

private def v1400964689594 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v1400964689594 : ¬ MinimalInterpreter v1400964689594 :=
  cost_cut false 2 (by decide)

theorem four678 : BadRow (markedRow ⟨1,2,1,4,4,3⟩ [0,1] [1,0,2,0]) := by
  have h : markedRow ⟨1,2,1,4,4,3⟩ [0,1] [1,0,2,0] = [v1400964703866,v1400964703674,v1400964692602,v1400964692410,v1400964689594] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964703866) (.cons (no_v1400964703674) (.cons (no_v1400964692602) (.cons (no_v1400964692410) (.cons (no_v1400964689594) .nil)))))

end Blc.SelfintSingleObject.Rows40
