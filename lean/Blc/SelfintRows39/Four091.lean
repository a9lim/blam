import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v688184685370 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v688184685370 : ¬ MinimalInterpreter v688184685370 :=
  cost_cut false 1 (by decide)
private def v688184685274 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v688184685274 : ¬ MinimalInterpreter v688184685274 :=
  cost_cut false 1 (by decide)
private def v688184671546 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v688184671546 : ¬ MinimalInterpreter v688184671546 :=
  cost_cut false 1 (by decide)
private def v688184671450 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v688184671450 : ¬ MinimalInterpreter v688184671450 :=
  cost_cut false 1 (by decide)
private def v688184667994 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v688184667994 : ¬ MinimalInterpreter v688184667994 :=
  cost_cut false 1 (by decide)
theorem row546 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [2,0,1,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [2,0,1,0] = [v688184685370,v688184685274,v688184671546,v688184671450,v688184667994] := by decide +kernel
  rw [h]
  exact (.cons (no_v688184685370) (.cons (no_v688184685274) (.cons (no_v688184671546) (.cons (no_v688184671450) (.cons (no_v688184667994) .nil)))))

private def v688184685466 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v688184685466 : ¬ MinimalInterpreter v688184685466 :=
  cost_cut false 1 (by decide)
private def v688184685290 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v688184685290 : ¬ MinimalInterpreter v688184685290 :=
  cost_cut false 1 (by decide)
private def v688184671642 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v688184671642 : ¬ MinimalInterpreter v688184671642 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688184671466 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v688184671466 : ¬ MinimalInterpreter v688184671466 :=
  cost_cut false 1 (by decide)
private def v688184668010 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v688184668010 : ¬ MinimalInterpreter v688184668010 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row547 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [2,1,0,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [2,1,0,0] = [v688184685466,v688184685290,v688184671642,v688184671466,v688184668010] := by decide +kernel
  rw [h]
  exact (.cons (no_v688184685466) (.cons (no_v688184685290) (.cons (no_v688184671642) (.cons (no_v688184671466) (.cons (no_v688184668010) .nil)))))

theorem row548 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [0,0,1,2]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row549 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [0,0,2,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row550 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [0,1,0,2]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row551 : BadRow (row ⟨2,2,2,2,4,3⟩ [2,0] [0,1,1,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [2,0] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
