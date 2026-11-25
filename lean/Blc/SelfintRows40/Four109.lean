import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four763 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [2,0,2,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400394344246 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v1400394344246 : ¬ MinimalInterpreter v1400394344246 :=
  chain_cut false 2 (by decide)

private def v1400394343894 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v1400394343894 : ¬ MinimalInterpreter v1400394343894 :=
  chain_cut false 2 (by decide)

private def v1400394316598 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v1400394316598 : ¬ MinimalInterpreter v1400394316598 :=
  chain_cut false 2 (by decide)

private def v1400394316246 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v1400394316246 : ¬ MinimalInterpreter v1400394316246 :=
  chain_cut false 2 (by decide)

private def v1400394309334 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v1400394309334 : ¬ MinimalInterpreter v1400394309334 :=
  chain_cut false 2 (by decide)

theorem four764 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [2,1,0,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [2,1,0,1] = [v1400394344246,v1400394343894,v1400394316598,v1400394316246,v1400394309334] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400394344246) (.cons (no_v1400394343894) (.cons (no_v1400394316598) (.cons (no_v1400394316246) (.cons (no_v1400394309334) .nil)))))

private def v1400394344250 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v1400394344250 : ¬ MinimalInterpreter v1400394344250 :=
  chain_cut false 2 (by decide)

private def v1400394343898 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v1400394343898 : ¬ MinimalInterpreter v1400394343898 :=
  chain_cut false 2 (by decide)

private def v1400394316602 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v1400394316602 : ¬ MinimalInterpreter v1400394316602 :=
  chain_cut false 2 (by decide)

private def v1400394316250 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v1400394316250 : ¬ MinimalInterpreter v1400394316250 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400394309338 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v1400394309338 : ¬ MinimalInterpreter v1400394309338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four765 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [2,1,1,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [2,1,1,0] = [v1400394344250,v1400394343898,v1400394316602,v1400394316250,v1400394309338] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400394344250) (.cons (no_v1400394343898) (.cons (no_v1400394316602) (.cons (no_v1400394316250) (.cons (no_v1400394309338) .nil)))))

theorem four766 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [2,2,0,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four767 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [0,0,2,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1376369351918 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v1376369351918 : ¬ MinimalInterpreter v1376369351918 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376369350510 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v1376369350510 : ¬ MinimalInterpreter v1376369350510 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376369339630 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v1376369339630 : ¬ MinimalInterpreter v1376369339630 :=
  cost_cut false 1 (by decide)

private def v1376369338222 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v1376369338222 : ¬ MinimalInterpreter v1376369338222 :=
  cost_cut false 1 (by decide)

private def v1376369335150 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v1376369335150 : ¬ MinimalInterpreter v1376369335150 :=
  cost_cut false 1 (by decide)

theorem four768 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [0,1,1,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [0,1,1,2] = [v1376369351918,v1376369350510,v1376369339630,v1376369338222,v1376369335150] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376369351918) (.cons (no_v1376369350510) (.cons (no_v1376369339630) (.cons (no_v1376369338222) (.cons (no_v1376369335150) .nil)))))

private def v1376369351926 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v1376369351926 : ¬ MinimalInterpreter v1376369351926 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376369350518 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v1376369350518 : ¬ MinimalInterpreter v1376369350518 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376369339638 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v1376369339638 : ¬ MinimalInterpreter v1376369339638 :=
  cost_cut false 1 (by decide)

private def v1376369338230 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v1376369338230 : ¬ MinimalInterpreter v1376369338230 :=
  cost_cut false 1 (by decide)

private def v1376369335158 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v1376369335158 : ¬ MinimalInterpreter v1376369335158 :=
  cost_cut false 1 (by decide)

theorem four769 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [0,1,2,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [0,1,2,1] = [v1376369351926,v1376369350518,v1376369339638,v1376369338230,v1376369335158] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376369351926) (.cons (no_v1376369350518) (.cons (no_v1376369339638) (.cons (no_v1376369338230) (.cons (no_v1376369335158) .nil)))))

end Blc.SelfintSingleObject.Rows40
