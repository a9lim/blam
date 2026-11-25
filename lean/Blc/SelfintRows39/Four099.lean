import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row594 : BadRow (row ⟨3,2,0,2,4,3⟩ [0,0] [1,1,0,1]) := by
  have h : row ⟨3,2,0,2,4,3⟩ [0,0] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row595 : BadRow (row ⟨3,2,0,2,4,3⟩ [0,0] [1,1,1,0]) := by
  have h : row ⟨3,2,0,2,4,3⟩ [0,0] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v687412930458 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v687412930458 : ¬ MinimalInterpreter v687412930458 :=
  cost_cut false 1 (by decide)
private def v687412930026 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v687412930026 : ¬ MinimalInterpreter v687412930026 :=
  cost_cut false 1 (by decide)
private def v687412919194 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v687412919194 : ¬ MinimalInterpreter v687412919194 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v687412918762 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v687412918762 : ¬ MinimalInterpreter v687412918762 :=
  cost_cut false 1 (by decide)
private def v687412915946 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v687412915946 : ¬ MinimalInterpreter v687412915946 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row596 : BadRow (row ⟨3,2,0,2,4,3⟩ [0,0] [1,2,0,0]) := by
  have h : row ⟨3,2,0,2,4,3⟩ [0,0] [1,2,0,0] = [v687412930458,v687412930026,v687412919194,v687412918762,v687412915946] := by decide +kernel
  rw [h]
  exact (.cons (no_v687412930458) (.cons (no_v687412930026) (.cons (no_v687412919194) (.cons (no_v687412918762) (.cons (no_v687412915946) .nil)))))

private def v687412933430 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v687412933430 : ¬ MinimalInterpreter v687412933430 :=
  cost_cut false 1 (by decide)
private def v687412933334 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v687412933334 : ¬ MinimalInterpreter v687412933334 :=
  cost_cut false 1 (by decide)
private def v687412919606 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v687412919606 : ¬ MinimalInterpreter v687412919606 :=
  cost_cut false 1 (by decide)
private def v687412919510 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v687412919510 : ¬ MinimalInterpreter v687412919510 :=
  cost_cut false 1 (by decide)
private def v687412916054 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v687412916054 : ¬ MinimalInterpreter v687412916054 :=
  cost_cut false 1 (by decide)
theorem row597 : BadRow (row ⟨3,2,0,2,4,3⟩ [0,0] [2,0,0,1]) := by
  have h : row ⟨3,2,0,2,4,3⟩ [0,0] [2,0,0,1] = [v687412933430,v687412933334,v687412919606,v687412919510,v687412916054] := by decide +kernel
  rw [h]
  exact (.cons (no_v687412933430) (.cons (no_v687412933334) (.cons (no_v687412919606) (.cons (no_v687412919510) (.cons (no_v687412916054) .nil)))))

private def v687412933434 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v687412933434 : ¬ MinimalInterpreter v687412933434 :=
  cost_cut false 1 (by decide)
private def v687412933338 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v687412933338 : ¬ MinimalInterpreter v687412933338 :=
  cost_cut false 1 (by decide)
private def v687412919610 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v687412919610 : ¬ MinimalInterpreter v687412919610 :=
  cost_cut false 1 (by decide)
private def v687412919514 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v687412919514 : ¬ MinimalInterpreter v687412919514 :=
  cost_cut false 1 (by decide)
private def v687412916058 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v687412916058 : ¬ MinimalInterpreter v687412916058 :=
  cost_cut false 1 (by decide)
theorem row598 : BadRow (row ⟨3,2,0,2,4,3⟩ [0,0] [2,0,1,0]) := by
  have h : row ⟨3,2,0,2,4,3⟩ [0,0] [2,0,1,0] = [v687412933434,v687412933338,v687412919610,v687412919514,v687412916058] := by decide +kernel
  rw [h]
  exact (.cons (no_v687412933434) (.cons (no_v687412933338) (.cons (no_v687412919610) (.cons (no_v687412919514) (.cons (no_v687412916058) .nil)))))

private def v687412933530 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v687412933530 : ¬ MinimalInterpreter v687412933530 :=
  cost_cut false 1 (by decide)
private def v687412933354 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v687412933354 : ¬ MinimalInterpreter v687412933354 :=
  cost_cut false 1 (by decide)
private def v687412919706 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v687412919706 : ¬ MinimalInterpreter v687412919706 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v687412919530 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v687412919530 : ¬ MinimalInterpreter v687412919530 :=
  cost_cut false 1 (by decide)
private def v687412916074 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v687412916074 : ¬ MinimalInterpreter v687412916074 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row599 : BadRow (row ⟨3,2,0,2,4,3⟩ [0,0] [2,1,0,0]) := by
  have h : row ⟨3,2,0,2,4,3⟩ [0,0] [2,1,0,0] = [v687412933530,v687412933354,v687412919706,v687412919530,v687412916074] := by decide +kernel
  rw [h]
  exact (.cons (no_v687412933530) (.cons (no_v687412933354) (.cons (no_v687412919706) (.cons (no_v687412919530) (.cons (no_v687412916074) .nil)))))

end Blc.SelfintSingleObject.Rows39
