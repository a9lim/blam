import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402314792182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402314792182 : ¬ MinimalInterpreter v1402314792182 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314790774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v1402314790774 : ¬ MinimalInterpreter v1402314790774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314779894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))))))))
private theorem no_v1402314779894 : ¬ MinimalInterpreter v1402314779894 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314778486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)))))))
private theorem no_v1402314778486 : ¬ MinimalInterpreter v1402314778486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314775414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)))))))
private theorem no_v1402314775414 : ¬ MinimalInterpreter v1402314775414 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313022710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v1402313022710 : ¬ MinimalInterpreter v1402313022710 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313021302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v1402313021302 : ¬ MinimalInterpreter v1402313021302 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313010422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402313010422 : ¬ MinimalInterpreter v1402313010422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312568054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312568054 : ¬ MinimalInterpreter v1402312568054 :=
  chain_cut false 4 (by decide)

private def v1402313009014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 1))))))
private theorem no_v1402313009014 : ¬ MinimalInterpreter v1402313009014 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313005942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 1))))))
private theorem no_v1402313005942 : ¬ MinimalInterpreter v1402313005942 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312566646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v1402312566646 : ¬ MinimalInterpreter v1402312566646 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312563574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v1402312563574 : ¬ MinimalInterpreter v1402312563574 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312452982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v1402312452982 : ¬ MinimalInterpreter v1402312452982 :=
  chain_cut false 4 (by decide)

theorem four28 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,0,1,2,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,0,1,2,1] = [v1402314792182,v1402314790774,v1402314779894,v1402314778486,v1402314775414,v1402313022710,v1402313021302,v1402313010422,v1402312568054,v1402313009014,v1402313005942,v1402312566646,v1402312563574,v1402312452982] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314792182) (.cons (no_v1402314790774) (.cons (no_v1402314779894) (.cons (no_v1402314778486) (.cons (no_v1402314775414) (.cons (no_v1402313022710) (.cons (no_v1402313021302) (.cons (no_v1402313010422) (.cons (no_v1402312568054) (.cons (no_v1402313009014) (.cons (no_v1402313005942) (.cons (no_v1402312566646) (.cons (no_v1402312563574) (.cons (no_v1402312452982) .nil))))))))))))))

theorem four29 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,0,2,0,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314792566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402314792566 : ¬ MinimalInterpreter v1402314792566 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314790838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v1402314790838 : ¬ MinimalInterpreter v1402314790838 :=
  chain_cut true 5 (by decide)

private def v1402314780278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v1402314780278 : ¬ MinimalInterpreter v1402314780278 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314778550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v1402314778550 : ¬ MinimalInterpreter v1402314778550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314775478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v1402314775478 : ¬ MinimalInterpreter v1402314775478 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313023094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v1402313023094 : ¬ MinimalInterpreter v1402313023094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313021366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v1402313021366 : ¬ MinimalInterpreter v1402313021366 :=
  chain_cut true 6 (by decide)

private def v1402313010806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 1)))))))
private theorem no_v1402313010806 : ¬ MinimalInterpreter v1402313010806 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312568438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v1402312568438 : ¬ MinimalInterpreter v1402312568438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402313009078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 1))))))
private theorem no_v1402313009078 : ¬ MinimalInterpreter v1402313009078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313006006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 1))))))
private theorem no_v1402313006006 : ¬ MinimalInterpreter v1402313006006 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312566710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v1402312566710 : ¬ MinimalInterpreter v1402312566710 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312563638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1)) (.var 1))))))
private theorem no_v1402312563638 : ¬ MinimalInterpreter v1402312563638 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312453046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v1402312453046 : ¬ MinimalInterpreter v1402312453046 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four30 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,0,2,1,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,0,2,1,1] = [v1402314792566,v1402314790838,v1402314780278,v1402314778550,v1402314775478,v1402313023094,v1402313021366,v1402313010806,v1402312568438,v1402313009078,v1402313006006,v1402312566710,v1402312563638,v1402312453046] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314792566) (.cons (no_v1402314790838) (.cons (no_v1402314780278) (.cons (no_v1402314778550) (.cons (no_v1402314775478) (.cons (no_v1402313023094) (.cons (no_v1402313021366) (.cons (no_v1402313010806) (.cons (no_v1402312568438) (.cons (no_v1402313009078) (.cons (no_v1402313006006) (.cons (no_v1402312566710) (.cons (no_v1402312563638) (.cons (no_v1402312453046) .nil))))))))))))))

theorem four31 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,0,2,2,0]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314804462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402314804462 : ¬ MinimalInterpreter v1402314804462 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314804078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1402314804078 : ¬ MinimalInterpreter v1402314804078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314781934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1402314781934 : ¬ MinimalInterpreter v1402314781934 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314781550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1402314781550 : ¬ MinimalInterpreter v1402314781550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314775918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1402314775918 : ¬ MinimalInterpreter v1402314775918 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313034990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1402313034990 : ¬ MinimalInterpreter v1402313034990 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313034606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1402313034606 : ¬ MinimalInterpreter v1402313034606 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313012462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402313012462 : ¬ MinimalInterpreter v1402313012462 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312570094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312570094 : ¬ MinimalInterpreter v1402312570094 :=
  chain_cut false 4 (by decide)

private def v1402313012078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v1402313012078 : ¬ MinimalInterpreter v1402313012078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313006446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 2))))))
private theorem no_v1402313006446 : ¬ MinimalInterpreter v1402313006446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312569710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1402312569710 : ¬ MinimalInterpreter v1402312569710 :=
  chain_cut false 4 (by decide)

private def v1402312564078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v1402312564078 : ¬ MinimalInterpreter v1402312564078 :=
  chain_cut false 4 (by decide)

private def v1402312453486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1402312453486 : ¬ MinimalInterpreter v1402312453486 :=
  chain_cut false 4 (by decide)

theorem four32 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,0,1,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,0,1,2] = [v1402314804462,v1402314804078,v1402314781934,v1402314781550,v1402314775918,v1402313034990,v1402313034606,v1402313012462,v1402312570094,v1402313012078,v1402313006446,v1402312569710,v1402312564078,v1402312453486] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314804462) (.cons (no_v1402314804078) (.cons (no_v1402314781934) (.cons (no_v1402314781550) (.cons (no_v1402314775918) (.cons (no_v1402313034990) (.cons (no_v1402313034606) (.cons (no_v1402313012462) (.cons (no_v1402312570094) (.cons (no_v1402313012078) (.cons (no_v1402313006446) (.cons (no_v1402312569710) (.cons (no_v1402312564078) (.cons (no_v1402312453486) .nil))))))))))))))

private def v1402314804470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402314804470 : ¬ MinimalInterpreter v1402314804470 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314804086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1402314804086 : ¬ MinimalInterpreter v1402314804086 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314781942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1402314781942 : ¬ MinimalInterpreter v1402314781942 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314781558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1402314781558 : ¬ MinimalInterpreter v1402314781558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314775926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1402314775926 : ¬ MinimalInterpreter v1402314775926 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313034998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1402313034998 : ¬ MinimalInterpreter v1402313034998 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 1)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313034614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1402313034614 : ¬ MinimalInterpreter v1402313034614 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313012470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402313012470 : ¬ MinimalInterpreter v1402313012470 :=
  chain_cut true 6 (by decide)

private def v1402312570102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312570102 : ¬ MinimalInterpreter v1402312570102 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 1))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313012086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 1))))))
private theorem no_v1402313012086 : ¬ MinimalInterpreter v1402313012086 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313006454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 1))))))
private theorem no_v1402313006454 : ¬ MinimalInterpreter v1402313006454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312569718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1402312569718 : ¬ MinimalInterpreter v1402312569718 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312564086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v1402312564086 : ¬ MinimalInterpreter v1402312564086 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312453494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1402312453494 : ¬ MinimalInterpreter v1402312453494 :=
  chain_cut false 4 (by decide)

theorem four33 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,0,2,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,0,2,1] = [v1402314804470,v1402314804086,v1402314781942,v1402314781558,v1402314775926,v1402313034998,v1402313034614,v1402313012470,v1402312570102,v1402313012086,v1402313006454,v1402312569718,v1402312564086,v1402312453494] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314804470) (.cons (no_v1402314804086) (.cons (no_v1402314781942) (.cons (no_v1402314781558) (.cons (no_v1402314775926) (.cons (no_v1402313034998) (.cons (no_v1402313034614) (.cons (no_v1402313012470) (.cons (no_v1402312570102) (.cons (no_v1402313012086) (.cons (no_v1402313006454) (.cons (no_v1402312569718) (.cons (no_v1402312564086) (.cons (no_v1402312453494) .nil))))))))))))))

private def v1402314804846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402314804846 : ¬ MinimalInterpreter v1402314804846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314804142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1402314804142 : ¬ MinimalInterpreter v1402314804142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314782318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1402314782318 : ¬ MinimalInterpreter v1402314782318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314781614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1402314781614 : ¬ MinimalInterpreter v1402314781614 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314775982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1402314775982 : ¬ MinimalInterpreter v1402314775982 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313035374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1402313035374 : ¬ MinimalInterpreter v1402313035374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313034670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1402313034670 : ¬ MinimalInterpreter v1402313034670 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313012846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v1402313012846 : ¬ MinimalInterpreter v1402313012846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312570478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312570478 : ¬ MinimalInterpreter v1402312570478 :=
  chain_cut false 4 (by decide)

private def v1402313012142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 2))))))
private theorem no_v1402313012142 : ¬ MinimalInterpreter v1402313012142 :=
  chain_cut true 7 (by decide)

private def v1402313006510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 2))))))
private theorem no_v1402313006510 : ¬ MinimalInterpreter v1402313006510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312569774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1402312569774 : ¬ MinimalInterpreter v1402312569774 :=
  chain_cut false 4 (by decide)

private def v1402312564142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v1402312564142 : ¬ MinimalInterpreter v1402312564142 :=
  chain_cut false 4 (by decide)

private def v1402312453550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1402312453550 : ¬ MinimalInterpreter v1402312453550 :=
  chain_cut false 4 (by decide)

theorem four34 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,1,0,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,1,1,0,2] = [v1402314804846,v1402314804142,v1402314782318,v1402314781614,v1402314775982,v1402313035374,v1402313034670,v1402313012846,v1402312570478,v1402313012142,v1402313006510,v1402312569774,v1402312564142,v1402312453550] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314804846) (.cons (no_v1402314804142) (.cons (no_v1402314782318) (.cons (no_v1402314781614) (.cons (no_v1402314775982) (.cons (no_v1402313035374) (.cons (no_v1402313034670) (.cons (no_v1402313012846) (.cons (no_v1402312570478) (.cons (no_v1402313012142) (.cons (no_v1402313006510) (.cons (no_v1402312569774) (.cons (no_v1402312564142) (.cons (no_v1402312453550) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows40
