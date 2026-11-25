import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row474 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [2,1,1,1]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [2,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v688067432058 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v688067432058 : ¬ MinimalInterpreter v688067432058 :=
  cost_cut false 1 (by decide)
private def v688067431354 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v688067431354 : ¬ MinimalInterpreter v688067431354 :=
  cost_cut false 1 (by decide)
private def v688067376762 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v688067376762 : ¬ MinimalInterpreter v688067376762 :=
  cost_cut false 1 (by decide)
private def v688067376058 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v688067376058 : ¬ MinimalInterpreter v688067376058 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688067362234 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v688067362234 : ¬ MinimalInterpreter v688067362234 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row475 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [2,1,2,0]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [2,1,2,0] = [v688067432058,v688067431354,v688067376762,v688067376058,v688067362234] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067432058) (.cons (no_v688067431354) (.cons (no_v688067376762) (.cons (no_v688067376058) (.cons (no_v688067362234) .nil)))))

private def v688067432246 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v688067432246 : ¬ MinimalInterpreter v688067432246 :=
  cost_cut false 1 (by decide)
private def v688067431382 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v688067431382 : ¬ MinimalInterpreter v688067431382 :=
  cost_cut false 1 (by decide)
private def v688067376950 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v688067376950 : ¬ MinimalInterpreter v688067376950 :=
  cost_cut false 1 (by decide)
private def v688067376086 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v688067376086 : ¬ MinimalInterpreter v688067376086 :=
  cost_cut false 1 (by decide)
private def v688067362262 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v688067362262 : ¬ MinimalInterpreter v688067362262 :=
  cost_cut false 1 (by decide)
theorem row476 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [2,2,0,1]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [2,2,0,1] = [v688067432246,v688067431382,v688067376950,v688067376086,v688067362262] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067432246) (.cons (no_v688067431382) (.cons (no_v688067376950) (.cons (no_v688067376086) (.cons (no_v688067362262) .nil)))))

private def v688067432250 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v688067432250 : ¬ MinimalInterpreter v688067432250 :=
  cost_cut false 1 (by decide)
private def v688067431386 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v688067431386 : ¬ MinimalInterpreter v688067431386 :=
  cost_cut false 1 (by decide)
private def v688067376954 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v688067376954 : ¬ MinimalInterpreter v688067376954 :=
  cost_cut false 1 (by decide)
private def v688067376090 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v688067376090 : ¬ MinimalInterpreter v688067376090 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688067362266 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v688067362266 : ¬ MinimalInterpreter v688067362266 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
theorem row477 : BadRow (row ⟨2,2,0,2,4,5⟩ [0,0] [2,2,1,0]) := by
  have h : row ⟨2,2,0,2,4,5⟩ [0,0] [2,2,1,0] = [v688067432250,v688067431386,v688067376954,v688067376090,v688067362266] := by decide +kernel
  rw [h]
  exact (.cons (no_v688067432250) (.cons (no_v688067431386) (.cons (no_v688067376954) (.cons (no_v688067376090) (.cons (no_v688067362266) .nil)))))

theorem row478 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [0,0,2,2]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690516761838 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v690516761838 : ¬ MinimalInterpreter v690516761838 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690516760430 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v690516760430 : ¬ MinimalInterpreter v690516760430 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690516749550 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v690516749550 : ¬ MinimalInterpreter v690516749550 :=
  cost_cut false 1 (by decide)
private def v690516748142 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v690516748142 : ¬ MinimalInterpreter v690516748142 :=
  cost_cut false 1 (by decide)
private def v690516745070 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v690516745070 : ¬ MinimalInterpreter v690516745070 :=
  cost_cut false 1 (by decide)
theorem row479 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [0,1,1,2]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [0,1,1,2] = [v690516761838,v690516760430,v690516749550,v690516748142,v690516745070] := by decide +kernel
  rw [h]
  exact (.cons (no_v690516761838) (.cons (no_v690516760430) (.cons (no_v690516749550) (.cons (no_v690516748142) (.cons (no_v690516745070) .nil)))))

end Blc.SelfintSingleObject.Rows39
