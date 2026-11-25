import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v691154249326 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v691154249326 : ¬ MinimalInterpreter v691154249326 :=
  cost_cut false 2 (by decide)
private def v691154249134 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v691154249134 : ¬ MinimalInterpreter v691154249134 :=
  cost_cut false 2 (by decide)
private def v691154238062 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v691154238062 : ¬ MinimalInterpreter v691154238062 :=
  cost_cut false 2 (by decide)
private def v691154237870 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v691154237870 : ¬ MinimalInterpreter v691154237870 :=
  cost_cut false 2 (by decide)
private def v691154235054 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v691154235054 : ¬ MinimalInterpreter v691154235054 :=
  cost_cut false 2 (by decide)
theorem row432 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [1,0,0,2]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [1,0,0,2] = [v691154249326,v691154249134,v691154238062,v691154237870,v691154235054] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154249326) (.cons (no_v691154249134) (.cons (no_v691154238062) (.cons (no_v691154237870) (.cons (no_v691154235054) .nil)))))

theorem row433 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [1,0,1,1]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v691154249338 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v691154249338 : ¬ MinimalInterpreter v691154249338 :=
  cost_cut false 2 (by decide)
private def v691154249146 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v691154249146 : ¬ MinimalInterpreter v691154249146 :=
  cost_cut false 2 (by decide)
private def v691154238074 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v691154238074 : ¬ MinimalInterpreter v691154238074 :=
  cost_cut false 2 (by decide)
private def v691154237882 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v691154237882 : ¬ MinimalInterpreter v691154237882 :=
  cost_cut false 2 (by decide)
private def v691154235066 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v691154235066 : ¬ MinimalInterpreter v691154235066 :=
  cost_cut false 2 (by decide)
theorem row434 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [1,0,2,0]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [1,0,2,0] = [v691154249338,v691154249146,v691154238074,v691154237882,v691154235066] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154249338) (.cons (no_v691154249146) (.cons (no_v691154238074) (.cons (no_v691154237882) (.cons (no_v691154235066) .nil)))))

theorem row435 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [1,1,0,1]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row436 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [1,1,1,0]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v691154249626 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v691154249626 : ¬ MinimalInterpreter v691154249626 :=
  cost_cut false 2 (by decide)
private def v691154249194 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v691154249194 : ¬ MinimalInterpreter v691154249194 :=
  cost_cut false 2 (by decide)
private def v691154238362 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v691154238362 : ¬ MinimalInterpreter v691154238362 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v691154237930 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v691154237930 : ¬ MinimalInterpreter v691154237930 :=
  cost_cut false 2 (by decide)
private def v691154235114 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v691154235114 : ¬ MinimalInterpreter v691154235114 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row437 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [1,2,0,0]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [1,2,0,0] = [v691154249626,v691154249194,v691154238362,v691154237930,v691154235114] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154249626) (.cons (no_v691154249194) (.cons (no_v691154238362) (.cons (no_v691154237930) (.cons (no_v691154235114) .nil)))))

end Blc.SelfintSingleObject.Rows39
