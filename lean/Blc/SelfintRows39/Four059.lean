import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690684683886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v690684683886 : ¬ MinimalInterpreter v690684683886 :=
  cost_cut false 1 (by decide)
private def v690684683694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v690684683694 : ¬ MinimalInterpreter v690684683694 :=
  cost_cut false 1 (by decide)
private def v690684623470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v690684623470 : ¬ MinimalInterpreter v690684623470 :=
  cost_cut false 1 (by decide)
private def v690684623278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v690684623278 : ¬ MinimalInterpreter v690684623278 :=
  cost_cut false 1 (by decide)
private def v690684608174 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v690684608174 : ¬ MinimalInterpreter v690684608174 :=
  cost_cut false 1 (by decide)
theorem row354 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [3,0,0,2]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [3,0,0,2] = [v690684683886,v690684683694,v690684623470,v690684623278,v690684608174] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684683886) (.cons (no_v690684683694) (.cons (no_v690684623470) (.cons (no_v690684623278) (.cons (no_v690684608174) .nil)))))

private def v690684683894 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v690684683894 : ¬ MinimalInterpreter v690684683894 :=
  cost_cut false 1 (by decide)
private def v690684683702 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v690684683702 : ¬ MinimalInterpreter v690684683702 :=
  cost_cut false 1 (by decide)
private def v690684623478 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v690684623478 : ¬ MinimalInterpreter v690684623478 :=
  cost_cut false 1 (by decide)
private def v690684623286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v690684623286 : ¬ MinimalInterpreter v690684623286 :=
  cost_cut false 1 (by decide)
private def v690684608182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v690684608182 : ¬ MinimalInterpreter v690684608182 :=
  cost_cut false 1 (by decide)
theorem row355 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [3,0,1,1]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [3,0,1,1] = [v690684683894,v690684683702,v690684623478,v690684623286,v690684608182] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684683894) (.cons (no_v690684683702) (.cons (no_v690684623478) (.cons (no_v690684623286) (.cons (no_v690684608182) .nil)))))

private def v690684683898 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v690684683898 : ¬ MinimalInterpreter v690684683898 :=
  cost_cut false 1 (by decide)
private def v690684683706 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v690684683706 : ¬ MinimalInterpreter v690684683706 :=
  cost_cut false 1 (by decide)
private def v690684623482 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v690684623482 : ¬ MinimalInterpreter v690684623482 :=
  cost_cut false 1 (by decide)
private def v690684623290 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v690684623290 : ¬ MinimalInterpreter v690684623290 :=
  cost_cut false 1 (by decide)
private def v690684608186 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v690684608186 : ¬ MinimalInterpreter v690684608186 :=
  cost_cut false 1 (by decide)
theorem row356 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [3,0,2,0]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [3,0,2,0] = [v690684683898,v690684683706,v690684623482,v690684623290,v690684608186] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684683898) (.cons (no_v690684683706) (.cons (no_v690684623482) (.cons (no_v690684623290) (.cons (no_v690684608186) .nil)))))

private def v690684684086 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v690684684086 : ¬ MinimalInterpreter v690684684086 :=
  cost_cut false 1 (by decide)
private def v690684683734 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v690684683734 : ¬ MinimalInterpreter v690684683734 :=
  cost_cut false 1 (by decide)
private def v690684623670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v690684623670 : ¬ MinimalInterpreter v690684623670 :=
  cost_cut false 1 (by decide)
private def v690684623318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v690684623318 : ¬ MinimalInterpreter v690684623318 :=
  cost_cut false 1 (by decide)
private def v690684608214 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v690684608214 : ¬ MinimalInterpreter v690684608214 :=
  cost_cut false 1 (by decide)
theorem row357 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [3,1,0,1]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [3,1,0,1] = [v690684684086,v690684683734,v690684623670,v690684623318,v690684608214] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684684086) (.cons (no_v690684683734) (.cons (no_v690684623670) (.cons (no_v690684623318) (.cons (no_v690684608214) .nil)))))

private def v690684684090 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v690684684090 : ¬ MinimalInterpreter v690684684090 :=
  cost_cut false 1 (by decide)
private def v690684683738 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v690684683738 : ¬ MinimalInterpreter v690684683738 :=
  cost_cut false 1 (by decide)
private def v690684623674 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v690684623674 : ¬ MinimalInterpreter v690684623674 :=
  cost_cut false 1 (by decide)
private def v690684623322 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v690684623322 : ¬ MinimalInterpreter v690684623322 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v690684608218 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v690684608218 : ¬ MinimalInterpreter v690684608218 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
theorem row358 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [3,1,1,0]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [3,1,1,0] = [v690684684090,v690684683738,v690684623674,v690684623322,v690684608218] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684684090) (.cons (no_v690684683738) (.cons (no_v690684623674) (.cons (no_v690684623322) (.cons (no_v690684608218) .nil)))))

private def v690684684186 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v690684684186 : ¬ MinimalInterpreter v690684684186 :=
  cost_cut false 1 (by decide)
private def v690684683754 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v690684683754 : ¬ MinimalInterpreter v690684683754 :=
  cost_cut false 1 (by decide)
private def v690684623770 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v690684623770 : ¬ MinimalInterpreter v690684623770 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690684623338 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v690684623338 : ¬ MinimalInterpreter v690684623338 :=
  cost_cut false 1 (by decide)
private def v690684608234 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v690684608234 : ¬ MinimalInterpreter v690684608234 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem row359 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [3,2,0,0]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [3,2,0,0] = [v690684684186,v690684683754,v690684623770,v690684623338,v690684608234] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684684186) (.cons (no_v690684683754) (.cons (no_v690684623770) (.cons (no_v690684623338) (.cons (no_v690684608234) .nil)))))

end Blc.SelfintSingleObject.Rows39
