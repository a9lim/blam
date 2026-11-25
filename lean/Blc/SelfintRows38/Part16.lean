import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75700788794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v75700788794 : ¬ MinimalInterpreter v75700788794 :=
  chain_cut false 4 (by decide)

private def v75700342394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 2) (.var 0)))))))
private theorem no_v75700342394 : ¬ MinimalInterpreter v75700342394 :=
  chain_cut false 3 (by decide)

private def v75700340666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 2)))) (.var 0))))))
private theorem no_v75700340666 : ¬ MinimalInterpreter v75700340666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.app (.var 2) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.app (.var 1) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700346426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))
private theorem no_v75700346426 : ¬ MinimalInterpreter v75700346426 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700235834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 2))) (.var 0))))))
private theorem no_v75700235834 : ¬ MinimalInterpreter v75700235834 :=
  w_cut false 0 (by decide)

private def v75700233146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 2)) (.var 0))))))
private theorem no_v75700233146 : ¬ MinimalInterpreter v75700233146 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 2)) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row96 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [2,2,2,0]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [2,2,2,0] = [v75700788794,v75700342394,v75700340666,v75700346426,v75700235834,v75700233146] := by decide
  rw [h]
  exact (.cons (no_v75700788794) (.cons (no_v75700342394) (.cons (no_v75700340666) (.cons (no_v75700346426) (.cons (no_v75700235834) (.cons (no_v75700233146) .nil))))))

private def v75700772662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v75700772662 : ¬ MinimalInterpreter v75700772662 :=
  chain_cut false 8 (by decide)

private def v75700770774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v75700770774 : ¬ MinimalInterpreter v75700770774 :=
  w_cut false 0 (by decide)

private def v75700342582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))
private theorem no_v75700342582 : ¬ MinimalInterpreter v75700342582 :=
  chain_cut false 5 (by decide)

private def v75700233174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 3))) (.var 0)) (.var 1))))))
private theorem no_v75700233174 : ¬ MinimalInterpreter v75700233174 :=
  chain_cut false 6 (by decide)

theorem row97 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [2,3,0,1]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [2,3,0,1] = [v75700772662,v75700770774,v75700342582,v75700233174] := by decide
  rw [h]
  exact (.cons (no_v75700772662) (.cons (no_v75700770774) (.cons (no_v75700342582) (.cons (no_v75700233174) .nil))))

private def v75700772666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v75700772666 : ¬ MinimalInterpreter v75700772666 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700770778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v75700770778 : ¬ MinimalInterpreter v75700770778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 2) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v75700342586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))
private theorem no_v75700342586 : ¬ MinimalInterpreter v75700342586 :=
  chain_cut false 5 (by decide)

private def v75700233178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 3))) (.var 1)) (.var 0))))))
private theorem no_v75700233178 : ¬ MinimalInterpreter v75700233178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 3))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 1)))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 2))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 3))) (.var 1)) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_dead (by decide) (.var 1))) (by decide) (by decide)))))

theorem row98 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [2,3,1,0]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [2,3,1,0] = [v75700772666,v75700770778,v75700342586,v75700233178] := by decide
  rw [h]
  exact (.cons (no_v75700772666) (.cons (no_v75700770778) (.cons (no_v75700342586) (.cons (no_v75700233178) .nil))))

theorem row99 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [3,0,0,3]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [3,0,0,3] = [] := by decide
  rw [h]
  exact .nil

theorem row100 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [3,0,1,2]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [3,0,1,2] = [] := by decide
  rw [h]
  exact .nil

theorem row101 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [3,0,2,1]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [3,0,2,1] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
