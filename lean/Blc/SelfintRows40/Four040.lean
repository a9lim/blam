import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402307208090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402307208090 : ¬ MinimalInterpreter v1402307208090 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307180778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))))))
private theorem no_v1402307180778 : ¬ MinimalInterpreter v1402307180778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem four280 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [2,2,0,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [2,2,0,0] = [v1402307208090,v1402307180778] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307208090) (.cons (no_v1402307180778) .nil))

private def v1402306949942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1)))))))))))
private theorem no_v1402306949942 : ¬ MinimalInterpreter v1402306949942 :=
  cost_cut false 2 (by decide)

private def v1402306949846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1))))))))))
private theorem no_v1402306949846 : ¬ MinimalInterpreter v1402306949846 :=
  cost_cut false 2 (by decide)

private def v1402306919734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402306919734 : ¬ MinimalInterpreter v1402306919734 :=
  cost_cut false 2 (by decide)

private def v1402306919638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1)))))))))
private theorem no_v1402306919638 : ¬ MinimalInterpreter v1402306919638 :=
  cost_cut false 2 (by decide)

private def v1402306912086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1)))))))))
private theorem no_v1402306912086 : ¬ MinimalInterpreter v1402306912086 :=
  cost_cut false 2 (by decide)

theorem four281 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [3,0,0,1]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [3,0,0,1] = [v1402306949942,v1402306949846,v1402306919734,v1402306919638,v1402306912086] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306949942) (.cons (no_v1402306949846) (.cons (no_v1402306919734) (.cons (no_v1402306919638) (.cons (no_v1402306912086) .nil)))))

private def v1402306949946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0)))))))))))
private theorem no_v1402306949946 : ¬ MinimalInterpreter v1402306949946 :=
  cost_cut false 2 (by decide)

private def v1402306949850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0))))))))))
private theorem no_v1402306949850 : ¬ MinimalInterpreter v1402306949850 :=
  cost_cut false 2 (by decide)

private def v1402306919738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402306919738 : ¬ MinimalInterpreter v1402306919738 :=
  cost_cut false 2 (by decide)

private def v1402306919642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0)))))))))
private theorem no_v1402306919642 : ¬ MinimalInterpreter v1402306919642 :=
  cost_cut false 2 (by decide)

private def v1402306912090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0)))))))))
private theorem no_v1402306912090 : ¬ MinimalInterpreter v1402306912090 :=
  cost_cut false 2 (by decide)

theorem four282 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [3,0,1,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [3,0,1,0] = [v1402306949946,v1402306949850,v1402306919738,v1402306919642,v1402306912090] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306949946) (.cons (no_v1402306949850) (.cons (no_v1402306919738) (.cons (no_v1402306919642) (.cons (no_v1402306912090) .nil)))))

private def v1402306950042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0)))))))))))
private theorem no_v1402306950042 : ¬ MinimalInterpreter v1402306950042 :=
  cost_cut false 2 (by decide)

private def v1402306949866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0))))))))))
private theorem no_v1402306949866 : ¬ MinimalInterpreter v1402306949866 :=
  cost_cut false 2 (by decide)

private def v1402306919834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402306919834 : ¬ MinimalInterpreter v1402306919834 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402306919658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0)))))))))
private theorem no_v1402306919658 : ¬ MinimalInterpreter v1402306919658 :=
  cost_cut false 2 (by decide)

private def v1402306912106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)))))))))
private theorem no_v1402306912106 : ¬ MinimalInterpreter v1402306912106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

theorem four283 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [3,1,0,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [3,1,0,0] = [v1402306950042,v1402306949866,v1402306919834,v1402306919658,v1402306912106] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306950042) (.cons (no_v1402306949866) (.cons (no_v1402306919834) (.cons (no_v1402306919658) (.cons (no_v1402306912106) .nil)))))

theorem four284 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [4,0,0,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [4,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four285 : BadRow (markedRow ⟨1,2,0,2,4,8⟩ [0,0] [2,2,2,2]) := by
  have h : markedRow ⟨1,2,0,2,4,8⟩ [0,0] [2,2,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four286 : BadRow (markedRow ⟨1,2,1,2,4,7⟩ [0,1] [1,2,2,2]) := by
  have h : markedRow ⟨1,2,1,2,4,7⟩ [0,1] [1,2,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
