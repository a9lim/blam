import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v700197162222 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v700197162222 : ¬ MinimalInterpreter v700197162222 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700197161838 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v700197161838 : ¬ MinimalInterpreter v700197161838 :=
  chain_cut false 2 (by decide)
private def v700197156078 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v700197156078 : ¬ MinimalInterpreter v700197156078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700197155694 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v700197155694 : ¬ MinimalInterpreter v700197155694 :=
  chain_cut false 2 (by decide)
private def v700197154158 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v700197154158 : ¬ MinimalInterpreter v700197154158 :=
  chain_cut false 2 (by decide)
private def v700197309678 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v700197309678 : ¬ MinimalInterpreter v700197309678 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v700197309294 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v700197309294 : ¬ MinimalInterpreter v700197309294 :=
  chain_cut false 2 (by decide)
private def v700197899502 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v700197899502 : ¬ MinimalInterpreter v700197899502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700197899118 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v700197899118 : ¬ MinimalInterpreter v700197899118 :=
  cost_cut false 3 (by decide)
theorem row516 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [0,0,1,2]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [0,0,1,2] = [v700197162222,v700197161838,v700197156078,v700197155694,v700197154158,v700197309678,v700197309294,v700197899502,v700197899118] := by decide +kernel
  rw [h]
  exact (.cons (no_v700197162222) (.cons (no_v700197161838) (.cons (no_v700197156078) (.cons (no_v700197155694) (.cons (no_v700197154158) (.cons (no_v700197309678) (.cons (no_v700197309294) (.cons (no_v700197899502) (.cons (no_v700197899118) .nil)))))))))

private def v700197162230 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v700197162230 : ¬ MinimalInterpreter v700197162230 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700197161846 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v700197161846 : ¬ MinimalInterpreter v700197161846 :=
  chain_cut false 2 (by decide)
private def v700197156086 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v700197156086 : ¬ MinimalInterpreter v700197156086 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700197155702 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v700197155702 : ¬ MinimalInterpreter v700197155702 :=
  chain_cut false 2 (by decide)
private def v700197154166 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v700197154166 : ¬ MinimalInterpreter v700197154166 :=
  chain_cut false 2 (by decide)
private def v700197309686 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v700197309686 : ¬ MinimalInterpreter v700197309686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v700197309302 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v700197309302 : ¬ MinimalInterpreter v700197309302 :=
  chain_cut false 2 (by decide)
private def v700197899510 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v700197899510 : ¬ MinimalInterpreter v700197899510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700197899126 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v700197899126 : ¬ MinimalInterpreter v700197899126 :=
  cost_cut false 3 (by decide)
theorem row517 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [0,0,2,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [0,0,2,1] = [v700197162230,v700197161846,v700197156086,v700197155702,v700197154166,v700197309686,v700197309302,v700197899510,v700197899126] := by decide +kernel
  rw [h]
  exact (.cons (no_v700197162230) (.cons (no_v700197161846) (.cons (no_v700197156086) (.cons (no_v700197155702) (.cons (no_v700197154166) (.cons (no_v700197309686) (.cons (no_v700197309302) (.cons (no_v700197899510) (.cons (no_v700197899126) .nil)))))))))

private def v700197162606 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v700197162606 : ¬ MinimalInterpreter v700197162606 :=
  chain_cut false 2 (by decide)
private def v700197161902 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v700197161902 : ¬ MinimalInterpreter v700197161902 :=
  chain_cut false 2 (by decide)
private def v700197156462 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v700197156462 : ¬ MinimalInterpreter v700197156462 :=
  chain_cut false 2 (by decide)
private def v700197155758 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v700197155758 : ¬ MinimalInterpreter v700197155758 :=
  chain_cut false 2 (by decide)
private def v700197154222 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v700197154222 : ¬ MinimalInterpreter v700197154222 :=
  chain_cut false 2 (by decide)
private def v700197310062 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v700197310062 : ¬ MinimalInterpreter v700197310062 :=
  chain_cut false 2 (by decide)
private def v700197309358 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v700197309358 : ¬ MinimalInterpreter v700197309358 :=
  chain_cut false 2 (by decide)
private def v700197899886 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v700197899886 : ¬ MinimalInterpreter v700197899886 :=
  cost_cut false 3 (by decide)
private def v700197899182 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v700197899182 : ¬ MinimalInterpreter v700197899182 :=
  cost_cut false 3 (by decide)
theorem row518 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [0,1,0,2]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [0,1,0,2] = [v700197162606,v700197161902,v700197156462,v700197155758,v700197154222,v700197310062,v700197309358,v700197899886,v700197899182] := by decide +kernel
  rw [h]
  exact (.cons (no_v700197162606) (.cons (no_v700197161902) (.cons (no_v700197156462) (.cons (no_v700197155758) (.cons (no_v700197154222) (.cons (no_v700197310062) (.cons (no_v700197309358) (.cons (no_v700197899886) (.cons (no_v700197899182) .nil)))))))))

theorem row519 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [0,1,1,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v700197162618 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v700197162618 : ¬ MinimalInterpreter v700197162618 :=
  chain_cut false 2 (by decide)
private def v700197161914 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v700197161914 : ¬ MinimalInterpreter v700197161914 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700197156474 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v700197156474 : ¬ MinimalInterpreter v700197156474 :=
  chain_cut false 2 (by decide)
private def v700197155770 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v700197155770 : ¬ MinimalInterpreter v700197155770 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700197154234 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v700197154234 : ¬ MinimalInterpreter v700197154234 :=
  chain_cut false 2 (by decide)
private def v700197310074 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v700197310074 : ¬ MinimalInterpreter v700197310074 :=
  chain_cut false 2 (by decide)
private def v700197309370 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v700197309370 : ¬ MinimalInterpreter v700197309370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v700197899898 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v700197899898 : ¬ MinimalInterpreter v700197899898 :=
  cost_cut false 3 (by decide)
private def v700197899194 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v700197899194 : ¬ MinimalInterpreter v700197899194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row520 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [0,1,2,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [0,1,2,0] = [v700197162618,v700197161914,v700197156474,v700197155770,v700197154234,v700197310074,v700197309370,v700197899898,v700197899194] := by decide +kernel
  rw [h]
  exact (.cons (no_v700197162618) (.cons (no_v700197161914) (.cons (no_v700197156474) (.cons (no_v700197155770) (.cons (no_v700197154234) (.cons (no_v700197310074) (.cons (no_v700197309370) (.cons (no_v700197899898) (.cons (no_v700197899194) .nil)))))))))

private def v700197162806 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v700197162806 : ¬ MinimalInterpreter v700197162806 :=
  chain_cut false 2 (by decide)
private def v700197161942 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v700197161942 : ¬ MinimalInterpreter v700197161942 :=
  chain_cut false 2 (by decide)
private def v700197156662 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v700197156662 : ¬ MinimalInterpreter v700197156662 :=
  chain_cut false 2 (by decide)
private def v700197155798 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v700197155798 : ¬ MinimalInterpreter v700197155798 :=
  chain_cut false 2 (by decide)
private def v700197154262 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v700197154262 : ¬ MinimalInterpreter v700197154262 :=
  chain_cut false 2 (by decide)
private def v700197310262 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v700197310262 : ¬ MinimalInterpreter v700197310262 :=
  chain_cut false 2 (by decide)
private def v700197309398 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v700197309398 : ¬ MinimalInterpreter v700197309398 :=
  chain_cut false 2 (by decide)
private def v700197900086 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v700197900086 : ¬ MinimalInterpreter v700197900086 :=
  cost_cut false 3 (by decide)
private def v700197899222 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v700197899222 : ¬ MinimalInterpreter v700197899222 :=
  cost_cut false 3 (by decide)
theorem row521 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [0,2,0,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [0,2,0,1] = [v700197162806,v700197161942,v700197156662,v700197155798,v700197154262,v700197310262,v700197309398,v700197900086,v700197899222] := by decide +kernel
  rw [h]
  exact (.cons (no_v700197162806) (.cons (no_v700197161942) (.cons (no_v700197156662) (.cons (no_v700197155798) (.cons (no_v700197154262) (.cons (no_v700197310262) (.cons (no_v700197309398) (.cons (no_v700197900086) (.cons (no_v700197899222) .nil)))))))))

end Blc.SelfintSingleObject.Rows39
