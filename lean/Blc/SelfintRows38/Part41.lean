import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75363313262 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v75363313262 : ¬ MinimalInterpreter v75363313262 :=
  cost_cut false 2 (by decide)

private def v75363313070 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v75363313070 : ¬ MinimalInterpreter v75363313070 :=
  cost_cut false 2 (by decide)

private def v75363301998 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v75363301998 : ¬ MinimalInterpreter v75363301998 :=
  cost_cut false 2 (by decide)

private def v75363301806 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v75363301806 : ¬ MinimalInterpreter v75363301806 :=
  cost_cut false 2 (by decide)

private def v75363298990 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v75363298990 : ¬ MinimalInterpreter v75363298990 :=
  cost_cut false 2 (by decide)

theorem row246 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [1,0,0,2]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [1,0,0,2] = [v75363313262,v75363313070,v75363301998,v75363301806,v75363298990] := by decide
  rw [h]
  exact (.cons (no_v75363313262) (.cons (no_v75363313070) (.cons (no_v75363301998) (.cons (no_v75363301806) (.cons (no_v75363298990) .nil)))))

theorem row247 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [1,0,1,1]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [1,0,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v75363313274 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v75363313274 : ¬ MinimalInterpreter v75363313274 :=
  cost_cut false 2 (by decide)

private def v75363313082 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v75363313082 : ¬ MinimalInterpreter v75363313082 :=
  cost_cut false 2 (by decide)

private def v75363302010 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v75363302010 : ¬ MinimalInterpreter v75363302010 :=
  cost_cut false 2 (by decide)

private def v75363301818 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v75363301818 : ¬ MinimalInterpreter v75363301818 :=
  cost_cut false 2 (by decide)

private def v75363299002 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v75363299002 : ¬ MinimalInterpreter v75363299002 :=
  cost_cut false 2 (by decide)

theorem row248 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [1,0,2,0]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [1,0,2,0] = [v75363313274,v75363313082,v75363302010,v75363301818,v75363299002] := by decide
  rw [h]
  exact (.cons (no_v75363313274) (.cons (no_v75363313082) (.cons (no_v75363302010) (.cons (no_v75363301818) (.cons (no_v75363299002) .nil)))))

theorem row249 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [1,1,0,1]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [1,1,0,1] = [] := by decide
  rw [h]
  exact .nil

theorem row250 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [1,1,1,0]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [1,1,1,0] = [] := by decide
  rw [h]
  exact .nil

private def v75363313562 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v75363313562 : ¬ MinimalInterpreter v75363313562 :=
  cost_cut false 2 (by decide)

private def v75363313130 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v75363313130 : ¬ MinimalInterpreter v75363313130 :=
  cost_cut false 2 (by decide)

private def v75363302298 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v75363302298 : ¬ MinimalInterpreter v75363302298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75363301866 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v75363301866 : ¬ MinimalInterpreter v75363301866 :=
  cost_cut false 2 (by decide)

private def v75363299050 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v75363299050 : ¬ MinimalInterpreter v75363299050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem row251 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [1,2,0,0]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [1,2,0,0] = [v75363313562,v75363313130,v75363302298,v75363301866,v75363299050] := by decide
  rw [h]
  exact (.cons (no_v75363313562) (.cons (no_v75363313130) (.cons (no_v75363302298) (.cons (no_v75363301866) (.cons (no_v75363299050) .nil)))))

end Blc.SelfintSingleObject.Rows38
