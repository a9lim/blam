import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v688067235450 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v688067235450 : ¬ MinimalInterpreter v688067235450 :=
  cost_cut false 1 (by decide)
private def v688067234746 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v688067234746 : ¬ MinimalInterpreter v688067234746 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v688067229306 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v688067229306 : ¬ MinimalInterpreter v688067229306 :=
  cost_cut false 1 (by decide)
private def v688067228602 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v688067228602 : ¬ MinimalInterpreter v688067228602 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v688067227066 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v688067227066 : ¬ MinimalInterpreter v688067227066 :=
  cost_cut false 1 (by decide)
private def v688067382906 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v688067382906 : ¬ MinimalInterpreter v688067382906 :=
  cost_cut false 1 (by decide)
private def v688067382202 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v688067382202 : ¬ MinimalInterpreter v688067382202 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v688067972730 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v688067972730 : ¬ MinimalInterpreter v688067972730 :=
  cost_cut false 1 (by decide)
private def v688067972026 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v688067972026 : ¬ MinimalInterpreter v688067972026 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem row570 : BadRow (row ⟨2,2,0,3,4,3⟩ [0,0] [0,1,2,0]) := by
  have h : row ⟨2,2,0,3,4,3⟩ [0,0] [0,1,2,0] = [v688067235450,v688067234746,v688067229306,v688067228602,v688067227066,v688067382906,v688067382202,v688067972730,v688067972026] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067235450) (.cons (no_v688067234746) (.cons (no_v688067229306) (.cons (no_v688067228602) (.cons (no_v688067227066) (.cons (no_v688067382906) (.cons (no_v688067382202) (.cons (no_v688067972730) (.cons (no_v688067972026) .nil)))))))))

private def v688067235638 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v688067235638 : ¬ MinimalInterpreter v688067235638 :=
  cost_cut false 1 (by decide)
private def v688067234774 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v688067234774 : ¬ MinimalInterpreter v688067234774 :=
  cost_cut false 1 (by decide)
private def v688067229494 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v688067229494 : ¬ MinimalInterpreter v688067229494 :=
  cost_cut false 1 (by decide)
private def v688067228630 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v688067228630 : ¬ MinimalInterpreter v688067228630 :=
  cost_cut false 1 (by decide)
private def v688067227094 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v688067227094 : ¬ MinimalInterpreter v688067227094 :=
  cost_cut false 1 (by decide)
private def v688067383094 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v688067383094 : ¬ MinimalInterpreter v688067383094 :=
  cost_cut false 1 (by decide)
private def v688067382230 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v688067382230 : ¬ MinimalInterpreter v688067382230 :=
  cost_cut false 1 (by decide)
private def v688067972918 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v688067972918 : ¬ MinimalInterpreter v688067972918 :=
  cost_cut false 1 (by decide)
private def v688067972054 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v688067972054 : ¬ MinimalInterpreter v688067972054 :=
  cost_cut false 1 (by decide)
theorem row571 : BadRow (row ⟨2,2,0,3,4,3⟩ [0,0] [0,2,0,1]) := by
  have h : row ⟨2,2,0,3,4,3⟩ [0,0] [0,2,0,1] = [v688067235638,v688067234774,v688067229494,v688067228630,v688067227094,v688067383094,v688067382230,v688067972918,v688067972054] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067235638) (.cons (no_v688067234774) (.cons (no_v688067229494) (.cons (no_v688067228630) (.cons (no_v688067227094) (.cons (no_v688067383094) (.cons (no_v688067382230) (.cons (no_v688067972918) (.cons (no_v688067972054) .nil)))))))))

private def v688067235642 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v688067235642 : ¬ MinimalInterpreter v688067235642 :=
  cost_cut false 1 (by decide)
private def v688067234778 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v688067234778 : ¬ MinimalInterpreter v688067234778 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v688067229498 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v688067229498 : ¬ MinimalInterpreter v688067229498 :=
  cost_cut false 1 (by decide)
private def v688067228634 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v688067228634 : ¬ MinimalInterpreter v688067228634 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v688067227098 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v688067227098 : ¬ MinimalInterpreter v688067227098 :=
  cost_cut false 1 (by decide)
private def v688067383098 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v688067383098 : ¬ MinimalInterpreter v688067383098 :=
  cost_cut false 1 (by decide)
private def v688067382234 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v688067382234 : ¬ MinimalInterpreter v688067382234 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v688067972922 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v688067972922 : ¬ MinimalInterpreter v688067972922 :=
  cost_cut false 1 (by decide)
private def v688067972058 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v688067972058 : ¬ MinimalInterpreter v688067972058 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem row572 : BadRow (row ⟨2,2,0,3,4,3⟩ [0,0] [0,2,1,0]) := by
  have h : row ⟨2,2,0,3,4,3⟩ [0,0] [0,2,1,0] = [v688067235642,v688067234778,v688067229498,v688067228634,v688067227098,v688067383098,v688067382234,v688067972922,v688067972058] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067235642) (.cons (no_v688067234778) (.cons (no_v688067229498) (.cons (no_v688067228634) (.cons (no_v688067227098) (.cons (no_v688067383098) (.cons (no_v688067382234) (.cons (no_v688067972922) (.cons (no_v688067972058) .nil)))))))))

theorem row573 : BadRow (row ⟨2,2,0,3,4,3⟩ [0,0] [0,3,0,0]) := by
  have h : row ⟨2,2,0,3,4,3⟩ [0,0] [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v688067241582 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v688067241582 : ¬ MinimalInterpreter v688067241582 :=
  cost_cut false 1 (by decide)
private def v688067241390 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v688067241390 : ¬ MinimalInterpreter v688067241390 :=
  cost_cut false 1 (by decide)
private def v688067230318 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v688067230318 : ¬ MinimalInterpreter v688067230318 :=
  cost_cut false 1 (by decide)
private def v688067230126 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v688067230126 : ¬ MinimalInterpreter v688067230126 :=
  cost_cut false 1 (by decide)
private def v688067227310 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v688067227310 : ¬ MinimalInterpreter v688067227310 :=
  cost_cut false 1 (by decide)
theorem row574 : BadRow (row ⟨2,2,0,3,4,3⟩ [0,0] [1,0,0,2]) := by
  have h : row ⟨2,2,0,3,4,3⟩ [0,0] [1,0,0,2] = [v688067241582,v688067241390,v688067230318,v688067230126,v688067227310] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067241582) (.cons (no_v688067241390) (.cons (no_v688067230318) (.cons (no_v688067230126) (.cons (no_v688067227310) .nil)))))

theorem row575 : BadRow (row ⟨2,2,0,3,4,3⟩ [0,0] [1,0,1,1]) := by
  have h : row ⟨2,2,0,3,4,3⟩ [0,0] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
