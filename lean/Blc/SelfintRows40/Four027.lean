import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402307246526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 4))))))))))
private theorem no_v1402307246526 : ¬ MinimalInterpreter v1402307246526 :=
  chain_cut false 2 (by decide)

private def v1402307239614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 4)))))))))
private theorem no_v1402307239614 : ¬ MinimalInterpreter v1402307239614 :=
  chain_cut false 2 (by decide)

private def v1402307197374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 4)))))))))
private theorem no_v1402307197374 : ¬ MinimalInterpreter v1402307197374 :=
  chain_cut false 2 (by decide)

private def v1402307190462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 4))))))))
private theorem no_v1402307190462 : ¬ MinimalInterpreter v1402307190462 :=
  chain_cut false 2 (by decide)

private def v1402307178174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 4))))))))
private theorem no_v1402307178174 : ¬ MinimalInterpreter v1402307178174 :=
  chain_cut false 2 (by decide)

private def v1402308519486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 4))))))))))
private theorem no_v1402308519486 : ¬ MinimalInterpreter v1402308519486 :=
  chain_cut false 2 (by decide)

private def v1402308491838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 4)))))))))
private theorem no_v1402308491838 : ¬ MinimalInterpreter v1402308491838 :=
  chain_cut false 2 (by decide)

private def v1402308322878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 4)))))))))
private theorem no_v1402308322878 : ¬ MinimalInterpreter v1402308322878 :=
  chain_cut false 2 (by decide)

private def v1402308295230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 4))))))))
private theorem no_v1402308295230 : ¬ MinimalInterpreter v1402308295230 :=
  chain_cut false 2 (by decide)

private def v1402308246078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 4))))))))
private theorem no_v1402308246078 : ¬ MinimalInterpreter v1402308246078 :=
  chain_cut false 2 (by decide)

private def v1402313144766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 4))))))))))
private theorem no_v1402313144766 : ¬ MinimalInterpreter v1402313144766 :=
  chain_cut false 2 (by decide)

private def v1402313137854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 4)))))))))
private theorem no_v1402313137854 : ¬ MinimalInterpreter v1402313137854 :=
  chain_cut false 2 (by decide)

private def v1402332112446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 4))))))))))
private theorem no_v1402332112446 : ¬ MinimalInterpreter v1402332112446 :=
  chain_cut false 2 (by decide)

private def v1402332084798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 4)))))))))
private theorem no_v1402332084798 : ¬ MinimalInterpreter v1402332084798 :=
  chain_cut false 2 (by decide)

private def v1402407516606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 4))))))))))
private theorem no_v1402407516606 : ¬ MinimalInterpreter v1402407516606 :=
  chain_cut false 4 (by decide)

private def v1402407509694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 4)))))))))
private theorem no_v1402407509694 : ¬ MinimalInterpreter v1402407509694 :=
  chain_cut false 4 (by decide)

private def v1402407609918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 4))))))))))
private theorem no_v1402407609918 : ¬ MinimalInterpreter v1402407609918 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407582270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 4)))))))))
private theorem no_v1402407582270 : ¬ MinimalInterpreter v1402407582270 :=
  chain_cut false 6 (by decide)

theorem four189 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,2,0,4]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,2,0,4] = [v1402307246526,v1402307239614,v1402307197374,v1402307190462,v1402307178174,v1402308519486,v1402308491838,v1402308322878,v1402308295230,v1402308246078,v1402313144766,v1402313137854,v1402332112446,v1402332084798,v1402407516606,v1402407509694,v1402407609918,v1402407582270] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307246526) (.cons (no_v1402307239614) (.cons (no_v1402307197374) (.cons (no_v1402307190462) (.cons (no_v1402307178174) (.cons (no_v1402308519486) (.cons (no_v1402308491838) (.cons (no_v1402308322878) (.cons (no_v1402308295230) (.cons (no_v1402308246078) (.cons (no_v1402313144766) (.cons (no_v1402313137854) (.cons (no_v1402332112446) (.cons (no_v1402332084798) (.cons (no_v1402407516606) (.cons (no_v1402407509694) (.cons (no_v1402407609918) (.cons (no_v1402407582270) .nil))))))))))))))))))

private def v1402308426206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402308426206 : ¬ MinimalInterpreter v1402308426206 :=
  cost_cut false 2 (by decide)

private def v1402308419294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 3)))))))))
private theorem no_v1402308419294 : ¬ MinimalInterpreter v1402308419294 :=
  cost_cut false 2 (by decide)

private def v1402308519710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402308519710 : ¬ MinimalInterpreter v1402308519710 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 3))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308492062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v1402308492062 : ¬ MinimalInterpreter v1402308492062 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 3)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 3)))) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308491486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 3))))))))
private theorem no_v1402308491486 : ¬ MinimalInterpreter v1402308491486 :=
  chain_cut false 2 (by decide)

private def v1402308323102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1402308323102 : ¬ MinimalInterpreter v1402308323102 :=
  cost_cut false 2 (by decide)

private def v1402308278750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 1) (.var 3))))))))
private theorem no_v1402308278750 : ¬ MinimalInterpreter v1402308278750 :=
  chain_cut false 2 (by decide)

private def v1402308295454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 3))))))))
private theorem no_v1402308295454 : ¬ MinimalInterpreter v1402308295454 :=
  cost_cut false 2 (by decide)

private def v1402308246302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1402308246302 : ¬ MinimalInterpreter v1402308246302 :=
  cost_cut false 2 (by decide)

private def v1402308271838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.var 3)))))))
private theorem no_v1402308271838 : ¬ MinimalInterpreter v1402308271838 :=
  chain_cut false 2 (by decide)

private def v1402308294878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 3)))))))
private theorem no_v1402308294878 : ¬ MinimalInterpreter v1402308294878 :=
  chain_cut false 2 (by decide)

private def v1402308245726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 3)))))))
private theorem no_v1402308245726 : ¬ MinimalInterpreter v1402308245726 :=
  chain_cut false 2 (by decide)

private def v1402308234974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 3)))))))
private theorem no_v1402308234974 : ¬ MinimalInterpreter v1402308234974 :=
  chain_cut false 2 (by decide)

private def v1402313144798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402313144798 : ¬ MinimalInterpreter v1402313144798 :=
  cost_cut false 2 (by decide)

private def v1402313137886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 3)))))))))
private theorem no_v1402313137886 : ¬ MinimalInterpreter v1402313137886 :=
  cost_cut false 2 (by decide)

private def v1402313606942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402313606942 : ¬ MinimalInterpreter v1402313606942 :=
  chain_cut false 2 (by decide)

private def v1402313612318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 3))))))))))
private theorem no_v1402313612318 : ¬ MinimalInterpreter v1402313612318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 3)))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 2)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 3)))))) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313501726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 3)))))))))
private theorem no_v1402313501726 : ¬ MinimalInterpreter v1402313501726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 3))))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (so_dead (by decide) (.var 3))))) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312820510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1402312820510 : ¬ MinimalInterpreter v1402312820510 :=
  chain_cut false 2 (by decide)

private def v1402312825886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.var 3)))))))))
private theorem no_v1402312825886 : ¬ MinimalInterpreter v1402312825886 :=
  chain_cut false 2 (by decide)

private def v1402312647134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.lam (.app (.var 1) (.var 3))))))))
private theorem no_v1402312647134 : ¬ MinimalInterpreter v1402312647134 :=
  chain_cut false 2 (by decide)

private def v1402312648478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v1402312648478 : ¬ MinimalInterpreter v1402312648478 :=
  chain_cut false 2 (by decide)

private def v1402312715294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.var 3))))))))
private theorem no_v1402312715294 : ¬ MinimalInterpreter v1402312715294 :=
  chain_cut false 2 (by decide)

private def v1402312518686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.var 3))))))))
private theorem no_v1402312518686 : ¬ MinimalInterpreter v1402312518686 :=
  chain_cut false 2 (by decide)

private def v1402312620830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.lam (.var 3)))))))
private theorem no_v1402312620830 : ¬ MinimalInterpreter v1402312620830 :=
  chain_cut false 2 (by decide)

private def v1402312473374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.lam (.var 3)))))))
private theorem no_v1402312473374 : ¬ MinimalInterpreter v1402312473374 :=
  chain_cut false 2 (by decide)

private def v1402332019166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402332019166 : ¬ MinimalInterpreter v1402332019166 :=
  cost_cut false 2 (by decide)

private def v1402332012254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 3)))))))))
private theorem no_v1402332012254 : ¬ MinimalInterpreter v1402332012254 :=
  cost_cut false 2 (by decide)

private def v1402332084446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 3))))))))
private theorem no_v1402332084446 : ¬ MinimalInterpreter v1402332084446 :=
  chain_cut false 2 (by decide)

private def v1402332481310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402332481310 : ¬ MinimalInterpreter v1402332481310 :=
  chain_cut false 2 (by decide)

private def v1402407581918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 3))))))))
private theorem no_v1402407581918 : ¬ MinimalInterpreter v1402407581918 :=
  chain_cut false 6 (by decide)

private def v1402407978782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402407978782 : ¬ MinimalInterpreter v1402407978782 :=
  chain_cut false 6 (by decide)

theorem four190 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,2,1,3]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,2,1,3] = [v1402308426206,v1402308419294,v1402308519710,v1402308492062,v1402308491486,v1402308323102,v1402308278750,v1402308295454,v1402308246302,v1402308271838,v1402308294878,v1402308245726,v1402308234974,v1402313144798,v1402313137886,v1402313606942,v1402313612318,v1402313501726,v1402312820510,v1402312825886,v1402312647134,v1402312648478,v1402312715294,v1402312518686,v1402312620830,v1402312473374,v1402332019166,v1402332012254,v1402332084446,v1402332481310,v1402407581918,v1402407978782] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308426206) (.cons (no_v1402308419294) (.cons (no_v1402308519710) (.cons (no_v1402308492062) (.cons (no_v1402308491486) (.cons (no_v1402308323102) (.cons (no_v1402308278750) (.cons (no_v1402308295454) (.cons (no_v1402308246302) (.cons (no_v1402308271838) (.cons (no_v1402308294878) (.cons (no_v1402308245726) (.cons (no_v1402308234974) (.cons (no_v1402313144798) (.cons (no_v1402313137886) (.cons (no_v1402313606942) (.cons (no_v1402313612318) (.cons (no_v1402313501726) (.cons (no_v1402312820510) (.cons (no_v1402312825886) (.cons (no_v1402312647134) (.cons (no_v1402312648478) (.cons (no_v1402312715294) (.cons (no_v1402312518686) (.cons (no_v1402312620830) (.cons (no_v1402312473374) (.cons (no_v1402332019166) (.cons (no_v1402332012254) (.cons (no_v1402332084446) (.cons (no_v1402332481310) (.cons (no_v1402407581918) (.cons (no_v1402407978782) .nil))))))))))))))))))))))))))))))))

private def v1402308518382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 2))))))))))
private theorem no_v1402308518382 : ¬ MinimalInterpreter v1402308518382 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.app (.var 2) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.app (.var 1) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308519822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402308519822 : ¬ MinimalInterpreter v1402308519822 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308492174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v1402308492174 : ¬ MinimalInterpreter v1402308492174 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))

private def v1402308491502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 2))))))))
private theorem no_v1402308491502 : ¬ MinimalInterpreter v1402308491502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 2))) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308321774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 2)))))))))
private theorem no_v1402308321774 : ¬ MinimalInterpreter v1402308321774 :=
  cost_cut false 2 (by decide)

private def v1402308323214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1402308323214 : ¬ MinimalInterpreter v1402308323214 :=
  cost_cut false 2 (by decide)

private def v1402308278766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 2))))))))
private theorem no_v1402308278766 : ¬ MinimalInterpreter v1402308278766 :=
  cost_cut false 2 (by decide)

private def v1402308295566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.lam (.var 2))))))))
private theorem no_v1402308295566 : ¬ MinimalInterpreter v1402308295566 :=
  cost_cut false 2 (by decide)

private def v1402308246414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1402308246414 : ¬ MinimalInterpreter v1402308246414 :=
  cost_cut false 2 (by decide)

private def v1402308271854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 2)))) (.var 2)))))))
private theorem no_v1402308271854 : ¬ MinimalInterpreter v1402308271854 :=
  cost_cut false 2 (by decide)

private def v1402308294894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 2)))))))
private theorem no_v1402308294894 : ¬ MinimalInterpreter v1402308294894 :=
  cost_cut false 2 (by decide)

private def v1402308245742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1402308245742 : ¬ MinimalInterpreter v1402308245742 :=
  cost_cut false 2 (by decide)

private def v1402308234990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 2)))))))
private theorem no_v1402308234990 : ¬ MinimalInterpreter v1402308234990 :=
  cost_cut false 2 (by decide)

private def v1402313607054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402313607054 : ¬ MinimalInterpreter v1402313607054 :=
  chain_cut false 2 (by decide)

private def v1402313499534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 2))))))))
private theorem no_v1402313499534 : ¬ MinimalInterpreter v1402313499534 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 2)))) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312820622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1402312820622 : ¬ MinimalInterpreter v1402312820622 :=
  chain_cut false 2 (by decide)

private def v1402312648590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v1402312648590 : ¬ MinimalInterpreter v1402312648590 :=
  chain_cut false 2 (by decide)

private def v1402312713102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.lam (.var 2)))))))
private theorem no_v1402312713102 : ¬ MinimalInterpreter v1402312713102 :=
  chain_cut false 2 (by decide)

private def v1402312516494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.lam (.var 2)))))))
private theorem no_v1402312516494 : ¬ MinimalInterpreter v1402312516494 :=
  chain_cut false 2 (by decide)

private def v1402312473486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.lam (.var 2)))))))
private theorem no_v1402312473486 : ¬ MinimalInterpreter v1402312473486 :=
  chain_cut false 2 (by decide)

private def v1402312620270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 2))))) (.var 2))))))
private theorem no_v1402312620270 : ¬ MinimalInterpreter v1402312620270 :=
  chain_cut false 2 (by decide)

private def v1402312472814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 2))) (.var 2))))))
private theorem no_v1402312472814 : ¬ MinimalInterpreter v1402312472814 :=
  chain_cut false 2 (by decide)

private def v1402332481422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402332481422 : ¬ MinimalInterpreter v1402332481422 :=
  chain_cut false 2 (by decide)

private def v1402407978894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402407978894 : ¬ MinimalInterpreter v1402407978894 :=
  chain_cut false 6 (by decide)

theorem four191 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,2,2,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,2,2,2] = [v1402308518382,v1402308519822,v1402308492174,v1402308491502,v1402308321774,v1402308323214,v1402308278766,v1402308295566,v1402308246414,v1402308271854,v1402308294894,v1402308245742,v1402308234990,v1402313607054,v1402313499534,v1402312820622,v1402312648590,v1402312713102,v1402312516494,v1402312473486,v1402312620270,v1402312472814,v1402332481422,v1402407978894] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308518382) (.cons (no_v1402308519822) (.cons (no_v1402308492174) (.cons (no_v1402308491502) (.cons (no_v1402308321774) (.cons (no_v1402308323214) (.cons (no_v1402308278766) (.cons (no_v1402308295566) (.cons (no_v1402308246414) (.cons (no_v1402308271854) (.cons (no_v1402308294894) (.cons (no_v1402308245742) (.cons (no_v1402308234990) (.cons (no_v1402313607054) (.cons (no_v1402313499534) (.cons (no_v1402312820622) (.cons (no_v1402312648590) (.cons (no_v1402312713102) (.cons (no_v1402312516494) (.cons (no_v1402312473486) (.cons (no_v1402312620270) (.cons (no_v1402312472814) (.cons (no_v1402332481422) (.cons (no_v1402407978894) .nil))))))))))))))))))))))))

private def v1402308426230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402308426230 : ¬ MinimalInterpreter v1402308426230 :=
  cost_cut false 2 (by decide)

private def v1402308419318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))))))
private theorem no_v1402308419318 : ¬ MinimalInterpreter v1402308419318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (.app (.var 0) (so_dead (by decide) (.app (.app (.var 2) (.var 3)) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308519878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 3) (.lam (.var 1))))))))))
private theorem no_v1402308519878 : ¬ MinimalInterpreter v1402308519878 :=
  chain_cut false 2 (by decide)

private def v1402308492230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.lam (.var 1)))))))))
private theorem no_v1402308492230 : ¬ MinimalInterpreter v1402308492230 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.lam (.var 1))))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 2) (.var 3)) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308491510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 3))) (.var 1))))))))
private theorem no_v1402308491510 : ¬ MinimalInterpreter v1402308491510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 3))) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 1)))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 2))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 3))) (.var 1))) (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_dead (by decide) (.var 1))) (by decide) (by decide))))))

private def v1402308323270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 3) (.lam (.var 1)))))))))
private theorem no_v1402308323270 : ¬ MinimalInterpreter v1402308323270 :=
  chain_cut false 2 (by decide)

private def v1402308278774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 3) (.var 1))))))))
private theorem no_v1402308278774 : ¬ MinimalInterpreter v1402308278774 :=
  chain_cut false 2 (by decide)

private def v1402308295622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.lam (.var 1))))))))
private theorem no_v1402308295622 : ¬ MinimalInterpreter v1402308295622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.lam (.var 1)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 2) (.var 3))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308246470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 3)) (.lam (.var 1))))))))
private theorem no_v1402308246470 : ¬ MinimalInterpreter v1402308246470 :=
  chain_cut false 2 (by decide)

private def v1402308271862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 1)))))))
private theorem no_v1402308271862 : ¬ MinimalInterpreter v1402308271862 :=
  cost_cut false 2 (by decide)

private def v1402308294902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 3)))) (.var 1)))))))
private theorem no_v1402308294902 : ¬ MinimalInterpreter v1402308294902 :=
  cost_cut false 2 (by decide)

private def v1402308245750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1402308245750 : ¬ MinimalInterpreter v1402308245750 :=
  cost_cut false 2 (by decide)

private def v1402308234998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 3)) (.var 1)))))))
private theorem no_v1402308234998 : ¬ MinimalInterpreter v1402308234998 :=
  chain_cut false 2 (by decide)

private def v1402313144822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402313144822 : ¬ MinimalInterpreter v1402313144822 :=
  cost_cut false 2 (by decide)

private def v1402313137910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))))))
private theorem no_v1402313137910 : ¬ MinimalInterpreter v1402313137910 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 2) (.var 3)) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313498870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 1)))))))
private theorem no_v1402313498870 : ¬ MinimalInterpreter v1402313498870 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 1))) (.app (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312647158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.lam (.app (.var 3) (.var 1))))))))
private theorem no_v1402312647158 : ¬ MinimalInterpreter v1402312647158 :=
  chain_cut false 2 (by decide)

private def v1402312620998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.lam (.var 1)))))))
private theorem no_v1402312620998 : ¬ MinimalInterpreter v1402312620998 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.lam (.var 1))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.var 1))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312712438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 3))))) (.var 1))))))
private theorem no_v1402312712438 : ¬ MinimalInterpreter v1402312712438 :=
  chain_cut false 2 (by decide)

private def v1402312515830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 3)))) (.var 1))))))
private theorem no_v1402312515830 : ¬ MinimalInterpreter v1402312515830 :=
  chain_cut false 2 (by decide)

private def v1402312472822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 3))) (.var 1))))))
private theorem no_v1402312472822 : ¬ MinimalInterpreter v1402312472822 :=
  chain_cut false 2 (by decide)

private def v1402332019190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402332019190 : ¬ MinimalInterpreter v1402332019190 :=
  cost_cut false 2 (by decide)

private def v1402332012278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1)))))))))
private theorem no_v1402332012278 : ¬ MinimalInterpreter v1402332012278 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 2) (.var 3)) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332112838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.lam (.var 1))))))))))
private theorem no_v1402332112838 : ¬ MinimalInterpreter v1402332112838 :=
  chain_cut false 2 (by decide)

private def v1402332085190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.lam (.var 1)))))))))
private theorem no_v1402332085190 : ¬ MinimalInterpreter v1402332085190 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.lam (.var 1))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 3)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402407610310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.lam (.var 1))))))))))
private theorem no_v1402407610310 : ¬ MinimalInterpreter v1402407610310 :=
  chain_cut false 6 (by decide)

private def v1402407582662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.lam (.var 1)))))))))
private theorem no_v1402407582662 : ¬ MinimalInterpreter v1402407582662 :=
  w_cut false 0 (by decide)

theorem four192 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,2,3,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,2,3,1] = [v1402308426230,v1402308419318,v1402308519878,v1402308492230,v1402308491510,v1402308323270,v1402308278774,v1402308295622,v1402308246470,v1402308271862,v1402308294902,v1402308245750,v1402308234998,v1402313144822,v1402313137910,v1402313498870,v1402312647158,v1402312620998,v1402312712438,v1402312515830,v1402312472822,v1402332019190,v1402332012278,v1402332112838,v1402332085190,v1402407610310,v1402407582662] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308426230) (.cons (no_v1402308419318) (.cons (no_v1402308519878) (.cons (no_v1402308492230) (.cons (no_v1402308491510) (.cons (no_v1402308323270) (.cons (no_v1402308278774) (.cons (no_v1402308295622) (.cons (no_v1402308246470) (.cons (no_v1402308271862) (.cons (no_v1402308294902) (.cons (no_v1402308245750) (.cons (no_v1402308234998) (.cons (no_v1402313144822) (.cons (no_v1402313137910) (.cons (no_v1402313498870) (.cons (no_v1402312647158) (.cons (no_v1402312620998) (.cons (no_v1402312712438) (.cons (no_v1402312515830) (.cons (no_v1402312472822) (.cons (no_v1402332019190) (.cons (no_v1402332012278) (.cons (no_v1402332112838) (.cons (no_v1402332085190) (.cons (no_v1402407610310) (.cons (no_v1402407582662) .nil)))))))))))))))))))))))))))

private def v1402307246586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 4) (.var 0))))))))))
private theorem no_v1402307246586 : ¬ MinimalInterpreter v1402307246586 :=
  chain_cut false 2 (by decide)

private def v1402307239674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 4)) (.var 0)))))))))
private theorem no_v1402307239674 : ¬ MinimalInterpreter v1402307239674 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 4)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 3))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 4)) (.var 0))) (.app (.var 1) (.var 3)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402307197434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 4) (.var 0)))))))))
private theorem no_v1402307197434 : ¬ MinimalInterpreter v1402307197434 :=
  chain_cut false 2 (by decide)

private def v1402307190522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 4))) (.var 0))))))))
private theorem no_v1402307190522 : ¬ MinimalInterpreter v1402307190522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 4))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 3))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 4))) (.var 0)) (.app (.var 1) (.var 3)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402307178234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 4)) (.var 0))))))))
private theorem no_v1402307178234 : ¬ MinimalInterpreter v1402307178234 :=
  chain_cut false 2 (by decide)

private def v1402308491514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 4))) (.var 0))))))))
private theorem no_v1402308491514 : ¬ MinimalInterpreter v1402308491514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 4))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.lam (.var 3)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 4))) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 3))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402308271866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 4)))) (.var 0)))))))
private theorem no_v1402308271866 : ¬ MinimalInterpreter v1402308271866 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 4)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))) (.lam (r := (.lam (.app (.var 1) (.var 3)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 4)))) (.var 0)) (so_dead (by decide) (.app (.var 1) (.var 3))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308294906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 4)))) (.var 0)))))))
private theorem no_v1402308294906 : ¬ MinimalInterpreter v1402308294906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 4)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.lam (.var 3)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 4)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402308245754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 4))) (.var 0)))))))
private theorem no_v1402308245754 : ¬ MinimalInterpreter v1402308245754 :=
  chain_cut false 2 (by decide)

private def v1402313144826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 4) (.var 0))))))))))
private theorem no_v1402313144826 : ¬ MinimalInterpreter v1402313144826 :=
  chain_cut false 2 (by decide)

private def v1402313137914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 4)) (.var 0)))))))))
private theorem no_v1402313137914 : ¬ MinimalInterpreter v1402313137914 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 4)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 3))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 4)) (.var 0)) (.app (.var 1) (.var 3)) (by decide) (by decide)))) (.var 1) (by decide) (by decide))))))

private def v1402312620282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 4))))) (.var 0))))))
private theorem no_v1402312620282 : ¬ MinimalInterpreter v1402312620282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 4))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))) (.lam (r := (.lam (.app (.var 1) (.lam (.var 3))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 2) (so_dead (by decide) (.var 4))))) (.var 0)) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402332084474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 4))) (.var 0))))))))
private theorem no_v1402332084474 : ¬ MinimalInterpreter v1402332084474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 4))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.lam (.var 3)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 4))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3))) (by decide) (by decide)))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402407516666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 4) (.var 0))))))))))
private theorem no_v1402407516666 : ¬ MinimalInterpreter v1402407516666 :=
  chain_cut false 4 (by decide)

private def v1402407509754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 4)) (.var 0)))))))))
private theorem no_v1402407509754 : ¬ MinimalInterpreter v1402407509754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 4)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 3))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 4)) (.var 0)) (.app (.var 1) (.var 3)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1402407581946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 4))) (.var 0))))))))
private theorem no_v1402407581946 : ¬ MinimalInterpreter v1402407581946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 4))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.lam (.var 3)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 4))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

theorem four193 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,2,4,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,2,4,0] = [v1402307246586,v1402307239674,v1402307197434,v1402307190522,v1402307178234,v1402308491514,v1402308271866,v1402308294906,v1402308245754,v1402313144826,v1402313137914,v1402312620282,v1402332084474,v1402407516666,v1402407509754,v1402407581946] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307246586) (.cons (no_v1402307239674) (.cons (no_v1402307197434) (.cons (no_v1402307190522) (.cons (no_v1402307178234) (.cons (no_v1402308491514) (.cons (no_v1402308271866) (.cons (no_v1402308294906) (.cons (no_v1402308245754) (.cons (no_v1402313144826) (.cons (no_v1402313137914) (.cons (no_v1402312620282) (.cons (no_v1402332084474) (.cons (no_v1402407516666) (.cons (no_v1402407509754) (.cons (no_v1402407581946) .nil))))))))))))))))

private def v1402308522782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402308522782 : ¬ MinimalInterpreter v1402308522782 :=
  chain_cut false 2 (by decide)

private def v1402308492574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402308492574 : ¬ MinimalInterpreter v1402308492574 :=
  chain_cut false 2 (by decide)

private def v1402308326174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1402308326174 : ¬ MinimalInterpreter v1402308326174 :=
  chain_cut false 2 (by decide)

private def v1402308279518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 3))))))))
private theorem no_v1402308279518 : ¬ MinimalInterpreter v1402308279518 :=
  chain_cut false 2 (by decide)

private def v1402308295966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.lam (.var 3))))))))
private theorem no_v1402308295966 : ¬ MinimalInterpreter v1402308295966 :=
  chain_cut false 2 (by decide)

private def v1402308246814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1402308246814 : ¬ MinimalInterpreter v1402308246814 :=
  chain_cut false 2 (by decide)

private def v1402308235102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 3)))))))
private theorem no_v1402308235102 : ¬ MinimalInterpreter v1402308235102 :=
  chain_cut false 2 (by decide)

private def v1402332115742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402332115742 : ¬ MinimalInterpreter v1402332115742 :=
  chain_cut false 2 (by decide)

private def v1402332085534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402332085534 : ¬ MinimalInterpreter v1402332085534 :=
  chain_cut false 2 (by decide)

private def v1402407613214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402407613214 : ¬ MinimalInterpreter v1402407613214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407583006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402407583006 : ¬ MinimalInterpreter v1402407583006 :=
  chain_cut false 5 (by decide)

theorem four194 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,3,0,3]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,3,0,3] = [v1402308522782,v1402308492574,v1402308326174,v1402308279518,v1402308295966,v1402308246814,v1402308235102,v1402332115742,v1402332085534,v1402407613214,v1402407583006] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308522782) (.cons (no_v1402308492574) (.cons (no_v1402308326174) (.cons (no_v1402308279518) (.cons (no_v1402308295966) (.cons (no_v1402308246814) (.cons (no_v1402308235102) (.cons (no_v1402332115742) (.cons (no_v1402332085534) (.cons (no_v1402407613214) (.cons (no_v1402407583006) .nil)))))))))))

private def v1402308426990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402308426990 : ¬ MinimalInterpreter v1402308426990 :=
  cost_cut false 2 (by decide)

private def v1402308419438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 2)))))))))
private theorem no_v1402308419438 : ¬ MinimalInterpreter v1402308419438 :=
  cost_cut false 2 (by decide)

private def v1402308522222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.lam (.app (.var 1) (.var 2))))))))))
private theorem no_v1402308522222 : ¬ MinimalInterpreter v1402308522222 :=
  chain_cut false 2 (by decide)

private def v1402308522894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.lam (.var 2))))))))))
private theorem no_v1402308522894 : ¬ MinimalInterpreter v1402308522894 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2))))))) (.lam (r := (.app (.var 2) (.app (.var 0) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.app (.var 1) (so_dead (by decide) (.var 2))))) (.app (.var 2) (.app (.var 0) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308492686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.lam (.var 2)))))))))
private theorem no_v1402308492686 : ¬ MinimalInterpreter v1402308492686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 2) (.var 0)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308492398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402308492398 : ¬ MinimalInterpreter v1402308492398 :=
  chain_cut false 2 (by decide)

private def v1402308325614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v1402308325614 : ¬ MinimalInterpreter v1402308325614 :=
  chain_cut false 2 (by decide)

private def v1402308326286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.lam (.var 2)))))))))
private theorem no_v1402308326286 : ¬ MinimalInterpreter v1402308326286 :=
  chain_cut false 2 (by decide)

private def v1402308279534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 2))))))))
private theorem no_v1402308279534 : ¬ MinimalInterpreter v1402308279534 :=
  cost_cut false 2 (by decide)

private def v1402308296078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.lam (.var 2))))))))
private theorem no_v1402308296078 : ¬ MinimalInterpreter v1402308296078 :=
  chain_cut false 2 (by decide)

private def v1402308246926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.lam (.var 2))))))))
private theorem no_v1402308246926 : ¬ MinimalInterpreter v1402308246926 :=
  chain_cut false 2 (by decide)

private def v1402308295790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.lam (.var 1)))) (.var 2)))))))
private theorem no_v1402308295790 : ¬ MinimalInterpreter v1402308295790 :=
  chain_cut false 2 (by decide)

private def v1402308246638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1402308246638 : ¬ MinimalInterpreter v1402308246638 :=
  chain_cut false 2 (by decide)

private def v1402308235118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 2)))))))
private theorem no_v1402308235118 : ¬ MinimalInterpreter v1402308235118 :=
  cost_cut false 2 (by decide)

private def v1402313145582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402313145582 : ¬ MinimalInterpreter v1402313145582 :=
  cost_cut false 2 (by decide)

private def v1402313138030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 2)))))))))
private theorem no_v1402313138030 : ¬ MinimalInterpreter v1402313138030 :=
  cost_cut false 2 (by decide)

private def v1402313240814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.lam (.app (.var 1) (.var 2))))))))))
private theorem no_v1402313240814 : ¬ MinimalInterpreter v1402313240814 :=
  chain_cut false 2 (by decide)

private def v1402312650990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v1402312650990 : ¬ MinimalInterpreter v1402312650990 :=
  chain_cut false 2 (by decide)

private def v1402312651662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.lam (.var 2))))))))
private theorem no_v1402312651662 : ¬ MinimalInterpreter v1402312651662 :=
  chain_cut false 2 (by decide)

private def v1402312604910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312604910 : ¬ MinimalInterpreter v1402312604910 :=
  chain_cut false 2 (by decide)

private def v1402312621454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 1)))) (.lam (.var 2)))))))
private theorem no_v1402312621454 : ¬ MinimalInterpreter v1402312621454 :=
  chain_cut false 2 (by decide)

private def v1402312473998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.lam (.var 2)))))))
private theorem no_v1402312473998 : ¬ MinimalInterpreter v1402312473998 :=
  chain_cut false 2 (by decide)

private def v1402312462190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 1)) (.var 2))))))
private theorem no_v1402312462190 : ¬ MinimalInterpreter v1402312462190 :=
  chain_cut false 2 (by decide)

private def v1402332019950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402332019950 : ¬ MinimalInterpreter v1402332019950 :=
  cost_cut false 2 (by decide)

private def v1402332012398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 2)))))))))
private theorem no_v1402332012398 : ¬ MinimalInterpreter v1402332012398 :=
  cost_cut false 2 (by decide)

private def v1402332085358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402332085358 : ¬ MinimalInterpreter v1402332085358 :=
  chain_cut false 2 (by decide)

private def v1402407612654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.lam (.app (.var 1) (.var 2))))))))))
private theorem no_v1402407612654 : ¬ MinimalInterpreter v1402407612654 :=
  chain_cut false 4 (by decide)

private def v1402407582830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402407582830 : ¬ MinimalInterpreter v1402407582830 :=
  chain_cut false 5 (by decide)

theorem four195 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,3,1,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,3,1,2] = [v1402308426990,v1402308419438,v1402308522222,v1402308522894,v1402308492686,v1402308492398,v1402308325614,v1402308326286,v1402308279534,v1402308296078,v1402308246926,v1402308295790,v1402308246638,v1402308235118,v1402313145582,v1402313138030,v1402313240814,v1402312650990,v1402312651662,v1402312604910,v1402312621454,v1402312473998,v1402312462190,v1402332019950,v1402332012398,v1402332085358,v1402407612654,v1402407582830] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308426990) (.cons (no_v1402308419438) (.cons (no_v1402308522222) (.cons (no_v1402308522894) (.cons (no_v1402308492686) (.cons (no_v1402308492398) (.cons (no_v1402308325614) (.cons (no_v1402308326286) (.cons (no_v1402308279534) (.cons (no_v1402308296078) (.cons (no_v1402308246926) (.cons (no_v1402308295790) (.cons (no_v1402308246638) (.cons (no_v1402308235118) (.cons (no_v1402313145582) (.cons (no_v1402313138030) (.cons (no_v1402313240814) (.cons (no_v1402312650990) (.cons (no_v1402312651662) (.cons (no_v1402312604910) (.cons (no_v1402312621454) (.cons (no_v1402312473998) (.cons (no_v1402312462190) (.cons (no_v1402332019950) (.cons (no_v1402332012398) (.cons (no_v1402332085358) (.cons (no_v1402407612654) (.cons (no_v1402407582830) .nil))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
