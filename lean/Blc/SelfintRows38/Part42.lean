import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75363316534 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v75363316534 : ¬ MinimalInterpreter v75363316534 :=
  cost_cut false 2 (by decide)

private def v75363316438 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v75363316438 : ¬ MinimalInterpreter v75363316438 :=
  cost_cut false 2 (by decide)

private def v75363302710 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v75363302710 : ¬ MinimalInterpreter v75363302710 :=
  cost_cut false 2 (by decide)

private def v75363302614 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v75363302614 : ¬ MinimalInterpreter v75363302614 :=
  cost_cut false 2 (by decide)

private def v75363299158 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v75363299158 : ¬ MinimalInterpreter v75363299158 :=
  cost_cut false 2 (by decide)

theorem row252 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [2,0,0,1]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [2,0,0,1] = [v75363316534,v75363316438,v75363302710,v75363302614,v75363299158] := by decide
  rw [h]
  exact (.cons (no_v75363316534) (.cons (no_v75363316438) (.cons (no_v75363302710) (.cons (no_v75363302614) (.cons (no_v75363299158) .nil)))))

private def v75363316538 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v75363316538 : ¬ MinimalInterpreter v75363316538 :=
  cost_cut false 2 (by decide)

private def v75363316442 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v75363316442 : ¬ MinimalInterpreter v75363316442 :=
  cost_cut false 2 (by decide)

private def v75363302714 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v75363302714 : ¬ MinimalInterpreter v75363302714 :=
  cost_cut false 2 (by decide)

private def v75363302618 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v75363302618 : ¬ MinimalInterpreter v75363302618 :=
  cost_cut false 2 (by decide)

private def v75363299162 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v75363299162 : ¬ MinimalInterpreter v75363299162 :=
  cost_cut false 2 (by decide)

theorem row253 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [2,0,1,0]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [2,0,1,0] = [v75363316538,v75363316442,v75363302714,v75363302618,v75363299162] := by decide
  rw [h]
  exact (.cons (no_v75363316538) (.cons (no_v75363316442) (.cons (no_v75363302714) (.cons (no_v75363302618) (.cons (no_v75363299162) .nil)))))

private def v75363316634 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v75363316634 : ¬ MinimalInterpreter v75363316634 :=
  cost_cut false 2 (by decide)

private def v75363316458 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v75363316458 : ¬ MinimalInterpreter v75363316458 :=
  cost_cut false 2 (by decide)

private def v75363302810 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v75363302810 : ¬ MinimalInterpreter v75363302810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75363302634 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v75363302634 : ¬ MinimalInterpreter v75363302634 :=
  cost_cut false 2 (by decide)

private def v75363299178 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v75363299178 : ¬ MinimalInterpreter v75363299178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem row254 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [2,1,0,0]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [2,1,0,0] = [v75363316634,v75363316458,v75363302810,v75363302634,v75363299178] := by decide
  rw [h]
  exact (.cons (no_v75363316634) (.cons (no_v75363316458) (.cons (no_v75363302810) (.cons (no_v75363302634) (.cons (no_v75363299178) .nil)))))

theorem row255 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [3,0,0,0]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [3,0,0,0] = [] := by decide
  rw [h]
  exact .nil

theorem row256 : BadRow (row ⟨1,2,1,3,4,3⟩ [1,0] [0,0,0,3]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [1,0] [0,0,0,3] = [] := by decide
  rw [h]
  exact .nil

theorem row257 : BadRow (row ⟨1,2,1,3,4,3⟩ [1,0] [0,0,1,2]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [1,0] [0,0,1,2] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
