import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four882 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [1,1,1,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381033371546 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1381033371546 : ¬ MinimalInterpreter v1381033371546 :=
  cost_cut false 1 (by decide)

private def v1381033371114 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1381033371114 : ¬ MinimalInterpreter v1381033371114 :=
  cost_cut false 1 (by decide)

private def v1381033360282 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1381033360282 : ¬ MinimalInterpreter v1381033360282 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381033359850 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1381033359850 : ¬ MinimalInterpreter v1381033359850 :=
  cost_cut false 1 (by decide)

private def v1381033357034 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1381033357034 : ¬ MinimalInterpreter v1381033357034 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four883 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [1,2,0,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [1,2,0,0] = [v1381033371546,v1381033371114,v1381033360282,v1381033359850,v1381033357034] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033371546) (.cons (no_v1381033371114) (.cons (no_v1381033360282) (.cons (no_v1381033359850) (.cons (no_v1381033357034) .nil)))))

private def v1381033374518 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381033374518 : ¬ MinimalInterpreter v1381033374518 :=
  cost_cut false 1 (by decide)

private def v1381033374422 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1381033374422 : ¬ MinimalInterpreter v1381033374422 :=
  cost_cut false 1 (by decide)

private def v1381033360694 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1381033360694 : ¬ MinimalInterpreter v1381033360694 :=
  cost_cut false 1 (by decide)

private def v1381033360598 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1381033360598 : ¬ MinimalInterpreter v1381033360598 :=
  cost_cut false 1 (by decide)

private def v1381033357142 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1381033357142 : ¬ MinimalInterpreter v1381033357142 :=
  cost_cut false 1 (by decide)

theorem four884 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [2,0,0,1]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [2,0,0,1] = [v1381033374518,v1381033374422,v1381033360694,v1381033360598,v1381033357142] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033374518) (.cons (no_v1381033374422) (.cons (no_v1381033360694) (.cons (no_v1381033360598) (.cons (no_v1381033357142) .nil)))))

private def v1381033374522 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381033374522 : ¬ MinimalInterpreter v1381033374522 :=
  cost_cut false 1 (by decide)

private def v1381033374426 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1381033374426 : ¬ MinimalInterpreter v1381033374426 :=
  cost_cut false 1 (by decide)

private def v1381033360698 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1381033360698 : ¬ MinimalInterpreter v1381033360698 :=
  cost_cut false 1 (by decide)

private def v1381033360602 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1381033360602 : ¬ MinimalInterpreter v1381033360602 :=
  cost_cut false 1 (by decide)

private def v1381033357146 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1381033357146 : ¬ MinimalInterpreter v1381033357146 :=
  cost_cut false 1 (by decide)

theorem four885 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [2,0,1,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [2,0,1,0] = [v1381033374522,v1381033374426,v1381033360698,v1381033360602,v1381033357146] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033374522) (.cons (no_v1381033374426) (.cons (no_v1381033360698) (.cons (no_v1381033360602) (.cons (no_v1381033357146) .nil)))))

private def v1381033374618 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1381033374618 : ¬ MinimalInterpreter v1381033374618 :=
  cost_cut false 1 (by decide)

private def v1381033374442 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1381033374442 : ¬ MinimalInterpreter v1381033374442 :=
  cost_cut false 1 (by decide)

private def v1381033360794 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1381033360794 : ¬ MinimalInterpreter v1381033360794 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381033360618 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1381033360618 : ¬ MinimalInterpreter v1381033360618 :=
  cost_cut false 1 (by decide)

private def v1381033357162 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1381033357162 : ¬ MinimalInterpreter v1381033357162 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four886 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [2,1,0,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [2,1,0,0] = [v1381033374618,v1381033374442,v1381033360794,v1381033360618,v1381033357162] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033374618) (.cons (no_v1381033374442) (.cons (no_v1381033360794) (.cons (no_v1381033360618) (.cons (no_v1381033357162) .nil)))))

theorem four887 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [0,1] [3,0,0,0]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [0,1] [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four888 : BadRow (markedRow ⟨2,2,1,3,4,3⟩ [1,0] [0,0,0,3]) := by
  have h : markedRow ⟨2,2,1,3,4,3⟩ [1,0] [0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
