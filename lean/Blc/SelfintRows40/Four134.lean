import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four938 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [1,1,1,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1376050538394 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v1376050538394 : ¬ MinimalInterpreter v1376050538394 :=
  cost_cut false 1 (by decide)

private def v1376050537962 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v1376050537962 : ¬ MinimalInterpreter v1376050537962 :=
  cost_cut false 1 (by decide)

private def v1376050527130 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v1376050527130 : ¬ MinimalInterpreter v1376050527130 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376050526698 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v1376050526698 : ¬ MinimalInterpreter v1376050526698 :=
  cost_cut false 1 (by decide)

private def v1376050523882 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v1376050523882 : ¬ MinimalInterpreter v1376050523882 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four939 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [1,2,0,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [1,2,0,0] = [v1376050538394,v1376050537962,v1376050527130,v1376050526698,v1376050523882] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376050538394) (.cons (no_v1376050537962) (.cons (no_v1376050527130) (.cons (no_v1376050526698) (.cons (no_v1376050523882) .nil)))))

private def v1376050541366 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1376050541366 : ¬ MinimalInterpreter v1376050541366 :=
  cost_cut false 1 (by decide)

private def v1376050541270 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1376050541270 : ¬ MinimalInterpreter v1376050541270 :=
  cost_cut false 1 (by decide)

private def v1376050527542 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1376050527542 : ¬ MinimalInterpreter v1376050527542 :=
  cost_cut false 1 (by decide)

private def v1376050527446 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1376050527446 : ¬ MinimalInterpreter v1376050527446 :=
  cost_cut false 1 (by decide)

private def v1376050523990 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1376050523990 : ¬ MinimalInterpreter v1376050523990 :=
  cost_cut false 1 (by decide)

theorem four940 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [2,0,0,1]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [2,0,0,1] = [v1376050541366,v1376050541270,v1376050527542,v1376050527446,v1376050523990] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376050541366) (.cons (no_v1376050541270) (.cons (no_v1376050527542) (.cons (no_v1376050527446) (.cons (no_v1376050523990) .nil)))))

private def v1376050541370 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1376050541370 : ¬ MinimalInterpreter v1376050541370 :=
  cost_cut false 1 (by decide)

private def v1376050541274 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1376050541274 : ¬ MinimalInterpreter v1376050541274 :=
  cost_cut false 1 (by decide)

private def v1376050527546 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1376050527546 : ¬ MinimalInterpreter v1376050527546 :=
  cost_cut false 1 (by decide)

private def v1376050527450 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1376050527450 : ¬ MinimalInterpreter v1376050527450 :=
  cost_cut false 1 (by decide)

private def v1376050523994 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1376050523994 : ¬ MinimalInterpreter v1376050523994 :=
  cost_cut false 1 (by decide)

theorem four941 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [2,0,1,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [2,0,1,0] = [v1376050541370,v1376050541274,v1376050527546,v1376050527450,v1376050523994] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376050541370) (.cons (no_v1376050541274) (.cons (no_v1376050527546) (.cons (no_v1376050527450) (.cons (no_v1376050523994) .nil)))))

private def v1376050541466 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1376050541466 : ¬ MinimalInterpreter v1376050541466 :=
  cost_cut false 1 (by decide)

private def v1376050541290 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1376050541290 : ¬ MinimalInterpreter v1376050541290 :=
  cost_cut false 1 (by decide)

private def v1376050527642 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1376050527642 : ¬ MinimalInterpreter v1376050527642 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376050527466 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1376050527466 : ¬ MinimalInterpreter v1376050527466 :=
  cost_cut false 1 (by decide)

private def v1376050524010 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1376050524010 : ¬ MinimalInterpreter v1376050524010 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four942 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [2,1,0,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [2,1,0,0] = [v1376050541466,v1376050541290,v1376050527642,v1376050527466,v1376050524010] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376050541466) (.cons (no_v1376050541290) (.cons (no_v1376050527642) (.cons (no_v1376050527466) (.cons (no_v1376050524010) .nil)))))

theorem four943 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,0,1,2]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four944 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,0,2,1]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [1,0] [0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
