import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1382023230266 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1382023230266 : ¬ MinimalInterpreter v1382023230266 :=
  chain_cut false 2 (by decide)

private def v1382023230170 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1382023230170 : ¬ MinimalInterpreter v1382023230170 :=
  chain_cut false 2 (by decide)

private def v1382023216442 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1382023216442 : ¬ MinimalInterpreter v1382023216442 :=
  chain_cut false 2 (by decide)

private def v1382023216346 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1382023216346 : ¬ MinimalInterpreter v1382023216346 :=
  chain_cut false 2 (by decide)

private def v1382023212890 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1382023212890 : ¬ MinimalInterpreter v1382023212890 :=
  chain_cut false 2 (by decide)

theorem four819 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [2,0,1,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [2,0,1,0] = [v1382023230266,v1382023230170,v1382023216442,v1382023216346,v1382023212890] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382023230266) (.cons (no_v1382023230170) (.cons (no_v1382023216442) (.cons (no_v1382023216346) (.cons (no_v1382023212890) .nil)))))

private def v1382023230362 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1382023230362 : ¬ MinimalInterpreter v1382023230362 :=
  chain_cut false 2 (by decide)

private def v1382023230186 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1382023230186 : ¬ MinimalInterpreter v1382023230186 :=
  chain_cut false 2 (by decide)

private def v1382023216538 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1382023216538 : ¬ MinimalInterpreter v1382023216538 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382023216362 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1382023216362 : ¬ MinimalInterpreter v1382023216362 :=
  chain_cut false 2 (by decide)

private def v1382023212906 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1382023212906 : ¬ MinimalInterpreter v1382023212906 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four820 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [2,1,0,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [2,1,0,0] = [v1382023230362,v1382023230186,v1382023216538,v1382023216362,v1382023212906] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382023230362) (.cons (no_v1382023230186) (.cons (no_v1382023216538) (.cons (no_v1382023216362) (.cons (no_v1382023212906) .nil)))))

theorem four821 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,0,1,2]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four822 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,0,2,1]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four823 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,1,0,2]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four824 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,1,1,1]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four825 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,1,2,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
