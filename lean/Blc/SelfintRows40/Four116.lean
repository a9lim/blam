import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1382023226990 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v1382023226990 : ¬ MinimalInterpreter v1382023226990 :=
  chain_cut false 2 (by decide)

private def v1382023226798 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v1382023226798 : ¬ MinimalInterpreter v1382023226798 :=
  chain_cut false 2 (by decide)

private def v1382023215726 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v1382023215726 : ¬ MinimalInterpreter v1382023215726 :=
  chain_cut false 2 (by decide)

private def v1382023215534 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v1382023215534 : ¬ MinimalInterpreter v1382023215534 :=
  chain_cut false 2 (by decide)

private def v1382023212718 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v1382023212718 : ¬ MinimalInterpreter v1382023212718 :=
  chain_cut false 2 (by decide)

theorem four812 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [1,0,0,2]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [1,0,0,2] = [v1382023226990,v1382023226798,v1382023215726,v1382023215534,v1382023212718] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382023226990) (.cons (no_v1382023226798) (.cons (no_v1382023215726) (.cons (no_v1382023215534) (.cons (no_v1382023212718) .nil)))))

theorem four813 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [1,0,1,1]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1382023227002 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v1382023227002 : ¬ MinimalInterpreter v1382023227002 :=
  chain_cut false 2 (by decide)

private def v1382023226810 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v1382023226810 : ¬ MinimalInterpreter v1382023226810 :=
  chain_cut false 2 (by decide)

private def v1382023215738 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v1382023215738 : ¬ MinimalInterpreter v1382023215738 :=
  chain_cut false 2 (by decide)

private def v1382023215546 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v1382023215546 : ¬ MinimalInterpreter v1382023215546 :=
  chain_cut false 2 (by decide)

private def v1382023212730 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v1382023212730 : ¬ MinimalInterpreter v1382023212730 :=
  chain_cut false 2 (by decide)

theorem four814 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [1,0,2,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [1,0,2,0] = [v1382023227002,v1382023226810,v1382023215738,v1382023215546,v1382023212730] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382023227002) (.cons (no_v1382023226810) (.cons (no_v1382023215738) (.cons (no_v1382023215546) (.cons (no_v1382023212730) .nil)))))

theorem four815 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [1,1,0,1]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four816 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [1,1,1,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1382023227290 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v1382023227290 : ¬ MinimalInterpreter v1382023227290 :=
  chain_cut false 2 (by decide)

private def v1382023226858 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v1382023226858 : ¬ MinimalInterpreter v1382023226858 :=
  chain_cut false 2 (by decide)

private def v1382023216026 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v1382023216026 : ¬ MinimalInterpreter v1382023216026 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382023215594 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v1382023215594 : ¬ MinimalInterpreter v1382023215594 :=
  chain_cut false 2 (by decide)

private def v1382023212778 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v1382023212778 : ¬ MinimalInterpreter v1382023212778 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four817 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [1,2,0,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [1,2,0,0] = [v1382023227290,v1382023226858,v1382023216026,v1382023215594,v1382023212778] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382023227290) (.cons (no_v1382023226858) (.cons (no_v1382023216026) (.cons (no_v1382023215594) (.cons (no_v1382023212778) .nil)))))

private def v1382023230262 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1382023230262 : ¬ MinimalInterpreter v1382023230262 :=
  chain_cut false 2 (by decide)

private def v1382023230166 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1382023230166 : ¬ MinimalInterpreter v1382023230166 :=
  chain_cut false 2 (by decide)

private def v1382023216438 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1382023216438 : ¬ MinimalInterpreter v1382023216438 :=
  chain_cut false 2 (by decide)

private def v1382023216342 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1382023216342 : ¬ MinimalInterpreter v1382023216342 :=
  chain_cut false 2 (by decide)

private def v1382023212886 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1382023212886 : ¬ MinimalInterpreter v1382023212886 :=
  chain_cut false 2 (by decide)

theorem four818 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [2,0,0,1]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [2,0,0,1] = [v1382023230262,v1382023230166,v1382023216438,v1382023216342,v1382023212886] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382023230262) (.cons (no_v1382023230166) (.cons (no_v1382023216438) (.cons (no_v1382023216342) (.cons (no_v1382023212886) .nil)))))

end Blc.SelfintSingleObject.Rows40
