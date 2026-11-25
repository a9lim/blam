import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1382308485622 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1382308485622 : ¬ MinimalInterpreter v1382308485622 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1382308484854 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1382308484854 : ¬ MinimalInterpreter v1382308484854 :=
  chain_cut false 2 (by decide)

private def v1382308473334 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))))
private theorem no_v1382308473334 : ¬ MinimalInterpreter v1382308473334 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1382308472566 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 1)))))))
private theorem no_v1382308472566 : ¬ MinimalInterpreter v1382308472566 :=
  chain_cut false 2 (by decide)

private def v1382308469494 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1)))))))
private theorem no_v1382308469494 : ¬ MinimalInterpreter v1382308469494 :=
  chain_cut false 2 (by decide)

private def v1382308780534 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1382308780534 : ¬ MinimalInterpreter v1382308780534 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1382308779766 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1382308779766 : ¬ MinimalInterpreter v1382308779766 :=
  chain_cut false 2 (by decide)

private def v1382308796662 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1382308796662 : ¬ MinimalInterpreter v1382308796662 :=
  chain_cut false 2 (by decide)

private def v1382308747510 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))
private theorem no_v1382308747510 : ¬ MinimalInterpreter v1382308747510 :=
  chain_cut false 2 (by decide)

private def v1382308735222 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1))))))
private theorem no_v1382308735222 : ¬ MinimalInterpreter v1382308735222 :=
  chain_cut false 2 (by decide)

private def v1382309976310 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1382309976310 : ¬ MinimalInterpreter v1382309976310 :=
  chain_cut false 2 (by decide)

private def v1382314678774 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1382314678774 : ¬ MinimalInterpreter v1382314678774 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1382314678006 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1382314678006 : ¬ MinimalInterpreter v1382314678006 :=
  chain_cut false 4 (by decide)

private def v1382314694902 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1382314694902 : ¬ MinimalInterpreter v1382314694902 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.app (.var 0) (.var 0)))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

theorem four602 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,0,3,1]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,0,3,1] = [v1382308485622,v1382308484854,v1382308473334,v1382308472566,v1382308469494,v1382308780534,v1382308779766,v1382308796662,v1382308747510,v1382308735222,v1382309976310,v1382314678774,v1382314678006,v1382314694902] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308485622) (.cons (no_v1382308484854) (.cons (no_v1382308473334) (.cons (no_v1382308472566) (.cons (no_v1382308469494) (.cons (no_v1382308780534) (.cons (no_v1382308779766) (.cons (no_v1382308796662) (.cons (no_v1382308747510) (.cons (no_v1382308735222) (.cons (no_v1382309976310) (.cons (no_v1382314678774) (.cons (no_v1382314678006) (.cons (no_v1382314694902) .nil))))))))))))))

private def v1382308486366 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1382308486366 : ¬ MinimalInterpreter v1382308486366 :=
  chain_cut false 2 (by decide)

private def v1382308484958 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1382308484958 : ¬ MinimalInterpreter v1382308484958 :=
  chain_cut false 2 (by decide)

private def v1382308474078 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 3))))))))
private theorem no_v1382308474078 : ¬ MinimalInterpreter v1382308474078 :=
  chain_cut false 2 (by decide)

private def v1382308472670 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 3)))))))
private theorem no_v1382308472670 : ¬ MinimalInterpreter v1382308472670 :=
  chain_cut false 2 (by decide)

private def v1382308469598 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 3)))))))
private theorem no_v1382308469598 : ¬ MinimalInterpreter v1382308469598 :=
  chain_cut false 2 (by decide)

private def v1382308781278 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1382308781278 : ¬ MinimalInterpreter v1382308781278 :=
  chain_cut false 2 (by decide)

private def v1382308779870 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1382308779870 : ¬ MinimalInterpreter v1382308779870 :=
  chain_cut false 2 (by decide)

private def v1382308803358 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1382308803358 : ¬ MinimalInterpreter v1382308803358 :=
  chain_cut false 2 (by decide)

private def v1382308797726 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1382308797726 : ¬ MinimalInterpreter v1382308797726 :=
  chain_cut false 2 (by decide)

private def v1382308754206 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1382308754206 : ¬ MinimalInterpreter v1382308754206 :=
  chain_cut false 2 (by decide)

private def v1382308748574 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1382308748574 : ¬ MinimalInterpreter v1382308748574 :=
  chain_cut false 2 (by decide)

private def v1382308736286 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1382308736286 : ¬ MinimalInterpreter v1382308736286 :=
  chain_cut false 2 (by decide)

private def v1382309983006 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1382309983006 : ¬ MinimalInterpreter v1382309983006 :=
  chain_cut false 2 (by decide)

private def v1382309977374 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1382309977374 : ¬ MinimalInterpreter v1382309977374 :=
  chain_cut false 2 (by decide)

private def v1382314679518 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1382314679518 : ¬ MinimalInterpreter v1382314679518 :=
  chain_cut false 4 (by decide)

private def v1382314678110 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1382314678110 : ¬ MinimalInterpreter v1382314678110 :=
  chain_cut false 4 (by decide)

private def v1382314701598 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1382314701598 : ¬ MinimalInterpreter v1382314701598 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1382314695966 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1382314695966 : ¬ MinimalInterpreter v1382314695966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

theorem four603 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,1,0,3]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,1,0,3] = [v1382308486366,v1382308484958,v1382308474078,v1382308472670,v1382308469598,v1382308781278,v1382308779870,v1382308803358,v1382308797726,v1382308754206,v1382308748574,v1382308736286,v1382309983006,v1382309977374,v1382314679518,v1382314678110,v1382314701598,v1382314695966] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308486366) (.cons (no_v1382308484958) (.cons (no_v1382308474078) (.cons (no_v1382308472670) (.cons (no_v1382308469598) (.cons (no_v1382308781278) (.cons (no_v1382308779870) (.cons (no_v1382308803358) (.cons (no_v1382308797726) (.cons (no_v1382308754206) (.cons (no_v1382308748574) (.cons (no_v1382308736286) (.cons (no_v1382309983006) (.cons (no_v1382309977374) (.cons (no_v1382314679518) (.cons (no_v1382314678110) (.cons (no_v1382314701598) (.cons (no_v1382314695966) .nil))))))))))))))))))

private def v1382308486382 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v1382308486382 : ¬ MinimalInterpreter v1382308486382 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382308484974 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v1382308484974 : ¬ MinimalInterpreter v1382308484974 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382308474094 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v1382308474094 : ¬ MinimalInterpreter v1382308474094 :=
  cost_cut false 2 (by decide)

private def v1382308472686 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v1382308472686 : ¬ MinimalInterpreter v1382308472686 :=
  cost_cut false 2 (by decide)

private def v1382308469614 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v1382308469614 : ¬ MinimalInterpreter v1382308469614 :=
  cost_cut false 2 (by decide)

private def v1382308797550 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1382308797550 : ¬ MinimalInterpreter v1382308797550 :=
  chain_cut false 2 (by decide)

private def v1382308744430 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v1382308744430 : ¬ MinimalInterpreter v1382308744430 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308748398 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1382308748398 : ¬ MinimalInterpreter v1382308748398 :=
  chain_cut false 2 (by decide)

private def v1382308736110 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 2))))))
private theorem no_v1382308736110 : ¬ MinimalInterpreter v1382308736110 :=
  chain_cut false 2 (by decide)

private def v1382308733806 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v1382308733806 : ¬ MinimalInterpreter v1382308733806 :=
  chain_cut false 2 (by decide)

private def v1382309977198 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1382309977198 : ¬ MinimalInterpreter v1382309977198 :=
  chain_cut false 2 (by decide)

private def v1382314695790 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1382314695790 : ¬ MinimalInterpreter v1382314695790 :=
  chain_cut false 7 (by decide)

theorem four604 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,1,1,2]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,1,1,2] = [v1382308486382,v1382308484974,v1382308474094,v1382308472686,v1382308469614,v1382308797550,v1382308744430,v1382308748398,v1382308736110,v1382308733806,v1382309977198,v1382314695790] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308486382) (.cons (no_v1382308484974) (.cons (no_v1382308474094) (.cons (no_v1382308472686) (.cons (no_v1382308469614) (.cons (no_v1382308797550) (.cons (no_v1382308744430) (.cons (no_v1382308748398) (.cons (no_v1382308736110) (.cons (no_v1382308733806) (.cons (no_v1382309977198) (.cons (no_v1382314695790) .nil))))))))))))

private def v1382308486390 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v1382308486390 : ¬ MinimalInterpreter v1382308486390 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382308484982 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v1382308484982 : ¬ MinimalInterpreter v1382308484982 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382308474102 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))))))))
private theorem no_v1382308474102 : ¬ MinimalInterpreter v1382308474102 :=
  cost_cut false 2 (by decide)

private def v1382308472694 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)))))))
private theorem no_v1382308472694 : ¬ MinimalInterpreter v1382308472694 :=
  cost_cut false 2 (by decide)

private def v1382308469622 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)))))))
private theorem no_v1382308469622 : ¬ MinimalInterpreter v1382308469622 :=
  cost_cut false 2 (by decide)

private def v1382308803526 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1382308803526 : ¬ MinimalInterpreter v1382308803526 :=
  chain_cut false 2 (by decide)

private def v1382308797894 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1382308797894 : ¬ MinimalInterpreter v1382308797894 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308754374 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1382308754374 : ¬ MinimalInterpreter v1382308754374 :=
  chain_cut false 2 (by decide)

private def v1382308744438 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v1382308744438 : ¬ MinimalInterpreter v1382308744438 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308748742 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1382308748742 : ¬ MinimalInterpreter v1382308748742 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308736454 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1382308736454 : ¬ MinimalInterpreter v1382308736454 :=
  chain_cut false 2 (by decide)

private def v1382308733814 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v1382308733814 : ¬ MinimalInterpreter v1382308733814 :=
  chain_cut false 2 (by decide)

private def v1382309983174 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1382309983174 : ¬ MinimalInterpreter v1382309983174 :=
  chain_cut false 2 (by decide)

private def v1382309977542 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1382309977542 : ¬ MinimalInterpreter v1382309977542 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1382314701766 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1382314701766 : ¬ MinimalInterpreter v1382314701766 :=
  chain_cut false 6 (by decide)

private def v1382314696134 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1382314696134 : ¬ MinimalInterpreter v1382314696134 :=
  w_cut false 0 (by decide)

theorem four605 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,1,2,1]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,1,2,1] = [v1382308486390,v1382308484982,v1382308474102,v1382308472694,v1382308469622,v1382308803526,v1382308797894,v1382308754374,v1382308744438,v1382308748742,v1382308736454,v1382308733814,v1382309983174,v1382309977542,v1382314701766,v1382314696134] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308486390) (.cons (no_v1382308484982) (.cons (no_v1382308474102) (.cons (no_v1382308472694) (.cons (no_v1382308469622) (.cons (no_v1382308803526) (.cons (no_v1382308797894) (.cons (no_v1382308754374) (.cons (no_v1382308744438) (.cons (no_v1382308748742) (.cons (no_v1382308736454) (.cons (no_v1382308733814) (.cons (no_v1382309983174) (.cons (no_v1382309977542) (.cons (no_v1382314701766) (.cons (no_v1382314696134) .nil))))))))))))))))

private def v1382308486394 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1382308486394 : ¬ MinimalInterpreter v1382308486394 :=
  chain_cut false 2 (by decide)

private def v1382308484986 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1382308484986 : ¬ MinimalInterpreter v1382308484986 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1382308474106 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 0))))))))
private theorem no_v1382308474106 : ¬ MinimalInterpreter v1382308474106 :=
  chain_cut false 2 (by decide)

private def v1382308472698 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)))))))
private theorem no_v1382308472698 : ¬ MinimalInterpreter v1382308472698 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1382308469626 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 0)))))))
private theorem no_v1382308469626 : ¬ MinimalInterpreter v1382308469626 :=
  chain_cut false 2 (by decide)

private def v1382308781306 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1382308781306 : ¬ MinimalInterpreter v1382308781306 :=
  chain_cut false 2 (by decide)

private def v1382308779898 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1382308779898 : ¬ MinimalInterpreter v1382308779898 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1382308797562 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1382308797562 : ¬ MinimalInterpreter v1382308797562 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1382308748410 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1382308748410 : ¬ MinimalInterpreter v1382308748410 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1382308736122 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 0))))))
private theorem no_v1382308736122 : ¬ MinimalInterpreter v1382308736122 :=
  chain_cut false 2 (by decide)

private def v1382309977210 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1382309977210 : ¬ MinimalInterpreter v1382309977210 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1382314679546 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1382314679546 : ¬ MinimalInterpreter v1382314679546 :=
  chain_cut false 4 (by decide)

private def v1382314678138 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1382314678138 : ¬ MinimalInterpreter v1382314678138 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1382314695802 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1382314695802 : ¬ MinimalInterpreter v1382314695802 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

theorem four606 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,1,3,0]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,1,3,0] = [v1382308486394,v1382308484986,v1382308474106,v1382308472698,v1382308469626,v1382308781306,v1382308779898,v1382308797562,v1382308748410,v1382308736122,v1382309977210,v1382314679546,v1382314678138,v1382314695802] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308486394) (.cons (no_v1382308484986) (.cons (no_v1382308474106) (.cons (no_v1382308472698) (.cons (no_v1382308469626) (.cons (no_v1382308781306) (.cons (no_v1382308779898) (.cons (no_v1382308797562) (.cons (no_v1382308748410) (.cons (no_v1382308736122) (.cons (no_v1382309977210) (.cons (no_v1382314679546) (.cons (no_v1382314678138) (.cons (no_v1382314695802) .nil))))))))))))))

private def v1382308805006 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1382308805006 : ¬ MinimalInterpreter v1382308805006 :=
  chain_cut false 2 (by decide)

private def v1382308798094 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1382308798094 : ¬ MinimalInterpreter v1382308798094 :=
  chain_cut false 2 (by decide)

private def v1382308755854 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1382308755854 : ¬ MinimalInterpreter v1382308755854 :=
  chain_cut false 2 (by decide)

private def v1382308744814 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 2)))))))
private theorem no_v1382308744814 : ¬ MinimalInterpreter v1382308744814 :=
  chain_cut false 2 (by decide)

private def v1382308748942 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1382308748942 : ¬ MinimalInterpreter v1382308748942 :=
  chain_cut false 2 (by decide)

private def v1382308736654 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1382308736654 : ¬ MinimalInterpreter v1382308736654 :=
  chain_cut false 2 (by decide)

private def v1382308733870 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2))))))
private theorem no_v1382308733870 : ¬ MinimalInterpreter v1382308733870 :=
  chain_cut false 2 (by decide)

private def v1382309984654 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1382309984654 : ¬ MinimalInterpreter v1382309984654 :=
  chain_cut false 2 (by decide)

private def v1382309977742 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1382309977742 : ¬ MinimalInterpreter v1382309977742 :=
  chain_cut false 2 (by decide)

private def v1382314703246 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1382314703246 : ¬ MinimalInterpreter v1382314703246 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1382314696334 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1382314696334 : ¬ MinimalInterpreter v1382314696334 :=
  chain_cut false 5 (by decide)

theorem four607 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,2,0,2]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,2,0,2] = [v1382308805006,v1382308798094,v1382308755854,v1382308744814,v1382308748942,v1382308736654,v1382308733870,v1382309984654,v1382309977742,v1382314703246,v1382314696334] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308805006) (.cons (no_v1382308798094) (.cons (no_v1382308755854) (.cons (no_v1382308744814) (.cons (no_v1382308748942) (.cons (no_v1382308736654) (.cons (no_v1382308733870) (.cons (no_v1382309984654) (.cons (no_v1382309977742) (.cons (no_v1382314703246) (.cons (no_v1382314696334) .nil)))))))))))

private def v1382308486774 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v1382308486774 : ¬ MinimalInterpreter v1382308486774 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382308485046 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v1382308485046 : ¬ MinimalInterpreter v1382308485046 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382308474486 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v1382308474486 : ¬ MinimalInterpreter v1382308474486 :=
  cost_cut false 2 (by decide)

private def v1382308472758 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v1382308472758 : ¬ MinimalInterpreter v1382308472758 :=
  cost_cut false 2 (by decide)

private def v1382308469686 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v1382308469686 : ¬ MinimalInterpreter v1382308469686 :=
  cost_cut false 2 (by decide)

private def v1382308805062 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1382308805062 : ¬ MinimalInterpreter v1382308805062 :=
  chain_cut false 2 (by decide)

private def v1382308798150 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1382308798150 : ¬ MinimalInterpreter v1382308798150 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308798006 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1382308798006 : ¬ MinimalInterpreter v1382308798006 :=
  chain_cut false 2 (by decide)

private def v1382308755910 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1382308755910 : ¬ MinimalInterpreter v1382308755910 :=
  chain_cut false 2 (by decide)

private def v1382308748998 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1382308748998 : ¬ MinimalInterpreter v1382308748998 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308736710 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1382308736710 : ¬ MinimalInterpreter v1382308736710 :=
  chain_cut false 2 (by decide)

private def v1382308748854 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1382308748854 : ¬ MinimalInterpreter v1382308748854 :=
  chain_cut false 2 (by decide)

private def v1382308736566 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 1))))))
private theorem no_v1382308736566 : ¬ MinimalInterpreter v1382308736566 :=
  chain_cut false 2 (by decide)

private def v1382309984710 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1382309984710 : ¬ MinimalInterpreter v1382309984710 :=
  chain_cut false 2 (by decide)

private def v1382309977798 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1382309977798 : ¬ MinimalInterpreter v1382309977798 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1382309977654 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1382309977654 : ¬ MinimalInterpreter v1382309977654 :=
  chain_cut false 2 (by decide)

private def v1382314703302 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1382314703302 : ¬ MinimalInterpreter v1382314703302 :=
  chain_cut false 10 (by decide)

private def v1382314696390 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1382314696390 : ¬ MinimalInterpreter v1382314696390 :=
  w_cut false 0 (by decide)

private def v1382314696246 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1382314696246 : ¬ MinimalInterpreter v1382314696246 :=
  chain_cut false 5 (by decide)

theorem four608 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,2,1,1]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,2,1,1] = [v1382308486774,v1382308485046,v1382308474486,v1382308472758,v1382308469686,v1382308805062,v1382308798150,v1382308798006,v1382308755910,v1382308748998,v1382308736710,v1382308748854,v1382308736566,v1382309984710,v1382309977798,v1382309977654,v1382314703302,v1382314696390,v1382314696246] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308486774) (.cons (no_v1382308485046) (.cons (no_v1382308474486) (.cons (no_v1382308472758) (.cons (no_v1382308469686) (.cons (no_v1382308805062) (.cons (no_v1382308798150) (.cons (no_v1382308798006) (.cons (no_v1382308755910) (.cons (no_v1382308748998) (.cons (no_v1382308736710) (.cons (no_v1382308748854) (.cons (no_v1382308736566) (.cons (no_v1382309984710) (.cons (no_v1382309977798) (.cons (no_v1382309977654) (.cons (no_v1382314703302) (.cons (no_v1382314696390) (.cons (no_v1382314696246) .nil)))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
