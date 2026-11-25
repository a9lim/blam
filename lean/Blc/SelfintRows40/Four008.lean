import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308522974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 3)))))))))
private theorem no_v1402308522974 : ¬ MinimalInterpreter v1402308522974 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 3))))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 3)))) (.app (.var 2) (.app (.var 1) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308492766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 3))))))))
private theorem no_v1402308492766 : ¬ MinimalInterpreter v1402308492766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.app (.var 2) (.var 1)) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 3))) (.app (.app (.var 2) (.var 1)) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308326366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 2) (.var 3))))))))
private theorem no_v1402308326366 : ¬ MinimalInterpreter v1402308326366 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308296158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 3)))))))
private theorem no_v1402308296158 : ¬ MinimalInterpreter v1402308296158 :=
  chain_cut true 3 (by decide)

private def v1402308247006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 2)) (.var 3)))))))
private theorem no_v1402308247006 : ¬ MinimalInterpreter v1402308247006 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313241566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.var 3)))))))))
private theorem no_v1402313241566 : ¬ MinimalInterpreter v1402313241566 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.var 3))))))) (.lam (r := (.lam (.app (.var 2) (.app (.var 1) (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.app (.var 2) (.var 3))))) (so_dead (by decide) (.app (.var 2) (.app (.var 1) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313211358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 3))))))))
private theorem no_v1402313211358 : ¬ MinimalInterpreter v1402313211358 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 3)))))) (.lam (r := (.lam (.app (.app (.var 2) (.var 1)) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.app (.var 3) (.var 2)) (.var 3)))) (so_dead (by decide) (.app (.app (.var 2) (.var 1)) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four56 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [0,3,2,3]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [0,3,2,3] = [v1402308522974,v1402308492766,v1402308326366,v1402308296158,v1402308247006,v1402313241566,v1402313211358] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308522974) (.cons (no_v1402308492766) (.cons (no_v1402308326366) (.cons (no_v1402308296158) (.cons (no_v1402308247006) (.cons (no_v1402313241566) (.cons (no_v1402313211358) .nil)))))))

private def v1402308522990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 3) (.var 2)))))))))
private theorem no_v1402308522990 : ¬ MinimalInterpreter v1402308522990 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 3) (.var 2))))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.app (.var 3) (.var 2)))) (.app (.var 2) (.app (.var 2) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308492782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 3)) (.var 2))))))))
private theorem no_v1402308492782 : ¬ MinimalInterpreter v1402308492782 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 3)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.app (.var 2) (.var 2)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 3) (.var 3)) (.var 2))) (.app (.app (.var 2) (.var 2)) (.var 1)) (by decide) (by decide))) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402308326382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 3) (.var 2))))))))
private theorem no_v1402308326382 : ¬ MinimalInterpreter v1402308326382 :=
  chain_cut true 3 (by decide)

private def v1402308296174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 3))) (.var 2)))))))
private theorem no_v1402308296174 : ¬ MinimalInterpreter v1402308296174 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308247022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 3)) (.var 2)))))))
private theorem no_v1402308247022 : ¬ MinimalInterpreter v1402308247022 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313241582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 3) (.var 2)))))))))
private theorem no_v1402313241582 : ¬ MinimalInterpreter v1402313241582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 3) (.var 2))))))) (.lam (r := (.lam (.app (.var 2) (.app (.var 2) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.app (.var 3) (.var 2))))) (so_dead (by decide) (.app (.var 2) (.app (.var 2) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313211374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 3)) (.var 2))))))))
private theorem no_v1402313211374 : ¬ MinimalInterpreter v1402313211374 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 3)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))) (.lam (r := (.lam (.app (.app (.var 2) (.var 2)) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.app (.var 3) (.var 3)) (.var 2)))) (so_dead (by decide) (.app (.app (.var 2) (.var 2)) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

theorem four57 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [0,3,3,2]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [0,3,3,2] = [v1402308522990,v1402308492782,v1402308326382,v1402308296174,v1402308247022,v1402313241582,v1402313211374] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308522990) (.cons (no_v1402308492782) (.cons (no_v1402308326382) (.cons (no_v1402308296174) (.cons (no_v1402308247022) (.cons (no_v1402313241582) (.cons (no_v1402313211374) .nil)))))))

private def v1402314221534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 3) (.var 3)))))))))
private theorem no_v1402314221534 : ¬ MinimalInterpreter v1402314221534 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314210270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 3)) (.var 3))))))))
private theorem no_v1402314210270 : ¬ MinimalInterpreter v1402314210270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four58 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [1,1,3,3]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [1,1,3,3] = [v1402314221534,v1402314210270] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314221534) (.cons (no_v1402314210270) .nil))

private def v1402308719582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 3)))))))))
private theorem no_v1402308719582 : ¬ MinimalInterpreter v1402308719582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 3))))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 3))))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402308705758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 3))))))))
private theorem no_v1402308705758 : ¬ MinimalInterpreter v1402308705758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 3)))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 3)))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402308359134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 3))))))))
private theorem no_v1402308359134 : ¬ MinimalInterpreter v1402308359134 :=
  chain_cut false 2 (by decide)

private def v1402308345310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 3)))))))
private theorem no_v1402308345310 : ¬ MinimalInterpreter v1402308345310 :=
  chain_cut false 2 (by decide)

private def v1402308255198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 3)))))))
private theorem no_v1402308255198 : ¬ MinimalInterpreter v1402308255198 :=
  chain_cut false 2 (by decide)

theorem four59 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [1,2,2,3]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [1,2,2,3] = [v1402308719582,v1402308705758,v1402308359134,v1402308345310,v1402308255198] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308719582) (.cons (no_v1402308705758) (.cons (no_v1402308359134) (.cons (no_v1402308345310) (.cons (no_v1402308255198) .nil)))))

private def v1402308719598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 3) (.var 2)))))))))
private theorem no_v1402308719598 : ¬ MinimalInterpreter v1402308719598 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 3) (.var 2))))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.app (.var 3) (.var 2))))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402308705774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 3)) (.var 2))))))))
private theorem no_v1402308705774 : ¬ MinimalInterpreter v1402308705774 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 3)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 3)) (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.app (.var 2) (.var 3)) (.var 2)))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402308359150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 3) (.var 2))))))))
private theorem no_v1402308359150 : ¬ MinimalInterpreter v1402308359150 :=
  chain_cut false 2 (by decide)

private def v1402308345326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 3))) (.var 2)))))))
private theorem no_v1402308345326 : ¬ MinimalInterpreter v1402308345326 :=
  chain_cut false 2 (by decide)

private def v1402308255214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 3)) (.var 2)))))))
private theorem no_v1402308255214 : ¬ MinimalInterpreter v1402308255214 :=
  chain_cut false 2 (by decide)

theorem four60 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [1,2,3,2]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [1,2,3,2] = [v1402308719598,v1402308705774,v1402308359150,v1402308345326,v1402308255214] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308719598) (.cons (no_v1402308705774) (.cons (no_v1402308359150) (.cons (no_v1402308345326) (.cons (no_v1402308255214) .nil)))))

private def v1402314226142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 1) (.var 3)))))))))
private theorem no_v1402314226142 : ¬ MinimalInterpreter v1402314226142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314211038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 1)) (.var 3))))))))
private theorem no_v1402314211038 : ¬ MinimalInterpreter v1402314211038 :=
  chain_cut true 3 (by decide)

theorem four61 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [1,3,1,3]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [1,3,1,3] = [v1402314226142,v1402314211038] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314226142) (.cons (no_v1402314211038) .nil))

private def v1402308721134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 2) (.var 2)))))))))
private theorem no_v1402308721134 : ¬ MinimalInterpreter v1402308721134 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 2) (.var 2))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 3) (.app (.var 2) (.var 2))))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402308706030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 2)) (.var 2))))))))
private theorem no_v1402308706030 : ¬ MinimalInterpreter v1402308706030 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 2)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 2)) (.var 2)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.app (.var 3) (.var 2)) (.var 2)))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402308360686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 2) (.var 2))))))))
private theorem no_v1402308360686 : ¬ MinimalInterpreter v1402308360686 :=
  chain_cut false 2 (by decide)

private def v1402308345582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 2))) (.var 2)))))))
private theorem no_v1402308345582 : ¬ MinimalInterpreter v1402308345582 :=
  chain_cut false 2 (by decide)

private def v1402308255470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 2)) (.var 2)))))))
private theorem no_v1402308255470 : ¬ MinimalInterpreter v1402308255470 :=
  chain_cut false 2 (by decide)

theorem four62 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [1,3,2,2]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [1,3,2,2] = [v1402308721134,v1402308706030,v1402308360686,v1402308345582,v1402308255470] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308721134) (.cons (no_v1402308706030) (.cons (no_v1402308360686) (.cons (no_v1402308345582) (.cons (no_v1402308255470) .nil)))))

end Blc.SelfintSingleObject.Rows40
