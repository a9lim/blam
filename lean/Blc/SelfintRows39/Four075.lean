import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690684481338 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v690684481338 : ¬ MinimalInterpreter v690684481338 :=
  cost_cut false 1 (by decide)
private def v690684480474 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v690684480474 : ¬ MinimalInterpreter v690684480474 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v690684475194 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v690684475194 : ¬ MinimalInterpreter v690684475194 :=
  cost_cut false 1 (by decide)
private def v690684474330 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v690684474330 : ¬ MinimalInterpreter v690684474330 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v690684472794 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v690684472794 : ¬ MinimalInterpreter v690684472794 :=
  cost_cut false 1 (by decide)
private def v690684628794 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v690684628794 : ¬ MinimalInterpreter v690684628794 :=
  cost_cut false 1 (by decide)
private def v690684627930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v690684627930 : ¬ MinimalInterpreter v690684627930 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))
private def v690685218618 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v690685218618 : ¬ MinimalInterpreter v690685218618 :=
  cost_cut false 1 (by decide)
private def v690685217754 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v690685217754 : ¬ MinimalInterpreter v690685217754 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
theorem row450 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [0,2,1,0]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [0,2,1,0] = [v690684481338,v690684480474,v690684475194,v690684474330,v690684472794,v690684628794,v690684627930,v690685218618,v690685217754] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684481338) (.cons (no_v690684480474) (.cons (no_v690684475194) (.cons (no_v690684474330) (.cons (no_v690684472794) (.cons (no_v690684628794) (.cons (no_v690684627930) (.cons (no_v690685218618) (.cons (no_v690685217754) .nil)))))))))

theorem row451 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [0,3,0,0]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690684487278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v690684487278 : ¬ MinimalInterpreter v690684487278 :=
  cost_cut false 1 (by decide)
private def v690684487086 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v690684487086 : ¬ MinimalInterpreter v690684487086 :=
  cost_cut false 1 (by decide)
private def v690684476014 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))))
private theorem no_v690684476014 : ¬ MinimalInterpreter v690684476014 :=
  cost_cut false 1 (by decide)
private def v690684475822 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))))
private theorem no_v690684475822 : ¬ MinimalInterpreter v690684475822 :=
  cost_cut false 1 (by decide)
private def v690684473006 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))))
private theorem no_v690684473006 : ¬ MinimalInterpreter v690684473006 :=
  cost_cut false 1 (by decide)
theorem row452 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [1,0,0,2]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [1,0,0,2] = [v690684487278,v690684487086,v690684476014,v690684475822,v690684473006] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684487278) (.cons (no_v690684487086) (.cons (no_v690684476014) (.cons (no_v690684475822) (.cons (no_v690684473006) .nil)))))

theorem row453 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [1,0,1,1]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690684487290 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v690684487290 : ¬ MinimalInterpreter v690684487290 :=
  cost_cut false 1 (by decide)
private def v690684487098 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v690684487098 : ¬ MinimalInterpreter v690684487098 :=
  cost_cut false 1 (by decide)
private def v690684476026 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v690684476026 : ¬ MinimalInterpreter v690684476026 :=
  cost_cut false 1 (by decide)
private def v690684475834 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v690684475834 : ¬ MinimalInterpreter v690684475834 :=
  cost_cut false 1 (by decide)
private def v690684473018 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v690684473018 : ¬ MinimalInterpreter v690684473018 :=
  cost_cut false 1 (by decide)
theorem row454 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [1,0,2,0]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [1,0,2,0] = [v690684487290,v690684487098,v690684476026,v690684475834,v690684473018] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684487290) (.cons (no_v690684487098) (.cons (no_v690684476026) (.cons (no_v690684475834) (.cons (no_v690684473018) .nil)))))

theorem row455 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [1,1,0,1]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
