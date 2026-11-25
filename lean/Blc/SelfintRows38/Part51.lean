import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row306 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [1,1,1,0]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [1,1,1,0] = [] := by decide
  rw [h]
  exact .nil

private def v70380480410 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v70380480410 : ¬ MinimalInterpreter v70380480410 :=
  cost_cut false 1 (by decide)

private def v70380479978 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v70380479978 : ¬ MinimalInterpreter v70380479978 :=
  cost_cut false 1 (by decide)

private def v70380469146 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v70380469146 : ¬ MinimalInterpreter v70380469146 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70380468714 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v70380468714 : ¬ MinimalInterpreter v70380468714 :=
  cost_cut false 1 (by decide)

private def v70380465898 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v70380465898 : ¬ MinimalInterpreter v70380465898 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row307 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [1,2,0,0]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [1,2,0,0] = [v70380480410,v70380479978,v70380469146,v70380468714,v70380465898] := by decide
  rw [h]
  exact (.cons (no_v70380480410) (.cons (no_v70380479978) (.cons (no_v70380469146) (.cons (no_v70380468714) (.cons (no_v70380465898) .nil)))))

private def v70380483382 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v70380483382 : ¬ MinimalInterpreter v70380483382 :=
  cost_cut false 1 (by decide)

private def v70380483286 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v70380483286 : ¬ MinimalInterpreter v70380483286 :=
  cost_cut false 1 (by decide)

private def v70380469558 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v70380469558 : ¬ MinimalInterpreter v70380469558 :=
  cost_cut false 1 (by decide)

private def v70380469462 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v70380469462 : ¬ MinimalInterpreter v70380469462 :=
  cost_cut false 1 (by decide)

private def v70380466006 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v70380466006 : ¬ MinimalInterpreter v70380466006 :=
  cost_cut false 1 (by decide)

theorem row308 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [2,0,0,1]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [2,0,0,1] = [v70380483382,v70380483286,v70380469558,v70380469462,v70380466006] := by decide
  rw [h]
  exact (.cons (no_v70380483382) (.cons (no_v70380483286) (.cons (no_v70380469558) (.cons (no_v70380469462) (.cons (no_v70380466006) .nil)))))

private def v70380483386 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v70380483386 : ¬ MinimalInterpreter v70380483386 :=
  cost_cut false 1 (by decide)

private def v70380483290 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v70380483290 : ¬ MinimalInterpreter v70380483290 :=
  cost_cut false 1 (by decide)

private def v70380469562 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v70380469562 : ¬ MinimalInterpreter v70380469562 :=
  cost_cut false 1 (by decide)

private def v70380469466 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v70380469466 : ¬ MinimalInterpreter v70380469466 :=
  cost_cut false 1 (by decide)

private def v70380466010 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v70380466010 : ¬ MinimalInterpreter v70380466010 :=
  cost_cut false 1 (by decide)

theorem row309 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [2,0,1,0]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [2,0,1,0] = [v70380483386,v70380483290,v70380469562,v70380469466,v70380466010] := by decide
  rw [h]
  exact (.cons (no_v70380483386) (.cons (no_v70380483290) (.cons (no_v70380469562) (.cons (no_v70380469466) (.cons (no_v70380466010) .nil)))))

private def v70380483482 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v70380483482 : ¬ MinimalInterpreter v70380483482 :=
  cost_cut false 1 (by decide)

private def v70380483306 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v70380483306 : ¬ MinimalInterpreter v70380483306 :=
  cost_cut false 1 (by decide)

private def v70380469658 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v70380469658 : ¬ MinimalInterpreter v70380469658 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70380469482 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v70380469482 : ¬ MinimalInterpreter v70380469482 :=
  cost_cut false 1 (by decide)

private def v70380466026 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v70380466026 : ¬ MinimalInterpreter v70380466026 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row310 : BadRow (row ⟨2,2,1,2,4,3⟩ [0,1] [2,1,0,0]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [0,1] [2,1,0,0] = [v70380483482,v70380483306,v70380469658,v70380469482,v70380466026] := by decide
  rw [h]
  exact (.cons (no_v70380483482) (.cons (no_v70380483306) (.cons (no_v70380469658) (.cons (no_v70380469482) (.cons (no_v70380466026) .nil)))))

theorem row311 : BadRow (row ⟨2,2,1,2,4,3⟩ [1,0] [0,0,1,2]) := by
  have h : row ⟨2,2,1,2,4,3⟩ [1,0] [0,0,1,2] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
