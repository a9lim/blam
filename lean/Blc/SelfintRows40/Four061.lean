import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four427 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [2,2,0,0]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1401820335342 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1401820335342 : ¬ MinimalInterpreter v1401820335342 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401820334958 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1401820334958 : ¬ MinimalInterpreter v1401820334958 :=
  chain_cut true 3 (by decide)

private def v1401820329198 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1401820329198 : ¬ MinimalInterpreter v1401820329198 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401820328814 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1401820328814 : ¬ MinimalInterpreter v1401820328814 :=
  chain_cut true 3 (by decide)

private def v1401820327278 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1401820327278 : ¬ MinimalInterpreter v1401820327278 :=
  chain_cut true 3 (by decide)

private def v1401820482798 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1401820482798 : ¬ MinimalInterpreter v1401820482798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1401820482414 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1401820482414 : ¬ MinimalInterpreter v1401820482414 :=
  chain_cut true 3 (by decide)

private def v1401821072622 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1401821072622 : ¬ MinimalInterpreter v1401821072622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1401821072238 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1401821072238 : ¬ MinimalInterpreter v1401821072238 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398599109870 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1398599109870 : ¬ MinimalInterpreter v1398599109870 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398599109486 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1398599109486 : ¬ MinimalInterpreter v1398599109486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599103726 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1398599103726 : ¬ MinimalInterpreter v1398599103726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398599103342 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1398599103342 : ¬ MinimalInterpreter v1398599103342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599101806 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1398599101806 : ¬ MinimalInterpreter v1398599101806 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599257326 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1398599257326 : ¬ MinimalInterpreter v1398599257326 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1398599256942 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1398599256942 : ¬ MinimalInterpreter v1398599256942 :=
  cost_cut false 4 (by decide)

private def v1398599847150 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1398599847150 : ¬ MinimalInterpreter v1398599847150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398599846766 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1398599846766 : ¬ MinimalInterpreter v1398599846766 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four428 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,0,1,2]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,0,1,2] = [v1401820335342,v1401820334958,v1401820329198,v1401820328814,v1401820327278,v1401820482798,v1401820482414,v1401821072622,v1401821072238,v1398599109870,v1398599109486,v1398599103726,v1398599103342,v1398599101806,v1398599257326,v1398599256942,v1398599847150,v1398599846766] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401820335342) (.cons (no_v1401820334958) (.cons (no_v1401820329198) (.cons (no_v1401820328814) (.cons (no_v1401820327278) (.cons (no_v1401820482798) (.cons (no_v1401820482414) (.cons (no_v1401821072622) (.cons (no_v1401821072238) (.cons (no_v1398599109870) (.cons (no_v1398599109486) (.cons (no_v1398599103726) (.cons (no_v1398599103342) (.cons (no_v1398599101806) (.cons (no_v1398599257326) (.cons (no_v1398599256942) (.cons (no_v1398599847150) (.cons (no_v1398599846766) .nil))))))))))))))))))

private def v1401820335350 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1401820335350 : ¬ MinimalInterpreter v1401820335350 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401820334966 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1401820334966 : ¬ MinimalInterpreter v1401820334966 :=
  chain_cut true 3 (by decide)

private def v1401820329206 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1401820329206 : ¬ MinimalInterpreter v1401820329206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401820328822 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1401820328822 : ¬ MinimalInterpreter v1401820328822 :=
  chain_cut true 3 (by decide)

private def v1401820327286 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1401820327286 : ¬ MinimalInterpreter v1401820327286 :=
  chain_cut true 3 (by decide)

private def v1401820482806 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1401820482806 : ¬ MinimalInterpreter v1401820482806 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1401820482422 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1401820482422 : ¬ MinimalInterpreter v1401820482422 :=
  chain_cut true 3 (by decide)

private def v1401821072630 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1401821072630 : ¬ MinimalInterpreter v1401821072630 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1401821072246 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1401821072246 : ¬ MinimalInterpreter v1401821072246 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398599109878 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1398599109878 : ¬ MinimalInterpreter v1398599109878 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398599109494 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1398599109494 : ¬ MinimalInterpreter v1398599109494 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599103734 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1398599103734 : ¬ MinimalInterpreter v1398599103734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398599103350 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1398599103350 : ¬ MinimalInterpreter v1398599103350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599101814 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1398599101814 : ¬ MinimalInterpreter v1398599101814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599257334 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1398599257334 : ¬ MinimalInterpreter v1398599257334 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1398599256950 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1398599256950 : ¬ MinimalInterpreter v1398599256950 :=
  cost_cut false 4 (by decide)

private def v1398599847158 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1398599847158 : ¬ MinimalInterpreter v1398599847158 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398599846774 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1398599846774 : ¬ MinimalInterpreter v1398599846774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four429 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,0,2,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,0,2,1] = [v1401820335350,v1401820334966,v1401820329206,v1401820328822,v1401820327286,v1401820482806,v1401820482422,v1401821072630,v1401821072246,v1398599109878,v1398599109494,v1398599103734,v1398599103350,v1398599101814,v1398599257334,v1398599256950,v1398599847158,v1398599846774] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401820335350) (.cons (no_v1401820334966) (.cons (no_v1401820329206) (.cons (no_v1401820328822) (.cons (no_v1401820327286) (.cons (no_v1401820482806) (.cons (no_v1401820482422) (.cons (no_v1401821072630) (.cons (no_v1401821072246) (.cons (no_v1398599109878) (.cons (no_v1398599109494) (.cons (no_v1398599103734) (.cons (no_v1398599103350) (.cons (no_v1398599101814) (.cons (no_v1398599257334) (.cons (no_v1398599256950) (.cons (no_v1398599847158) (.cons (no_v1398599846774) .nil))))))))))))))))))

private def v1401820335726 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1401820335726 : ¬ MinimalInterpreter v1401820335726 :=
  chain_cut true 3 (by decide)

private def v1401820335022 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1401820335022 : ¬ MinimalInterpreter v1401820335022 :=
  chain_cut true 3 (by decide)

private def v1401820329582 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1401820329582 : ¬ MinimalInterpreter v1401820329582 :=
  chain_cut true 3 (by decide)

private def v1401820328878 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1401820328878 : ¬ MinimalInterpreter v1401820328878 :=
  chain_cut true 3 (by decide)

private def v1401820327342 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1401820327342 : ¬ MinimalInterpreter v1401820327342 :=
  chain_cut true 3 (by decide)

private def v1401820483182 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1401820483182 : ¬ MinimalInterpreter v1401820483182 :=
  chain_cut true 3 (by decide)

private def v1401820482478 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1401820482478 : ¬ MinimalInterpreter v1401820482478 :=
  chain_cut true 3 (by decide)

private def v1401821073006 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1401821073006 : ¬ MinimalInterpreter v1401821073006 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1401821072302 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1401821072302 : ¬ MinimalInterpreter v1401821072302 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398599110254 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1398599110254 : ¬ MinimalInterpreter v1398599110254 :=
  cost_cut true 4 (by decide)

private def v1398599109550 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1398599109550 : ¬ MinimalInterpreter v1398599109550 :=
  chain_cut true 5 (by decide)

private def v1398599104110 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1398599104110 : ¬ MinimalInterpreter v1398599104110 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599103406 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1398599103406 : ¬ MinimalInterpreter v1398599103406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599101870 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1398599101870 : ¬ MinimalInterpreter v1398599101870 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599257710 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1398599257710 : ¬ MinimalInterpreter v1398599257710 :=
  cost_cut false 4 (by decide)

private def v1398599257006 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1398599257006 : ¬ MinimalInterpreter v1398599257006 :=
  cost_cut false 4 (by decide)

private def v1398599847534 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1398599847534 : ¬ MinimalInterpreter v1398599847534 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398599846830 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1398599846830 : ¬ MinimalInterpreter v1398599846830 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four430 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,1,0,2]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,1,0,2] = [v1401820335726,v1401820335022,v1401820329582,v1401820328878,v1401820327342,v1401820483182,v1401820482478,v1401821073006,v1401821072302,v1398599110254,v1398599109550,v1398599104110,v1398599103406,v1398599101870,v1398599257710,v1398599257006,v1398599847534,v1398599846830] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401820335726) (.cons (no_v1401820335022) (.cons (no_v1401820329582) (.cons (no_v1401820328878) (.cons (no_v1401820327342) (.cons (no_v1401820483182) (.cons (no_v1401820482478) (.cons (no_v1401821073006) (.cons (no_v1401821072302) (.cons (no_v1398599110254) (.cons (no_v1398599109550) (.cons (no_v1398599104110) (.cons (no_v1398599103406) (.cons (no_v1398599101870) (.cons (no_v1398599257710) (.cons (no_v1398599257006) (.cons (no_v1398599847534) (.cons (no_v1398599846830) .nil))))))))))))))))))

theorem four431 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,1,1,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1401820335738 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1401820335738 : ¬ MinimalInterpreter v1401820335738 :=
  chain_cut true 3 (by decide)

private def v1401820335034 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1401820335034 : ¬ MinimalInterpreter v1401820335034 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401820329594 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1401820329594 : ¬ MinimalInterpreter v1401820329594 :=
  chain_cut true 3 (by decide)

private def v1401820328890 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1401820328890 : ¬ MinimalInterpreter v1401820328890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401820327354 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1401820327354 : ¬ MinimalInterpreter v1401820327354 :=
  chain_cut true 3 (by decide)

private def v1401820483194 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1401820483194 : ¬ MinimalInterpreter v1401820483194 :=
  chain_cut true 3 (by decide)

private def v1401820482490 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1401820482490 : ¬ MinimalInterpreter v1401820482490 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1401821073018 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1401821073018 : ¬ MinimalInterpreter v1401821073018 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1401821072314 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1401821072314 : ¬ MinimalInterpreter v1401821072314 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398599110266 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1398599110266 : ¬ MinimalInterpreter v1398599110266 :=
  cost_cut true 4 (by decide)

private def v1398599109562 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1398599109562 : ¬ MinimalInterpreter v1398599109562 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398599104122 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1398599104122 : ¬ MinimalInterpreter v1398599104122 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599103418 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1398599103418 : ¬ MinimalInterpreter v1398599103418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398599101882 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1398599101882 : ¬ MinimalInterpreter v1398599101882 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599257722 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1398599257722 : ¬ MinimalInterpreter v1398599257722 :=
  cost_cut false 4 (by decide)

private def v1398599257018 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1398599257018 : ¬ MinimalInterpreter v1398599257018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1398599847546 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1398599847546 : ¬ MinimalInterpreter v1398599847546 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398599846842 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1398599846842 : ¬ MinimalInterpreter v1398599846842 :=
  w_cut false 0 (by decide)

theorem four432 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,1,2,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,1,2,0] = [v1401820335738,v1401820335034,v1401820329594,v1401820328890,v1401820327354,v1401820483194,v1401820482490,v1401821073018,v1401821072314,v1398599110266,v1398599109562,v1398599104122,v1398599103418,v1398599101882,v1398599257722,v1398599257018,v1398599847546,v1398599846842] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401820335738) (.cons (no_v1401820335034) (.cons (no_v1401820329594) (.cons (no_v1401820328890) (.cons (no_v1401820327354) (.cons (no_v1401820483194) (.cons (no_v1401820482490) (.cons (no_v1401821073018) (.cons (no_v1401821072314) (.cons (no_v1398599110266) (.cons (no_v1398599109562) (.cons (no_v1398599104122) (.cons (no_v1398599103418) (.cons (no_v1398599101882) (.cons (no_v1398599257722) (.cons (no_v1398599257018) (.cons (no_v1398599847546) (.cons (no_v1398599846842) .nil))))))))))))))))))

private def v1401820335926 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1401820335926 : ¬ MinimalInterpreter v1401820335926 :=
  chain_cut true 3 (by decide)

private def v1401820335062 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1401820335062 : ¬ MinimalInterpreter v1401820335062 :=
  chain_cut true 3 (by decide)

private def v1401820329782 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1401820329782 : ¬ MinimalInterpreter v1401820329782 :=
  chain_cut true 3 (by decide)

private def v1401820328918 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1401820328918 : ¬ MinimalInterpreter v1401820328918 :=
  chain_cut true 3 (by decide)

private def v1401820327382 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1401820327382 : ¬ MinimalInterpreter v1401820327382 :=
  chain_cut true 3 (by decide)

private def v1401820483382 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1401820483382 : ¬ MinimalInterpreter v1401820483382 :=
  chain_cut true 3 (by decide)

private def v1401820482518 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1401820482518 : ¬ MinimalInterpreter v1401820482518 :=
  chain_cut true 3 (by decide)

private def v1401821073206 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1401821073206 : ¬ MinimalInterpreter v1401821073206 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1401821072342 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1401821072342 : ¬ MinimalInterpreter v1401821072342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398599110454 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1398599110454 : ¬ MinimalInterpreter v1398599110454 :=
  chain_cut true 4 (by decide)

private def v1398599109590 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1398599109590 : ¬ MinimalInterpreter v1398599109590 :=
  chain_cut true 5 (by decide)

private def v1398599104310 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1398599104310 : ¬ MinimalInterpreter v1398599104310 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599103446 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1398599103446 : ¬ MinimalInterpreter v1398599103446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599101910 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1398599101910 : ¬ MinimalInterpreter v1398599101910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398599257910 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1398599257910 : ¬ MinimalInterpreter v1398599257910 :=
  cost_cut false 4 (by decide)

private def v1398599257046 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1398599257046 : ¬ MinimalInterpreter v1398599257046 :=
  cost_cut false 4 (by decide)

private def v1398599847734 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1398599847734 : ¬ MinimalInterpreter v1398599847734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398599846870 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1398599846870 : ¬ MinimalInterpreter v1398599846870 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

theorem four433 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,2,0,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,0,1] [0,2,0,1] = [v1401820335926,v1401820335062,v1401820329782,v1401820328918,v1401820327382,v1401820483382,v1401820482518,v1401821073206,v1401821072342,v1398599110454,v1398599109590,v1398599104310,v1398599103446,v1398599101910,v1398599257910,v1398599257046,v1398599847734,v1398599846870] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401820335926) (.cons (no_v1401820335062) (.cons (no_v1401820329782) (.cons (no_v1401820328918) (.cons (no_v1401820327382) (.cons (no_v1401820483382) (.cons (no_v1401820482518) (.cons (no_v1401821073206) (.cons (no_v1401821072342) (.cons (no_v1398599110454) (.cons (no_v1398599109590) (.cons (no_v1398599104310) (.cons (no_v1398599103446) (.cons (no_v1398599101910) (.cons (no_v1398599257910) (.cons (no_v1398599257046) (.cons (no_v1398599847734) (.cons (no_v1398599846870) .nil))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
