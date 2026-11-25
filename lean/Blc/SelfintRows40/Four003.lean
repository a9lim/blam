import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402314411630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402314411630 : ¬ MinimalInterpreter v1402314411630 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314410926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1402314410926 : ¬ MinimalInterpreter v1402314410926 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314356334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1402314356334 : ¬ MinimalInterpreter v1402314356334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314355630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1402314355630 : ¬ MinimalInterpreter v1402314355630 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314341806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1402314341806 : ¬ MinimalInterpreter v1402314341806 :=
  chain_cut true 4 (by decide)

private def v1402312969838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1402312969838 : ¬ MinimalInterpreter v1402312969838 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312969134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1402312969134 : ¬ MinimalInterpreter v1402312969134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312914542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312914542 : ¬ MinimalInterpreter v1402312914542 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312554094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312554094 : ¬ MinimalInterpreter v1402312554094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312913838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 2))))))
private theorem no_v1402312913838 : ¬ MinimalInterpreter v1402312913838 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312900014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 2))))))
private theorem no_v1402312900014 : ¬ MinimalInterpreter v1402312900014 :=
  chain_cut true 4 (by decide)

private def v1402312553390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1402312553390 : ¬ MinimalInterpreter v1402312553390 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312539566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v1402312539566 : ¬ MinimalInterpreter v1402312539566 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312449454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1402312449454 : ¬ MinimalInterpreter v1402312449454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336431726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402336431726 : ¬ MinimalInterpreter v1402336431726 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402336431022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1402336431022 : ¬ MinimalInterpreter v1402336431022 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402336376430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1402336376430 : ¬ MinimalInterpreter v1402336376430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336375726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1402336375726 : ¬ MinimalInterpreter v1402336375726 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402336361902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1402336361902 : ¬ MinimalInterpreter v1402336361902 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four21 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,1,0,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,1,0,2] = [v1402314411630,v1402314410926,v1402314356334,v1402314355630,v1402314341806,v1402312969838,v1402312969134,v1402312914542,v1402312554094,v1402312913838,v1402312900014,v1402312553390,v1402312539566,v1402312449454,v1402336431726,v1402336431022,v1402336376430,v1402336375726,v1402336361902] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314411630) (.cons (no_v1402314410926) (.cons (no_v1402314356334) (.cons (no_v1402314355630) (.cons (no_v1402314341806) (.cons (no_v1402312969838) (.cons (no_v1402312969134) (.cons (no_v1402312914542) (.cons (no_v1402312554094) (.cons (no_v1402312913838) (.cons (no_v1402312900014) (.cons (no_v1402312553390) (.cons (no_v1402312539566) (.cons (no_v1402312449454) (.cons (no_v1402336431726) (.cons (no_v1402336431022) (.cons (no_v1402336376430) (.cons (no_v1402336375726) (.cons (no_v1402336361902) .nil)))))))))))))))))))

theorem four22 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,1,1,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314411642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402314411642 : ¬ MinimalInterpreter v1402314411642 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314410938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1402314410938 : ¬ MinimalInterpreter v1402314410938 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314356346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1402314356346 : ¬ MinimalInterpreter v1402314356346 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314355642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1402314355642 : ¬ MinimalInterpreter v1402314355642 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314341818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1402314341818 : ¬ MinimalInterpreter v1402314341818 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312969850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1402312969850 : ¬ MinimalInterpreter v1402312969850 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312969146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1402312969146 : ¬ MinimalInterpreter v1402312969146 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 1) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312914554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312914554 : ¬ MinimalInterpreter v1402312914554 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312554106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312554106 : ¬ MinimalInterpreter v1402312554106 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312913850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v1402312913850 : ¬ MinimalInterpreter v1402312913850 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 2)))) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312900026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 2))) (.var 0))))))
private theorem no_v1402312900026 : ¬ MinimalInterpreter v1402312900026 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 2))) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312553402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1402312553402 : ¬ MinimalInterpreter v1402312553402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 2))) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312539578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v1402312539578 : ¬ MinimalInterpreter v1402312539578 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 2)) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312449466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1402312449466 : ¬ MinimalInterpreter v1402312449466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402336431738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402336431738 : ¬ MinimalInterpreter v1402336431738 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402336431034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1402336431034 : ¬ MinimalInterpreter v1402336431034 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402336376442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1402336376442 : ¬ MinimalInterpreter v1402336376442 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336375738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1402336375738 : ¬ MinimalInterpreter v1402336375738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336361914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1402336361914 : ¬ MinimalInterpreter v1402336361914 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four23 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,1,2,0]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,1,2,0] = [v1402314411642,v1402314410938,v1402314356346,v1402314355642,v1402314341818,v1402312969850,v1402312969146,v1402312914554,v1402312554106,v1402312913850,v1402312900026,v1402312553402,v1402312539578,v1402312449466,v1402336431738,v1402336431034,v1402336376442,v1402336375738,v1402336361914] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314411642) (.cons (no_v1402314410938) (.cons (no_v1402314356346) (.cons (no_v1402314355642) (.cons (no_v1402314341818) (.cons (no_v1402312969850) (.cons (no_v1402312969146) (.cons (no_v1402312914554) (.cons (no_v1402312554106) (.cons (no_v1402312913850) (.cons (no_v1402312900026) (.cons (no_v1402312553402) (.cons (no_v1402312539578) (.cons (no_v1402312449466) (.cons (no_v1402336431738) (.cons (no_v1402336431034) (.cons (no_v1402336376442) (.cons (no_v1402336375738) (.cons (no_v1402336361914) .nil)))))))))))))))))))

private def v1402314411830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402314411830 : ¬ MinimalInterpreter v1402314411830 :=
  chain_cut true 7 (by decide)

private def v1402314410966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1402314410966 : ¬ MinimalInterpreter v1402314410966 :=
  chain_cut true 5 (by decide)

private def v1402314356534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402314356534 : ¬ MinimalInterpreter v1402314356534 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314355670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1402314355670 : ¬ MinimalInterpreter v1402314355670 :=
  chain_cut true 9 (by decide)

private def v1402314341846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1402314341846 : ¬ MinimalInterpreter v1402314341846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312970038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1402312970038 : ¬ MinimalInterpreter v1402312970038 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312969174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1402312969174 : ¬ MinimalInterpreter v1402312969174 :=
  chain_cut true 4 (by decide)

private def v1402312914742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312914742 : ¬ MinimalInterpreter v1402312914742 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312554294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312554294 : ¬ MinimalInterpreter v1402312554294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312913878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0)))) (.var 1))))))
private theorem no_v1402312913878 : ¬ MinimalInterpreter v1402312913878 :=
  chain_cut true 7 (by decide)

private def v1402312900054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0))) (.var 1))))))
private theorem no_v1402312900054 : ¬ MinimalInterpreter v1402312900054 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312553430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1402312553430 : ¬ MinimalInterpreter v1402312553430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312539606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.var 1))))))
private theorem no_v1402312539606 : ¬ MinimalInterpreter v1402312539606 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312449494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1402312449494 : ¬ MinimalInterpreter v1402312449494 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336431926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402336431926 : ¬ MinimalInterpreter v1402336431926 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402336431062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1402336431062 : ¬ MinimalInterpreter v1402336431062 :=
  w_cut false 0 (by decide)

private def v1402336376630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1402336376630 : ¬ MinimalInterpreter v1402336376630 :=
  w_cut false 0 (by decide)

private def v1402336375766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1402336375766 : ¬ MinimalInterpreter v1402336375766 :=
  w_cut false 0 (by decide)

private def v1402336361942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1402336361942 : ¬ MinimalInterpreter v1402336361942 :=
  w_cut false 0 (by decide)

theorem four24 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,2,0,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,2,0,1] = [v1402314411830,v1402314410966,v1402314356534,v1402314355670,v1402314341846,v1402312970038,v1402312969174,v1402312914742,v1402312554294,v1402312913878,v1402312900054,v1402312553430,v1402312539606,v1402312449494,v1402336431926,v1402336431062,v1402336376630,v1402336375766,v1402336361942] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314411830) (.cons (no_v1402314410966) (.cons (no_v1402314356534) (.cons (no_v1402314355670) (.cons (no_v1402314341846) (.cons (no_v1402312970038) (.cons (no_v1402312969174) (.cons (no_v1402312914742) (.cons (no_v1402312554294) (.cons (no_v1402312913878) (.cons (no_v1402312900054) (.cons (no_v1402312553430) (.cons (no_v1402312539606) (.cons (no_v1402312449494) (.cons (no_v1402336431926) (.cons (no_v1402336431062) (.cons (no_v1402336376630) (.cons (no_v1402336375766) (.cons (no_v1402336361942) .nil)))))))))))))))))))

private def v1402314411834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402314411834 : ¬ MinimalInterpreter v1402314411834 :=
  chain_cut true 7 (by decide)

private def v1402314410970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1402314410970 : ¬ MinimalInterpreter v1402314410970 :=
  chain_cut true 5 (by decide)

private def v1402314356538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402314356538 : ¬ MinimalInterpreter v1402314356538 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314355674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1402314355674 : ¬ MinimalInterpreter v1402314355674 :=
  chain_cut true 9 (by decide)

private def v1402314341850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1402314341850 : ¬ MinimalInterpreter v1402314341850 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312970042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1402312970042 : ¬ MinimalInterpreter v1402312970042 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312969178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1402312969178 : ¬ MinimalInterpreter v1402312969178 :=
  chain_cut true 4 (by decide)

private def v1402312914746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312914746 : ¬ MinimalInterpreter v1402312914746 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312554298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312554298 : ¬ MinimalInterpreter v1402312554298 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312913882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 1)))) (.var 0))))))
private theorem no_v1402312913882 : ¬ MinimalInterpreter v1402312913882 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 1)))) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312900058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 1))) (.var 0))))))
private theorem no_v1402312900058 : ¬ MinimalInterpreter v1402312900058 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 1))) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402312553434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1402312553434 : ¬ MinimalInterpreter v1402312553434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 1))) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312539610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 1)) (.var 0))))))
private theorem no_v1402312539610 : ¬ MinimalInterpreter v1402312539610 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 1)) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402312449498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1402312449498 : ¬ MinimalInterpreter v1402312449498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402336431930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402336431930 : ¬ MinimalInterpreter v1402336431930 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402336431066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1402336431066 : ¬ MinimalInterpreter v1402336431066 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402336376634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1402336376634 : ¬ MinimalInterpreter v1402336376634 :=
  w_cut false 0 (by decide)

private def v1402336375770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1402336375770 : ¬ MinimalInterpreter v1402336375770 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336361946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1402336361946 : ¬ MinimalInterpreter v1402336361946 :=
  w_cut false 0 (by decide)

theorem four25 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,2,1,0]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [1,2,2,1,0] = [v1402314411834,v1402314410970,v1402314356538,v1402314355674,v1402314341850,v1402312970042,v1402312969178,v1402312914746,v1402312554298,v1402312913882,v1402312900058,v1402312553434,v1402312539610,v1402312449498,v1402336431930,v1402336431066,v1402336376634,v1402336375770,v1402336361946] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314411834) (.cons (no_v1402314410970) (.cons (no_v1402314356538) (.cons (no_v1402314355674) (.cons (no_v1402314341850) (.cons (no_v1402312970042) (.cons (no_v1402312969178) (.cons (no_v1402312914746) (.cons (no_v1402312554298) (.cons (no_v1402312913882) (.cons (no_v1402312900058) (.cons (no_v1402312553434) (.cons (no_v1402312539610) (.cons (no_v1402312449498) (.cons (no_v1402336431930) (.cons (no_v1402336431066) (.cons (no_v1402336376634) (.cons (no_v1402336375770) (.cons (no_v1402336361946) .nil)))))))))))))))))))

theorem four26 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,0,0,2,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314792174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402314792174 : ¬ MinimalInterpreter v1402314792174 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314790766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v1402314790766 : ¬ MinimalInterpreter v1402314790766 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314779886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v1402314779886 : ¬ MinimalInterpreter v1402314779886 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314778478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v1402314778478 : ¬ MinimalInterpreter v1402314778478 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314775406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v1402314775406 : ¬ MinimalInterpreter v1402314775406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313022702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v1402313022702 : ¬ MinimalInterpreter v1402313022702 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313021294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v1402313021294 : ¬ MinimalInterpreter v1402313021294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313010414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402313010414 : ¬ MinimalInterpreter v1402313010414 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312568046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312568046 : ¬ MinimalInterpreter v1402312568046 :=
  chain_cut false 4 (by decide)

private def v1402313009006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 2))))))
private theorem no_v1402313009006 : ¬ MinimalInterpreter v1402313009006 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402313005934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 2))))))
private theorem no_v1402313005934 : ¬ MinimalInterpreter v1402313005934 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312566638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v1402312566638 : ¬ MinimalInterpreter v1402312566638 :=
  chain_cut false 4 (by decide)

private def v1402312563566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v1402312563566 : ¬ MinimalInterpreter v1402312563566 :=
  chain_cut false 4 (by decide)

private def v1402312452974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v1402312452974 : ¬ MinimalInterpreter v1402312452974 :=
  chain_cut false 4 (by decide)

theorem four27 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,0,1,1,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [2,0,1,1,2] = [v1402314792174,v1402314790766,v1402314779886,v1402314778478,v1402314775406,v1402313022702,v1402313021294,v1402313010414,v1402312568046,v1402313009006,v1402313005934,v1402312566638,v1402312563566,v1402312452974] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314792174) (.cons (no_v1402314790766) (.cons (no_v1402314779886) (.cons (no_v1402314778478) (.cons (no_v1402314775406) (.cons (no_v1402313022702) (.cons (no_v1402313021294) (.cons (no_v1402313010414) (.cons (no_v1402312568046) (.cons (no_v1402313009006) (.cons (no_v1402313005934) (.cons (no_v1402312566638) (.cons (no_v1402312563566) (.cons (no_v1402312452974) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows40
