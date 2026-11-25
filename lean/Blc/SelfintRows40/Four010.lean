import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308820190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402308820190 : ¬ MinimalInterpreter v1402308820190 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308812638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.var 0)) (.var 3))))))))
private theorem no_v1402308812638 : ¬ MinimalInterpreter v1402308812638 :=
  chain_cut true 3 (by decide)

private def v1402308377822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 3))))))))
private theorem no_v1402308377822 : ¬ MinimalInterpreter v1402308377822 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308370270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 0))) (.var 3)))))))
private theorem no_v1402308370270 : ¬ MinimalInterpreter v1402308370270 :=
  chain_cut true 3 (by decide)

private def v1402308259678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 3)))))))
private theorem no_v1402308259678 : ¬ MinimalInterpreter v1402308259678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four70 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,3,0,3]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,3,0,3] = [v1402308820190,v1402308812638,v1402308377822,v1402308370270,v1402308259678] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308820190) (.cons (no_v1402308812638) (.cons (no_v1402308377822) (.cons (no_v1402308370270) (.cons (no_v1402308259678) .nil)))))

private def v1402308820206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402308820206 : ¬ MinimalInterpreter v1402308820206 :=
  chain_cut false 2 (by decide)

private def v1402308812654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.var 1)) (.var 2))))))))
private theorem no_v1402308812654 : ¬ MinimalInterpreter v1402308812654 :=
  chain_cut false 2 (by decide)

private def v1402308377838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 1) (.var 2))))))))
private theorem no_v1402308377838 : ¬ MinimalInterpreter v1402308377838 :=
  chain_cut false 2 (by decide)

private def v1402308370286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 1))) (.var 2)))))))
private theorem no_v1402308370286 : ¬ MinimalInterpreter v1402308370286 :=
  chain_cut false 2 (by decide)

private def v1402308259694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 1)) (.var 2)))))))
private theorem no_v1402308259694 : ¬ MinimalInterpreter v1402308259694 :=
  chain_cut false 2 (by decide)

private def v1402314718446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 3) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402314718446 : ¬ MinimalInterpreter v1402314718446 :=
  chain_cut false 4 (by decide)

private def v1402314710894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 1)) (.var 2))))))))
private theorem no_v1402314710894 : ¬ MinimalInterpreter v1402314710894 :=
  chain_cut false 4 (by decide)

theorem four71 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,3,1,2]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,3,1,2] = [v1402308820206,v1402308812654,v1402308377838,v1402308370286,v1402308259694,v1402314718446,v1402314710894] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308820206) (.cons (no_v1402308812654) (.cons (no_v1402308377838) (.cons (no_v1402308370286) (.cons (no_v1402308259694) (.cons (no_v1402314718446) (.cons (no_v1402314710894) .nil)))))))

private def v1402308820214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402308820214 : ¬ MinimalInterpreter v1402308820214 :=
  chain_cut false 2 (by decide)

private def v1402308812662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.var 2)) (.var 1))))))))
private theorem no_v1402308812662 : ¬ MinimalInterpreter v1402308812662 :=
  chain_cut false 2 (by decide)

private def v1402308377846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 2) (.var 1))))))))
private theorem no_v1402308377846 : ¬ MinimalInterpreter v1402308377846 :=
  chain_cut false 2 (by decide)

private def v1402308370294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 2))) (.var 1)))))))
private theorem no_v1402308370294 : ¬ MinimalInterpreter v1402308370294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 2))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 2))) (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 2) (.app (.var 3) (.var 2))) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402308259702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 2)) (.var 1)))))))
private theorem no_v1402308259702 : ¬ MinimalInterpreter v1402308259702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.app (.var 2) (.var 3)) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402314718454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 3) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402314718454 : ¬ MinimalInterpreter v1402314718454 :=
  chain_cut false 4 (by decide)

private def v1402314710902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))))))
private theorem no_v1402314710902 : ¬ MinimalInterpreter v1402314710902 :=
  chain_cut false 4 (by decide)

theorem four72 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,3,2,1]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,3,2,1] = [v1402308820214,v1402308812662,v1402308377846,v1402308370294,v1402308259702,v1402314718454,v1402314710902] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308820214) (.cons (no_v1402308812662) (.cons (no_v1402308377846) (.cons (no_v1402308370294) (.cons (no_v1402308259702) (.cons (no_v1402314718454) (.cons (no_v1402314710902) .nil)))))))

private def v1402308820218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402308820218 : ¬ MinimalInterpreter v1402308820218 :=
  chain_cut true 4 (by decide)

private def v1402308812666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.var 3)) (.var 0))))))))
private theorem no_v1402308812666 : ¬ MinimalInterpreter v1402308812666 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308377850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 3) (.var 0))))))))
private theorem no_v1402308377850 : ¬ MinimalInterpreter v1402308377850 :=
  chain_cut true 3 (by decide)

private def v1402308370298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 3))) (.var 0)))))))
private theorem no_v1402308370298 : ¬ MinimalInterpreter v1402308370298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.app (.var 2) (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 3) (.var 3))) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 2))) (by decide) (by decide))) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402308259706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 3)) (.var 0)))))))
private theorem no_v1402308259706 : ¬ MinimalInterpreter v1402308259706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 3)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 3)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.app (.var 1) (.var 2)) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 3)) (.var 3)) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four73 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,3,3,0]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [2,3,3,0] = [v1402308820218,v1402308812666,v1402308377850,v1402308370298,v1402308259706] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308820218) (.cons (no_v1402308812666) (.cons (no_v1402308377850) (.cons (no_v1402308370298) (.cons (no_v1402308259706) .nil)))))

private def v1402308867038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v1402308867038 : ¬ MinimalInterpreter v1402308867038 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308865502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v1402308865502 : ¬ MinimalInterpreter v1402308865502 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308383710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 2) (.var 3))))))))
private theorem no_v1402308383710 : ¬ MinimalInterpreter v1402308383710 :=
  chain_cut false 3 (by decide)

private def v1402308382174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 2))) (.var 3)))))))
private theorem no_v1402308382174 : ¬ MinimalInterpreter v1402308382174 :=
  chain_cut false 3 (by decide)

private def v1402308261342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 2)) (.var 3)))))))
private theorem no_v1402308261342 : ¬ MinimalInterpreter v1402308261342 :=
  chain_cut false 3 (by decide)

theorem four74 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,0,2,3]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,0,2,3] = [v1402308867038,v1402308865502,v1402308383710,v1402308382174,v1402308261342] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308867038) (.cons (no_v1402308865502) (.cons (no_v1402308383710) (.cons (no_v1402308382174) (.cons (no_v1402308261342) .nil)))))

private def v1402308867054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v1402308867054 : ¬ MinimalInterpreter v1402308867054 :=
  chain_cut true 4 (by decide)

private def v1402308865518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v1402308865518 : ¬ MinimalInterpreter v1402308865518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308383726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 3) (.var 2))))))))
private theorem no_v1402308383726 : ¬ MinimalInterpreter v1402308383726 :=
  chain_cut false 3 (by decide)

private def v1402308382190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 3))) (.var 2)))))))
private theorem no_v1402308382190 : ¬ MinimalInterpreter v1402308382190 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308261358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 3)) (.var 2)))))))
private theorem no_v1402308261358 : ¬ MinimalInterpreter v1402308261358 :=
  chain_cut false 3 (by decide)

theorem four75 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,0,3,2]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,0,3,2] = [v1402308867054,v1402308865518,v1402308383726,v1402308382190,v1402308261358] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308867054) (.cons (no_v1402308865518) (.cons (no_v1402308383726) (.cons (no_v1402308382190) (.cons (no_v1402308261358) .nil)))))

theorem four76 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,1,1,3]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,1,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
