import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four595 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [3,0,1,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [3,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four596 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [3,0,2,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [3,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four597 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [3,1,0,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [3,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four598 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [3,1,1,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [3,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four599 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [1,0] [3,2,0,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [1,0] [3,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1382308485598 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1382308485598 : ¬ MinimalInterpreter v1382308485598 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1382308484830 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1382308484830 : ¬ MinimalInterpreter v1382308484830 :=
  chain_cut false 2 (by decide)

private def v1382308473310 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))))))))
private theorem no_v1382308473310 : ¬ MinimalInterpreter v1382308473310 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1382308472542 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 3)))))))
private theorem no_v1382308472542 : ¬ MinimalInterpreter v1382308472542 :=
  chain_cut false 2 (by decide)

private def v1382308469470 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3)))))))
private theorem no_v1382308469470 : ¬ MinimalInterpreter v1382308469470 :=
  chain_cut false 2 (by decide)

private def v1382308780510 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1382308780510 : ¬ MinimalInterpreter v1382308780510 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1382308779742 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1382308779742 : ¬ MinimalInterpreter v1382308779742 :=
  chain_cut false 2 (by decide)

private def v1382308800286 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1382308800286 : ¬ MinimalInterpreter v1382308800286 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1382308797214 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1382308797214 : ¬ MinimalInterpreter v1382308797214 :=
  chain_cut false 2 (by decide)

private def v1382308751134 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v1382308751134 : ¬ MinimalInterpreter v1382308751134 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1382308748062 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 3)))))))
private theorem no_v1382308748062 : ¬ MinimalInterpreter v1382308748062 :=
  chain_cut false 2 (by decide)

private def v1382308735774 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v1382308735774 : ¬ MinimalInterpreter v1382308735774 :=
  chain_cut false 2 (by decide)

private def v1382309979934 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1382309979934 : ¬ MinimalInterpreter v1382309979934 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1382309976862 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1382309976862 : ¬ MinimalInterpreter v1382309976862 :=
  chain_cut false 2 (by decide)

private def v1382314678750 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1382314678750 : ¬ MinimalInterpreter v1382314678750 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1382314677982 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1382314677982 : ¬ MinimalInterpreter v1382314677982 :=
  chain_cut false 4 (by decide)

private def v1382314698526 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1382314698526 : ¬ MinimalInterpreter v1382314698526 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1382314695454 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1382314695454 : ¬ MinimalInterpreter v1382314695454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four600 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,0,1,3]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,0,1,3] = [v1382308485598,v1382308484830,v1382308473310,v1382308472542,v1382308469470,v1382308780510,v1382308779742,v1382308800286,v1382308797214,v1382308751134,v1382308748062,v1382308735774,v1382309979934,v1382309976862,v1382314678750,v1382314677982,v1382314698526,v1382314695454] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308485598) (.cons (no_v1382308484830) (.cons (no_v1382308473310) (.cons (no_v1382308472542) (.cons (no_v1382308469470) (.cons (no_v1382308780510) (.cons (no_v1382308779742) (.cons (no_v1382308800286) (.cons (no_v1382308797214) (.cons (no_v1382308751134) (.cons (no_v1382308748062) (.cons (no_v1382308735774) (.cons (no_v1382309979934) (.cons (no_v1382309976862) (.cons (no_v1382314678750) (.cons (no_v1382314677982) (.cons (no_v1382314698526) (.cons (no_v1382314695454) .nil))))))))))))))))))

private def v1382308800398 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1382308800398 : ¬ MinimalInterpreter v1382308800398 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308797326 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1382308797326 : ¬ MinimalInterpreter v1382308797326 :=
  chain_cut false 2 (by decide)

private def v1382308796654 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1382308796654 : ¬ MinimalInterpreter v1382308796654 :=
  chain_cut false 2 (by decide)

private def v1382308751246 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v1382308751246 : ¬ MinimalInterpreter v1382308751246 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308748174 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 2)))))))
private theorem no_v1382308748174 : ¬ MinimalInterpreter v1382308748174 :=
  chain_cut false 2 (by decide)

private def v1382308735886 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v1382308735886 : ¬ MinimalInterpreter v1382308735886 :=
  chain_cut false 2 (by decide)

private def v1382308747502 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))
private theorem no_v1382308747502 : ¬ MinimalInterpreter v1382308747502 :=
  chain_cut false 2 (by decide)

private def v1382308735214 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2))))))
private theorem no_v1382308735214 : ¬ MinimalInterpreter v1382308735214 :=
  chain_cut false 2 (by decide)

private def v1382309980046 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1382309980046 : ¬ MinimalInterpreter v1382309980046 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1382309976974 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1382309976974 : ¬ MinimalInterpreter v1382309976974 :=
  chain_cut false 2 (by decide)

private def v1382309976302 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1382309976302 : ¬ MinimalInterpreter v1382309976302 :=
  chain_cut false 2 (by decide)

private def v1382314698638 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1382314698638 : ¬ MinimalInterpreter v1382314698638 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382314695566 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1382314695566 : ¬ MinimalInterpreter v1382314695566 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1382314694894 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1382314694894 : ¬ MinimalInterpreter v1382314694894 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

theorem four601 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,0,2,2]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,0,2,2] = [v1382308800398,v1382308797326,v1382308796654,v1382308751246,v1382308748174,v1382308735886,v1382308747502,v1382308735214,v1382309980046,v1382309976974,v1382309976302,v1382314698638,v1382314695566,v1382314694894] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308800398) (.cons (no_v1382308797326) (.cons (no_v1382308796654) (.cons (no_v1382308751246) (.cons (no_v1382308748174) (.cons (no_v1382308735886) (.cons (no_v1382308747502) (.cons (no_v1382308735214) (.cons (no_v1382309980046) (.cons (no_v1382309976974) (.cons (no_v1382309976302) (.cons (no_v1382314698638) (.cons (no_v1382314695566) (.cons (no_v1382314694894) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows40
