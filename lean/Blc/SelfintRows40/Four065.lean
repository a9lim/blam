import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four455 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [1,1,1,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1398230017946 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v1398230017946 : ¬ MinimalInterpreter v1398230017946 :=
  chain_cut false 4 (by decide)

private def v1398230017514 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v1398230017514 : ¬ MinimalInterpreter v1398230017514 :=
  chain_cut false 4 (by decide)

private def v1398230006682 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v1398230006682 : ¬ MinimalInterpreter v1398230006682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398230006250 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v1398230006250 : ¬ MinimalInterpreter v1398230006250 :=
  chain_cut false 4 (by decide)

private def v1398230003434 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v1398230003434 : ¬ MinimalInterpreter v1398230003434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four456 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [1,2,0,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [1,2,0,0] = [v1398230017946,v1398230017514,v1398230006682,v1398230006250,v1398230003434] := by decide +kernel
  rw [h]
  exact (.cons (no_v1398230017946) (.cons (no_v1398230017514) (.cons (no_v1398230006682) (.cons (no_v1398230006250) (.cons (no_v1398230003434) .nil)))))

private def v1398230020918 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1398230020918 : ¬ MinimalInterpreter v1398230020918 :=
  cost_cut false 4 (by decide)

private def v1398230020822 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1398230020822 : ¬ MinimalInterpreter v1398230020822 :=
  cost_cut false 4 (by decide)

private def v1398230007094 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1398230007094 : ¬ MinimalInterpreter v1398230007094 :=
  chain_cut false 5 (by decide)

private def v1398230006998 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1398230006998 : ¬ MinimalInterpreter v1398230006998 :=
  chain_cut false 5 (by decide)

private def v1398230003542 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1398230003542 : ¬ MinimalInterpreter v1398230003542 :=
  chain_cut false 6 (by decide)

theorem four457 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [2,0,0,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [2,0,0,1] = [v1398230020918,v1398230020822,v1398230007094,v1398230006998,v1398230003542] := by decide +kernel
  rw [h]
  exact (.cons (no_v1398230020918) (.cons (no_v1398230020822) (.cons (no_v1398230007094) (.cons (no_v1398230006998) (.cons (no_v1398230003542) .nil)))))

private def v1398230020922 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1398230020922 : ¬ MinimalInterpreter v1398230020922 :=
  cost_cut false 4 (by decide)

private def v1398230020826 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1398230020826 : ¬ MinimalInterpreter v1398230020826 :=
  cost_cut false 4 (by decide)

private def v1398230007098 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1398230007098 : ¬ MinimalInterpreter v1398230007098 :=
  chain_cut false 5 (by decide)

private def v1398230007002 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1398230007002 : ¬ MinimalInterpreter v1398230007002 :=
  cost_cut false 4 (by decide)

private def v1398230003546 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1398230003546 : ¬ MinimalInterpreter v1398230003546 :=
  chain_cut false 5 (by decide)

theorem four458 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [2,0,1,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [2,0,1,0] = [v1398230020922,v1398230020826,v1398230007098,v1398230007002,v1398230003546] := by decide +kernel
  rw [h]
  exact (.cons (no_v1398230020922) (.cons (no_v1398230020826) (.cons (no_v1398230007098) (.cons (no_v1398230007002) (.cons (no_v1398230003546) .nil)))))

private def v1398230021018 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1398230021018 : ¬ MinimalInterpreter v1398230021018 :=
  cost_cut false 4 (by decide)

private def v1398230020842 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1398230020842 : ¬ MinimalInterpreter v1398230020842 :=
  cost_cut false 4 (by decide)

private def v1398230007194 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1398230007194 : ¬ MinimalInterpreter v1398230007194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398230007018 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1398230007018 : ¬ MinimalInterpreter v1398230007018 :=
  cost_cut false 4 (by decide)

private def v1398230003562 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1398230003562 : ¬ MinimalInterpreter v1398230003562 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four459 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [2,1,0,0]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [0,1,0] [2,1,0,0] = [v1398230021018,v1398230020842,v1398230007194,v1398230007018,v1398230003562] := by decide +kernel
  rw [h]
  exact (.cons (no_v1398230021018) (.cons (no_v1398230020842) (.cons (no_v1398230007194) (.cons (no_v1398230007018) (.cons (no_v1398230003562) .nil)))))

theorem four460 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,0,1,2]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four461 : BadRow (markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,0,2,1]) := by
  have h : markedRow ⟨1,3,1,2,4,3⟩ [1,0,0] [0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
