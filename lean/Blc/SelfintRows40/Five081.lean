import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402313475822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 2)))))))
private theorem no_v1402313475822 : ¬ MinimalInterpreter v1402313475822 :=
  chain_cut false 2 (by decide)

private def v1402312615662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))) (.var 2))))))
private theorem no_v1402312615662 : ¬ MinimalInterpreter v1402312615662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312612590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 2))))))
private theorem no_v1402312612590 : ¬ MinimalInterpreter v1402312612590 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312689390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (.var 2))))))
private theorem no_v1402312689390 : ¬ MinimalInterpreter v1402312689390 :=
  chain_cut false 2 (by decide)

private def v1402312492782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 2)))) (.var 2))))))
private theorem no_v1402312492782 : ¬ MinimalInterpreter v1402312492782 :=
  chain_cut false 2 (by decide)

private def v1402332350190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 2)))))))
private theorem no_v1402332350190 : ¬ MinimalInterpreter v1402332350190 :=
  chain_cut false 2 (by decide)

private def v1402407847662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 2)))))))
private theorem no_v1402407847662 : ¬ MinimalInterpreter v1402407847662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five648 : BadRow (bucket false 4 3 5 [0,0,0,2,2]) := by
  have h : bucket false 4 3 5 [0,0,0,2,2] = [v1402313475822,v1402312615662,v1402312612590,v1402312689390,v1402312492782,v1402332350190,v1402407847662] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313475822) (.cons (no_v1402312615662) (.cons (no_v1402312612590) (.cons (no_v1402312689390) (.cons (no_v1402312492782) (.cons (no_v1402332350190) (.cons (no_v1402407847662) .nil)))))))

theorem five649 : BadRow (bucket true 4 3 5 [0,0,0,2,2]) := by
  have h : bucket true 4 3 5 [0,0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313475830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 1)))))))
private theorem no_v1402313475830 : ¬ MinimalInterpreter v1402313475830 :=
  chain_cut false 2 (by decide)

private def v1402312615670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 3))))) (.var 1))))))
private theorem no_v1402312615670 : ¬ MinimalInterpreter v1402312615670 :=
  chain_cut false 2 (by decide)

private def v1402312612598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.var 1))))))
private theorem no_v1402312612598 : ¬ MinimalInterpreter v1402312612598 :=
  chain_cut false 2 (by decide)

private def v1402312689398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 3))))) (.var 1))))))
private theorem no_v1402312689398 : ¬ MinimalInterpreter v1402312689398 :=
  chain_cut false 2 (by decide)

private def v1402312492790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 3)))) (.var 1))))))
private theorem no_v1402312492790 : ¬ MinimalInterpreter v1402312492790 :=
  chain_cut false 2 (by decide)

private def v1402332092918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402332092918 : ¬ MinimalInterpreter v1402332092918 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332092150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1402332092150 : ¬ MinimalInterpreter v1402332092150 :=
  chain_cut false 2 (by decide)

private def v1402332080630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1)))))))))
private theorem no_v1402332080630 : ¬ MinimalInterpreter v1402332080630 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332079862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 1))))))))
private theorem no_v1402332079862 : ¬ MinimalInterpreter v1402332079862 :=
  chain_cut false 2 (by decide)

private def v1402332076790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1))))))))
private theorem no_v1402332076790 : ¬ MinimalInterpreter v1402332076790 :=
  chain_cut false 2 (by decide)

private def v1402332387830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402332387830 : ¬ MinimalInterpreter v1402332387830 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332387062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1402332387062 : ¬ MinimalInterpreter v1402332387062 :=
  chain_cut false 2 (by decide)

private def v1402332350198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 1)))))))
private theorem no_v1402332350198 : ¬ MinimalInterpreter v1402332350198 :=
  chain_cut false 2 (by decide)

private def v1402333567478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402333567478 : ¬ MinimalInterpreter v1402333567478 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402333566710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1402333566710 : ¬ MinimalInterpreter v1402333566710 :=
  chain_cut false 2 (by decide)

private def v1402330421750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1402330421750 : ¬ MinimalInterpreter v1402330421750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402330420982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1402330420982 : ¬ MinimalInterpreter v1402330420982 :=
  chain_cut false 2 (by decide)

private def v1402407847670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 1)))))))
private theorem no_v1402407847670 : ¬ MinimalInterpreter v1402407847670 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409064950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402409064950 : ¬ MinimalInterpreter v1402409064950 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide))))))

private def v1402409064182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1402409064182 : ¬ MinimalInterpreter v1402409064182 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem five650 : BadRow (bucket false 4 3 5 [0,0,0,3,1]) := by
  have h : bucket false 4 3 5 [0,0,0,3,1] = [v1402313475830,v1402312615670,v1402312612598,v1402312689398,v1402312492790,v1402332092918,v1402332092150,v1402332080630,v1402332079862,v1402332076790,v1402332387830,v1402332387062,v1402332350198,v1402333567478,v1402333566710,v1402330421750,v1402330420982,v1402407847670,v1402409064950,v1402409064182] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313475830) (.cons (no_v1402312615670) (.cons (no_v1402312612598) (.cons (no_v1402312689398) (.cons (no_v1402312492790) (.cons (no_v1402332092918) (.cons (no_v1402332092150) (.cons (no_v1402332080630) (.cons (no_v1402332079862) (.cons (no_v1402332076790) (.cons (no_v1402332387830) (.cons (no_v1402332387062) (.cons (no_v1402332350198) (.cons (no_v1402333567478) (.cons (no_v1402333566710) (.cons (no_v1402330421750) (.cons (no_v1402330420982) (.cons (no_v1402407847670) (.cons (no_v1402409064950) (.cons (no_v1402409064182) .nil))))))))))))))))))))

theorem five651 : BadRow (bucket true 4 3 5 [0,0,0,3,1]) := by
  have h : bucket true 4 3 5 [0,0,0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five652 : BadRow (bucket false 4 3 5 [0,0,0,4,0]) := by
  have h : bucket false 4 3 5 [0,0,0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five653 : BadRow (bucket true 4 3 5 [0,0,0,4,0]) := by
  have h : bucket true 4 3 5 [0,0,0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313535710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 3))))))))))
private theorem no_v1402313535710 : ¬ MinimalInterpreter v1402313535710 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.var 1)))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 3)) (.var 2) (by decide) (by decide))))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402313486558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 3)))))))))
private theorem no_v1402313486558 : ¬ MinimalInterpreter v1402313486558 :=
  chain_cut false 2 (by decide)

private def v1402312749278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 3)))))))))
private theorem no_v1402312749278 : ¬ MinimalInterpreter v1402312749278 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.var 1)))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 3)) (.var 2) (by decide) (by decide)))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402312700126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 3))))))))
private theorem no_v1402312700126 : ¬ MinimalInterpreter v1402312700126 :=
  chain_cut false 2 (by decide)

private def v1402312503518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 3))))))))
private theorem no_v1402312503518 : ¬ MinimalInterpreter v1402312503518 :=
  chain_cut false 2 (by decide)

private def v1402332093662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402332093662 : ¬ MinimalInterpreter v1402332093662 :=
  chain_cut false 2 (by decide)

private def v1402332092254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1402332092254 : ¬ MinimalInterpreter v1402332092254 :=
  chain_cut false 2 (by decide)

private def v1402332081374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402332081374 : ¬ MinimalInterpreter v1402332081374 :=
  chain_cut false 2 (by decide)

private def v1402332079966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 3))))))))
private theorem no_v1402332079966 : ¬ MinimalInterpreter v1402332079966 :=
  chain_cut false 2 (by decide)

private def v1402332076894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 3))))))))
private theorem no_v1402332076894 : ¬ MinimalInterpreter v1402332076894 :=
  chain_cut false 2 (by decide)

private def v1402332388574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402332388574 : ¬ MinimalInterpreter v1402332388574 :=
  chain_cut false 2 (by decide)

private def v1402332387166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1402332387166 : ¬ MinimalInterpreter v1402332387166 :=
  chain_cut false 2 (by decide)

private def v1402332410078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 3))))))))))
private theorem no_v1402332410078 : ¬ MinimalInterpreter v1402332410078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 3)) (.var 2) (by decide) (by decide)))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide))) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332360926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 3)))))))))
private theorem no_v1402332360926 : ¬ MinimalInterpreter v1402332360926 :=
  chain_cut false 2 (by decide)

private def v1402333568222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402333568222 : ¬ MinimalInterpreter v1402333568222 :=
  chain_cut false 2 (by decide)

private def v1402333566814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1402333566814 : ¬ MinimalInterpreter v1402333566814 :=
  chain_cut false 2 (by decide)

private def v1402330422494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402330422494 : ¬ MinimalInterpreter v1402330422494 :=
  chain_cut false 2 (by decide)

private def v1402330421086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1402330421086 : ¬ MinimalInterpreter v1402330421086 :=
  chain_cut false 2 (by decide)

private def v1402407907550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 3))))))))))
private theorem no_v1402407907550 : ¬ MinimalInterpreter v1402407907550 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.app (.var 0) (.var 1)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 3)) (.var 2) (by decide) (by decide)))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)) (by decide) (by decide))))))

private def v1402407858398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 3)))))))))
private theorem no_v1402407858398 : ¬ MinimalInterpreter v1402407858398 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409065694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402409065694 : ¬ MinimalInterpreter v1402409065694 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402409064286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1402409064286 : ¬ MinimalInterpreter v1402409064286 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem five654 : BadRow (bucket false 4 3 5 [0,0,1,0,3]) := by
  have h : bucket false 4 3 5 [0,0,1,0,3] = [v1402313535710,v1402313486558,v1402312749278,v1402312700126,v1402312503518,v1402332093662,v1402332092254,v1402332081374,v1402332079966,v1402332076894,v1402332388574,v1402332387166,v1402332410078,v1402332360926,v1402333568222,v1402333566814,v1402330422494,v1402330421086,v1402407907550,v1402407858398,v1402409065694,v1402409064286] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313535710) (.cons (no_v1402313486558) (.cons (no_v1402312749278) (.cons (no_v1402312700126) (.cons (no_v1402312503518) (.cons (no_v1402332093662) (.cons (no_v1402332092254) (.cons (no_v1402332081374) (.cons (no_v1402332079966) (.cons (no_v1402332076894) (.cons (no_v1402332388574) (.cons (no_v1402332387166) (.cons (no_v1402332410078) (.cons (no_v1402332360926) (.cons (no_v1402333568222) (.cons (no_v1402333566814) (.cons (no_v1402330422494) (.cons (no_v1402330421086) (.cons (no_v1402407907550) (.cons (no_v1402407858398) (.cons (no_v1402409065694) (.cons (no_v1402409064286) .nil))))))))))))))))))))))

theorem five655 : BadRow (bucket true 4 3 5 [0,0,1,0,3]) := by
  have h : bucket true 4 3 5 [0,0,1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
