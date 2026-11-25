import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1401820335930 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1401820335930 : ¬ MinimalInterpreter v1401820335930 :=
  chain_cut true 3 (by decide)

private def v1401820335066 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1401820335066 : ¬ MinimalInterpreter v1401820335066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401820329786 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1401820329786 : ¬ MinimalInterpreter v1401820329786 :=
  chain_cut true 3 (by decide)

private def v1401820328922 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1401820328922 : ¬ MinimalInterpreter v1401820328922 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401820327386 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1401820327386 : ¬ MinimalInterpreter v1401820327386 :=
  chain_cut true 3 (by decide)

private def v1401820483386 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1401820483386 : ¬ MinimalInterpreter v1401820483386 :=
  chain_cut true 3 (by decide)

private def v1401820482522 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1401820482522 : ¬ MinimalInterpreter v1401820482522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1401821073210 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1401821073210 : ¬ MinimalInterpreter v1401821073210 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v1401821072346 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1401821072346 : ¬ MinimalInterpreter v1401821072346 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398599110458 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1398599110458 : ¬ MinimalInterpreter v1398599110458 :=
  chain_cut true 4 (by decide)

private def v1398599109594 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1398599109594 : ¬ MinimalInterpreter v1398599109594 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398599104314 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1398599104314 : ¬ MinimalInterpreter v1398599104314 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599103450 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1398599103450 : ¬ MinimalInterpreter v1398599103450 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398599101914 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1398599101914 : ¬ MinimalInterpreter v1398599101914 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599257914 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1398599257914 : ¬ MinimalInterpreter v1398599257914 :=
  cost_cut false 4 (by decide)

private def v1398599257050 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1398599257050 : ¬ MinimalInterpreter v1398599257050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1398599847738 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1398599847738 : ¬ MinimalInterpreter v1398599847738 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398599846874 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1398599846874 : ¬ MinimalInterpreter v1398599846874 :=
  w_cut false 0 (by decide)

theorem four434 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,2,1,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,2,1,0] = [v1401820335930,v1401820335066,v1401820329786,v1401820328922,v1401820327386,v1401820483386,v1401820482522,v1401821073210,v1401821072346,v1398599110458,v1398599109594,v1398599104314,v1398599103450,v1398599101914,v1398599257914,v1398599257050,v1398599847738,v1398599846874] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401820335930) (.cons (no_v1401820335066) (.cons (no_v1401820329786) (.cons (no_v1401820328922) (.cons (no_v1401820327386) (.cons (no_v1401820483386) (.cons (no_v1401820482522) (.cons (no_v1401821073210) (.cons (no_v1401821072346) (.cons (no_v1398599110458) (.cons (no_v1398599109594) (.cons (no_v1398599104314) (.cons (no_v1398599103450) (.cons (no_v1398599101914) (.cons (no_v1398599257914) (.cons (no_v1398599257050) (.cons (no_v1398599847738) (.cons (no_v1398599846874) .nil))))))))))))))))))

private def v1401820341870 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v1401820341870 : ¬ MinimalInterpreter v1401820341870 :=
  chain_cut true 3 (by decide)

private def v1401820341678 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v1401820341678 : ¬ MinimalInterpreter v1401820341678 :=
  chain_cut true 3 (by decide)

private def v1401820330606 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v1401820330606 : ¬ MinimalInterpreter v1401820330606 :=
  chain_cut true 3 (by decide)

private def v1401820330414 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v1401820330414 : ¬ MinimalInterpreter v1401820330414 :=
  chain_cut true 3 (by decide)

private def v1401820327598 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v1401820327598 : ¬ MinimalInterpreter v1401820327598 :=
  chain_cut true 3 (by decide)

private def v1398599116398 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v1398599116398 : ¬ MinimalInterpreter v1398599116398 :=
  cost_cut false 4 (by decide)

private def v1398599116206 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v1398599116206 : ¬ MinimalInterpreter v1398599116206 :=
  cost_cut false 4 (by decide)

private def v1398599105134 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v1398599105134 : ¬ MinimalInterpreter v1398599105134 :=
  chain_cut false 5 (by decide)

private def v1398599104942 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v1398599104942 : ¬ MinimalInterpreter v1398599104942 :=
  chain_cut false 5 (by decide)

private def v1398599102126 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v1398599102126 : ¬ MinimalInterpreter v1398599102126 :=
  chain_cut false 6 (by decide)

theorem four435 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [1,0,0,2]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [1,0,0,2] = [v1401820341870,v1401820341678,v1401820330606,v1401820330414,v1401820327598,v1398599116398,v1398599116206,v1398599105134,v1398599104942,v1398599102126] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401820341870) (.cons (no_v1401820341678) (.cons (no_v1401820330606) (.cons (no_v1401820330414) (.cons (no_v1401820327598) (.cons (no_v1398599116398) (.cons (no_v1398599116206) (.cons (no_v1398599105134) (.cons (no_v1398599104942) (.cons (no_v1398599102126) .nil))))))))))

theorem four436 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [1,0,1,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1401820341882 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v1401820341882 : ¬ MinimalInterpreter v1401820341882 :=
  chain_cut true 3 (by decide)

private def v1401820341690 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v1401820341690 : ¬ MinimalInterpreter v1401820341690 :=
  chain_cut true 3 (by decide)

private def v1401820330618 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v1401820330618 : ¬ MinimalInterpreter v1401820330618 :=
  chain_cut true 3 (by decide)

private def v1401820330426 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v1401820330426 : ¬ MinimalInterpreter v1401820330426 :=
  chain_cut true 3 (by decide)

private def v1401820327610 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v1401820327610 : ¬ MinimalInterpreter v1401820327610 :=
  chain_cut true 3 (by decide)

private def v1398599116410 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v1398599116410 : ¬ MinimalInterpreter v1398599116410 :=
  cost_cut false 4 (by decide)

private def v1398599116218 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v1398599116218 : ¬ MinimalInterpreter v1398599116218 :=
  cost_cut false 4 (by decide)

private def v1398599105146 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v1398599105146 : ¬ MinimalInterpreter v1398599105146 :=
  chain_cut false 5 (by decide)

private def v1398599104954 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v1398599104954 : ¬ MinimalInterpreter v1398599104954 :=
  cost_cut false 4 (by decide)

private def v1398599102138 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v1398599102138 : ¬ MinimalInterpreter v1398599102138 :=
  chain_cut false 5 (by decide)

theorem four437 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [1,0,2,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [1,0,2,0] = [v1401820341882,v1401820341690,v1401820330618,v1401820330426,v1401820327610,v1398599116410,v1398599116218,v1398599105146,v1398599104954,v1398599102138] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401820341882) (.cons (no_v1401820341690) (.cons (no_v1401820330618) (.cons (no_v1401820330426) (.cons (no_v1401820327610) (.cons (no_v1398599116410) (.cons (no_v1398599116218) (.cons (no_v1398599105146) (.cons (no_v1398599104954) (.cons (no_v1398599102138) .nil))))))))))

theorem four438 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [1,1,0,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four439 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [1,1,1,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1401820342170 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v1401820342170 : ¬ MinimalInterpreter v1401820342170 :=
  chain_cut true 3 (by decide)

private def v1401820341738 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v1401820341738 : ¬ MinimalInterpreter v1401820341738 :=
  chain_cut true 3 (by decide)

private def v1401820330906 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v1401820330906 : ¬ MinimalInterpreter v1401820330906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401820330474 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v1401820330474 : ¬ MinimalInterpreter v1401820330474 :=
  chain_cut true 3 (by decide)

private def v1401820327658 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v1401820327658 : ¬ MinimalInterpreter v1401820327658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398599116698 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v1398599116698 : ¬ MinimalInterpreter v1398599116698 :=
  cost_cut false 4 (by decide)

private def v1398599116266 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v1398599116266 : ¬ MinimalInterpreter v1398599116266 :=
  cost_cut false 4 (by decide)

private def v1398599105434 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v1398599105434 : ¬ MinimalInterpreter v1398599105434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398599105002 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v1398599105002 : ¬ MinimalInterpreter v1398599105002 :=
  cost_cut false 4 (by decide)

private def v1398599102186 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v1398599102186 : ¬ MinimalInterpreter v1398599102186 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four440 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [1,2,0,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [1,2,0,0] = [v1401820342170,v1401820341738,v1401820330906,v1401820330474,v1401820327658,v1398599116698,v1398599116266,v1398599105434,v1398599105002,v1398599102186] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401820342170) (.cons (no_v1401820341738) (.cons (no_v1401820330906) (.cons (no_v1401820330474) (.cons (no_v1401820327658) (.cons (no_v1398599116698) (.cons (no_v1398599116266) (.cons (no_v1398599105434) (.cons (no_v1398599105002) (.cons (no_v1398599102186) .nil))))))))))

end Blc.SelfintSingleObject.Rows40
