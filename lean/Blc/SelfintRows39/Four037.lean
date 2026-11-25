import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701153464122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))))
private theorem no_v701153464122 : ¬ MinimalInterpreter v701153464122 :=
  cost_cut false 2 (by decide)
private def v701153463258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))))
private theorem no_v701153463258 : ¬ MinimalInterpreter v701153463258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
private def v701153457978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))))
private theorem no_v701153457978 : ¬ MinimalInterpreter v701153457978 :=
  cost_cut false 2 (by decide)
private def v701153457114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))))
private theorem no_v701153457114 : ¬ MinimalInterpreter v701153457114 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
private def v701153455578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))))
private theorem no_v701153455578 : ¬ MinimalInterpreter v701153455578 :=
  cost_cut false 2 (by decide)
private def v701153611578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))))
private theorem no_v701153611578 : ¬ MinimalInterpreter v701153611578 :=
  cost_cut false 2 (by decide)
private def v701153610714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))))
private theorem no_v701153610714 : ¬ MinimalInterpreter v701153610714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))))
private def v701154201402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))))
private theorem no_v701154201402 : ¬ MinimalInterpreter v701154201402 :=
  cost_cut false 2 (by decide)
private def v701154200538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))))
private theorem no_v701154200538 : ¬ MinimalInterpreter v701154200538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))))
theorem row222 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [0,2,1,0]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [0,2,1,0] = [v701153464122,v701153463258,v701153457978,v701153457114,v701153455578,v701153611578,v701153610714,v701154201402,v701154200538] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153464122) (.cons (no_v701153463258) (.cons (no_v701153457978) (.cons (no_v701153457114) (.cons (no_v701153455578) (.cons (no_v701153611578) (.cons (no_v701153610714) (.cons (no_v701154201402) (.cons (no_v701154200538) .nil)))))))))

theorem row223 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [0,3,0,0]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v701153470062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))))
private theorem no_v701153470062 : ¬ MinimalInterpreter v701153470062 :=
  cost_cut false 2 (by decide)
private def v701153469870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))))
private theorem no_v701153469870 : ¬ MinimalInterpreter v701153469870 :=
  cost_cut false 2 (by decide)
private def v701153458798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))))
private theorem no_v701153458798 : ¬ MinimalInterpreter v701153458798 :=
  cost_cut false 2 (by decide)
private def v701153458606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))))
private theorem no_v701153458606 : ¬ MinimalInterpreter v701153458606 :=
  cost_cut false 2 (by decide)
private def v701153455790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))))
private theorem no_v701153455790 : ¬ MinimalInterpreter v701153455790 :=
  cost_cut false 2 (by decide)
theorem row224 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [1,0,0,2]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [1,0,0,2] = [v701153470062,v701153469870,v701153458798,v701153458606,v701153455790] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153470062) (.cons (no_v701153469870) (.cons (no_v701153458798) (.cons (no_v701153458606) (.cons (no_v701153455790) .nil)))))

theorem row225 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [1,0,1,1]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v701153470074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))))
private theorem no_v701153470074 : ¬ MinimalInterpreter v701153470074 :=
  cost_cut false 2 (by decide)
private def v701153469882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))))
private theorem no_v701153469882 : ¬ MinimalInterpreter v701153469882 :=
  cost_cut false 2 (by decide)
private def v701153458810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))))
private theorem no_v701153458810 : ¬ MinimalInterpreter v701153458810 :=
  cost_cut false 2 (by decide)
private def v701153458618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))))
private theorem no_v701153458618 : ¬ MinimalInterpreter v701153458618 :=
  cost_cut false 2 (by decide)
private def v701153455802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))))
private theorem no_v701153455802 : ¬ MinimalInterpreter v701153455802 :=
  cost_cut false 2 (by decide)
theorem row226 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [1,0,2,0]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [1,0,2,0] = [v701153470074,v701153469882,v701153458810,v701153458618,v701153455802] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153470074) (.cons (no_v701153469882) (.cons (no_v701153458810) (.cons (no_v701153458618) (.cons (no_v701153455802) .nil)))))

theorem row227 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [1,1,0,1]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
