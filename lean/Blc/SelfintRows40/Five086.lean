import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402313587766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 1))))))))))
private theorem no_v1402313587766 : ¬ MinimalInterpreter v1402313587766 :=
  chain_cut false 2 (by decide)

private def v1402313584406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))))))
private theorem no_v1402313584406 : ¬ MinimalInterpreter v1402313584406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1)))) (.app (.var 0) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))

private def v1402313497654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402313497654 : ¬ MinimalInterpreter v1402313497654 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 1))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313494294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v1402313494294 : ¬ MinimalInterpreter v1402313494294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0)))) (.var 1))) (.app (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))

private def v1402313471766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v1402313471766 : ¬ MinimalInterpreter v1402313471766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 1))))) (.lam (r := (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0))) (.var 1))) (.app (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312801334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402312801334 : ¬ MinimalInterpreter v1402312801334 :=
  chain_cut false 2 (by decide)

private def v1402312797974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))))
private theorem no_v1402312797974 : ¬ MinimalInterpreter v1402312797974 :=
  chain_cut false 2 (by decide)

private def v1402312711222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.var 1))))))))
private theorem no_v1402312711222 : ¬ MinimalInterpreter v1402312711222 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312514614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.var 1))))))))
private theorem no_v1402312514614 : ¬ MinimalInterpreter v1402312514614 :=
  chain_cut false 2 (by decide)

private def v1402312707862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.var 1))))))
private theorem no_v1402312707862 : ¬ MinimalInterpreter v1402312707862 :=
  chain_cut false 2 (by decide)

private def v1402312685334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 1))))))
private theorem no_v1402312685334 : ¬ MinimalInterpreter v1402312685334 :=
  chain_cut false 2 (by decide)

private def v1402312511254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.var 1))))))
private theorem no_v1402312511254 : ¬ MinimalInterpreter v1402312511254 :=
  chain_cut false 2 (by decide)

private def v1402312488726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 1))))))
private theorem no_v1402312488726 : ¬ MinimalInterpreter v1402312488726 :=
  chain_cut false 2 (by decide)

private def v1402312439574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 1))))))
private theorem no_v1402312439574 : ¬ MinimalInterpreter v1402312439574 :=
  chain_cut false 2 (by decide)

private def v1402332462134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 1))))))))))
private theorem no_v1402332462134 : ¬ MinimalInterpreter v1402332462134 :=
  chain_cut false 2 (by decide)

private def v1402332372022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402332372022 : ¬ MinimalInterpreter v1402332372022 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.var 1) (.var 2)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402333826870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402333826870 : ¬ MinimalInterpreter v1402333826870 :=
  chain_cut false 2 (by decide)

private def v1402333826006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1402333826006 : ¬ MinimalInterpreter v1402333826006 :=
  chain_cut false 2 (by decide)

private def v1402330681142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402330681142 : ¬ MinimalInterpreter v1402330681142 :=
  chain_cut false 2 (by decide)

private def v1402330680278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1402330680278 : ¬ MinimalInterpreter v1402330680278 :=
  chain_cut false 2 (by decide)

private def v1402329920470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 1)))))
private theorem no_v1402329920470 : ¬ MinimalInterpreter v1402329920470 :=
  chain_cut false 2 (by decide)

private def v1402329914838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 1)))))
private theorem no_v1402329914838 : ¬ MinimalInterpreter v1402329914838 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1402407604022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402407604022 : ¬ MinimalInterpreter v1402407604022 :=
  chain_cut false 4 (by decide)

private def v1402407603158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1402407603158 : ¬ MinimalInterpreter v1402407603158 :=
  chain_cut false 4 (by decide)

private def v1402407581494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402407581494 : ¬ MinimalInterpreter v1402407581494 :=
  chain_cut false 4 (by decide)

private def v1402407580630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v1402407580630 : ¬ MinimalInterpreter v1402407580630 :=
  chain_cut false 4 (by decide)

private def v1402407574998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v1402407574998 : ¬ MinimalInterpreter v1402407574998 :=
  chain_cut false 4 (by decide)

private def v1402407948086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402407948086 : ¬ MinimalInterpreter v1402407948086 :=
  chain_cut false 10 (by decide)

private def v1402407947222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1402407947222 : ¬ MinimalInterpreter v1402407947222 :=
  w_cut false 0 (by decide)

private def v1402407959606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 1))))))))))
private theorem no_v1402407959606 : ¬ MinimalInterpreter v1402407959606 :=
  chain_cut false 6 (by decide)

private def v1402407869494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402407869494 : ¬ MinimalInterpreter v1402407869494 :=
  w_cut false 0 (by decide)

private def v1402409324342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402409324342 : ¬ MinimalInterpreter v1402409324342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402409323478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1402409323478 : ¬ MinimalInterpreter v1402409323478 :=
  chain_cut false 9 (by decide)

theorem five688 : BadRow (bucket false 4 3 5 [0,1,2,0,1]) := by
  have h : bucket false 4 3 5 [0,1,2,0,1] = [v1402313587766,v1402313584406,v1402313497654,v1402313494294,v1402313471766,v1402312801334,v1402312797974,v1402312711222,v1402312514614,v1402312707862,v1402312685334,v1402312511254,v1402312488726,v1402312439574,v1402332462134,v1402332372022,v1402333826870,v1402333826006,v1402330681142,v1402330680278,v1402329920470,v1402329914838,v1402407604022,v1402407603158,v1402407581494,v1402407580630,v1402407574998,v1402407948086,v1402407947222,v1402407959606,v1402407869494,v1402409324342,v1402409323478] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313587766) (.cons (no_v1402313584406) (.cons (no_v1402313497654) (.cons (no_v1402313494294) (.cons (no_v1402313471766) (.cons (no_v1402312801334) (.cons (no_v1402312797974) (.cons (no_v1402312711222) (.cons (no_v1402312514614) (.cons (no_v1402312707862) (.cons (no_v1402312685334) (.cons (no_v1402312511254) (.cons (no_v1402312488726) (.cons (no_v1402312439574) (.cons (no_v1402332462134) (.cons (no_v1402332372022) (.cons (no_v1402333826870) (.cons (no_v1402333826006) (.cons (no_v1402330681142) (.cons (no_v1402330680278) (.cons (no_v1402329920470) (.cons (no_v1402329914838) (.cons (no_v1402407604022) (.cons (no_v1402407603158) (.cons (no_v1402407581494) (.cons (no_v1402407580630) (.cons (no_v1402407574998) (.cons (no_v1402407948086) (.cons (no_v1402407947222) (.cons (no_v1402407959606) (.cons (no_v1402407869494) (.cons (no_v1402409324342) (.cons (no_v1402409323478) .nil)))))))))))))))))))))))))))))))))

theorem five689 : BadRow (bucket true 4 3 5 [0,1,2,0,1]) := by
  have h : bucket true 4 3 5 [0,1,2,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313587770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 0))))))))))
private theorem no_v1402313587770 : ¬ MinimalInterpreter v1402313587770 :=
  chain_cut false 2 (by decide)

private def v1402313587938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v1402313587938 : ¬ MinimalInterpreter v1402313587938 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313584482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v1402313584482 : ¬ MinimalInterpreter v1402313584482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))) (.lam (r := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313497658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402313497658 : ¬ MinimalInterpreter v1402313497658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 0))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313497826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v1402313497826 : ¬ MinimalInterpreter v1402313497826 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.var 0))))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (so_closed_lam (by decide) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313494370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 0))))))))
private theorem no_v1402313494370 : ¬ MinimalInterpreter v1402313494370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 0)))))) (.lam (r := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313471842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v1402313471842 : ¬ MinimalInterpreter v1402313471842 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 0)))))) (.lam (r := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312801338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402312801338 : ¬ MinimalInterpreter v1402312801338 :=
  chain_cut false 2 (by decide)

private def v1402312801506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v1402312801506 : ¬ MinimalInterpreter v1402312801506 :=
  chain_cut false 2 (by decide)

private def v1402312798050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))))
private theorem no_v1402312798050 : ¬ MinimalInterpreter v1402312798050 :=
  chain_cut false 2 (by decide)

private def v1402312711226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 1) (.var 0))))))))
private theorem no_v1402312711226 : ¬ MinimalInterpreter v1402312711226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 1) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 1) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312711394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v1402312711394 : ¬ MinimalInterpreter v1402312711394 :=
  chain_cut false 2 (by decide)

private def v1402312514618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 1) (.var 0))))))))
private theorem no_v1402312514618 : ¬ MinimalInterpreter v1402312514618 :=
  chain_cut false 2 (by decide)

private def v1402312514786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v1402312514786 : ¬ MinimalInterpreter v1402312514786 :=
  chain_cut false 2 (by decide)

private def v1402312707938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.lam (.var 0)))))))
private theorem no_v1402312707938 : ¬ MinimalInterpreter v1402312707938 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.lam (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312685410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.lam (.var 0)))))))
private theorem no_v1402312685410 : ¬ MinimalInterpreter v1402312685410 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.lam (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (so_closed_lam (by decide) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312511330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))) (.lam (.var 0)))))))
private theorem no_v1402312511330 : ¬ MinimalInterpreter v1402312511330 :=
  chain_cut false 2 (by decide)

private def v1402312488802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)) (.lam (.var 0)))))))
private theorem no_v1402312488802 : ¬ MinimalInterpreter v1402312488802 :=
  chain_cut false 2 (by decide)

private def v1402312439650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)) (.lam (.var 0)))))))
private theorem no_v1402312439650 : ¬ MinimalInterpreter v1402312439650 :=
  chain_cut false 2 (by decide)

private def v1402332462138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 0))))))))))
private theorem no_v1402332462138 : ¬ MinimalInterpreter v1402332462138 :=
  chain_cut false 2 (by decide)

private def v1402332372026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402332372026 : ¬ MinimalInterpreter v1402332372026 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 0))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402333826874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402333826874 : ¬ MinimalInterpreter v1402333826874 :=
  chain_cut false 2 (by decide)

private def v1402333826010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1402333826010 : ¬ MinimalInterpreter v1402333826010 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402330681146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402330681146 : ¬ MinimalInterpreter v1402330681146 :=
  chain_cut false 2 (by decide)

private def v1402330680282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1402330680282 : ¬ MinimalInterpreter v1402330680282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402407604026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402407604026 : ¬ MinimalInterpreter v1402407604026 :=
  chain_cut false 4 (by decide)

private def v1402407603162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1402407603162 : ¬ MinimalInterpreter v1402407603162 :=
  chain_cut false 4 (by decide)

private def v1402407581498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402407581498 : ¬ MinimalInterpreter v1402407581498 :=
  chain_cut false 4 (by decide)

private def v1402407580634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v1402407580634 : ¬ MinimalInterpreter v1402407580634 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402407575002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v1402407575002 : ¬ MinimalInterpreter v1402407575002 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402407948090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402407948090 : ¬ MinimalInterpreter v1402407948090 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407947226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1402407947226 : ¬ MinimalInterpreter v1402407947226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1402407959610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 0))))))))))
private theorem no_v1402407959610 : ¬ MinimalInterpreter v1402407959610 :=
  chain_cut false 6 (by decide)

private def v1402407869498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402407869498 : ¬ MinimalInterpreter v1402407869498 :=
  w_cut false 0 (by decide)

private def v1402409324346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402409324346 : ¬ MinimalInterpreter v1402409324346 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402409323482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1402409323482 : ¬ MinimalInterpreter v1402409323482 :=
  w_cut false 0 (by decide)

theorem five690 : BadRow (bucket false 4 3 5 [0,1,2,1,0]) := by
  have h : bucket false 4 3 5 [0,1,2,1,0] = [v1402313587770,v1402313587938,v1402313584482,v1402313497658,v1402313497826,v1402313494370,v1402313471842,v1402312801338,v1402312801506,v1402312798050,v1402312711226,v1402312711394,v1402312514618,v1402312514786,v1402312707938,v1402312685410,v1402312511330,v1402312488802,v1402312439650,v1402332462138,v1402332372026,v1402333826874,v1402333826010,v1402330681146,v1402330680282,v1402407604026,v1402407603162,v1402407581498,v1402407580634,v1402407575002,v1402407948090,v1402407947226,v1402407959610,v1402407869498,v1402409324346,v1402409323482] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313587770) (.cons (no_v1402313587938) (.cons (no_v1402313584482) (.cons (no_v1402313497658) (.cons (no_v1402313497826) (.cons (no_v1402313494370) (.cons (no_v1402313471842) (.cons (no_v1402312801338) (.cons (no_v1402312801506) (.cons (no_v1402312798050) (.cons (no_v1402312711226) (.cons (no_v1402312711394) (.cons (no_v1402312514618) (.cons (no_v1402312514786) (.cons (no_v1402312707938) (.cons (no_v1402312685410) (.cons (no_v1402312511330) (.cons (no_v1402312488802) (.cons (no_v1402312439650) (.cons (no_v1402332462138) (.cons (no_v1402332372026) (.cons (no_v1402333826874) (.cons (no_v1402333826010) (.cons (no_v1402330681146) (.cons (no_v1402330680282) (.cons (no_v1402407604026) (.cons (no_v1402407603162) (.cons (no_v1402407581498) (.cons (no_v1402407580634) (.cons (no_v1402407575002) (.cons (no_v1402407948090) (.cons (no_v1402407947226) (.cons (no_v1402407959610) (.cons (no_v1402407869498) (.cons (no_v1402409324346) (.cons (no_v1402409323482) .nil))))))))))))))))))))))))))))))))))))

theorem five691 : BadRow (bucket true 4 3 5 [0,1,2,1,0]) := by
  have h : bucket true 4 3 5 [0,1,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313576346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402313576346 : ¬ MinimalInterpreter v1402313576346 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 3) (.app (.var 0) (.var 0))) (.var 2) (by decide) (by decide)))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402313575402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))))))))
private theorem no_v1402313575402 : ¬ MinimalInterpreter v1402313575402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 3) (.var 0)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 2) (by decide) (by decide)))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402313491434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 3) (.var 0)))) (.var 0)))))))
private theorem no_v1402313491434 : ¬ MinimalInterpreter v1402313491434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 3) (.var 0)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 1) (.var 0)))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 1) (.var 0))) (.app (.var 3) (.var 0)) (.var 2) (by decide) (by decide))) (.var 0))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402312789914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402312789914 : ¬ MinimalInterpreter v1402312789914 :=
  chain_cut false 2 (by decide)

private def v1402312788970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 3) (.var 0)) (.var 0))))))))
private theorem no_v1402312788970 : ¬ MinimalInterpreter v1402312788970 :=
  chain_cut false 2 (by decide)

private def v1402312705002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 0))))) (.var 0))))))
private theorem no_v1402312705002 : ¬ MinimalInterpreter v1402312705002 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 1) (.var 0)))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 1) (.var 0))) (.app (.var 3) (.var 0)) (.var 2) (by decide) (by decide)))) (.var 0)) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402312508394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 0)))) (.var 0))))))
private theorem no_v1402312508394 : ¬ MinimalInterpreter v1402312508394 :=
  chain_cut false 2 (by decide)

private def v1402332106650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402332106650 : ¬ MinimalInterpreter v1402332106650 :=
  chain_cut false 2 (by decide)

private def v1402332105706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0)))))))))
private theorem no_v1402332105706 : ¬ MinimalInterpreter v1402332105706 :=
  chain_cut false 2 (by decide)

private def v1402332084122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402332084122 : ¬ MinimalInterpreter v1402332084122 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332083178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0))))))))
private theorem no_v1402332083178 : ¬ MinimalInterpreter v1402332083178 :=
  chain_cut false 2 (by decide)

private def v1402332077546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))))
private theorem no_v1402332077546 : ¬ MinimalInterpreter v1402332077546 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332365802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 0)))) (.var 0)))))))
private theorem no_v1402332365802 : ¬ MinimalInterpreter v1402332365802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 0)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 1) (.var 0))) (.app (.var 3) (.var 0)) (.var 2) (by decide) (by decide))) (.var 0)) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402329920490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))) (.var 0)))))
private theorem no_v1402329920490 : ¬ MinimalInterpreter v1402329920490 :=
  chain_cut false 2 (by decide)

private def v1402329914858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))) (.var 0)))))
private theorem no_v1402329914858 : ¬ MinimalInterpreter v1402329914858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402407863274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 0)))) (.var 0)))))))
private theorem no_v1402407863274 : ¬ MinimalInterpreter v1402407863274 :=
  w_cut false 0 (by decide)

theorem five692 : BadRow (bucket false 4 3 5 [0,1,3,0,0]) := by
  have h : bucket false 4 3 5 [0,1,3,0,0] = [v1402313576346,v1402313575402,v1402313491434,v1402312789914,v1402312788970,v1402312705002,v1402312508394,v1402332106650,v1402332105706,v1402332084122,v1402332083178,v1402332077546,v1402332365802,v1402329920490,v1402329914858,v1402407863274] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313576346) (.cons (no_v1402313575402) (.cons (no_v1402313491434) (.cons (no_v1402312789914) (.cons (no_v1402312788970) (.cons (no_v1402312705002) (.cons (no_v1402312508394) (.cons (no_v1402332106650) (.cons (no_v1402332105706) (.cons (no_v1402332084122) (.cons (no_v1402332083178) (.cons (no_v1402332077546) (.cons (no_v1402332365802) (.cons (no_v1402329920490) (.cons (no_v1402329914858) (.cons (no_v1402407863274) .nil))))))))))))))))

theorem five693 : BadRow (bucket true 4 3 5 [0,1,3,0,0]) := by
  have h : bucket true 4 3 5 [0,1,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313606766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402313606766 : ¬ MinimalInterpreter v1402313606766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1) (by decide) (by decide)))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313606574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v1402313606574 : ¬ MinimalInterpreter v1402313606574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1) (by decide) (by decide)))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313611374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))))))
private theorem no_v1402313611374 : ¬ MinimalInterpreter v1402313611374 :=
  chain_cut false 2 (by decide)

private def v1402313500782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 2)))))))))
private theorem no_v1402313500782 : ¬ MinimalInterpreter v1402313500782 :=
  chain_cut false 2 (by decide)

private def v1402312820334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402312820334 : ¬ MinimalInterpreter v1402312820334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312820142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1402312820142 : ¬ MinimalInterpreter v1402312820142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312824942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 2)))))))))
private theorem no_v1402312824942 : ¬ MinimalInterpreter v1402312824942 :=
  chain_cut false 2 (by decide)

private def v1402312714350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.app (.var 0) (.var 2))))))))
private theorem no_v1402312714350 : ¬ MinimalInterpreter v1402312714350 :=
  chain_cut false 2 (by decide)

private def v1402312517742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.var 2))))))))
private theorem no_v1402312517742 : ¬ MinimalInterpreter v1402312517742 :=
  chain_cut false 2 (by decide)

private def v1402312620654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312620654 : ¬ MinimalInterpreter v1402312620654 :=
  chain_cut false 2 (by decide)

private def v1402312620462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 2))))))
private theorem no_v1402312620462 : ¬ MinimalInterpreter v1402312620462 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312613550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))) (.var 2))))))
private theorem no_v1402312613550 : ¬ MinimalInterpreter v1402312613550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312466094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.var 2))))))
private theorem no_v1402312466094 : ¬ MinimalInterpreter v1402312466094 :=
  chain_cut false 2 (by decide)

private def v1402332485742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))))))
private theorem no_v1402332485742 : ¬ MinimalInterpreter v1402332485742 :=
  chain_cut false 2 (by decide)

private def v1402332375150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 2)))))))))
private theorem no_v1402332375150 : ¬ MinimalInterpreter v1402332375150 :=
  chain_cut false 2 (by decide)

private def v1402407983214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 2))))))))))
private theorem no_v1402407983214 : ¬ MinimalInterpreter v1402407983214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407872622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 2)))))))))
private theorem no_v1402407872622 : ¬ MinimalInterpreter v1402407872622 :=
  chain_cut false 5 (by decide)

theorem five694 : BadRow (bucket false 4 3 5 [0,2,0,0,2]) := by
  have h : bucket false 4 3 5 [0,2,0,0,2] = [v1402313606766,v1402313606574,v1402313611374,v1402313500782,v1402312820334,v1402312820142,v1402312824942,v1402312714350,v1402312517742,v1402312620654,v1402312620462,v1402312613550,v1402312466094,v1402332485742,v1402332375150,v1402407983214,v1402407872622] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313606766) (.cons (no_v1402313606574) (.cons (no_v1402313611374) (.cons (no_v1402313500782) (.cons (no_v1402312820334) (.cons (no_v1402312820142) (.cons (no_v1402312824942) (.cons (no_v1402312714350) (.cons (no_v1402312517742) (.cons (no_v1402312620654) (.cons (no_v1402312620462) (.cons (no_v1402312613550) (.cons (no_v1402312466094) (.cons (no_v1402332485742) (.cons (no_v1402332375150) (.cons (no_v1402407983214) (.cons (no_v1402407872622) .nil)))))))))))))))))

theorem five695 : BadRow (bucket true 4 3 5 [0,2,0,0,2]) := by
  have h : bucket true 4 3 5 [0,2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
