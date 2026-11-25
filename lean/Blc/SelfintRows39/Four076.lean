import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row456 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [1,1,1,0]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690684487578 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v690684487578 : ¬ MinimalInterpreter v690684487578 :=
  cost_cut false 1 (by decide)
private def v690684487146 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v690684487146 : ¬ MinimalInterpreter v690684487146 :=
  cost_cut false 1 (by decide)
private def v690684476314 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v690684476314 : ¬ MinimalInterpreter v690684476314 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v690684475882 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v690684475882 : ¬ MinimalInterpreter v690684475882 :=
  cost_cut false 1 (by decide)
private def v690684473066 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v690684473066 : ¬ MinimalInterpreter v690684473066 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem row457 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [1,2,0,0]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [1,2,0,0] = [v690684487578,v690684487146,v690684476314,v690684475882,v690684473066] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684487578) (.cons (no_v690684487146) (.cons (no_v690684476314) (.cons (no_v690684475882) (.cons (no_v690684473066) .nil)))))

private def v690684490550 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v690684490550 : ¬ MinimalInterpreter v690684490550 :=
  cost_cut false 1 (by decide)
private def v690684490454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v690684490454 : ¬ MinimalInterpreter v690684490454 :=
  cost_cut false 1 (by decide)
private def v690684476726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v690684476726 : ¬ MinimalInterpreter v690684476726 :=
  cost_cut false 1 (by decide)
private def v690684476630 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v690684476630 : ¬ MinimalInterpreter v690684476630 :=
  cost_cut false 1 (by decide)
private def v690684473174 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v690684473174 : ¬ MinimalInterpreter v690684473174 :=
  cost_cut false 1 (by decide)
theorem row458 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [2,0,0,1]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [2,0,0,1] = [v690684490550,v690684490454,v690684476726,v690684476630,v690684473174] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684490550) (.cons (no_v690684490454) (.cons (no_v690684476726) (.cons (no_v690684476630) (.cons (no_v690684473174) .nil)))))

private def v690684490554 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v690684490554 : ¬ MinimalInterpreter v690684490554 :=
  cost_cut false 1 (by decide)
private def v690684490458 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v690684490458 : ¬ MinimalInterpreter v690684490458 :=
  cost_cut false 1 (by decide)
private def v690684476730 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v690684476730 : ¬ MinimalInterpreter v690684476730 :=
  cost_cut false 1 (by decide)
private def v690684476634 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v690684476634 : ¬ MinimalInterpreter v690684476634 :=
  cost_cut false 1 (by decide)
private def v690684473178 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v690684473178 : ¬ MinimalInterpreter v690684473178 :=
  cost_cut false 1 (by decide)
theorem row459 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [2,0,1,0]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [2,0,1,0] = [v690684490554,v690684490458,v690684476730,v690684476634,v690684473178] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684490554) (.cons (no_v690684490458) (.cons (no_v690684476730) (.cons (no_v690684476634) (.cons (no_v690684473178) .nil)))))

private def v690684490650 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v690684490650 : ¬ MinimalInterpreter v690684490650 :=
  cost_cut false 1 (by decide)
private def v690684490474 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v690684490474 : ¬ MinimalInterpreter v690684490474 :=
  cost_cut false 1 (by decide)
private def v690684476826 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v690684476826 : ¬ MinimalInterpreter v690684476826 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v690684476650 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v690684476650 : ¬ MinimalInterpreter v690684476650 :=
  cost_cut false 1 (by decide)
private def v690684473194 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v690684473194 : ¬ MinimalInterpreter v690684473194 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem row460 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [2,1,0,0]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [2,1,0,0] = [v690684490650,v690684490474,v690684476826,v690684476650,v690684473194] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684490650) (.cons (no_v690684490474) (.cons (no_v690684476826) (.cons (no_v690684476650) (.cons (no_v690684473194) .nil)))))

theorem row461 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [3,0,0,0]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
