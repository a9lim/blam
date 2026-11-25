import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1398230011514 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1398230011514 : ¬ MinimalInterpreter v1398230011514 :=
  chain_cut true 4 (by decide)

private def v1398230010810 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1398230010810 : ¬ MinimalInterpreter v1398230010810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398230005370 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1398230005370 : ¬ MinimalInterpreter v1398230005370 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230004666 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1398230004666 : ¬ MinimalInterpreter v1398230004666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398230003130 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1398230003130 : ¬ MinimalInterpreter v1398230003130 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230158970 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1398230158970 : ¬ MinimalInterpreter v1398230158970 :=
  chain_cut true 6 (by decide)

private def v1398230158266 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1398230158266 : ¬ MinimalInterpreter v1398230158266 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1398230748794 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1398230748794 : ¬ MinimalInterpreter v1398230748794 :=
  chain_cut false 8 (by decide)

private def v1398230748090 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1398230748090 : ¬ MinimalInterpreter v1398230748090 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four448 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,1,2,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,1,2,0] = [v1398230011514,v1398230010810,v1398230005370,v1398230004666,v1398230003130,v1398230158970,v1398230158266,v1398230748794,v1398230748090] := by decide +kernel
  rw [h]
  exact (.cons (no_v1398230011514) (.cons (no_v1398230010810) (.cons (no_v1398230005370) (.cons (no_v1398230004666) (.cons (no_v1398230003130) (.cons (no_v1398230158970) (.cons (no_v1398230158266) (.cons (no_v1398230748794) (.cons (no_v1398230748090) .nil)))))))))

private def v1398230011702 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1398230011702 : ¬ MinimalInterpreter v1398230011702 :=
  cost_cut true 4 (by decide)

private def v1398230010838 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1398230010838 : ¬ MinimalInterpreter v1398230010838 :=
  chain_cut true 5 (by decide)

private def v1398230005558 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1398230005558 : ¬ MinimalInterpreter v1398230005558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230004694 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1398230004694 : ¬ MinimalInterpreter v1398230004694 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230003158 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1398230003158 : ¬ MinimalInterpreter v1398230003158 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230159158 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1398230159158 : ¬ MinimalInterpreter v1398230159158 :=
  cost_cut true 6 (by decide)

private def v1398230158294 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1398230158294 : ¬ MinimalInterpreter v1398230158294 :=
  chain_cut true 7 (by decide)

private def v1398230748982 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1398230748982 : ¬ MinimalInterpreter v1398230748982 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398230748118 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1398230748118 : ¬ MinimalInterpreter v1398230748118 :=
  chain_cut false 7 (by decide)

theorem four449 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,2,0,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,2,0,1] = [v1398230011702,v1398230010838,v1398230005558,v1398230004694,v1398230003158,v1398230159158,v1398230158294,v1398230748982,v1398230748118] := by decide +kernel
  rw [h]
  exact (.cons (no_v1398230011702) (.cons (no_v1398230010838) (.cons (no_v1398230005558) (.cons (no_v1398230004694) (.cons (no_v1398230003158) (.cons (no_v1398230159158) (.cons (no_v1398230158294) (.cons (no_v1398230748982) (.cons (no_v1398230748118) .nil)))))))))

private def v1398230011706 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1398230011706 : ¬ MinimalInterpreter v1398230011706 :=
  cost_cut true 4 (by decide)

private def v1398230010842 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1398230010842 : ¬ MinimalInterpreter v1398230010842 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398230005562 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1398230005562 : ¬ MinimalInterpreter v1398230005562 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230004698 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1398230004698 : ¬ MinimalInterpreter v1398230004698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398230003162 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1398230003162 : ¬ MinimalInterpreter v1398230003162 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398230159162 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1398230159162 : ¬ MinimalInterpreter v1398230159162 :=
  cost_cut true 6 (by decide)

private def v1398230158298 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1398230158298 : ¬ MinimalInterpreter v1398230158298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1398230748986 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1398230748986 : ¬ MinimalInterpreter v1398230748986 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398230748122 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1398230748122 : ¬ MinimalInterpreter v1398230748122 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four450 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,2,1,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [0,2,1,0] = [v1398230011706,v1398230010842,v1398230005562,v1398230004698,v1398230003162,v1398230159162,v1398230158298,v1398230748986,v1398230748122] := by decide +kernel
  rw [h]
  exact (.cons (no_v1398230011706) (.cons (no_v1398230010842) (.cons (no_v1398230005562) (.cons (no_v1398230004698) (.cons (no_v1398230003162) (.cons (no_v1398230159162) (.cons (no_v1398230158298) (.cons (no_v1398230748986) (.cons (no_v1398230748122) .nil)))))))))

private def v1398230017646 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v1398230017646 : ¬ MinimalInterpreter v1398230017646 :=
  chain_cut false 4 (by decide)

private def v1398230017454 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v1398230017454 : ¬ MinimalInterpreter v1398230017454 :=
  chain_cut false 4 (by decide)

private def v1398230006382 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v1398230006382 : ¬ MinimalInterpreter v1398230006382 :=
  chain_cut false 5 (by decide)

private def v1398230006190 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v1398230006190 : ¬ MinimalInterpreter v1398230006190 :=
  chain_cut false 5 (by decide)

private def v1398230003374 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v1398230003374 : ¬ MinimalInterpreter v1398230003374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four451 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [1,0,0,2]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [1,0,0,2] = [v1398230017646,v1398230017454,v1398230006382,v1398230006190,v1398230003374] := by decide +kernel
  rw [h]
  exact (.cons (no_v1398230017646) (.cons (no_v1398230017454) (.cons (no_v1398230006382) (.cons (no_v1398230006190) (.cons (no_v1398230003374) .nil)))))

theorem four452 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [1,0,1,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1398230017658 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v1398230017658 : ¬ MinimalInterpreter v1398230017658 :=
  chain_cut false 4 (by decide)

private def v1398230017466 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v1398230017466 : ¬ MinimalInterpreter v1398230017466 :=
  chain_cut false 4 (by decide)

private def v1398230006394 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v1398230006394 : ¬ MinimalInterpreter v1398230006394 :=
  chain_cut false 5 (by decide)

private def v1398230006202 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v1398230006202 : ¬ MinimalInterpreter v1398230006202 :=
  chain_cut false 4 (by decide)

private def v1398230003386 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v1398230003386 : ¬ MinimalInterpreter v1398230003386 :=
  chain_cut false 5 (by decide)

theorem four453 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [1,0,2,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [1,0,2,0] = [v1398230017658,v1398230017466,v1398230006394,v1398230006202,v1398230003386] := by decide +kernel
  rw [h]
  exact (.cons (no_v1398230017658) (.cons (no_v1398230017466) (.cons (no_v1398230006394) (.cons (no_v1398230006202) (.cons (no_v1398230003386) .nil)))))

theorem four454 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [1,1,0,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
