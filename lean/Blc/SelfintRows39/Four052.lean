import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row312 : BadRow (row ⟨1,3,0,2,4,3⟩ [0,0,0] [1,0,1,1]) := by
  have h : row ⟨1,3,0,2,4,3⟩ [0,0,0] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690634155642 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v690634155642 : ¬ MinimalInterpreter v690634155642 :=
  cost_cut false 1 (by decide)
private def v690634155450 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v690634155450 : ¬ MinimalInterpreter v690634155450 :=
  cost_cut false 1 (by decide)
private def v690634144378 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v690634144378 : ¬ MinimalInterpreter v690634144378 :=
  cost_cut false 1 (by decide)
private def v690634144186 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v690634144186 : ¬ MinimalInterpreter v690634144186 :=
  cost_cut false 1 (by decide)
private def v690634141370 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v690634141370 : ¬ MinimalInterpreter v690634141370 :=
  cost_cut false 1 (by decide)
private def v690231502458 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v690231502458 : ¬ MinimalInterpreter v690231502458 :=
  cost_cut false 1 (by decide)
private def v690231502266 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v690231502266 : ¬ MinimalInterpreter v690231502266 :=
  cost_cut false 1 (by decide)
private def v690231491194 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v690231491194 : ¬ MinimalInterpreter v690231491194 :=
  cost_cut false 1 (by decide)
private def v690231491002 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v690231491002 : ¬ MinimalInterpreter v690231491002 :=
  cost_cut false 1 (by decide)
private def v690231488186 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v690231488186 : ¬ MinimalInterpreter v690231488186 :=
  cost_cut false 1 (by decide)
theorem row313 : BadRow (row ⟨1,3,0,2,4,3⟩ [0,0,0] [1,0,2,0]) := by
  have h : row ⟨1,3,0,2,4,3⟩ [0,0,0] [1,0,2,0] = [v690634155642,v690634155450,v690634144378,v690634144186,v690634141370,v690231502458,v690231502266,v690231491194,v690231491002,v690231488186] := by decide +kernel
  rw [h]
  exact (.cons (no_v690634155642) (.cons (no_v690634155450) (.cons (no_v690634144378) (.cons (no_v690634144186) (.cons (no_v690634141370) (.cons (no_v690231502458) (.cons (no_v690231502266) (.cons (no_v690231491194) (.cons (no_v690231491002) (.cons (no_v690231488186) .nil))))))))))

theorem row314 : BadRow (row ⟨1,3,0,2,4,3⟩ [0,0,0] [1,1,0,1]) := by
  have h : row ⟨1,3,0,2,4,3⟩ [0,0,0] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row315 : BadRow (row ⟨1,3,0,2,4,3⟩ [0,0,0] [1,1,1,0]) := by
  have h : row ⟨1,3,0,2,4,3⟩ [0,0,0] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690634155930 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v690634155930 : ¬ MinimalInterpreter v690634155930 :=
  cost_cut false 1 (by decide)
private def v690634155498 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v690634155498 : ¬ MinimalInterpreter v690634155498 :=
  cost_cut false 1 (by decide)
private def v690634144666 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v690634144666 : ¬ MinimalInterpreter v690634144666 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690634144234 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v690634144234 : ¬ MinimalInterpreter v690634144234 :=
  cost_cut false 1 (by decide)
private def v690634141418 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v690634141418 : ¬ MinimalInterpreter v690634141418 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690231502746 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v690231502746 : ¬ MinimalInterpreter v690231502746 :=
  cost_cut false 1 (by decide)
private def v690231502314 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v690231502314 : ¬ MinimalInterpreter v690231502314 :=
  cost_cut false 1 (by decide)
private def v690231491482 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v690231491482 : ¬ MinimalInterpreter v690231491482 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690231491050 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v690231491050 : ¬ MinimalInterpreter v690231491050 :=
  cost_cut false 1 (by decide)
private def v690231488234 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v690231488234 : ¬ MinimalInterpreter v690231488234 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row316 : BadRow (row ⟨1,3,0,2,4,3⟩ [0,0,0] [1,2,0,0]) := by
  have h : row ⟨1,3,0,2,4,3⟩ [0,0,0] [1,2,0,0] = [v690634155930,v690634155498,v690634144666,v690634144234,v690634141418,v690231502746,v690231502314,v690231491482,v690231491050,v690231488234] := by decide +kernel
  rw [h]
  exact (.cons (no_v690634155930) (.cons (no_v690634155498) (.cons (no_v690634144666) (.cons (no_v690634144234) (.cons (no_v690634141418) (.cons (no_v690231502746) (.cons (no_v690231502314) (.cons (no_v690231491482) (.cons (no_v690231491050) (.cons (no_v690231488234) .nil))))))))))

private def v690634158902 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v690634158902 : ¬ MinimalInterpreter v690634158902 :=
  cost_cut false 1 (by decide)
private def v690634158806 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v690634158806 : ¬ MinimalInterpreter v690634158806 :=
  cost_cut false 1 (by decide)
private def v690634145078 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v690634145078 : ¬ MinimalInterpreter v690634145078 :=
  cost_cut false 1 (by decide)
private def v690634144982 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v690634144982 : ¬ MinimalInterpreter v690634144982 :=
  cost_cut false 1 (by decide)
private def v690634141526 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v690634141526 : ¬ MinimalInterpreter v690634141526 :=
  cost_cut false 1 (by decide)
private def v690231505718 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v690231505718 : ¬ MinimalInterpreter v690231505718 :=
  cost_cut false 1 (by decide)
private def v690231505622 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v690231505622 : ¬ MinimalInterpreter v690231505622 :=
  cost_cut false 1 (by decide)
private def v690231491894 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v690231491894 : ¬ MinimalInterpreter v690231491894 :=
  cost_cut false 1 (by decide)
private def v690231491798 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v690231491798 : ¬ MinimalInterpreter v690231491798 :=
  cost_cut false 1 (by decide)
private def v690231488342 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v690231488342 : ¬ MinimalInterpreter v690231488342 :=
  cost_cut false 1 (by decide)
theorem row317 : BadRow (row ⟨1,3,0,2,4,3⟩ [0,0,0] [2,0,0,1]) := by
  have h : row ⟨1,3,0,2,4,3⟩ [0,0,0] [2,0,0,1] = [v690634158902,v690634158806,v690634145078,v690634144982,v690634141526,v690231505718,v690231505622,v690231491894,v690231491798,v690231488342] := by decide +kernel
  rw [h]
  exact (.cons (no_v690634158902) (.cons (no_v690634158806) (.cons (no_v690634145078) (.cons (no_v690634144982) (.cons (no_v690634141526) (.cons (no_v690231505718) (.cons (no_v690231505622) (.cons (no_v690231491894) (.cons (no_v690231491798) (.cons (no_v690231488342) .nil))))))))))

end Blc.SelfintSingleObject.Rows39
