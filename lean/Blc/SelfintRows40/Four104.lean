import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four728 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,1,1,1]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381033561722 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1381033561722 : ¬ MinimalInterpreter v1381033561722 :=
  cost_cut false 1 (by decide)

private def v1381033561018 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1381033561018 : ¬ MinimalInterpreter v1381033561018 :=
  cost_cut false 1 (by decide)

private def v1381033506426 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1381033506426 : ¬ MinimalInterpreter v1381033506426 :=
  cost_cut false 1 (by decide)

private def v1381033505722 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1381033505722 : ¬ MinimalInterpreter v1381033505722 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381033491898 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1381033491898 : ¬ MinimalInterpreter v1381033491898 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four729 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,1,2,0]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,1,2,0] = [v1381033561722,v1381033561018,v1381033506426,v1381033505722,v1381033491898] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033561722) (.cons (no_v1381033561018) (.cons (no_v1381033506426) (.cons (no_v1381033505722) (.cons (no_v1381033491898) .nil)))))

private def v1381033561910 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1381033561910 : ¬ MinimalInterpreter v1381033561910 :=
  cost_cut false 1 (by decide)

private def v1381033561046 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1381033561046 : ¬ MinimalInterpreter v1381033561046 :=
  cost_cut false 1 (by decide)

private def v1381033506614 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1381033506614 : ¬ MinimalInterpreter v1381033506614 :=
  cost_cut false 1 (by decide)

private def v1381033505750 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1381033505750 : ¬ MinimalInterpreter v1381033505750 :=
  cost_cut false 1 (by decide)

private def v1381033491926 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1381033491926 : ¬ MinimalInterpreter v1381033491926 :=
  cost_cut false 1 (by decide)

theorem four730 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,2,0,1]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,2,0,1] = [v1381033561910,v1381033561046,v1381033506614,v1381033505750,v1381033491926] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033561910) (.cons (no_v1381033561046) (.cons (no_v1381033506614) (.cons (no_v1381033505750) (.cons (no_v1381033491926) .nil)))))

private def v1381033561914 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1381033561914 : ¬ MinimalInterpreter v1381033561914 :=
  cost_cut false 1 (by decide)

private def v1381033561050 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1381033561050 : ¬ MinimalInterpreter v1381033561050 :=
  cost_cut false 1 (by decide)

private def v1381033506618 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1381033506618 : ¬ MinimalInterpreter v1381033506618 :=
  cost_cut false 1 (by decide)

private def v1381033505754 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1381033505754 : ¬ MinimalInterpreter v1381033505754 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381033491930 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1381033491930 : ¬ MinimalInterpreter v1381033491930 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

theorem four731 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,2,1,0]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,2,1,0] = [v1381033561914,v1381033561050,v1381033506618,v1381033505754,v1381033491930] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033561914) (.cons (no_v1381033561050) (.cons (no_v1381033506618) (.cons (no_v1381033505754) (.cons (no_v1381033491930) .nil)))))

theorem four732 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [0,1,2,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [0,1,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four733 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [0,2,1,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [0,2,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four734 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [1,0] [0,2,2,1]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [1,0] [0,2,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
