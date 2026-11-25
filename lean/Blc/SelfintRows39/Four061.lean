import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v700482428154 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v700482428154 : ¬ MinimalInterpreter v700482428154 :=
  chain_cut false 2 (by decide)
private def v700482426746 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v700482426746 : ¬ MinimalInterpreter v700482426746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v700482415866 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 0))))))))
private theorem no_v700482415866 : ¬ MinimalInterpreter v700482415866 :=
  chain_cut false 2 (by decide)
private def v700482414458 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)))))))
private theorem no_v700482414458 : ¬ MinimalInterpreter v700482414458 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v700482411386 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 0)))))))
private theorem no_v700482411386 : ¬ MinimalInterpreter v700482411386 :=
  chain_cut false 2 (by decide)
private def v700482723066 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v700482723066 : ¬ MinimalInterpreter v700482723066 :=
  chain_cut false 2 (by decide)
private def v700482721658 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v700482721658 : ¬ MinimalInterpreter v700482721658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))
private def v700482739322 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v700482739322 : ¬ MinimalInterpreter v700482739322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v700482690170 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))
private theorem no_v700482690170 : ¬ MinimalInterpreter v700482690170 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v700482677882 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 0))))))
private theorem no_v700482677882 : ¬ MinimalInterpreter v700482677882 :=
  chain_cut false 2 (by decide)
private def v700483918970 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v700483918970 : ¬ MinimalInterpreter v700483918970 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v700488621306 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v700488621306 : ¬ MinimalInterpreter v700488621306 :=
  cost_cut false 3 (by decide)
private def v700488619898 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v700488619898 : ¬ MinimalInterpreter v700488619898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
private def v700488637562 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v700488637562 : ¬ MinimalInterpreter v700488637562 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))
theorem row366 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [0,1,3,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [0,1,3,0] = [v700482428154,v700482426746,v700482415866,v700482414458,v700482411386,v700482723066,v700482721658,v700482739322,v700482690170,v700482677882,v700483918970,v700488621306,v700488619898,v700488637562] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482428154) (.cons (no_v700482426746) (.cons (no_v700482415866) (.cons (no_v700482414458) (.cons (no_v700482411386) (.cons (no_v700482723066) (.cons (no_v700482721658) (.cons (no_v700482739322) (.cons (no_v700482690170) (.cons (no_v700482677882) (.cons (no_v700483918970) (.cons (no_v700488621306) (.cons (no_v700488619898) (.cons (no_v700488637562) .nil))))))))))))))

private def v700482746766 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v700482746766 : ¬ MinimalInterpreter v700482746766 :=
  chain_cut false 2 (by decide)
private def v700482739854 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v700482739854 : ¬ MinimalInterpreter v700482739854 :=
  chain_cut false 2 (by decide)
private def v700482697614 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v700482697614 : ¬ MinimalInterpreter v700482697614 :=
  chain_cut false 2 (by decide)
private def v700482686574 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 2)))))))
private theorem no_v700482686574 : ¬ MinimalInterpreter v700482686574 :=
  chain_cut false 2 (by decide)
private def v700482690702 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 2)))))))
private theorem no_v700482690702 : ¬ MinimalInterpreter v700482690702 :=
  chain_cut false 2 (by decide)
private def v700482678414 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v700482678414 : ¬ MinimalInterpreter v700482678414 :=
  chain_cut false 2 (by decide)
private def v700482675630 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2))))))
private theorem no_v700482675630 : ¬ MinimalInterpreter v700482675630 :=
  chain_cut false 2 (by decide)
private def v700483926414 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v700483926414 : ¬ MinimalInterpreter v700483926414 :=
  chain_cut false 2 (by decide)
private def v700483919502 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v700483919502 : ¬ MinimalInterpreter v700483919502 :=
  chain_cut false 2 (by decide)
private def v700488645006 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v700488645006 : ¬ MinimalInterpreter v700488645006 :=
  cost_cut false 3 (by decide)
private def v700488638094 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v700488638094 : ¬ MinimalInterpreter v700488638094 :=
  cost_cut false 3 (by decide)
theorem row367 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [0,2,0,2]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [0,2,0,2] = [v700482746766,v700482739854,v700482697614,v700482686574,v700482690702,v700482678414,v700482675630,v700483926414,v700483919502,v700488645006,v700488638094] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482746766) (.cons (no_v700482739854) (.cons (no_v700482697614) (.cons (no_v700482686574) (.cons (no_v700482690702) (.cons (no_v700482678414) (.cons (no_v700482675630) (.cons (no_v700483926414) (.cons (no_v700483919502) (.cons (no_v700488645006) (.cons (no_v700488638094) .nil)))))))))))

private def v700482428534 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v700482428534 : ¬ MinimalInterpreter v700482428534 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700482426806 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v700482426806 : ¬ MinimalInterpreter v700482426806 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700482416246 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v700482416246 : ¬ MinimalInterpreter v700482416246 :=
  cost_cut false 2 (by decide)
private def v700482414518 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v700482414518 : ¬ MinimalInterpreter v700482414518 :=
  cost_cut false 2 (by decide)
private def v700482411446 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v700482411446 : ¬ MinimalInterpreter v700482411446 :=
  cost_cut false 2 (by decide)
private def v700482746822 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v700482746822 : ¬ MinimalInterpreter v700482746822 :=
  chain_cut false 2 (by decide)
private def v700482739910 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v700482739910 : ¬ MinimalInterpreter v700482739910 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700482739766 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v700482739766 : ¬ MinimalInterpreter v700482739766 :=
  chain_cut false 2 (by decide)
private def v700482697670 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v700482697670 : ¬ MinimalInterpreter v700482697670 :=
  chain_cut false 2 (by decide)
private def v700482690758 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))
private theorem no_v700482690758 : ¬ MinimalInterpreter v700482690758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700482678470 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v700482678470 : ¬ MinimalInterpreter v700482678470 :=
  chain_cut false 2 (by decide)
private def v700482690614 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 1))))))
private theorem no_v700482690614 : ¬ MinimalInterpreter v700482690614 :=
  chain_cut false 2 (by decide)
private def v700482678326 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 1))))))
private theorem no_v700482678326 : ¬ MinimalInterpreter v700482678326 :=
  chain_cut false 2 (by decide)
private def v700483926470 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v700483926470 : ¬ MinimalInterpreter v700483926470 :=
  chain_cut false 2 (by decide)
private def v700483919558 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v700483919558 : ¬ MinimalInterpreter v700483919558 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v700483919414 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v700483919414 : ¬ MinimalInterpreter v700483919414 :=
  chain_cut false 2 (by decide)
private def v700488645062 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v700488645062 : ¬ MinimalInterpreter v700488645062 :=
  cost_cut false 3 (by decide)
private def v700488638150 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v700488638150 : ¬ MinimalInterpreter v700488638150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700488638006 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v700488638006 : ¬ MinimalInterpreter v700488638006 :=
  cost_cut false 3 (by decide)
theorem row368 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [0,2,1,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [0,2,1,1] = [v700482428534,v700482426806,v700482416246,v700482414518,v700482411446,v700482746822,v700482739910,v700482739766,v700482697670,v700482690758,v700482678470,v700482690614,v700482678326,v700483926470,v700483919558,v700483919414,v700488645062,v700488638150,v700488638006] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482428534) (.cons (no_v700482426806) (.cons (no_v700482416246) (.cons (no_v700482414518) (.cons (no_v700482411446) (.cons (no_v700482746822) (.cons (no_v700482739910) (.cons (no_v700482739766) (.cons (no_v700482697670) (.cons (no_v700482690758) (.cons (no_v700482678470) (.cons (no_v700482690614) (.cons (no_v700482678326) (.cons (no_v700483926470) (.cons (no_v700483919558) (.cons (no_v700483919414) (.cons (no_v700488645062) (.cons (no_v700488638150) (.cons (no_v700488638006) .nil)))))))))))))))))))

private def v700482739770 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v700482739770 : ¬ MinimalInterpreter v700482739770 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700482686586 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 0)))))))
private theorem no_v700482686586 : ¬ MinimalInterpreter v700482686586 :=
  chain_cut false 2 (by decide)
private def v700482690618 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))
private theorem no_v700482690618 : ¬ MinimalInterpreter v700482690618 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700482678330 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0))))))
private theorem no_v700482678330 : ¬ MinimalInterpreter v700482678330 :=
  chain_cut false 2 (by decide)
private def v700482675642 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 0))))))
private theorem no_v700482675642 : ¬ MinimalInterpreter v700482675642 :=
  chain_cut false 2 (by decide)
private def v700483919418 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v700483919418 : ¬ MinimalInterpreter v700483919418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v700488638010 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v700488638010 : ¬ MinimalInterpreter v700488638010 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row369 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [0,2,2,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [0,2,2,0] = [v700482739770,v700482686586,v700482690618,v700482678330,v700482675642,v700483919418,v700488638010] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482739770) (.cons (no_v700482686586) (.cons (no_v700482690618) (.cons (no_v700482678330) (.cons (no_v700482675642) (.cons (no_v700483919418) (.cons (no_v700488638010) .nil)))))))

private def v700482428726 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v700482428726 : ¬ MinimalInterpreter v700482428726 :=
  chain_cut false 2 (by decide)
private def v700482426838 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v700482426838 : ¬ MinimalInterpreter v700482426838 :=
  chain_cut false 2 (by decide)
private def v700482416438 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1))))))))
private theorem no_v700482416438 : ¬ MinimalInterpreter v700482416438 :=
  chain_cut false 2 (by decide)
private def v700482414550 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1)))))))
private theorem no_v700482414550 : ¬ MinimalInterpreter v700482414550 :=
  chain_cut false 2 (by decide)
private def v700482411478 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1)))))))
private theorem no_v700482411478 : ¬ MinimalInterpreter v700482411478 :=
  chain_cut false 2 (by decide)
private def v700482723638 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v700482723638 : ¬ MinimalInterpreter v700482723638 :=
  chain_cut false 2 (by decide)
private def v700482721750 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v700482721750 : ¬ MinimalInterpreter v700482721750 :=
  chain_cut false 2 (by decide)
private def v700482686774 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))
private theorem no_v700482686774 : ¬ MinimalInterpreter v700482686774 :=
  chain_cut false 2 (by decide)
private def v700482675670 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1))))))
private theorem no_v700482675670 : ¬ MinimalInterpreter v700482675670 :=
  chain_cut false 2 (by decide)
private def v700488621878 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v700488621878 : ¬ MinimalInterpreter v700488621878 :=
  cost_cut false 3 (by decide)
private def v700488619990 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v700488619990 : ¬ MinimalInterpreter v700488619990 :=
  cost_cut false 3 (by decide)
theorem row370 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [0,3,0,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [0,3,0,1] = [v700482428726,v700482426838,v700482416438,v700482414550,v700482411478,v700482723638,v700482721750,v700482686774,v700482675670,v700488621878,v700488619990] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482428726) (.cons (no_v700482426838) (.cons (no_v700482416438) (.cons (no_v700482414550) (.cons (no_v700482411478) (.cons (no_v700482723638) (.cons (no_v700482721750) (.cons (no_v700482686774) (.cons (no_v700482675670) (.cons (no_v700488621878) (.cons (no_v700488619990) .nil)))))))))))

private def v700482428730 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v700482428730 : ¬ MinimalInterpreter v700482428730 :=
  chain_cut false 2 (by decide)
private def v700482426842 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v700482426842 : ¬ MinimalInterpreter v700482426842 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v700482416442 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0))))))))
private theorem no_v700482416442 : ¬ MinimalInterpreter v700482416442 :=
  chain_cut false 2 (by decide)
private def v700482414554 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))
private theorem no_v700482414554 : ¬ MinimalInterpreter v700482414554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v700482411482 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0)))))))
private theorem no_v700482411482 : ¬ MinimalInterpreter v700482411482 :=
  chain_cut false 2 (by decide)
private def v700482723642 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v700482723642 : ¬ MinimalInterpreter v700482723642 :=
  chain_cut false 2 (by decide)
private def v700482721754 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v700482721754 : ¬ MinimalInterpreter v700482721754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))
private def v700482686778 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))
private theorem no_v700482686778 : ¬ MinimalInterpreter v700482686778 :=
  chain_cut false 2 (by decide)
private def v700482675674 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0))))))
private theorem no_v700482675674 : ¬ MinimalInterpreter v700482675674 :=
  chain_cut false 2 (by decide)
private def v700488621882 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v700488621882 : ¬ MinimalInterpreter v700488621882 :=
  cost_cut false 3 (by decide)
private def v700488619994 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v700488619994 : ¬ MinimalInterpreter v700488619994 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))
theorem row371 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [0,3,1,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [0,3,1,0] = [v700482428730,v700482426842,v700482416442,v700482414554,v700482411482,v700482723642,v700482721754,v700482686778,v700482675674,v700488621882,v700488619994] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482428730) (.cons (no_v700482426842) (.cons (no_v700482416442) (.cons (no_v700482414554) (.cons (no_v700482411482) (.cons (no_v700482723642) (.cons (no_v700482721754) (.cons (no_v700482686778) (.cons (no_v700482675674) (.cons (no_v700488621882) (.cons (no_v700488619994) .nil)))))))))))

end Blc.SelfintSingleObject.Rows39
