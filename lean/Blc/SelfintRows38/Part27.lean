import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75363491450 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0))))))))
private theorem no_v75363491450 : ¬ MinimalInterpreter v75363491450 :=
  cost_cut true 3 (by decide)

private def v75363489722 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0)))))))
private theorem no_v75363489722 : ¬ MinimalInterpreter v75363489722 :=
  chain_cut true 3 (by decide)

private def v75363446394 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0)))))))
private theorem no_v75363446394 : ¬ MinimalInterpreter v75363446394 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75363444666 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))))
private theorem no_v75363444666 : ¬ MinimalInterpreter v75363444666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v75363433402 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))))
private theorem no_v75363433402 : ¬ MinimalInterpreter v75363433402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row162 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [1,2,2,0]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [1,2,2,0] = [v75363491450,v75363489722,v75363446394,v75363444666,v75363433402] := by decide
  rw [h]
  exact (.cons (no_v75363491450) (.cons (no_v75363489722) (.cons (no_v75363446394) (.cons (no_v75363444666) (.cons (no_v75363433402) .nil)))))

private def v75363503342 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v75363503342 : ¬ MinimalInterpreter v75363503342 :=
  cost_cut false 3 (by decide)

private def v75363502958 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v75363502958 : ¬ MinimalInterpreter v75363502958 :=
  cost_cut false 3 (by decide)

private def v75363448046 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v75363448046 : ¬ MinimalInterpreter v75363448046 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75363447662 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v75363447662 : ¬ MinimalInterpreter v75363447662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75363433838 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v75363433838 : ¬ MinimalInterpreter v75363433838 :=
  chain_cut false 4 (by decide)

theorem row163 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [2,0,1,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [2,0,1,2] = [v75363503342,v75363502958,v75363448046,v75363447662,v75363433838] := by decide
  rw [h]
  exact (.cons (no_v75363503342) (.cons (no_v75363502958) (.cons (no_v75363448046) (.cons (no_v75363447662) (.cons (no_v75363433838) .nil)))))

private def v75363503350 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v75363503350 : ¬ MinimalInterpreter v75363503350 :=
  cost_cut false 3 (by decide)

private def v75363502966 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v75363502966 : ¬ MinimalInterpreter v75363502966 :=
  cost_cut false 3 (by decide)

private def v75363448054 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v75363448054 : ¬ MinimalInterpreter v75363448054 :=
  chain_cut false 6 (by decide)

private def v75363447670 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v75363447670 : ¬ MinimalInterpreter v75363447670 :=
  cost_cut false 3 (by decide)

private def v75363433846 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v75363433846 : ¬ MinimalInterpreter v75363433846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row164 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [2,0,2,1]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [2,0,2,1] = [v75363503350,v75363502966,v75363448054,v75363447670,v75363433846] := by decide
  rw [h]
  exact (.cons (no_v75363503350) (.cons (no_v75363502966) (.cons (no_v75363448054) (.cons (no_v75363447670) (.cons (no_v75363433846) .nil)))))

private def v75363503726 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v75363503726 : ¬ MinimalInterpreter v75363503726 :=
  cost_cut false 3 (by decide)

private def v75363503022 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v75363503022 : ¬ MinimalInterpreter v75363503022 :=
  cost_cut false 3 (by decide)

private def v75363448430 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v75363448430 : ¬ MinimalInterpreter v75363448430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75363447726 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v75363447726 : ¬ MinimalInterpreter v75363447726 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75363433902 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v75363433902 : ¬ MinimalInterpreter v75363433902 :=
  chain_cut false 4 (by decide)

theorem row165 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [2,1,0,2]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [2,1,0,2] = [v75363503726,v75363503022,v75363448430,v75363447726,v75363433902] := by decide
  rw [h]
  exact (.cons (no_v75363503726) (.cons (no_v75363503022) (.cons (no_v75363448430) (.cons (no_v75363447726) (.cons (no_v75363433902) .nil)))))

theorem row166 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [2,1,1,1]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [2,1,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v75363503738 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v75363503738 : ¬ MinimalInterpreter v75363503738 :=
  cost_cut false 3 (by decide)

private def v75363503034 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v75363503034 : ¬ MinimalInterpreter v75363503034 :=
  cost_cut false 3 (by decide)

private def v75363448442 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v75363448442 : ¬ MinimalInterpreter v75363448442 :=
  chain_cut false 6 (by decide)

private def v75363447738 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v75363447738 : ¬ MinimalInterpreter v75363447738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75363433914 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v75363433914 : ¬ MinimalInterpreter v75363433914 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row167 : BadRow (row ⟨1,2,1,2,4,5⟩ [0,1] [2,1,2,0]) := by
  have h : row ⟨1,2,1,2,4,5⟩ [0,1] [2,1,2,0] = [v75363503738,v75363503034,v75363448442,v75363447738,v75363433914] := by decide
  rw [h]
  exact (.cons (no_v75363503738) (.cons (no_v75363503034) (.cons (no_v75363448442) (.cons (no_v75363447738) (.cons (no_v75363433914) .nil)))))

end Blc.SelfintSingleObject.Rows38
