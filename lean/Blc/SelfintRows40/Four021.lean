import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308866870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402308866870 : ¬ MinimalInterpreter v1402308866870 :=
  chain_cut false 2 (by decide)

private def v1402308866774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1402308866774 : ¬ MinimalInterpreter v1402308866774 :=
  chain_cut false 2 (by decide)

private def v1402308865334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308865334 : ¬ MinimalInterpreter v1402308865334 :=
  chain_cut false 2 (by decide)

private def v1402308865238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v1402308865238 : ¬ MinimalInterpreter v1402308865238 :=
  chain_cut false 2 (by decide)

private def v1402308864854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v1402308864854 : ¬ MinimalInterpreter v1402308864854 :=
  chain_cut false 2 (by decide)

private def v1402308383542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402308383542 : ¬ MinimalInterpreter v1402308383542 :=
  chain_cut false 2 (by decide)

private def v1402308383446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1402308383446 : ¬ MinimalInterpreter v1402308383446 :=
  chain_cut false 2 (by decide)

private def v1402308382006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308382006 : ¬ MinimalInterpreter v1402308382006 :=
  chain_cut false 2 (by decide)

private def v1402308261174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308261174 : ¬ MinimalInterpreter v1402308261174 :=
  chain_cut false 2 (by decide)

private def v1402308381910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1)))))))
private theorem no_v1402308381910 : ¬ MinimalInterpreter v1402308381910 :=
  chain_cut false 2 (by decide)

private def v1402308381526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1)))))))
private theorem no_v1402308381526 : ¬ MinimalInterpreter v1402308381526 :=
  chain_cut false 2 (by decide)

private def v1402308261078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1402308261078 : ¬ MinimalInterpreter v1402308261078 :=
  chain_cut false 2 (by decide)

private def v1402308260694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v1402308260694 : ¬ MinimalInterpreter v1402308260694 :=
  chain_cut false 2 (by decide)

private def v1402308230486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1402308230486 : ¬ MinimalInterpreter v1402308230486 :=
  chain_cut false 2 (by decide)

theorem four147 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [3,0,0,0,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [3,0,0,0,1] = [v1402308866870,v1402308866774,v1402308865334,v1402308865238,v1402308864854,v1402308383542,v1402308383446,v1402308382006,v1402308261174,v1402308381910,v1402308381526,v1402308261078,v1402308260694,v1402308230486] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308866870) (.cons (no_v1402308866774) (.cons (no_v1402308865334) (.cons (no_v1402308865238) (.cons (no_v1402308864854) (.cons (no_v1402308383542) (.cons (no_v1402308383446) (.cons (no_v1402308382006) (.cons (no_v1402308261174) (.cons (no_v1402308381910) (.cons (no_v1402308381526) (.cons (no_v1402308261078) (.cons (no_v1402308260694) (.cons (no_v1402308230486) .nil))))))))))))))

private def v1402308866874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402308866874 : ¬ MinimalInterpreter v1402308866874 :=
  chain_cut false 2 (by decide)

private def v1402308866778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1402308866778 : ¬ MinimalInterpreter v1402308866778 :=
  chain_cut false 2 (by decide)

private def v1402308865338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308865338 : ¬ MinimalInterpreter v1402308865338 :=
  chain_cut false 2 (by decide)

private def v1402308865242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v1402308865242 : ¬ MinimalInterpreter v1402308865242 :=
  chain_cut false 2 (by decide)

private def v1402308864858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v1402308864858 : ¬ MinimalInterpreter v1402308864858 :=
  chain_cut false 2 (by decide)

private def v1402308383546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402308383546 : ¬ MinimalInterpreter v1402308383546 :=
  chain_cut false 2 (by decide)

private def v1402308383450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1402308383450 : ¬ MinimalInterpreter v1402308383450 :=
  chain_cut false 2 (by decide)

private def v1402308382010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308382010 : ¬ MinimalInterpreter v1402308382010 :=
  chain_cut false 2 (by decide)

private def v1402308261178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308261178 : ¬ MinimalInterpreter v1402308261178 :=
  chain_cut false 2 (by decide)

private def v1402308381914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0)))))))
private theorem no_v1402308381914 : ¬ MinimalInterpreter v1402308381914 :=
  chain_cut false 2 (by decide)

private def v1402308381530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)))))))
private theorem no_v1402308381530 : ¬ MinimalInterpreter v1402308381530 :=
  chain_cut false 2 (by decide)

private def v1402308261082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1402308261082 : ¬ MinimalInterpreter v1402308261082 :=
  chain_cut false 2 (by decide)

private def v1402308260698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v1402308260698 : ¬ MinimalInterpreter v1402308260698 :=
  chain_cut false 2 (by decide)

private def v1402308230490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1402308230490 : ¬ MinimalInterpreter v1402308230490 :=
  chain_cut false 2 (by decide)

theorem four148 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [3,0,0,1,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [3,0,0,1,0] = [v1402308866874,v1402308866778,v1402308865338,v1402308865242,v1402308864858,v1402308383546,v1402308383450,v1402308382010,v1402308261178,v1402308381914,v1402308381530,v1402308261082,v1402308260698,v1402308230490] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308866874) (.cons (no_v1402308866778) (.cons (no_v1402308865338) (.cons (no_v1402308865242) (.cons (no_v1402308864858) (.cons (no_v1402308383546) (.cons (no_v1402308383450) (.cons (no_v1402308382010) (.cons (no_v1402308261178) (.cons (no_v1402308381914) (.cons (no_v1402308381530) (.cons (no_v1402308261082) (.cons (no_v1402308260698) (.cons (no_v1402308230490) .nil))))))))))))))

private def v1402308866970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402308866970 : ¬ MinimalInterpreter v1402308866970 :=
  chain_cut false 2 (by decide)

private def v1402308866794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1402308866794 : ¬ MinimalInterpreter v1402308866794 :=
  chain_cut false 2 (by decide)

private def v1402308865434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308865434 : ¬ MinimalInterpreter v1402308865434 :=
  chain_cut false 2 (by decide)

private def v1402308865258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v1402308865258 : ¬ MinimalInterpreter v1402308865258 :=
  chain_cut false 2 (by decide)

private def v1402308864874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v1402308864874 : ¬ MinimalInterpreter v1402308864874 :=
  chain_cut false 2 (by decide)

private def v1402308383642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308383642 : ¬ MinimalInterpreter v1402308383642 :=
  chain_cut false 2 (by decide)

private def v1402308383466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1402308383466 : ¬ MinimalInterpreter v1402308383466 :=
  chain_cut false 2 (by decide)

private def v1402308382106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308382106 : ¬ MinimalInterpreter v1402308382106 :=
  chain_cut false 2 (by decide)

private def v1402308261274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308261274 : ¬ MinimalInterpreter v1402308261274 :=
  chain_cut false 2 (by decide)

private def v1402308381930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0)))))))
private theorem no_v1402308381930 : ¬ MinimalInterpreter v1402308381930 :=
  chain_cut false 2 (by decide)

private def v1402308381546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0)))))))
private theorem no_v1402308381546 : ¬ MinimalInterpreter v1402308381546 :=
  chain_cut false 2 (by decide)

private def v1402308261098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1402308261098 : ¬ MinimalInterpreter v1402308261098 :=
  chain_cut false 2 (by decide)

private def v1402308260714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0)) (.var 0)))))))
private theorem no_v1402308260714 : ¬ MinimalInterpreter v1402308260714 :=
  chain_cut false 2 (by decide)

private def v1402308230506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1402308230506 : ¬ MinimalInterpreter v1402308230506 :=
  chain_cut false 2 (by decide)

theorem four149 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [3,0,1,0,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [3,0,1,0,0] = [v1402308866970,v1402308866794,v1402308865434,v1402308865258,v1402308864874,v1402308383642,v1402308383466,v1402308382106,v1402308261274,v1402308381930,v1402308381546,v1402308261098,v1402308260714,v1402308230506] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308866970) (.cons (no_v1402308866794) (.cons (no_v1402308865434) (.cons (no_v1402308865258) (.cons (no_v1402308864874) (.cons (no_v1402308383642) (.cons (no_v1402308383466) (.cons (no_v1402308382106) (.cons (no_v1402308261274) (.cons (no_v1402308381930) (.cons (no_v1402308381546) (.cons (no_v1402308261098) (.cons (no_v1402308260714) (.cons (no_v1402308230506) .nil))))))))))))))

private def v1402308868506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402308868506 : ¬ MinimalInterpreter v1402308868506 :=
  chain_cut false 2 (by decide)

private def v1402308868458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))))))))
private theorem no_v1402308868458 : ¬ MinimalInterpreter v1402308868458 :=
  chain_cut false 2 (by decide)

private def v1402308865690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308865690 : ¬ MinimalInterpreter v1402308865690 :=
  chain_cut false 2 (by decide)

private def v1402308865642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))))))))
private theorem no_v1402308865642 : ¬ MinimalInterpreter v1402308865642 :=
  chain_cut false 2 (by decide)

private def v1402308864938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))))))))
private theorem no_v1402308864938 : ¬ MinimalInterpreter v1402308864938 :=
  chain_cut false 2 (by decide)

private def v1402308385178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402308385178 : ¬ MinimalInterpreter v1402308385178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308385130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))))))
private theorem no_v1402308385130 : ¬ MinimalInterpreter v1402308385130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 3) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308382362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308382362 : ¬ MinimalInterpreter v1402308382362 :=
  chain_cut false 2 (by decide)

private def v1402308261530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308261530 : ¬ MinimalInterpreter v1402308261530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308382314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0)))))))
private theorem no_v1402308382314 : ¬ MinimalInterpreter v1402308382314 :=
  chain_cut false 2 (by decide)

private def v1402308381610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0)))))))
private theorem no_v1402308381610 : ¬ MinimalInterpreter v1402308381610 :=
  chain_cut false 2 (by decide)

private def v1402308261482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))))))
private theorem no_v1402308261482 : ¬ MinimalInterpreter v1402308261482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308260778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0)) (.var 0)))))))
private theorem no_v1402308260778 : ¬ MinimalInterpreter v1402308260778 :=
  chain_cut false 2 (by decide)

private def v1402308230570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.var 0)))))))
private theorem no_v1402308230570 : ¬ MinimalInterpreter v1402308230570 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

theorem four150 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [3,1,0,0,0]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [3,1,0,0,0] = [v1402308868506,v1402308868458,v1402308865690,v1402308865642,v1402308864938,v1402308385178,v1402308385130,v1402308382362,v1402308261530,v1402308382314,v1402308381610,v1402308261482,v1402308260778,v1402308230570] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308868506) (.cons (no_v1402308868458) (.cons (no_v1402308865690) (.cons (no_v1402308865642) (.cons (no_v1402308864938) (.cons (no_v1402308385178) (.cons (no_v1402308385130) (.cons (no_v1402308382362) (.cons (no_v1402308261530) (.cons (no_v1402308382314) (.cons (no_v1402308381610) (.cons (no_v1402308261482) (.cons (no_v1402308260778) (.cons (no_v1402308230570) .nil))))))))))))))

private def v1401904273886 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1401904273886 : ¬ MinimalInterpreter v1401904273886 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1401904273118 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1401904273118 : ¬ MinimalInterpreter v1401904273118 :=
  chain_cut true 3 (by decide)

private def v1401904261598 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))))))))
private theorem no_v1401904261598 : ¬ MinimalInterpreter v1401904261598 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1401904260830 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 3)))))))
private theorem no_v1401904260830 : ¬ MinimalInterpreter v1401904260830 :=
  chain_cut true 3 (by decide)

private def v1401904257758 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3)))))))
private theorem no_v1401904257758 : ¬ MinimalInterpreter v1401904257758 :=
  chain_cut true 3 (by decide)

private def v1401904568798 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1401904568798 : ¬ MinimalInterpreter v1401904568798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1401904568030 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1401904568030 : ¬ MinimalInterpreter v1401904568030 :=
  chain_cut true 3 (by decide)

private def v1401904588574 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1401904588574 : ¬ MinimalInterpreter v1401904588574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1401904585502 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1401904585502 : ¬ MinimalInterpreter v1401904585502 :=
  chain_cut true 3 (by decide)

private def v1401904539422 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v1401904539422 : ¬ MinimalInterpreter v1401904539422 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1401904536350 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 3)))))))
private theorem no_v1401904536350 : ¬ MinimalInterpreter v1401904536350 :=
  chain_cut true 3 (by decide)

private def v1401904524062 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v1401904524062 : ¬ MinimalInterpreter v1401904524062 :=
  chain_cut true 3 (by decide)

private def v1401905768222 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1401905768222 : ¬ MinimalInterpreter v1401905768222 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1401905765150 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1401905765150 : ¬ MinimalInterpreter v1401905765150 :=
  chain_cut true 3 (by decide)

private def v1401910467038 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1401910467038 : ¬ MinimalInterpreter v1401910467038 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1401910466270 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1401910466270 : ¬ MinimalInterpreter v1401910466270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1401910486814 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1401910486814 : ¬ MinimalInterpreter v1401910486814 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1401910483742 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1401910483742 : ¬ MinimalInterpreter v1401910483742 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v1398683048414 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1398683048414 : ¬ MinimalInterpreter v1398683048414 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1398683047646 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1398683047646 : ¬ MinimalInterpreter v1398683047646 :=
  chain_cut false 3 (by decide)

private def v1398683036126 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))))))))
private theorem no_v1398683036126 : ¬ MinimalInterpreter v1398683036126 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1398683035358 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 3)))))))
private theorem no_v1398683035358 : ¬ MinimalInterpreter v1398683035358 :=
  chain_cut false 3 (by decide)

private def v1398683032286 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3)))))))
private theorem no_v1398683032286 : ¬ MinimalInterpreter v1398683032286 :=
  chain_cut false 3 (by decide)

private def v1398683343326 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1398683343326 : ¬ MinimalInterpreter v1398683343326 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1398683342558 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1398683342558 : ¬ MinimalInterpreter v1398683342558 :=
  chain_cut false 3 (by decide)

private def v1398683363102 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1398683363102 : ¬ MinimalInterpreter v1398683363102 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1398683360030 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1398683360030 : ¬ MinimalInterpreter v1398683360030 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398683313950 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v1398683313950 : ¬ MinimalInterpreter v1398683313950 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1398683310878 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 3)))))))
private theorem no_v1398683310878 : ¬ MinimalInterpreter v1398683310878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398683298590 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v1398683298590 : ¬ MinimalInterpreter v1398683298590 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398684542750 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1398684542750 : ¬ MinimalInterpreter v1398684542750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1398684539678 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1398684539678 : ¬ MinimalInterpreter v1398684539678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398689241566 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1398689241566 : ¬ MinimalInterpreter v1398689241566 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1398689240798 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1398689240798 : ¬ MinimalInterpreter v1398689240798 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398689261342 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1398689261342 : ¬ MinimalInterpreter v1398689261342 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1398689258270 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1398689258270 : ¬ MinimalInterpreter v1398689258270 :=
  chain_cut false 11 (by decide)

theorem four151 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [0,0,1,3]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [0,0,1,3] = [v1401904273886,v1401904273118,v1401904261598,v1401904260830,v1401904257758,v1401904568798,v1401904568030,v1401904588574,v1401904585502,v1401904539422,v1401904536350,v1401904524062,v1401905768222,v1401905765150,v1401910467038,v1401910466270,v1401910486814,v1401910483742,v1398683048414,v1398683047646,v1398683036126,v1398683035358,v1398683032286,v1398683343326,v1398683342558,v1398683363102,v1398683360030,v1398683313950,v1398683310878,v1398683298590,v1398684542750,v1398684539678,v1398689241566,v1398689240798,v1398689261342,v1398689258270] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904273886) (.cons (no_v1401904273118) (.cons (no_v1401904261598) (.cons (no_v1401904260830) (.cons (no_v1401904257758) (.cons (no_v1401904568798) (.cons (no_v1401904568030) (.cons (no_v1401904588574) (.cons (no_v1401904585502) (.cons (no_v1401904539422) (.cons (no_v1401904536350) (.cons (no_v1401904524062) (.cons (no_v1401905768222) (.cons (no_v1401905765150) (.cons (no_v1401910467038) (.cons (no_v1401910466270) (.cons (no_v1401910486814) (.cons (no_v1401910483742) (.cons (no_v1398683048414) (.cons (no_v1398683047646) (.cons (no_v1398683036126) (.cons (no_v1398683035358) (.cons (no_v1398683032286) (.cons (no_v1398683343326) (.cons (no_v1398683342558) (.cons (no_v1398683363102) (.cons (no_v1398683360030) (.cons (no_v1398683313950) (.cons (no_v1398683310878) (.cons (no_v1398683298590) (.cons (no_v1398684542750) (.cons (no_v1398684539678) (.cons (no_v1398689241566) (.cons (no_v1398689240798) (.cons (no_v1398689261342) (.cons (no_v1398689258270) .nil))))))))))))))))))))))))))))))))))))

private def v1401904588686 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1401904588686 : ¬ MinimalInterpreter v1401904588686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401904585614 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1401904585614 : ¬ MinimalInterpreter v1401904585614 :=
  chain_cut true 3 (by decide)

private def v1401904584942 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1401904584942 : ¬ MinimalInterpreter v1401904584942 :=
  chain_cut true 3 (by decide)

private def v1401904539534 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v1401904539534 : ¬ MinimalInterpreter v1401904539534 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401904536462 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 2)))))))
private theorem no_v1401904536462 : ¬ MinimalInterpreter v1401904536462 :=
  chain_cut true 3 (by decide)

private def v1401904524174 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v1401904524174 : ¬ MinimalInterpreter v1401904524174 :=
  chain_cut true 3 (by decide)

private def v1401904535790 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))
private theorem no_v1401904535790 : ¬ MinimalInterpreter v1401904535790 :=
  chain_cut true 3 (by decide)

private def v1401904523502 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2))))))
private theorem no_v1401904523502 : ¬ MinimalInterpreter v1401904523502 :=
  chain_cut true 3 (by decide)

private def v1401905768334 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1401905768334 : ¬ MinimalInterpreter v1401905768334 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1401905765262 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1401905765262 : ¬ MinimalInterpreter v1401905765262 :=
  chain_cut true 3 (by decide)

private def v1401905764590 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1401905764590 : ¬ MinimalInterpreter v1401905764590 :=
  chain_cut true 3 (by decide)

private def v1401910486926 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1401910486926 : ¬ MinimalInterpreter v1401910486926 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1401910483854 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1401910483854 : ¬ MinimalInterpreter v1401910483854 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1401910483182 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1401910483182 : ¬ MinimalInterpreter v1401910483182 :=
  chain_cut false 11 (by decide)

private def v1398683363214 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1398683363214 : ¬ MinimalInterpreter v1398683363214 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398683360142 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1398683360142 : ¬ MinimalInterpreter v1398683360142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398683359470 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1398683359470 : ¬ MinimalInterpreter v1398683359470 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398683314062 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v1398683314062 : ¬ MinimalInterpreter v1398683314062 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398683310990 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 2)))))))
private theorem no_v1398683310990 : ¬ MinimalInterpreter v1398683310990 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398683298702 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v1398683298702 : ¬ MinimalInterpreter v1398683298702 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398683310318 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))
private theorem no_v1398683310318 : ¬ MinimalInterpreter v1398683310318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398683298030 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2))))))
private theorem no_v1398683298030 : ¬ MinimalInterpreter v1398683298030 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398684542862 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1398684542862 : ¬ MinimalInterpreter v1398684542862 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1398684539790 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1398684539790 : ¬ MinimalInterpreter v1398684539790 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398684539118 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1398684539118 : ¬ MinimalInterpreter v1398684539118 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398689261454 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1398689261454 : ¬ MinimalInterpreter v1398689261454 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398689258382 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1398689258382 : ¬ MinimalInterpreter v1398689258382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1398689257710 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1398689257710 : ¬ MinimalInterpreter v1398689257710 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four152 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [0,0,2,2]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [0,0,2,2] = [v1401904588686,v1401904585614,v1401904584942,v1401904539534,v1401904536462,v1401904524174,v1401904535790,v1401904523502,v1401905768334,v1401905765262,v1401905764590,v1401910486926,v1401910483854,v1401910483182,v1398683363214,v1398683360142,v1398683359470,v1398683314062,v1398683310990,v1398683298702,v1398683310318,v1398683298030,v1398684542862,v1398684539790,v1398684539118,v1398689261454,v1398689258382,v1398689257710] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904588686) (.cons (no_v1401904585614) (.cons (no_v1401904584942) (.cons (no_v1401904539534) (.cons (no_v1401904536462) (.cons (no_v1401904524174) (.cons (no_v1401904535790) (.cons (no_v1401904523502) (.cons (no_v1401905768334) (.cons (no_v1401905765262) (.cons (no_v1401905764590) (.cons (no_v1401910486926) (.cons (no_v1401910483854) (.cons (no_v1401910483182) (.cons (no_v1398683363214) (.cons (no_v1398683360142) (.cons (no_v1398683359470) (.cons (no_v1398683314062) (.cons (no_v1398683310990) (.cons (no_v1398683298702) (.cons (no_v1398683310318) (.cons (no_v1398683298030) (.cons (no_v1398684542862) (.cons (no_v1398684539790) (.cons (no_v1398684539118) (.cons (no_v1398689261454) (.cons (no_v1398689258382) (.cons (no_v1398689257710) .nil))))))))))))))))))))))))))))

private def v1401904273910 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1401904273910 : ¬ MinimalInterpreter v1401904273910 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1401904273142 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1401904273142 : ¬ MinimalInterpreter v1401904273142 :=
  chain_cut true 3 (by decide)

private def v1401904261622 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))))
private theorem no_v1401904261622 : ¬ MinimalInterpreter v1401904261622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1401904260854 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 1)))))))
private theorem no_v1401904260854 : ¬ MinimalInterpreter v1401904260854 :=
  chain_cut true 3 (by decide)

private def v1401904257782 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1)))))))
private theorem no_v1401904257782 : ¬ MinimalInterpreter v1401904257782 :=
  chain_cut true 3 (by decide)

private def v1401904568822 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1401904568822 : ¬ MinimalInterpreter v1401904568822 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1401904568054 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1401904568054 : ¬ MinimalInterpreter v1401904568054 :=
  chain_cut true 3 (by decide)

private def v1401904584950 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1401904584950 : ¬ MinimalInterpreter v1401904584950 :=
  chain_cut true 3 (by decide)

private def v1401904535798 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))
private theorem no_v1401904535798 : ¬ MinimalInterpreter v1401904535798 :=
  chain_cut true 3 (by decide)

private def v1401904523510 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1))))))
private theorem no_v1401904523510 : ¬ MinimalInterpreter v1401904523510 :=
  chain_cut true 3 (by decide)

private def v1401905764598 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1401905764598 : ¬ MinimalInterpreter v1401905764598 :=
  chain_cut true 3 (by decide)

private def v1401910467062 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1401910467062 : ¬ MinimalInterpreter v1401910467062 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1401910466294 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1401910466294 : ¬ MinimalInterpreter v1401910466294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1401910483190 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1401910483190 : ¬ MinimalInterpreter v1401910483190 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v1398683048438 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1398683048438 : ¬ MinimalInterpreter v1398683048438 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1398683047670 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1398683047670 : ¬ MinimalInterpreter v1398683047670 :=
  chain_cut false 3 (by decide)

private def v1398683036150 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))))
private theorem no_v1398683036150 : ¬ MinimalInterpreter v1398683036150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1398683035382 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 1)))))))
private theorem no_v1398683035382 : ¬ MinimalInterpreter v1398683035382 :=
  chain_cut false 3 (by decide)

private def v1398683032310 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1)))))))
private theorem no_v1398683032310 : ¬ MinimalInterpreter v1398683032310 :=
  chain_cut false 3 (by decide)

private def v1398683343350 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1398683343350 : ¬ MinimalInterpreter v1398683343350 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1398683342582 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1398683342582 : ¬ MinimalInterpreter v1398683342582 :=
  chain_cut false 3 (by decide)

private def v1398683359478 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1398683359478 : ¬ MinimalInterpreter v1398683359478 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398683310326 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))
private theorem no_v1398683310326 : ¬ MinimalInterpreter v1398683310326 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398683298038 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1))))))
private theorem no_v1398683298038 : ¬ MinimalInterpreter v1398683298038 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398684539126 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1398684539126 : ¬ MinimalInterpreter v1398684539126 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398689241590 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1398689241590 : ¬ MinimalInterpreter v1398689241590 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1398689240822 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1398689240822 : ¬ MinimalInterpreter v1398689240822 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1398689257718 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1398689257718 : ¬ MinimalInterpreter v1398689257718 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four153 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [0,0,3,1]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [0,0,3,1] = [v1401904273910,v1401904273142,v1401904261622,v1401904260854,v1401904257782,v1401904568822,v1401904568054,v1401904584950,v1401904535798,v1401904523510,v1401905764598,v1401910467062,v1401910466294,v1401910483190,v1398683048438,v1398683047670,v1398683036150,v1398683035382,v1398683032310,v1398683343350,v1398683342582,v1398683359478,v1398683310326,v1398683298038,v1398684539126,v1398689241590,v1398689240822,v1398689257718] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904273910) (.cons (no_v1401904273142) (.cons (no_v1401904261622) (.cons (no_v1401904260854) (.cons (no_v1401904257782) (.cons (no_v1401904568822) (.cons (no_v1401904568054) (.cons (no_v1401904584950) (.cons (no_v1401904535798) (.cons (no_v1401904523510) (.cons (no_v1401905764598) (.cons (no_v1401910467062) (.cons (no_v1401910466294) (.cons (no_v1401910483190) (.cons (no_v1398683048438) (.cons (no_v1398683047670) (.cons (no_v1398683036150) (.cons (no_v1398683035382) (.cons (no_v1398683032310) (.cons (no_v1398683343350) (.cons (no_v1398683342582) (.cons (no_v1398683359478) (.cons (no_v1398683310326) (.cons (no_v1398683298038) (.cons (no_v1398684539126) (.cons (no_v1398689241590) (.cons (no_v1398689240822) (.cons (no_v1398689257718) .nil))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
