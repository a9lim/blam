import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400965642650 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))))
private theorem no_v1400965642650 : ¬ MinimalInterpreter v1400965642650 :=
  chain_cut false 2 (by decide)

private def v1400965642602 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))))))
private theorem no_v1400965642602 : ¬ MinimalInterpreter v1400965642602 :=
  chain_cut false 2 (by decide)

private def v1400965639834 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))))
private theorem no_v1400965639834 : ¬ MinimalInterpreter v1400965639834 :=
  chain_cut false 2 (by decide)

private def v1400965639786 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))))
private theorem no_v1400965639786 : ¬ MinimalInterpreter v1400965639786 :=
  chain_cut false 2 (by decide)

private def v1400965639082 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))))
private theorem no_v1400965639082 : ¬ MinimalInterpreter v1400965639082 :=
  chain_cut false 2 (by decide)

private def v1400965421466 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))))))
private theorem no_v1400965421466 : ¬ MinimalInterpreter v1400965421466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965421418 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))))))
private theorem no_v1400965421418 : ¬ MinimalInterpreter v1400965421418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965418650 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0)))))))
private theorem no_v1400965418650 : ¬ MinimalInterpreter v1400965418650 :=
  chain_cut false 2 (by decide)

private def v1400965363354 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))))))
private theorem no_v1400965363354 : ¬ MinimalInterpreter v1400965363354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965418602 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))))))
private theorem no_v1400965418602 : ¬ MinimalInterpreter v1400965418602 :=
  chain_cut false 2 (by decide)

private def v1400965417898 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0))))))
private theorem no_v1400965417898 : ¬ MinimalInterpreter v1400965417898 :=
  chain_cut false 2 (by decide)

private def v1400965363306 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))))))
private theorem no_v1400965363306 : ¬ MinimalInterpreter v1400965363306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965362602 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.var 0))))))
private theorem no_v1400965362602 : ¬ MinimalInterpreter v1400965362602 :=
  chain_cut false 2 (by decide)

private def v1400965348778 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0))))))
private theorem no_v1400965348778 : ¬ MinimalInterpreter v1400965348778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four378 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [2,1,0,0,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [2,1,0,0,0] = [v1400965642650,v1400965642602,v1400965639834,v1400965639786,v1400965639082,v1400965421466,v1400965421418,v1400965418650,v1400965363354,v1400965418602,v1400965417898,v1400965363306,v1400965362602,v1400965348778] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965642650) (.cons (no_v1400965642602) (.cons (no_v1400965639834) (.cons (no_v1400965639786) (.cons (no_v1400965639082) (.cons (no_v1400965421466) (.cons (no_v1400965421418) (.cons (no_v1400965418650) (.cons (no_v1400965363354) (.cons (no_v1400965418602) (.cons (no_v1400965417898) (.cons (no_v1400965363306) (.cons (no_v1400965362602) (.cons (no_v1400965348778) .nil))))))))))))))

theorem four379 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,0,1,2]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four380 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,0,2,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four381 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,1,0,2]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four382 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,1,1,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four383 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,1,2,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four384 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,2,0,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [0,0,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
