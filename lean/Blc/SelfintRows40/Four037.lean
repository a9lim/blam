import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402307246478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))))
private theorem no_v1402307246478 : ¬ MinimalInterpreter v1402307246478 :=
  cost_cut false 2 (by decide)

private def v1402307239566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))))
private theorem no_v1402307239566 : ¬ MinimalInterpreter v1402307239566 :=
  cost_cut false 2 (by decide)

private def v1402307197326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402307197326 : ¬ MinimalInterpreter v1402307197326 :=
  cost_cut false 2 (by decide)

private def v1402307186286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402307186286 : ¬ MinimalInterpreter v1402307186286 :=
  cost_cut false 2 (by decide)

private def v1402307190414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 2)))))))))
private theorem no_v1402307190414 : ¬ MinimalInterpreter v1402307190414 :=
  cost_cut false 2 (by decide)

private def v1402307178126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402307178126 : ¬ MinimalInterpreter v1402307178126 :=
  cost_cut false 2 (by decide)

private def v1402307175342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2))))))))
private theorem no_v1402307175342 : ¬ MinimalInterpreter v1402307175342 :=
  cost_cut false 2 (by decide)

private def v1402308426126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))))
private theorem no_v1402308426126 : ¬ MinimalInterpreter v1402308426126 :=
  cost_cut false 2 (by decide)

private def v1402308419214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))))
private theorem no_v1402308419214 : ¬ MinimalInterpreter v1402308419214 :=
  cost_cut false 2 (by decide)

private def v1402313144718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))))
private theorem no_v1402313144718 : ¬ MinimalInterpreter v1402313144718 :=
  cost_cut false 2 (by decide)

private def v1402313137806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))))
private theorem no_v1402313137806 : ¬ MinimalInterpreter v1402313137806 :=
  cost_cut false 2 (by decide)

theorem four259 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,2,0,2]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,2,0,2] = [v1402307246478,v1402307239566,v1402307197326,v1402307186286,v1402307190414,v1402307178126,v1402307175342,v1402308426126,v1402308419214,v1402313144718,v1402313137806] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307246478) (.cons (no_v1402307239566) (.cons (no_v1402307197326) (.cons (no_v1402307186286) (.cons (no_v1402307190414) (.cons (no_v1402307178126) (.cons (no_v1402307175342) (.cons (no_v1402308426126) (.cons (no_v1402308419214) (.cons (no_v1402313144718) (.cons (no_v1402313137806) .nil)))))))))))

private def v1402306928246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))))
private theorem no_v1402306928246 : ¬ MinimalInterpreter v1402306928246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402306926518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))))
private theorem no_v1402306926518 : ¬ MinimalInterpreter v1402306926518 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402306915958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402306915958 : ¬ MinimalInterpreter v1402306915958 :=
  cost_cut false 2 (by decide)

private def v1402306914230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)))))))))
private theorem no_v1402306914230 : ¬ MinimalInterpreter v1402306914230 :=
  cost_cut false 2 (by decide)

private def v1402306911158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)))))))))
private theorem no_v1402306911158 : ¬ MinimalInterpreter v1402306911158 :=
  cost_cut false 2 (by decide)

private def v1402307246534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))))
private theorem no_v1402307246534 : ¬ MinimalInterpreter v1402307246534 :=
  cost_cut false 2 (by decide)

private def v1402307239622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))))
private theorem no_v1402307239622 : ¬ MinimalInterpreter v1402307239622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307239478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))))
private theorem no_v1402307239478 : ¬ MinimalInterpreter v1402307239478 :=
  cost_cut false 2 (by decide)

private def v1402307197382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402307197382 : ¬ MinimalInterpreter v1402307197382 :=
  cost_cut false 2 (by decide)

private def v1402307190470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))))
private theorem no_v1402307190470 : ¬ MinimalInterpreter v1402307190470 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307178182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402307178182 : ¬ MinimalInterpreter v1402307178182 :=
  cost_cut false 2 (by decide)

private def v1402307190326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 1))))))))
private theorem no_v1402307190326 : ¬ MinimalInterpreter v1402307190326 :=
  cost_cut false 2 (by decide)

private def v1402307178038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402307178038 : ¬ MinimalInterpreter v1402307178038 :=
  cost_cut false 2 (by decide)

private def v1402308426182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))))
private theorem no_v1402308426182 : ¬ MinimalInterpreter v1402308426182 :=
  cost_cut false 2 (by decide)

private def v1402308419270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))))
private theorem no_v1402308419270 : ¬ MinimalInterpreter v1402308419270 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1402308419126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))))
private theorem no_v1402308419126 : ¬ MinimalInterpreter v1402308419126 :=
  cost_cut false 2 (by decide)

private def v1402313144774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))))
private theorem no_v1402313144774 : ¬ MinimalInterpreter v1402313144774 :=
  cost_cut false 2 (by decide)

private def v1402313137862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))))
private theorem no_v1402313137862 : ¬ MinimalInterpreter v1402313137862 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402313137718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))))
private theorem no_v1402313137718 : ¬ MinimalInterpreter v1402313137718 :=
  cost_cut false 2 (by decide)

theorem four260 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,2,1,1]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,2,1,1] = [v1402306928246,v1402306926518,v1402306915958,v1402306914230,v1402306911158,v1402307246534,v1402307239622,v1402307239478,v1402307197382,v1402307190470,v1402307178182,v1402307190326,v1402307178038,v1402308426182,v1402308419270,v1402308419126,v1402313144774,v1402313137862,v1402313137718] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306928246) (.cons (no_v1402306926518) (.cons (no_v1402306915958) (.cons (no_v1402306914230) (.cons (no_v1402306911158) (.cons (no_v1402307246534) (.cons (no_v1402307239622) (.cons (no_v1402307239478) (.cons (no_v1402307197382) (.cons (no_v1402307190470) (.cons (no_v1402307178182) (.cons (no_v1402307190326) (.cons (no_v1402307178038) (.cons (no_v1402308426182) (.cons (no_v1402308419270) (.cons (no_v1402308419126) (.cons (no_v1402313144774) (.cons (no_v1402313137862) (.cons (no_v1402313137718) .nil)))))))))))))))))))

private def v1402307239482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))))
private theorem no_v1402307239482 : ¬ MinimalInterpreter v1402307239482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307186298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402307186298 : ¬ MinimalInterpreter v1402307186298 :=
  cost_cut false 2 (by decide)

private def v1402307190330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))))
private theorem no_v1402307190330 : ¬ MinimalInterpreter v1402307190330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307178042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402307178042 : ¬ MinimalInterpreter v1402307178042 :=
  cost_cut false 2 (by decide)

private def v1402307175354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 0))))))))
private theorem no_v1402307175354 : ¬ MinimalInterpreter v1402307175354 :=
  cost_cut false 2 (by decide)

private def v1402308419130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))))
private theorem no_v1402308419130 : ¬ MinimalInterpreter v1402308419130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1402313137722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))))
private theorem no_v1402313137722 : ¬ MinimalInterpreter v1402313137722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

theorem four261 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,2,2,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,2,2,0] = [v1402307239482,v1402307186298,v1402307190330,v1402307178042,v1402307175354,v1402308419130,v1402313137722] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307239482) (.cons (no_v1402307186298) (.cons (no_v1402307190330) (.cons (no_v1402307178042) (.cons (no_v1402307175354) (.cons (no_v1402308419130) (.cons (no_v1402313137722) .nil)))))))

private def v1402306928438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1)))))))))))
private theorem no_v1402306928438 : ¬ MinimalInterpreter v1402306928438 :=
  cost_cut false 2 (by decide)

private def v1402306926550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1))))))))))
private theorem no_v1402306926550 : ¬ MinimalInterpreter v1402306926550 :=
  cost_cut false 2 (by decide)

private def v1402306916150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402306916150 : ¬ MinimalInterpreter v1402306916150 :=
  cost_cut false 2 (by decide)

private def v1402306914262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1)))))))))
private theorem no_v1402306914262 : ¬ MinimalInterpreter v1402306914262 :=
  cost_cut false 2 (by decide)

private def v1402306911190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1)))))))))
private theorem no_v1402306911190 : ¬ MinimalInterpreter v1402306911190 :=
  cost_cut false 2 (by decide)

private def v1402307223350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))))
private theorem no_v1402307223350 : ¬ MinimalInterpreter v1402307223350 :=
  cost_cut false 2 (by decide)

private def v1402307221462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))))
private theorem no_v1402307221462 : ¬ MinimalInterpreter v1402307221462 :=
  cost_cut false 2 (by decide)

private def v1402307186486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402307186486 : ¬ MinimalInterpreter v1402307186486 :=
  cost_cut false 2 (by decide)

private def v1402307175382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1))))))))
private theorem no_v1402307175382 : ¬ MinimalInterpreter v1402307175382 :=
  cost_cut false 2 (by decide)

private def v1402313121590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))))
private theorem no_v1402313121590 : ¬ MinimalInterpreter v1402313121590 :=
  cost_cut false 2 (by decide)

private def v1402313119702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))))
private theorem no_v1402313119702 : ¬ MinimalInterpreter v1402313119702 :=
  cost_cut false 2 (by decide)

theorem four262 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,3,0,1]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,3,0,1] = [v1402306928438,v1402306926550,v1402306916150,v1402306914262,v1402306911190,v1402307223350,v1402307221462,v1402307186486,v1402307175382,v1402313121590,v1402313119702] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306928438) (.cons (no_v1402306926550) (.cons (no_v1402306916150) (.cons (no_v1402306914262) (.cons (no_v1402306911190) (.cons (no_v1402307223350) (.cons (no_v1402307221462) (.cons (no_v1402307186486) (.cons (no_v1402307175382) (.cons (no_v1402313121590) (.cons (no_v1402313119702) .nil)))))))))))

private def v1402306928442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0)))))))))))
private theorem no_v1402306928442 : ¬ MinimalInterpreter v1402306928442 :=
  cost_cut false 2 (by decide)

private def v1402306926554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))))
private theorem no_v1402306926554 : ¬ MinimalInterpreter v1402306926554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402306916154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402306916154 : ¬ MinimalInterpreter v1402306916154 :=
  cost_cut false 2 (by decide)

private def v1402306914266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))))
private theorem no_v1402306914266 : ¬ MinimalInterpreter v1402306914266 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402306911194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0)))))))))
private theorem no_v1402306911194 : ¬ MinimalInterpreter v1402306911194 :=
  cost_cut false 2 (by decide)

private def v1402307223354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))))
private theorem no_v1402307223354 : ¬ MinimalInterpreter v1402307223354 :=
  cost_cut false 2 (by decide)

private def v1402307221466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))))
private theorem no_v1402307221466 : ¬ MinimalInterpreter v1402307221466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))))

private def v1402307186490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402307186490 : ¬ MinimalInterpreter v1402307186490 :=
  cost_cut false 2 (by decide)

private def v1402307175386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0))))))))
private theorem no_v1402307175386 : ¬ MinimalInterpreter v1402307175386 :=
  cost_cut false 2 (by decide)

private def v1402313121594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))))
private theorem no_v1402313121594 : ¬ MinimalInterpreter v1402313121594 :=
  cost_cut false 2 (by decide)

private def v1402313119706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))))
private theorem no_v1402313119706 : ¬ MinimalInterpreter v1402313119706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))))

theorem four263 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,3,1,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,3,1,0] = [v1402306928442,v1402306926554,v1402306916154,v1402306914266,v1402306911194,v1402307223354,v1402307221466,v1402307186490,v1402307175386,v1402313121594,v1402313119706] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306928442) (.cons (no_v1402306926554) (.cons (no_v1402306916154) (.cons (no_v1402306914266) (.cons (no_v1402306911194) (.cons (no_v1402307223354) (.cons (no_v1402307221466) (.cons (no_v1402307186490) (.cons (no_v1402307175386) (.cons (no_v1402313121594) (.cons (no_v1402313119706) .nil)))))))))))

theorem four264 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,4,0,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402306940126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 3)))))))))))
private theorem no_v1402306940126 : ¬ MinimalInterpreter v1402306940126 :=
  cost_cut false 2 (by decide)

private def v1402306939742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 3))))))))))
private theorem no_v1402306939742 : ¬ MinimalInterpreter v1402306939742 :=
  cost_cut false 2 (by decide)

private def v1402306917598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402306917598 : ¬ MinimalInterpreter v1402306917598 :=
  cost_cut false 2 (by decide)

private def v1402306917214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 3)))))))))
private theorem no_v1402306917214 : ¬ MinimalInterpreter v1402306917214 :=
  cost_cut false 2 (by decide)

private def v1402306911582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 3)))))))))
private theorem no_v1402306911582 : ¬ MinimalInterpreter v1402306911582 :=
  cost_cut false 2 (by decide)

private def v1402307293982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 3)))))))))))
private theorem no_v1402307293982 : ¬ MinimalInterpreter v1402307293982 :=
  cost_cut false 2 (by decide)

private def v1402307292446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))))))
private theorem no_v1402307292446 : ¬ MinimalInterpreter v1402307292446 :=
  cost_cut false 2 (by decide)

private def v1402307203870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402307203870 : ¬ MinimalInterpreter v1402307203870 :=
  cost_cut false 2 (by decide)

private def v1402307202334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 3)))))))))
private theorem no_v1402307202334 : ¬ MinimalInterpreter v1402307202334 :=
  cost_cut false 2 (by decide)

private def v1402307179806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402307179806 : ¬ MinimalInterpreter v1402307179806 :=
  cost_cut false 2 (by decide)

theorem four265 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,0,0,3]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,0,0,3] = [v1402306940126,v1402306939742,v1402306917598,v1402306917214,v1402306911582,v1402307293982,v1402307292446,v1402307203870,v1402307202334,v1402307179806] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306940126) (.cons (no_v1402306939742) (.cons (no_v1402306917598) (.cons (no_v1402306917214) (.cons (no_v1402306911582) (.cons (no_v1402307293982) (.cons (no_v1402307292446) (.cons (no_v1402307203870) (.cons (no_v1402307202334) (.cons (no_v1402307179806) .nil))))))))))

end Blc.SelfintSingleObject.Rows40
