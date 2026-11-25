import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75363503926 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v75363503926 : ¬ MinimalInterpreter v75363503926 :=
  cost_cut false 3 (by decide)

private def v75363503062 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v75363503062 : ¬ MinimalInterpreter v75363503062 :=
  cost_cut false 3 (by decide)

private def v75363448630 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v75363448630 : ¬ MinimalInterpreter v75363448630 :=
  chain_cut false 3 (by decide)

private def v75363447766 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v75363447766 : ¬ MinimalInterpreter v75363447766 :=
  cost_cut false 3 (by decide)

private def v75363433942 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v75363433942 : ¬ MinimalInterpreter v75363433942 :=
  chain_cut false 3 (by decide)

theorem row168 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [2,2,0,1]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [2,2,0,1] = [v75363503926,v75363503062,v75363448630,v75363447766,v75363433942] := by decide
  rw [h]
  exact (.cons (no_v75363503926) (.cons (no_v75363503062) (.cons (no_v75363448630) (.cons (no_v75363447766) (.cons (no_v75363433942) .nil)))))

private def v75363503930 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v75363503930 : ¬ MinimalInterpreter v75363503930 :=
  cost_cut false 3 (by decide)

private def v75363503066 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v75363503066 : ¬ MinimalInterpreter v75363503066 :=
  cost_cut false 3 (by decide)

private def v75363448634 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v75363448634 : ¬ MinimalInterpreter v75363448634 :=
  chain_cut false 3 (by decide)

private def v75363447770 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v75363447770 : ¬ MinimalInterpreter v75363447770 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75363433946 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v75363433946 : ¬ MinimalInterpreter v75363433946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

theorem row169 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [2,2,1,0]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [2,2,1,0] = [v75363503930,v75363503066,v75363448634,v75363447770,v75363433946] := by decide
  rw [h]
  exact (.cons (no_v75363503930) (.cons (no_v75363503066) (.cons (no_v75363448634) (.cons (no_v75363447770) (.cons (no_v75363433946) .nil)))))

theorem row170 : BadRow (row ⟨1,2,1,2,4,5⟩ [1,0] [0,1,2,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [1,0] [0,1,2,2] = [] := by decide
  rw [h]
  exact .nil

theorem row171 : BadRow (row ⟨1,2,1,2,4,5⟩ [1,0] [0,2,1,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [1,0] [0,2,1,2] = [] := by decide
  rw [h]
  exact .nil

theorem row172 : BadRow (row ⟨1,2,1,2,4,5⟩ [1,0] [0,2,2,1]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [1,0] [0,2,2,1] = [] := by decide
  rw [h]
  exact .nil

theorem row173 : BadRow (row ⟨1,2,1,2,4,5⟩ [1,0] [1,0,2,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [1,0] [1,0,2,2] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
