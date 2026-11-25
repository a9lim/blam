import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690516780662 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v690516780662 : ¬ MinimalInterpreter v690516780662 :=
  cost_cut false 1 (by decide)
private def v690516780470 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v690516780470 : ¬ MinimalInterpreter v690516780470 :=
  cost_cut false 1 (by decide)
private def v690516753014 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v690516753014 : ¬ MinimalInterpreter v690516753014 :=
  cost_cut false 1 (by decide)
private def v690516752822 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v690516752822 : ¬ MinimalInterpreter v690516752822 :=
  cost_cut false 1 (by decide)
private def v690516745910 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v690516745910 : ¬ MinimalInterpreter v690516745910 :=
  cost_cut false 1 (by decide)
theorem row492 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [2,0,1,1]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [2,0,1,1] = [v690516780662,v690516780470,v690516753014,v690516752822,v690516745910] := by decide +kernel
  rw [h]
  exact (.cons (no_v690516780662) (.cons (no_v690516780470) (.cons (no_v690516753014) (.cons (no_v690516752822) (.cons (no_v690516745910) .nil)))))

theorem row493 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [2,0,2,0]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690516780854 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v690516780854 : ¬ MinimalInterpreter v690516780854 :=
  cost_cut false 1 (by decide)
private def v690516780502 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v690516780502 : ¬ MinimalInterpreter v690516780502 :=
  cost_cut false 1 (by decide)
private def v690516753206 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v690516753206 : ¬ MinimalInterpreter v690516753206 :=
  cost_cut false 1 (by decide)
private def v690516752854 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v690516752854 : ¬ MinimalInterpreter v690516752854 :=
  cost_cut false 1 (by decide)
private def v690516745942 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v690516745942 : ¬ MinimalInterpreter v690516745942 :=
  cost_cut false 1 (by decide)
theorem row494 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [2,1,0,1]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [2,1,0,1] = [v690516780854,v690516780502,v690516753206,v690516752854,v690516745942] := by decide +kernel
  rw [h]
  exact (.cons (no_v690516780854) (.cons (no_v690516780502) (.cons (no_v690516753206) (.cons (no_v690516752854) (.cons (no_v690516745942) .nil)))))

private def v690516780858 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v690516780858 : ¬ MinimalInterpreter v690516780858 :=
  cost_cut false 1 (by decide)
private def v690516780506 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v690516780506 : ¬ MinimalInterpreter v690516780506 :=
  cost_cut false 1 (by decide)
private def v690516753210 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v690516753210 : ¬ MinimalInterpreter v690516753210 :=
  cost_cut false 1 (by decide)
private def v690516752858 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v690516752858 : ¬ MinimalInterpreter v690516752858 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690516745946 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v690516745946 : ¬ MinimalInterpreter v690516745946 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row495 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [2,1,1,0]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [2,1,1,0] = [v690516780858,v690516780506,v690516753210,v690516752858,v690516745946] := by decide +kernel
  rw [h]
  exact (.cons (no_v690516780858) (.cons (no_v690516780506) (.cons (no_v690516753210) (.cons (no_v690516752858) (.cons (no_v690516745946) .nil)))))

theorem row496 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [2,2,0,0]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row497 : BadRow (row ⟨2,2,1,2,4,4⟩ [1,0] [0,0,2,2]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [1,0] [0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
