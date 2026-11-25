import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five640 : BadRow (bucket false 4 3 4 [3,1,0,0]) := by
  have h : bucket false 4 3 4 [3,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five641 : BadRow (bucket true 4 3 4 [3,1,0,0]) := by
  have h : bucket true 4 3 4 [3,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five642 : BadRow (bucket false 4 3 4 [4,0,0,0]) := by
  have h : bucket false 4 3 4 [4,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five643 : BadRow (bucket true 4 3 4 [4,0,0,0]) := by
  have h : bucket true 4 3 4 [4,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five644 : BadRow (bucket false 4 3 5 [0,0,0,0,4]) := by
  have h : bucket false 4 3 5 [0,0,0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five645 : BadRow (bucket true 4 3 5 [0,0,0,0,4]) := by
  have h : bucket true 4 3 5 [0,0,0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402332092894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402332092894 : ¬ MinimalInterpreter v1402332092894 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332092126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1402332092126 : ¬ MinimalInterpreter v1402332092126 :=
  chain_cut false 2 (by decide)

private def v1402332080606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3)))))))))
private theorem no_v1402332080606 : ¬ MinimalInterpreter v1402332080606 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332079838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 3))))))))
private theorem no_v1402332079838 : ¬ MinimalInterpreter v1402332079838 :=
  chain_cut false 2 (by decide)

private def v1402332076766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3))))))))
private theorem no_v1402332076766 : ¬ MinimalInterpreter v1402332076766 :=
  chain_cut false 2 (by decide)

private def v1402332387806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402332387806 : ¬ MinimalInterpreter v1402332387806 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332387038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1402332387038 : ¬ MinimalInterpreter v1402332387038 :=
  chain_cut false 2 (by decide)

private def v1402333567454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402333567454 : ¬ MinimalInterpreter v1402333567454 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402333566686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1402333566686 : ¬ MinimalInterpreter v1402333566686 :=
  chain_cut false 2 (by decide)

private def v1402330421726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1402330421726 : ¬ MinimalInterpreter v1402330421726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402330420958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1402330420958 : ¬ MinimalInterpreter v1402330420958 :=
  chain_cut false 2 (by decide)

private def v1402409064926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402409064926 : ¬ MinimalInterpreter v1402409064926 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide))))))

private def v1402409064158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1402409064158 : ¬ MinimalInterpreter v1402409064158 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem five646 : BadRow (bucket false 4 3 5 [0,0,0,1,3]) := by
  have h : bucket false 4 3 5 [0,0,0,1,3] = [v1402332092894,v1402332092126,v1402332080606,v1402332079838,v1402332076766,v1402332387806,v1402332387038,v1402333567454,v1402333566686,v1402330421726,v1402330420958,v1402409064926,v1402409064158] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402332092894) (.cons (no_v1402332092126) (.cons (no_v1402332080606) (.cons (no_v1402332079838) (.cons (no_v1402332076766) (.cons (no_v1402332387806) (.cons (no_v1402332387038) (.cons (no_v1402333567454) (.cons (no_v1402333566686) (.cons (no_v1402330421726) (.cons (no_v1402330420958) (.cons (no_v1402409064926) (.cons (no_v1402409064158) .nil)))))))))))))

theorem five647 : BadRow (bucket true 4 3 5 [0,0,0,1,3]) := by
  have h : bucket true 4 3 5 [0,0,0,1,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
