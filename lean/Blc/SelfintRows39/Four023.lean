import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701154407226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v701154407226 : ¬ MinimalInterpreter v701154407226 :=
  cost_cut false 2 (by decide)
private def v701154407130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v701154407130 : ¬ MinimalInterpreter v701154407130 :=
  cost_cut false 2 (by decide)
private def v701154405690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v701154405690 : ¬ MinimalInterpreter v701154405690 :=
  cost_cut false 2 (by decide)
private def v701154405594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v701154405594 : ¬ MinimalInterpreter v701154405594 :=
  cost_cut false 2 (by decide)
private def v701154405210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v701154405210 : ¬ MinimalInterpreter v701154405210 :=
  cost_cut false 2 (by decide)
private def v701154186042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v701154186042 : ¬ MinimalInterpreter v701154186042 :=
  cost_cut false 2 (by decide)
private def v701154185946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v701154185946 : ¬ MinimalInterpreter v701154185946 :=
  cost_cut false 2 (by decide)
private def v701154184506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v701154184506 : ¬ MinimalInterpreter v701154184506 :=
  cost_cut false 2 (by decide)
private def v701154129210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v701154129210 : ¬ MinimalInterpreter v701154129210 :=
  cost_cut false 2 (by decide)
private def v701154184410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0)))))))
private theorem no_v701154184410 : ¬ MinimalInterpreter v701154184410 :=
  cost_cut false 2 (by decide)
private def v701154184026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))))))
private theorem no_v701154184026 : ¬ MinimalInterpreter v701154184026 :=
  cost_cut false 2 (by decide)
private def v701154129114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v701154129114 : ¬ MinimalInterpreter v701154129114 :=
  cost_cut false 2 (by decide)
private def v701154128730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v701154128730 : ¬ MinimalInterpreter v701154128730 :=
  cost_cut false 2 (by decide)
private def v701154114906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v701154114906 : ¬ MinimalInterpreter v701154114906 :=
  cost_cut false 2 (by decide)
theorem row138 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [2,0,0,1,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [2,0,0,1,0] = [v701154407226,v701154407130,v701154405690,v701154405594,v701154405210,v701154186042,v701154185946,v701154184506,v701154129210,v701154184410,v701154184026,v701154129114,v701154128730,v701154114906] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154407226) (.cons (no_v701154407130) (.cons (no_v701154405690) (.cons (no_v701154405594) (.cons (no_v701154405210) (.cons (no_v701154186042) (.cons (no_v701154185946) (.cons (no_v701154184506) (.cons (no_v701154129210) (.cons (no_v701154184410) (.cons (no_v701154184026) (.cons (no_v701154129114) (.cons (no_v701154128730) (.cons (no_v701154114906) .nil))))))))))))))

private def v701154407322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v701154407322 : ¬ MinimalInterpreter v701154407322 :=
  cost_cut false 2 (by decide)
private def v701154407146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v701154407146 : ¬ MinimalInterpreter v701154407146 :=
  cost_cut false 2 (by decide)
private def v701154405786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701154405786 : ¬ MinimalInterpreter v701154405786 :=
  cost_cut false 2 (by decide)
private def v701154405610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v701154405610 : ¬ MinimalInterpreter v701154405610 :=
  cost_cut false 2 (by decide)
private def v701154405226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v701154405226 : ¬ MinimalInterpreter v701154405226 :=
  cost_cut false 2 (by decide)
private def v701154186138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v701154186138 : ¬ MinimalInterpreter v701154186138 :=
  cost_cut false 2 (by decide)
private def v701154185962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v701154185962 : ¬ MinimalInterpreter v701154185962 :=
  cost_cut false 2 (by decide)
private def v701154184602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0))))))))
private theorem no_v701154184602 : ¬ MinimalInterpreter v701154184602 :=
  cost_cut false 2 (by decide)
private def v701154129306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v701154129306 : ¬ MinimalInterpreter v701154129306 :=
  cost_cut false 2 (by decide)
private def v701154184426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0)))))))
private theorem no_v701154184426 : ¬ MinimalInterpreter v701154184426 :=
  cost_cut false 2 (by decide)
private def v701154184042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0)))))))
private theorem no_v701154184042 : ¬ MinimalInterpreter v701154184042 :=
  cost_cut false 2 (by decide)
private def v701154129130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v701154129130 : ¬ MinimalInterpreter v701154129130 :=
  cost_cut false 2 (by decide)
private def v701154128746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.var 0)))))))
private theorem no_v701154128746 : ¬ MinimalInterpreter v701154128746 :=
  cost_cut false 2 (by decide)
private def v701154114922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v701154114922 : ¬ MinimalInterpreter v701154114922 :=
  cost_cut false 2 (by decide)
theorem row139 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [2,0,1,0,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [2,0,1,0,0] = [v701154407322,v701154407146,v701154405786,v701154405610,v701154405226,v701154186138,v701154185962,v701154184602,v701154129306,v701154184426,v701154184042,v701154129130,v701154128746,v701154114922] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154407322) (.cons (no_v701154407146) (.cons (no_v701154405786) (.cons (no_v701154405610) (.cons (no_v701154405226) (.cons (no_v701154186138) (.cons (no_v701154185962) (.cons (no_v701154184602) (.cons (no_v701154129306) (.cons (no_v701154184426) (.cons (no_v701154184042) (.cons (no_v701154129130) (.cons (no_v701154128746) (.cons (no_v701154114922) .nil))))))))))))))

private def v701154408858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))))))))
private theorem no_v701154408858 : ¬ MinimalInterpreter v701154408858 :=
  cost_cut false 2 (by decide)
private def v701154408810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))))))
private theorem no_v701154408810 : ¬ MinimalInterpreter v701154408810 :=
  cost_cut false 2 (by decide)
private def v701154406042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701154406042 : ¬ MinimalInterpreter v701154406042 :=
  cost_cut false 2 (by decide)
private def v701154405994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))))))
private theorem no_v701154405994 : ¬ MinimalInterpreter v701154405994 :=
  cost_cut false 2 (by decide)
private def v701154405290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))))))
private theorem no_v701154405290 : ¬ MinimalInterpreter v701154405290 :=
  cost_cut false 2 (by decide)
private def v701154187674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))))))
private theorem no_v701154187674 : ¬ MinimalInterpreter v701154187674 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154187626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))))))
private theorem no_v701154187626 : ¬ MinimalInterpreter v701154187626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154184858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0))))))))
private theorem no_v701154184858 : ¬ MinimalInterpreter v701154184858 :=
  cost_cut false 2 (by decide)
private def v701154129562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))))))
private theorem no_v701154129562 : ¬ MinimalInterpreter v701154129562 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154184810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0)))))))
private theorem no_v701154184810 : ¬ MinimalInterpreter v701154184810 :=
  cost_cut false 2 (by decide)
private def v701154184106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0)))))))
private theorem no_v701154184106 : ¬ MinimalInterpreter v701154184106 :=
  cost_cut false 2 (by decide)
private def v701154129514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))))))
private theorem no_v701154129514 : ¬ MinimalInterpreter v701154129514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154128810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.var 0)))))))
private theorem no_v701154128810 : ¬ MinimalInterpreter v701154128810 :=
  cost_cut false 2 (by decide)
private def v701154114986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)))))))
private theorem no_v701154114986 : ¬ MinimalInterpreter v701154114986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row140 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [2,1,0,0,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [2,1,0,0,0] = [v701154408858,v701154408810,v701154406042,v701154405994,v701154405290,v701154187674,v701154187626,v701154184858,v701154129562,v701154184810,v701154184106,v701154129514,v701154128810,v701154114986] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154408858) (.cons (no_v701154408810) (.cons (no_v701154406042) (.cons (no_v701154405994) (.cons (no_v701154405290) (.cons (no_v701154187674) (.cons (no_v701154187626) (.cons (no_v701154184858) (.cons (no_v701154129562) (.cons (no_v701154184810) (.cons (no_v701154184106) (.cons (no_v701154129514) (.cons (no_v701154128810) (.cons (no_v701154114986) .nil))))))))))))))

theorem row141 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [3,0,0,0,0]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [3,0,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row142 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [0,0,0,3]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v700952136942 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v700952136942 : ¬ MinimalInterpreter v700952136942 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700952136558 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v700952136558 : ¬ MinimalInterpreter v700952136558 :=
  cost_cut false 2 (by decide)
private def v700952130798 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v700952130798 : ¬ MinimalInterpreter v700952130798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v700952130414 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v700952130414 : ¬ MinimalInterpreter v700952130414 :=
  cost_cut false 2 (by decide)
private def v700952128878 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v700952128878 : ¬ MinimalInterpreter v700952128878 :=
  cost_cut false 2 (by decide)
private def v700952284398 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v700952284398 : ¬ MinimalInterpreter v700952284398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v700952284014 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v700952284014 : ¬ MinimalInterpreter v700952284014 :=
  cost_cut false 2 (by decide)
private def v700952874222 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v700952874222 : ¬ MinimalInterpreter v700952874222 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v700952873838 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v700952873838 : ¬ MinimalInterpreter v700952873838 :=
  cost_cut false 2 (by decide)
private def v699341524206 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v699341524206 : ¬ MinimalInterpreter v699341524206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v699341523822 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v699341523822 : ¬ MinimalInterpreter v699341523822 :=
  chain_cut false 3 (by decide)
private def v699341518062 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v699341518062 : ¬ MinimalInterpreter v699341518062 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v699341517678 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v699341517678 : ¬ MinimalInterpreter v699341517678 :=
  chain_cut false 3 (by decide)
private def v699341516142 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v699341516142 : ¬ MinimalInterpreter v699341516142 :=
  chain_cut false 3 (by decide)
private def v699341671662 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v699341671662 : ¬ MinimalInterpreter v699341671662 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v699341671278 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v699341671278 : ¬ MinimalInterpreter v699341671278 :=
  chain_cut false 3 (by decide)
private def v699342261486 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v699342261486 : ¬ MinimalInterpreter v699342261486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v699342261102 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v699342261102 : ¬ MinimalInterpreter v699342261102 :=
  cost_cut false 4 (by decide)
theorem row143 : BadRow (row ⟨0,3,0,3,4,3⟩ [0,0,0] [0,0,1,2]) := by
  have h : row ⟨0,3,0,3,4,3⟩ [0,0,0] [0,0,1,2] = [v700952136942,v700952136558,v700952130798,v700952130414,v700952128878,v700952284398,v700952284014,v700952874222,v700952873838,v699341524206,v699341523822,v699341518062,v699341517678,v699341516142,v699341671662,v699341671278,v699342261486,v699342261102] := by decide +kernel
  rw [h]
  exact (.cons (no_v700952136942) (.cons (no_v700952136558) (.cons (no_v700952130798) (.cons (no_v700952130414) (.cons (no_v700952128878) (.cons (no_v700952284398) (.cons (no_v700952284014) (.cons (no_v700952874222) (.cons (no_v700952873838) (.cons (no_v699341524206) (.cons (no_v699341523822) (.cons (no_v699341518062) (.cons (no_v699341517678) (.cons (no_v699341516142) (.cons (no_v699341671662) (.cons (no_v699341671278) (.cons (no_v699342261486) (.cons (no_v699342261102) .nil))))))))))))))))))

end Blc.SelfintSingleObject.Rows39
