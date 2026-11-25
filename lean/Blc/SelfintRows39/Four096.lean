import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v688067241594 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v688067241594 : ¬ MinimalInterpreter v688067241594 :=
  cost_cut false 1 (by decide)
private def v688067241402 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v688067241402 : ¬ MinimalInterpreter v688067241402 :=
  cost_cut false 1 (by decide)
private def v688067230330 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v688067230330 : ¬ MinimalInterpreter v688067230330 :=
  cost_cut false 1 (by decide)
private def v688067230138 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v688067230138 : ¬ MinimalInterpreter v688067230138 :=
  cost_cut false 1 (by decide)
private def v688067227322 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v688067227322 : ¬ MinimalInterpreter v688067227322 :=
  cost_cut false 1 (by decide)
theorem row576 : BadRow (row ⟨2,2,0,3,4,3⟩ [0,0] [1,0,2,0]) := by
  have h : row ⟨2,2,0,3,4,3⟩ [0,0] [1,0,2,0] = [v688067241594,v688067241402,v688067230330,v688067230138,v688067227322] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067241594) (.cons (no_v688067241402) (.cons (no_v688067230330) (.cons (no_v688067230138) (.cons (no_v688067227322) .nil)))))

theorem row577 : BadRow (row ⟨2,2,0,3,4,3⟩ [0,0] [1,1,0,1]) := by
  have h : row ⟨2,2,0,3,4,3⟩ [0,0] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row578 : BadRow (row ⟨2,2,0,3,4,3⟩ [0,0] [1,1,1,0]) := by
  have h : row ⟨2,2,0,3,4,3⟩ [0,0] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v688067241882 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v688067241882 : ¬ MinimalInterpreter v688067241882 :=
  cost_cut false 1 (by decide)
private def v688067241450 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v688067241450 : ¬ MinimalInterpreter v688067241450 :=
  cost_cut false 1 (by decide)
private def v688067230618 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v688067230618 : ¬ MinimalInterpreter v688067230618 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v688067230186 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v688067230186 : ¬ MinimalInterpreter v688067230186 :=
  cost_cut false 1 (by decide)
private def v688067227370 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v688067227370 : ¬ MinimalInterpreter v688067227370 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row579 : BadRow (row ⟨2,2,0,3,4,3⟩ [0,0] [1,2,0,0]) := by
  have h : row ⟨2,2,0,3,4,3⟩ [0,0] [1,2,0,0] = [v688067241882,v688067241450,v688067230618,v688067230186,v688067227370] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067241882) (.cons (no_v688067241450) (.cons (no_v688067230618) (.cons (no_v688067230186) (.cons (no_v688067227370) .nil)))))

private def v688067244854 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v688067244854 : ¬ MinimalInterpreter v688067244854 :=
  cost_cut false 1 (by decide)
private def v688067244758 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v688067244758 : ¬ MinimalInterpreter v688067244758 :=
  cost_cut false 1 (by decide)
private def v688067231030 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v688067231030 : ¬ MinimalInterpreter v688067231030 :=
  cost_cut false 1 (by decide)
private def v688067230934 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v688067230934 : ¬ MinimalInterpreter v688067230934 :=
  cost_cut false 1 (by decide)
private def v688067227478 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v688067227478 : ¬ MinimalInterpreter v688067227478 :=
  cost_cut false 1 (by decide)
theorem row580 : BadRow (row ⟨2,2,0,3,4,3⟩ [0,0] [2,0,0,1]) := by
  have h : row ⟨2,2,0,3,4,3⟩ [0,0] [2,0,0,1] = [v688067244854,v688067244758,v688067231030,v688067230934,v688067227478] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067244854) (.cons (no_v688067244758) (.cons (no_v688067231030) (.cons (no_v688067230934) (.cons (no_v688067227478) .nil)))))

private def v688067244858 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v688067244858 : ¬ MinimalInterpreter v688067244858 :=
  cost_cut false 1 (by decide)
private def v688067244762 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v688067244762 : ¬ MinimalInterpreter v688067244762 :=
  cost_cut false 1 (by decide)
private def v688067231034 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v688067231034 : ¬ MinimalInterpreter v688067231034 :=
  cost_cut false 1 (by decide)
private def v688067230938 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v688067230938 : ¬ MinimalInterpreter v688067230938 :=
  cost_cut false 1 (by decide)
private def v688067227482 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v688067227482 : ¬ MinimalInterpreter v688067227482 :=
  cost_cut false 1 (by decide)
theorem row581 : BadRow (row ⟨2,2,0,3,4,3⟩ [0,0] [2,0,1,0]) := by
  have h : row ⟨2,2,0,3,4,3⟩ [0,0] [2,0,1,0] = [v688067244858,v688067244762,v688067231034,v688067230938,v688067227482] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067244858) (.cons (no_v688067244762) (.cons (no_v688067231034) (.cons (no_v688067230938) (.cons (no_v688067227482) .nil)))))

end Blc.SelfintSingleObject.Rows39
