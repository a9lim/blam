import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v688067419758 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2))))))))
private theorem no_v688067419758 : ¬ MinimalInterpreter v688067419758 :=
  cost_cut false 1 (by decide)
private def v688067418030 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2)))))))
private theorem no_v688067418030 : ¬ MinimalInterpreter v688067418030 :=
  cost_cut false 1 (by decide)
private def v688067374702 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2)))))))
private theorem no_v688067374702 : ¬ MinimalInterpreter v688067374702 :=
  cost_cut false 1 (by decide)
private def v688067372974 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2))))))
private theorem no_v688067372974 : ¬ MinimalInterpreter v688067372974 :=
  cost_cut false 1 (by decide)
private def v688067361710 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2))))))
private theorem no_v688067361710 : ¬ MinimalInterpreter v688067361710 :=
  cost_cut false 1 (by decide)
theorem row468 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [1,2,0,2]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [1,2,0,2] = [v688067419758,v688067418030,v688067374702,v688067372974,v688067361710] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067419758) (.cons (no_v688067418030) (.cons (no_v688067374702) (.cons (no_v688067372974) (.cons (no_v688067361710) .nil)))))

theorem row469 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [1,2,1,1]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [1,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v688067419770 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0))))))))
private theorem no_v688067419770 : ¬ MinimalInterpreter v688067419770 :=
  cost_cut false 1 (by decide)
private def v688067418042 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0)))))))
private theorem no_v688067418042 : ¬ MinimalInterpreter v688067418042 :=
  cost_cut false 1 (by decide)
private def v688067374714 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0)))))))
private theorem no_v688067374714 : ¬ MinimalInterpreter v688067374714 :=
  cost_cut false 1 (by decide)
private def v688067372986 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))))
private theorem no_v688067372986 : ¬ MinimalInterpreter v688067372986 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v688067361722 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))))
private theorem no_v688067361722 : ¬ MinimalInterpreter v688067361722 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row470 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [1,2,2,0]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [1,2,2,0] = [v688067419770,v688067418042,v688067374714,v688067372986,v688067361722] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067419770) (.cons (no_v688067418042) (.cons (no_v688067374714) (.cons (no_v688067372986) (.cons (no_v688067361722) .nil)))))

private def v688067431662 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v688067431662 : ¬ MinimalInterpreter v688067431662 :=
  cost_cut false 1 (by decide)
private def v688067431278 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v688067431278 : ¬ MinimalInterpreter v688067431278 :=
  cost_cut false 1 (by decide)
private def v688067376366 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v688067376366 : ¬ MinimalInterpreter v688067376366 :=
  cost_cut false 1 (by decide)
private def v688067375982 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v688067375982 : ¬ MinimalInterpreter v688067375982 :=
  cost_cut false 1 (by decide)
private def v688067362158 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v688067362158 : ¬ MinimalInterpreter v688067362158 :=
  cost_cut false 1 (by decide)
theorem row471 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [2,0,1,2]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [2,0,1,2] = [v688067431662,v688067431278,v688067376366,v688067375982,v688067362158] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067431662) (.cons (no_v688067431278) (.cons (no_v688067376366) (.cons (no_v688067375982) (.cons (no_v688067362158) .nil)))))

private def v688067431670 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v688067431670 : ¬ MinimalInterpreter v688067431670 :=
  cost_cut false 1 (by decide)
private def v688067431286 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v688067431286 : ¬ MinimalInterpreter v688067431286 :=
  cost_cut false 1 (by decide)
private def v688067376374 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v688067376374 : ¬ MinimalInterpreter v688067376374 :=
  cost_cut false 1 (by decide)
private def v688067375990 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v688067375990 : ¬ MinimalInterpreter v688067375990 :=
  cost_cut false 1 (by decide)
private def v688067362166 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v688067362166 : ¬ MinimalInterpreter v688067362166 :=
  cost_cut false 1 (by decide)
theorem row472 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [2,0,2,1]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [2,0,2,1] = [v688067431670,v688067431286,v688067376374,v688067375990,v688067362166] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067431670) (.cons (no_v688067431286) (.cons (no_v688067376374) (.cons (no_v688067375990) (.cons (no_v688067362166) .nil)))))

private def v688067432046 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v688067432046 : ¬ MinimalInterpreter v688067432046 :=
  cost_cut false 1 (by decide)
private def v688067431342 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v688067431342 : ¬ MinimalInterpreter v688067431342 :=
  cost_cut false 1 (by decide)
private def v688067376750 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v688067376750 : ¬ MinimalInterpreter v688067376750 :=
  cost_cut false 1 (by decide)
private def v688067376046 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v688067376046 : ¬ MinimalInterpreter v688067376046 :=
  cost_cut false 1 (by decide)
private def v688067362222 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v688067362222 : ¬ MinimalInterpreter v688067362222 :=
  cost_cut false 1 (by decide)
theorem row473 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [2,1,0,2]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [2,1,0,2] = [v688067432046,v688067431342,v688067376750,v688067376046,v688067362222] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067432046) (.cons (no_v688067431342) (.cons (no_v688067376750) (.cons (no_v688067376046) (.cons (no_v688067362222) .nil)))))

end Blc.SelfintSingleObject.Rows39
