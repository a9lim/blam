import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v700482450330 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v700482450330 : ¬ MinimalInterpreter v700482450330 :=
  chain_cut false 2 (by decide)
private def v700482450154 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v700482450154 : ¬ MinimalInterpreter v700482450154 :=
  chain_cut false 2 (by decide)
private def v700482420122 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v700482420122 : ¬ MinimalInterpreter v700482420122 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v700482419946 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v700482419946 : ¬ MinimalInterpreter v700482419946 :=
  chain_cut false 2 (by decide)
private def v700482412394 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v700482412394 : ¬ MinimalInterpreter v700482412394 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
theorem row390 : BadRow (row ⟨1,2,1,3,4,4⟩ [0,1] [3,1,0,0]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [0,1] [3,1,0,0] = [v700482450330,v700482450154,v700482420122,v700482419946,v700482412394] := by decide +kernel
  rw [h]
  exact (.cons (no_v700482450330) (.cons (no_v700482450154) (.cons (no_v700482420122) (.cons (no_v700482419946) (.cons (no_v700482412394) .nil)))))

theorem row391 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [0,0,1,3]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [0,0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row392 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [0,0,2,2]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row393 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [0,0,3,1]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [0,0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row394 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [0,1,0,3]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [0,1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row395 : BadRow (row ⟨1,2,1,3,4,4⟩ [1,0] [0,1,1,2]) := by
  have h : row ⟨1,2,1,3,4,4⟩ [1,0] [0,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
