import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five328 : BadRow (bucket false 4 2 4 [0,0,3,1]) := by
  have h : bucket false 4 2 4 [0,0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five329 : BadRow (bucket true 4 2 4 [0,0,3,1]) := by
  have h : bucket true 4 2 4 [0,0,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five330 : BadRow (bucket false 4 2 4 [0,0,4,0]) := by
  have h : bucket false 4 2 4 [0,0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five331 : BadRow (bucket true 4 2 4 [0,0,4,0]) := by
  have h : bucket true 4 2 4 [0,0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five332 : BadRow (bucket false 4 2 4 [0,1,0,3]) := by
  have h : bucket false 4 2 4 [0,1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five333 : BadRow (bucket true 4 2 4 [0,1,0,3]) := by
  have h : bucket true 4 2 4 [0,1,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1450090024674 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) (.lam (.var 0)))
private theorem no_v1450090024674 : ¬ MinimalInterpreter v1450090024674 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))

private def v1401803611374 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v1401803611374 : ¬ MinimalInterpreter v1401803611374 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398582385902 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v1398582385902 : ¬ MinimalInterpreter v1398582385902 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398179732718 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v1398179732718 : ¬ MinimalInterpreter v1398179732718 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1450090002146 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) (.lam (.var 0)))
private theorem no_v1450090002146 : ¬ MinimalInterpreter v1450090002146 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))

private def v1401803609966 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v1401803609966 : ¬ MinimalInterpreter v1401803609966 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398582384494 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v1398582384494 : ¬ MinimalInterpreter v1398582384494 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398179731310 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v1398179731310 : ¬ MinimalInterpreter v1398179731310 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1450089828066 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))) (.lam (.var 0)))
private theorem no_v1450089828066 : ¬ MinimalInterpreter v1450089828066 :=
  chain_cut false 2 (by decide)

private def v1401803599086 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v1401803599086 : ¬ MinimalInterpreter v1401803599086 :=
  chain_cut false 2 (by decide)

private def v1398582373614 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v1398582373614 : ¬ MinimalInterpreter v1398582373614 :=
  chain_cut false 2 (by decide)

private def v1398179720430 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v1398179720430 : ¬ MinimalInterpreter v1398179720430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1450089805538 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))) (.lam (.var 0)))
private theorem no_v1450089805538 : ¬ MinimalInterpreter v1450089805538 :=
  chain_cut false 2 (by decide)

private def v1401803597678 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v1401803597678 : ¬ MinimalInterpreter v1401803597678 :=
  chain_cut false 2 (by decide)

private def v1398582372206 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v1398582372206 : ¬ MinimalInterpreter v1398582372206 :=
  chain_cut false 2 (by decide)

private def v1398179719022 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v1398179719022 : ¬ MinimalInterpreter v1398179719022 :=
  chain_cut true 4 (by decide)

private def v1450089756386 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))) (.lam (.var 0)))
private theorem no_v1450089756386 : ¬ MinimalInterpreter v1450089756386 :=
  chain_cut false 2 (by decide)

private def v1401803594606 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v1401803594606 : ¬ MinimalInterpreter v1401803594606 :=
  chain_cut false 2 (by decide)

private def v1398582369134 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v1398582369134 : ¬ MinimalInterpreter v1398582369134 :=
  chain_cut false 2 (by decide)

private def v1398179715950 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v1398179715950 : ¬ MinimalInterpreter v1398179715950 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five334 : BadRow (bucket false 4 2 4 [0,1,1,2]) := by
  have h : bucket false 4 2 4 [0,1,1,2] = [v1450090024674,v1401803611374,v1398582385902,v1398179732718,v1450090002146,v1401803609966,v1398582384494,v1398179731310,v1450089828066,v1401803599086,v1398582373614,v1398179720430,v1450089805538,v1401803597678,v1398582372206,v1398179719022,v1450089756386,v1401803594606,v1398582369134,v1398179715950] := by decide +kernel
  rw [h]
  exact (.cons (no_v1450090024674) (.cons (no_v1401803611374) (.cons (no_v1398582385902) (.cons (no_v1398179732718) (.cons (no_v1450090002146) (.cons (no_v1401803609966) (.cons (no_v1398582384494) (.cons (no_v1398179731310) (.cons (no_v1450089828066) (.cons (no_v1401803599086) (.cons (no_v1398582373614) (.cons (no_v1398179720430) (.cons (no_v1450089805538) (.cons (no_v1401803597678) (.cons (no_v1398582372206) (.cons (no_v1398179719022) (.cons (no_v1450089756386) (.cons (no_v1401803594606) (.cons (no_v1398582369134) (.cons (no_v1398179715950) .nil))))))))))))))))))))

private def v1187156227002 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) (.var 0)))
private theorem no_v1187156227002 : ¬ MinimalInterpreter v1187156227002 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))

private def v1207322123502 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))))
private theorem no_v1207322123502 : ¬ MinimalInterpreter v1207322123502 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1194027970074 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194027970074 : ¬ MinimalInterpreter v1194027970074 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))

private def v1175311195374 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))))
private theorem no_v1175311195374 : ¬ MinimalInterpreter v1175311195374 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1194437221614 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v1194437221614 : ¬ MinimalInterpreter v1194437221614 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1187156221370 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) (.var 0)))
private theorem no_v1187156221370 : ¬ MinimalInterpreter v1187156221370 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))

private def v1207322122094 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))))
private theorem no_v1207322122094 : ¬ MinimalInterpreter v1207322122094 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1194027609626 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194027609626 : ¬ MinimalInterpreter v1194027609626 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))

private def v1175311193966 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))))
private theorem no_v1175311193966 : ¬ MinimalInterpreter v1175311193966 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1194437220206 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v1194437220206 : ¬ MinimalInterpreter v1194437220206 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1187156177850 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))) (.var 0)))
private theorem no_v1187156177850 : ¬ MinimalInterpreter v1187156177850 :=
  chain_cut false 2 (by decide)

private def v1207322111214 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1207322111214 : ¬ MinimalInterpreter v1207322111214 :=
  chain_cut true 2 (by decide)

private def v1194024824346 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194024824346 : ¬ MinimalInterpreter v1194024824346 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311183086 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175311183086 : ¬ MinimalInterpreter v1175311183086 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437209326 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v1194437209326 : ¬ MinimalInterpreter v1194437209326 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156172218 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))) (.var 0)))
private theorem no_v1187156172218 : ¬ MinimalInterpreter v1187156172218 :=
  chain_cut false 2 (by decide)

private def v1207322109806 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))))
private theorem no_v1207322109806 : ¬ MinimalInterpreter v1207322109806 :=
  chain_cut true 2 (by decide)

private def v1194024463898 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194024463898 : ¬ MinimalInterpreter v1194024463898 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311181678 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))))
private theorem no_v1175311181678 : ¬ MinimalInterpreter v1175311181678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437207918 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v1194437207918 : ¬ MinimalInterpreter v1194437207918 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156159930 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))) (.var 0)))
private theorem no_v1187156159930 : ¬ MinimalInterpreter v1187156159930 :=
  chain_cut false 2 (by decide)

private def v1207322106734 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))))
private theorem no_v1207322106734 : ¬ MinimalInterpreter v1207322106734 :=
  chain_cut true 2 (by decide)

private def v1194023677466 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194023677466 : ¬ MinimalInterpreter v1194023677466 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311178606 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))))
private theorem no_v1175311178606 : ¬ MinimalInterpreter v1175311178606 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437204846 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v1194437204846 : ¬ MinimalInterpreter v1194437204846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five335 : BadRow (bucket true 4 2 4 [0,1,1,2]) := by
  have h : bucket true 4 2 4 [0,1,1,2] = [v1187156227002,v1207322123502,v1194027970074,v1175311195374,v1194437221614,v1187156221370,v1207322122094,v1194027609626,v1175311193966,v1194437220206,v1187156177850,v1207322111214,v1194024824346,v1175311183086,v1194437209326,v1187156172218,v1207322109806,v1194024463898,v1175311181678,v1194437207918,v1187156159930,v1207322106734,v1194023677466,v1175311178606,v1194437204846] := by decide +kernel
  rw [h]
  exact (.cons (no_v1187156227002) (.cons (no_v1207322123502) (.cons (no_v1194027970074) (.cons (no_v1175311195374) (.cons (no_v1194437221614) (.cons (no_v1187156221370) (.cons (no_v1207322122094) (.cons (no_v1194027609626) (.cons (no_v1175311193966) (.cons (no_v1194437220206) (.cons (no_v1187156177850) (.cons (no_v1207322111214) (.cons (no_v1194024824346) (.cons (no_v1175311183086) (.cons (no_v1194437209326) (.cons (no_v1187156172218) (.cons (no_v1207322109806) (.cons (no_v1194024463898) (.cons (no_v1175311181678) (.cons (no_v1194437207918) (.cons (no_v1187156159930) (.cons (no_v1207322106734) (.cons (no_v1194023677466) (.cons (no_v1175311178606) (.cons (no_v1194437204846) .nil)))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
