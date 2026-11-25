import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five712 : BadRow (bucket false 4 3 5 [0,4,0,0,0]) := by
  have h : bucket false 4 3 5 [0,4,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five713 : BadRow (bucket true 4 3 5 [0,4,0,0,0]) := by
  have h : bucket true 4 3 5 [0,4,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314362078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402314362078 : ¬ MinimalInterpreter v1402314362078 :=
  chain_cut false 2 (by decide)

private def v1402314361694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))))))
private theorem no_v1402314361694 : ¬ MinimalInterpreter v1402314361694 :=
  chain_cut false 2 (by decide)

private def v1402314371294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 3))))))))))
private theorem no_v1402314371294 : ¬ MinimalInterpreter v1402314371294 :=
  chain_cut false 2 (by decide)

private def v1402314346718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 3)))))))))
private theorem no_v1402314346718 : ¬ MinimalInterpreter v1402314346718 :=
  chain_cut false 2 (by decide)

private def v1402312920286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402312920286 : ¬ MinimalInterpreter v1402312920286 :=
  chain_cut false 2 (by decide)

private def v1402312919902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))))
private theorem no_v1402312919902 : ¬ MinimalInterpreter v1402312919902 :=
  chain_cut false 2 (by decide)

private def v1402312929502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 3)))))))))
private theorem no_v1402312929502 : ¬ MinimalInterpreter v1402312929502 :=
  chain_cut false 2 (by decide)

private def v1402312904926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 3))))))))
private theorem no_v1402312904926 : ¬ MinimalInterpreter v1402312904926 :=
  chain_cut false 2 (by decide)

private def v1402312544478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 3))))))))
private theorem no_v1402312544478 : ¬ MinimalInterpreter v1402312544478 :=
  chain_cut false 2 (by decide)

theorem five714 : BadRow (bucket false 4 3 5 [1,0,0,0,3]) := by
  have h : bucket false 4 3 5 [1,0,0,0,3] = [v1402314362078,v1402314361694,v1402314371294,v1402314346718,v1402312920286,v1402312919902,v1402312929502,v1402312904926,v1402312544478] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314362078) (.cons (no_v1402314361694) (.cons (no_v1402314371294) (.cons (no_v1402314346718) (.cons (no_v1402312920286) (.cons (no_v1402312919902) (.cons (no_v1402312929502) (.cons (no_v1402312904926) (.cons (no_v1402312544478) .nil)))))))))

theorem five715 : BadRow (bucket true 4 3 5 [1,0,0,0,3]) := by
  have h : bucket true 4 3 5 [1,0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314343662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))))))))
private theorem no_v1402314343662 : ¬ MinimalInterpreter v1402314343662 :=
  chain_cut false 2 (by decide)

private def v1402314343278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))))
private theorem no_v1402314343278 : ¬ MinimalInterpreter v1402314343278 :=
  chain_cut false 2 (by decide)

private def v1402314338670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)))))))
private theorem no_v1402314338670 : ¬ MinimalInterpreter v1402314338670 :=
  chain_cut false 2 (by decide)

private def v1402312871150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1402312871150 : ¬ MinimalInterpreter v1402312871150 :=
  chain_cut false 2 (by decide)

private def v1402312870766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1402312870766 : ¬ MinimalInterpreter v1402312870766 :=
  chain_cut false 2 (by decide)

private def v1402311488750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402311488750 : ¬ MinimalInterpreter v1402311488750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402311398638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402311398638 : ¬ MinimalInterpreter v1402311398638 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 1))) (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312901870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312901870 : ¬ MinimalInterpreter v1402312901870 :=
  chain_cut false 2 (by decide)

private def v1402312541422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312541422 : ¬ MinimalInterpreter v1402312541422 :=
  chain_cut false 2 (by decide)

private def v1402312529134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312529134 : ¬ MinimalInterpreter v1402312529134 :=
  chain_cut false 2 (by decide)

private def v1402312864622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (.var 2))))))
private theorem no_v1402312864622 : ¬ MinimalInterpreter v1402312864622 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312863086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 2))))))
private theorem no_v1402312863086 : ¬ MinimalInterpreter v1402312863086 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312901486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 2))))))
private theorem no_v1402312901486 : ¬ MinimalInterpreter v1402312901486 :=
  chain_cut false 2 (by decide)

private def v1402312896878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 2))))))
private theorem no_v1402312896878 : ¬ MinimalInterpreter v1402312896878 :=
  chain_cut false 2 (by decide)

private def v1402312541038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v1402312541038 : ¬ MinimalInterpreter v1402312541038 :=
  chain_cut false 2 (by decide)

private def v1402312528750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1402312528750 : ¬ MinimalInterpreter v1402312528750 :=
  chain_cut false 2 (by decide)

private def v1402312536430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 2))))))
private theorem no_v1402312536430 : ¬ MinimalInterpreter v1402312536430 :=
  chain_cut false 2 (by decide)

private def v1402312446318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v1402312446318 : ¬ MinimalInterpreter v1402312446318 :=
  chain_cut false 2 (by decide)

private def v1402312443246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1402312443246 : ¬ MinimalInterpreter v1402312443246 :=
  chain_cut false 2 (by decide)

private def v1402336234734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402336234734 : ¬ MinimalInterpreter v1402336234734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336234350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1402336234350 : ¬ MinimalInterpreter v1402336234350 :=
  chain_cut false 4 (by decide)

private def v1402336228590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402336228590 : ¬ MinimalInterpreter v1402336228590 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336228206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v1402336228206 : ¬ MinimalInterpreter v1402336228206 :=
  chain_cut false 4 (by decide)

private def v1402336226670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v1402336226670 : ¬ MinimalInterpreter v1402336226670 :=
  chain_cut false 4 (by decide)

private def v1402336382190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402336382190 : ¬ MinimalInterpreter v1402336382190 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336381806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1402336381806 : ¬ MinimalInterpreter v1402336381806 :=
  w_cut false 0 (by decide)

private def v1402336363758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))))))))
private theorem no_v1402336363758 : ¬ MinimalInterpreter v1402336363758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336358766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)))))))
private theorem no_v1402336358766 : ¬ MinimalInterpreter v1402336358766 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v1402336972014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402336972014 : ¬ MinimalInterpreter v1402336972014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402336971630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1402336971630 : ¬ MinimalInterpreter v1402336971630 :=
  chain_cut false 2 (by decide)

private def v1402331204846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402331204846 : ¬ MinimalInterpreter v1402331204846 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402331204462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1402331204462 : ¬ MinimalInterpreter v1402331204462 :=
  chain_cut false 2 (by decide)

private def v1402331008238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1402331008238 : ¬ MinimalInterpreter v1402331008238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402331007854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1402331007854 : ¬ MinimalInterpreter v1402331007854 :=
  chain_cut false 3 (by decide)

theorem five716 : BadRow (bucket false 4 3 5 [1,0,0,1,2]) := by
  have h : bucket false 4 3 5 [1,0,0,1,2] = [v1402314343662,v1402314343278,v1402314338670,v1402312871150,v1402312870766,v1402311488750,v1402311398638,v1402312901870,v1402312541422,v1402312529134,v1402312864622,v1402312863086,v1402312901486,v1402312896878,v1402312541038,v1402312528750,v1402312536430,v1402312446318,v1402312443246,v1402336234734,v1402336234350,v1402336228590,v1402336228206,v1402336226670,v1402336382190,v1402336381806,v1402336363758,v1402336358766,v1402336972014,v1402336971630,v1402331204846,v1402331204462,v1402331008238,v1402331007854] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314343662) (.cons (no_v1402314343278) (.cons (no_v1402314338670) (.cons (no_v1402312871150) (.cons (no_v1402312870766) (.cons (no_v1402311488750) (.cons (no_v1402311398638) (.cons (no_v1402312901870) (.cons (no_v1402312541422) (.cons (no_v1402312529134) (.cons (no_v1402312864622) (.cons (no_v1402312863086) (.cons (no_v1402312901486) (.cons (no_v1402312896878) (.cons (no_v1402312541038) (.cons (no_v1402312528750) (.cons (no_v1402312536430) (.cons (no_v1402312446318) (.cons (no_v1402312443246) (.cons (no_v1402336234734) (.cons (no_v1402336234350) (.cons (no_v1402336228590) (.cons (no_v1402336228206) (.cons (no_v1402336226670) (.cons (no_v1402336382190) (.cons (no_v1402336381806) (.cons (no_v1402336363758) (.cons (no_v1402336358766) (.cons (no_v1402336972014) (.cons (no_v1402336971630) (.cons (no_v1402331204846) (.cons (no_v1402331204462) (.cons (no_v1402331008238) (.cons (no_v1402331007854) .nil))))))))))))))))))))))))))))))))))

theorem five717 : BadRow (bucket true 4 3 5 [1,0,0,1,2]) := by
  have h : bucket true 4 3 5 [1,0,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314343670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))))))))
private theorem no_v1402314343670 : ¬ MinimalInterpreter v1402314343670 :=
  chain_cut false 2 (by decide)

private def v1402314338678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)))))))
private theorem no_v1402314338678 : ¬ MinimalInterpreter v1402314338678 :=
  chain_cut false 2 (by decide)

private def v1402312871158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1402312871158 : ¬ MinimalInterpreter v1402312871158 :=
  chain_cut false 2 (by decide)

private def v1402312870774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1402312870774 : ¬ MinimalInterpreter v1402312870774 :=
  chain_cut false 2 (by decide)

private def v1402311488758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402311488758 : ¬ MinimalInterpreter v1402311488758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402311398646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402311398646 : ¬ MinimalInterpreter v1402311398646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 1))) (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312901878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312901878 : ¬ MinimalInterpreter v1402312901878 :=
  chain_cut false 2 (by decide)

private def v1402312541430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312541430 : ¬ MinimalInterpreter v1402312541430 :=
  chain_cut false 2 (by decide)

private def v1402312529142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312529142 : ¬ MinimalInterpreter v1402312529142 :=
  chain_cut false 2 (by decide)

private def v1402312896886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.var 1))))))
private theorem no_v1402312896886 : ¬ MinimalInterpreter v1402312896886 :=
  chain_cut false 2 (by decide)

private def v1402312528758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1402312528758 : ¬ MinimalInterpreter v1402312528758 :=
  chain_cut false 2 (by decide)

private def v1402312536438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.var 1))))))
private theorem no_v1402312536438 : ¬ MinimalInterpreter v1402312536438 :=
  chain_cut false 2 (by decide)

private def v1402312446326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v1402312446326 : ¬ MinimalInterpreter v1402312446326 :=
  chain_cut false 2 (by decide)

private def v1402312443254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1402312443254 : ¬ MinimalInterpreter v1402312443254 :=
  chain_cut false 2 (by decide)

private def v1402336234742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402336234742 : ¬ MinimalInterpreter v1402336234742 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336234358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1402336234358 : ¬ MinimalInterpreter v1402336234358 :=
  chain_cut false 4 (by decide)

private def v1402336228598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402336228598 : ¬ MinimalInterpreter v1402336228598 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336228214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v1402336228214 : ¬ MinimalInterpreter v1402336228214 :=
  chain_cut false 4 (by decide)

private def v1402336226678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v1402336226678 : ¬ MinimalInterpreter v1402336226678 :=
  chain_cut false 4 (by decide)

private def v1402336382198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402336382198 : ¬ MinimalInterpreter v1402336382198 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336381814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1402336381814 : ¬ MinimalInterpreter v1402336381814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336363766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))))))))
private theorem no_v1402336363766 : ¬ MinimalInterpreter v1402336363766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336358774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)))))))
private theorem no_v1402336358774 : ¬ MinimalInterpreter v1402336358774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v1402336972022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402336972022 : ¬ MinimalInterpreter v1402336972022 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402336971638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1402336971638 : ¬ MinimalInterpreter v1402336971638 :=
  chain_cut false 2 (by decide)

private def v1402331204854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402331204854 : ¬ MinimalInterpreter v1402331204854 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402331204470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1402331204470 : ¬ MinimalInterpreter v1402331204470 :=
  chain_cut false 2 (by decide)

private def v1402331008246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1402331008246 : ¬ MinimalInterpreter v1402331008246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402331007862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1402331007862 : ¬ MinimalInterpreter v1402331007862 :=
  chain_cut false 3 (by decide)

theorem five718 : BadRow (bucket false 4 3 5 [1,0,0,2,1]) := by
  have h : bucket false 4 3 5 [1,0,0,2,1] = [v1402314343670,v1402314338678,v1402312871158,v1402312870774,v1402311488758,v1402311398646,v1402312901878,v1402312541430,v1402312529142,v1402312896886,v1402312528758,v1402312536438,v1402312446326,v1402312443254,v1402336234742,v1402336234358,v1402336228598,v1402336228214,v1402336226678,v1402336382198,v1402336381814,v1402336363766,v1402336358774,v1402336972022,v1402336971638,v1402331204854,v1402331204470,v1402331008246,v1402331007862] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314343670) (.cons (no_v1402314338678) (.cons (no_v1402312871158) (.cons (no_v1402312870774) (.cons (no_v1402311488758) (.cons (no_v1402311398646) (.cons (no_v1402312901878) (.cons (no_v1402312541430) (.cons (no_v1402312529142) (.cons (no_v1402312896886) (.cons (no_v1402312528758) (.cons (no_v1402312536438) (.cons (no_v1402312446326) (.cons (no_v1402312443254) (.cons (no_v1402336234742) (.cons (no_v1402336234358) (.cons (no_v1402336228598) (.cons (no_v1402336228214) (.cons (no_v1402336226678) (.cons (no_v1402336382198) (.cons (no_v1402336381814) (.cons (no_v1402336363766) (.cons (no_v1402336358774) (.cons (no_v1402336972022) (.cons (no_v1402336971638) (.cons (no_v1402331204854) (.cons (no_v1402331204470) (.cons (no_v1402331008246) (.cons (no_v1402331007862) .nil)))))))))))))))))))))))))))))

theorem five719 : BadRow (bucket true 4 3 5 [1,0,0,2,1]) := by
  have h : bucket true 4 3 5 [1,0,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
