import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row276 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [0,0,2,2]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [0,0,2,2] = [] := by decide
  rw [h]
  exact .nil

private def v69155790062 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v69155790062 : ¬ MinimalInterpreter v69155790062 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v69155788654 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v69155788654 : ¬ MinimalInterpreter v69155788654 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v69155777774 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v69155777774 : ¬ MinimalInterpreter v69155777774 :=
  cost_cut false 1 (by decide)

private def v69155776366 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v69155776366 : ¬ MinimalInterpreter v69155776366 :=
  cost_cut false 1 (by decide)

private def v69155773294 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v69155773294 : ¬ MinimalInterpreter v69155773294 :=
  cost_cut false 1 (by decide)

theorem row277 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [0,1,1,2]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [0,1,1,2] = [v69155790062,v69155788654,v69155777774,v69155776366,v69155773294] := by decide
  rw [h]
  exact (.cons (no_v69155790062) (.cons (no_v69155788654) (.cons (no_v69155777774) (.cons (no_v69155776366) (.cons (no_v69155773294) .nil)))))

private def v69155790070 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v69155790070 : ¬ MinimalInterpreter v69155790070 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v69155788662 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v69155788662 : ¬ MinimalInterpreter v69155788662 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v69155777782 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v69155777782 : ¬ MinimalInterpreter v69155777782 :=
  cost_cut false 1 (by decide)

private def v69155776374 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v69155776374 : ¬ MinimalInterpreter v69155776374 :=
  cost_cut false 1 (by decide)

private def v69155773302 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v69155773302 : ¬ MinimalInterpreter v69155773302 :=
  cost_cut false 1 (by decide)

theorem row278 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [0,1,2,1]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [0,1,2,1] = [v69155790070,v69155788662,v69155777782,v69155776374,v69155773302] := by decide
  rw [h]
  exact (.cons (no_v69155790070) (.cons (no_v69155788662) (.cons (no_v69155777782) (.cons (no_v69155776374) (.cons (no_v69155773302) .nil)))))

theorem row279 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [0,2,0,2]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [0,2,0,2] = [] := by decide
  rw [h]
  exact .nil

private def v69155790454 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v69155790454 : ¬ MinimalInterpreter v69155790454 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v69155788726 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v69155788726 : ¬ MinimalInterpreter v69155788726 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v69155778166 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v69155778166 : ¬ MinimalInterpreter v69155778166 :=
  cost_cut false 1 (by decide)

private def v69155776438 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v69155776438 : ¬ MinimalInterpreter v69155776438 :=
  cost_cut false 1 (by decide)

private def v69155773366 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v69155773366 : ¬ MinimalInterpreter v69155773366 :=
  cost_cut false 1 (by decide)

theorem row280 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [0,2,1,1]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [0,2,1,1] = [v69155790454,v69155788726,v69155778166,v69155776438,v69155773366] := by decide
  rw [h]
  exact (.cons (no_v69155790454) (.cons (no_v69155788726) (.cons (no_v69155778166) (.cons (no_v69155776438) (.cons (no_v69155773366) .nil)))))

theorem row281 : BadRow (row ⟨2,2,0,2,4,4⟩ [0,0] [0,2,2,0]) := by
  have h : row ⟨2,2,0,2,4,4⟩ [0,0] [0,2,2,0] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
