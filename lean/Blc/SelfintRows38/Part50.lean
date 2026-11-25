import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v70380474166 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v70380474166 : ¬ MinimalInterpreter v70380474166 :=
  cost_cut false 1 (by decide)

private def v70380473302 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v70380473302 : ¬ MinimalInterpreter v70380473302 :=
  cost_cut false 1 (by decide)

private def v70380468022 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v70380468022 : ¬ MinimalInterpreter v70380468022 :=
  cost_cut false 1 (by decide)

private def v70380467158 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v70380467158 : ¬ MinimalInterpreter v70380467158 :=
  cost_cut false 1 (by decide)

private def v70380465622 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v70380465622 : ¬ MinimalInterpreter v70380465622 :=
  cost_cut false 1 (by decide)

private def v70380621622 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v70380621622 : ¬ MinimalInterpreter v70380621622 :=
  cost_cut false 1 (by decide)

private def v70380620758 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v70380620758 : ¬ MinimalInterpreter v70380620758 :=
  cost_cut false 1 (by decide)

private def v70381211446 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v70381211446 : ¬ MinimalInterpreter v70381211446 :=
  cost_cut false 1 (by decide)

private def v70381210582 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v70381210582 : ¬ MinimalInterpreter v70381210582 :=
  cost_cut false 1 (by decide)

theorem row300 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [0,2,0,1]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [0,2,0,1] = [v70380474166,v70380473302,v70380468022,v70380467158,v70380465622,v70380621622,v70380620758,v70381211446,v70381210582] := by decide
  rw [h]
  exact (.cons (no_v70380474166) (.cons (no_v70380473302) (.cons (no_v70380468022) (.cons (no_v70380467158) (.cons (no_v70380465622) (.cons (no_v70380621622) (.cons (no_v70380620758) (.cons (no_v70381211446) (.cons (no_v70381210582) .nil)))))))))

private def v70380474170 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v70380474170 : ¬ MinimalInterpreter v70380474170 :=
  cost_cut false 1 (by decide)

private def v70380473306 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v70380473306 : ¬ MinimalInterpreter v70380473306 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70380468026 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v70380468026 : ¬ MinimalInterpreter v70380468026 :=
  cost_cut false 1 (by decide)

private def v70380467162 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v70380467162 : ¬ MinimalInterpreter v70380467162 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70380465626 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v70380465626 : ¬ MinimalInterpreter v70380465626 :=
  cost_cut false 1 (by decide)

private def v70380621626 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v70380621626 : ¬ MinimalInterpreter v70380621626 :=
  cost_cut false 1 (by decide)

private def v70380620762 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v70380620762 : ¬ MinimalInterpreter v70380620762 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v70381211450 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v70381211450 : ¬ MinimalInterpreter v70381211450 :=
  cost_cut false 1 (by decide)

private def v70381210586 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v70381210586 : ¬ MinimalInterpreter v70381210586 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem row301 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [0,2,1,0]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [0,2,1,0] = [v70380474170,v70380473306,v70380468026,v70380467162,v70380465626,v70380621626,v70380620762,v70381211450,v70381210586] := by decide
  rw [h]
  exact (.cons (no_v70380474170) (.cons (no_v70380473306) (.cons (no_v70380468026) (.cons (no_v70380467162) (.cons (no_v70380465626) (.cons (no_v70380621626) (.cons (no_v70380620762) (.cons (no_v70381211450) (.cons (no_v70381210586) .nil)))))))))

private def v70380480110 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v70380480110 : ¬ MinimalInterpreter v70380480110 :=
  cost_cut false 1 (by decide)

private def v70380479918 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v70380479918 : ¬ MinimalInterpreter v70380479918 :=
  cost_cut false 1 (by decide)

private def v70380468846 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v70380468846 : ¬ MinimalInterpreter v70380468846 :=
  cost_cut false 1 (by decide)

private def v70380468654 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v70380468654 : ¬ MinimalInterpreter v70380468654 :=
  cost_cut false 1 (by decide)

private def v70380465838 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v70380465838 : ¬ MinimalInterpreter v70380465838 :=
  cost_cut false 1 (by decide)

theorem row302 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [1,0,0,2]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [1,0,0,2] = [v70380480110,v70380479918,v70380468846,v70380468654,v70380465838] := by decide
  rw [h]
  exact (.cons (no_v70380480110) (.cons (no_v70380479918) (.cons (no_v70380468846) (.cons (no_v70380468654) (.cons (no_v70380465838) .nil)))))

theorem row303 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [1,0,1,1]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [1,0,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v70380480122 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v70380480122 : ¬ MinimalInterpreter v70380480122 :=
  cost_cut false 1 (by decide)

private def v70380479930 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v70380479930 : ¬ MinimalInterpreter v70380479930 :=
  cost_cut false 1 (by decide)

private def v70380468858 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v70380468858 : ¬ MinimalInterpreter v70380468858 :=
  cost_cut false 1 (by decide)

private def v70380468666 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v70380468666 : ¬ MinimalInterpreter v70380468666 :=
  cost_cut false 1 (by decide)

private def v70380465850 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v70380465850 : ¬ MinimalInterpreter v70380465850 :=
  cost_cut false 1 (by decide)

theorem row304 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [1,0,2,0]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [1,0,2,0] = [v70380480122,v70380479930,v70380468858,v70380468666,v70380465850] := by decide
  rw [h]
  exact (.cons (no_v70380480122) (.cons (no_v70380479930) (.cons (no_v70380468858) (.cons (no_v70380468666) (.cons (no_v70380465850) .nil)))))

theorem row305 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [1,1,0,1]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [1,1,0,1] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
