import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row228 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [1,1,1,0]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v701153470362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))))
private theorem no_v701153470362 : ¬ MinimalInterpreter v701153470362 :=
  cost_cut false 2 (by decide)
private def v701153469930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))))
private theorem no_v701153469930 : ¬ MinimalInterpreter v701153469930 :=
  cost_cut false 2 (by decide)
private def v701153459098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))))
private theorem no_v701153459098 : ¬ MinimalInterpreter v701153459098 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
private def v701153458666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))))
private theorem no_v701153458666 : ¬ MinimalInterpreter v701153458666 :=
  cost_cut false 2 (by decide)
private def v701153455850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))))
private theorem no_v701153455850 : ¬ MinimalInterpreter v701153455850 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
theorem row229 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [1,2,0,0]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [1,2,0,0] = [v701153470362,v701153469930,v701153459098,v701153458666,v701153455850] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153470362) (.cons (no_v701153469930) (.cons (no_v701153459098) (.cons (no_v701153458666) (.cons (no_v701153455850) .nil)))))

private def v701153473334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))))
private theorem no_v701153473334 : ¬ MinimalInterpreter v701153473334 :=
  cost_cut false 2 (by decide)
private def v701153473238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))))
private theorem no_v701153473238 : ¬ MinimalInterpreter v701153473238 :=
  cost_cut false 2 (by decide)
private def v701153459510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))))
private theorem no_v701153459510 : ¬ MinimalInterpreter v701153459510 :=
  cost_cut false 2 (by decide)
private def v701153459414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))))
private theorem no_v701153459414 : ¬ MinimalInterpreter v701153459414 :=
  cost_cut false 2 (by decide)
private def v701153455958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))))
private theorem no_v701153455958 : ¬ MinimalInterpreter v701153455958 :=
  cost_cut false 2 (by decide)
theorem row230 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [2,0,0,1]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [2,0,0,1] = [v701153473334,v701153473238,v701153459510,v701153459414,v701153455958] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153473334) (.cons (no_v701153473238) (.cons (no_v701153459510) (.cons (no_v701153459414) (.cons (no_v701153455958) .nil)))))

private def v701153473338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))))
private theorem no_v701153473338 : ¬ MinimalInterpreter v701153473338 :=
  cost_cut false 2 (by decide)
private def v701153473242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))))
private theorem no_v701153473242 : ¬ MinimalInterpreter v701153473242 :=
  cost_cut false 2 (by decide)
private def v701153459514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))))
private theorem no_v701153459514 : ¬ MinimalInterpreter v701153459514 :=
  cost_cut false 2 (by decide)
private def v701153459418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))))
private theorem no_v701153459418 : ¬ MinimalInterpreter v701153459418 :=
  cost_cut false 2 (by decide)
private def v701153455962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))))
private theorem no_v701153455962 : ¬ MinimalInterpreter v701153455962 :=
  cost_cut false 2 (by decide)
theorem row231 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [2,0,1,0]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [2,0,1,0] = [v701153473338,v701153473242,v701153459514,v701153459418,v701153455962] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153473338) (.cons (no_v701153473242) (.cons (no_v701153459514) (.cons (no_v701153459418) (.cons (no_v701153455962) .nil)))))

private def v701153473434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))))
private theorem no_v701153473434 : ¬ MinimalInterpreter v701153473434 :=
  cost_cut false 2 (by decide)
private def v701153473258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))))
private theorem no_v701153473258 : ¬ MinimalInterpreter v701153473258 :=
  cost_cut false 2 (by decide)
private def v701153459610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))))
private theorem no_v701153459610 : ¬ MinimalInterpreter v701153459610 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
private def v701153459434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))))
private theorem no_v701153459434 : ¬ MinimalInterpreter v701153459434 :=
  cost_cut false 2 (by decide)
private def v701153455978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))))
private theorem no_v701153455978 : ¬ MinimalInterpreter v701153455978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
theorem row232 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [2,1,0,0]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [2,1,0,0] = [v701153473434,v701153473258,v701153459610,v701153459434,v701153455978] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153473434) (.cons (no_v701153473258) (.cons (no_v701153459610) (.cons (no_v701153459434) (.cons (no_v701153455978) .nil)))))

theorem row233 : BadRow (row ⟨0,2,0,5,4,3⟩ [0,0] [3,0,0,0]) := by
  have h : row ⟨0,2,0,5,4,3⟩ [0,0] [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
