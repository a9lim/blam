import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five488 : BadRow (bucket false 4 2 5 [1,1,1,0,1]) := by
  have h : bucket false 4 2 5 [1,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five489 : BadRow (bucket true 4 2 5 [1,1,1,0,1]) := by
  have h : bucket true 4 2 5 [1,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five490 : BadRow (bucket false 4 2 5 [1,1,1,1,0]) := by
  have h : bucket false 4 2 5 [1,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five491 : BadRow (bucket true 4 2 5 [1,1,1,1,0]) := by
  have h : bucket true 4 2 5 [1,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five492 : BadRow (bucket false 4 2 5 [1,1,2,0,0]) := by
  have h : bucket false 4 2 5 [1,1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175239845786 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v1175239845786 : ¬ MinimalInterpreter v1175239845786 :=
  chain_cut false 2 (by decide)

private def v1175239845354 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v1175239845354 : ¬ MinimalInterpreter v1175239845354 :=
  chain_cut false 2 (by decide)

private def v1175239834522 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1175239834522 : ¬ MinimalInterpreter v1175239834522 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175239834090 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v1175239834090 : ¬ MinimalInterpreter v1175239834090 :=
  chain_cut false 2 (by decide)

private def v1175239831274 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v1175239831274 : ¬ MinimalInterpreter v1175239831274 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))

private def v1175234558442 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0)))))
private theorem no_v1175234558442 : ¬ MinimalInterpreter v1175234558442 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175234555626 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0)))))
private theorem no_v1175234555626 : ¬ MinimalInterpreter v1175234555626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide))))

theorem five493 : BadRow (bucket true 4 2 5 [1,1,2,0,0]) := by
  have h : bucket true 4 2 5 [1,1,2,0,0] = [v1175239845786,v1175239845354,v1175239834522,v1175239834090,v1175239831274,v1175234558442,v1175234555626] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175239845786) (.cons (no_v1175239845354) (.cons (no_v1175239834522) (.cons (no_v1175239834090) (.cons (no_v1175239831274) (.cons (no_v1175234558442) (.cons (no_v1175234555626) .nil)))))))

theorem five494 : BadRow (bucket false 4 2 5 [1,2,0,0,1]) := by
  have h : bucket false 4 2 5 [1,2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1175239848758 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1175239848758 : ¬ MinimalInterpreter v1175239848758 :=
  chain_cut false 2 (by decide)

private def v1175239848662 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1175239848662 : ¬ MinimalInterpreter v1175239848662 :=
  chain_cut false 2 (by decide)

private def v1175239834934 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175239834934 : ¬ MinimalInterpreter v1175239834934 :=
  chain_cut false 2 (by decide)

private def v1175239834838 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v1175239834838 : ¬ MinimalInterpreter v1175239834838 :=
  chain_cut false 2 (by decide)

private def v1175239831382 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v1175239831382 : ¬ MinimalInterpreter v1175239831382 :=
  chain_cut false 2 (by decide)

theorem five495 : BadRow (bucket true 4 2 5 [1,2,0,0,1]) := by
  have h : bucket true 4 2 5 [1,2,0,0,1] = [v1175239848758,v1175239848662,v1175239834934,v1175239834838,v1175239831382] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175239848758) (.cons (no_v1175239848662) (.cons (no_v1175239834934) (.cons (no_v1175239834838) (.cons (no_v1175239831382) .nil)))))

end Blc.SelfintSingleObject.Rows40
