import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1382308499054 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1382308499054 : ¬ MinimalInterpreter v1382308499054 :=
  cost_cut false 2 (by decide)

private def v1382308498350 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1382308498350 : ¬ MinimalInterpreter v1382308498350 :=
  cost_cut false 2 (by decide)

private def v1382308476526 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1382308476526 : ¬ MinimalInterpreter v1382308476526 :=
  cost_cut false 2 (by decide)

private def v1382308475822 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1382308475822 : ¬ MinimalInterpreter v1382308475822 :=
  cost_cut false 2 (by decide)

private def v1382308470190 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1382308470190 : ¬ MinimalInterpreter v1382308470190 :=
  cost_cut false 2 (by decide)

private def v1382308843118 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1382308843118 : ¬ MinimalInterpreter v1382308843118 :=
  cost_cut false 2 (by decide)

private def v1382308842414 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1382308842414 : ¬ MinimalInterpreter v1382308842414 :=
  cost_cut false 2 (by decide)

private def v1382308759150 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v1382308759150 : ¬ MinimalInterpreter v1382308759150 :=
  chain_cut false 2 (by decide)

private def v1382308737454 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v1382308737454 : ¬ MinimalInterpreter v1382308737454 :=
  chain_cut false 2 (by decide)

theorem four616 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,1,0,2]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,1,0,2] = [v1382308499054,v1382308498350,v1382308476526,v1382308475822,v1382308470190,v1382308843118,v1382308842414,v1382308759150,v1382308737454] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308499054) (.cons (no_v1382308498350) (.cons (no_v1382308476526) (.cons (no_v1382308475822) (.cons (no_v1382308470190) (.cons (no_v1382308843118) (.cons (no_v1382308842414) (.cons (no_v1382308759150) (.cons (no_v1382308737454) .nil)))))))))

theorem four617 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,1,1,1]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1382308499066 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1382308499066 : ¬ MinimalInterpreter v1382308499066 :=
  cost_cut false 2 (by decide)

private def v1382308498362 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1382308498362 : ¬ MinimalInterpreter v1382308498362 :=
  cost_cut false 2 (by decide)

private def v1382308476538 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1382308476538 : ¬ MinimalInterpreter v1382308476538 :=
  cost_cut false 2 (by decide)

private def v1382308475834 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1382308475834 : ¬ MinimalInterpreter v1382308475834 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382308470202 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1382308470202 : ¬ MinimalInterpreter v1382308470202 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382308843130 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1382308843130 : ¬ MinimalInterpreter v1382308843130 :=
  cost_cut false 2 (by decide)

private def v1382308842426 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1382308842426 : ¬ MinimalInterpreter v1382308842426 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1382308759162 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v1382308759162 : ¬ MinimalInterpreter v1382308759162 :=
  chain_cut false 2 (by decide)

private def v1382308737466 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v1382308737466 : ¬ MinimalInterpreter v1382308737466 :=
  chain_cut false 2 (by decide)

theorem four618 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,1,2,0]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,1,2,0] = [v1382308499066,v1382308498362,v1382308476538,v1382308475834,v1382308470202,v1382308843130,v1382308842426,v1382308759162,v1382308737466] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308499066) (.cons (no_v1382308498362) (.cons (no_v1382308476538) (.cons (no_v1382308475834) (.cons (no_v1382308470202) (.cons (no_v1382308843130) (.cons (no_v1382308842426) (.cons (no_v1382308759162) (.cons (no_v1382308737466) .nil)))))))))

private def v1382308499254 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1382308499254 : ¬ MinimalInterpreter v1382308499254 :=
  cost_cut false 2 (by decide)

private def v1382308498390 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1382308498390 : ¬ MinimalInterpreter v1382308498390 :=
  cost_cut false 2 (by decide)

private def v1382308476726 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1382308476726 : ¬ MinimalInterpreter v1382308476726 :=
  cost_cut false 2 (by decide)

private def v1382308475862 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1382308475862 : ¬ MinimalInterpreter v1382308475862 :=
  cost_cut false 2 (by decide)

private def v1382308470230 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1382308470230 : ¬ MinimalInterpreter v1382308470230 :=
  cost_cut false 2 (by decide)

private def v1382308843318 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1382308843318 : ¬ MinimalInterpreter v1382308843318 :=
  cost_cut false 2 (by decide)

private def v1382308842454 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1382308842454 : ¬ MinimalInterpreter v1382308842454 :=
  cost_cut false 2 (by decide)

private def v1382308854982 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1382308854982 : ¬ MinimalInterpreter v1382308854982 :=
  chain_cut false 2 (by decide)

private def v1382308851526 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1382308851526 : ¬ MinimalInterpreter v1382308851526 :=
  chain_cut false 2 (by decide)

private def v1382308764870 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1382308764870 : ¬ MinimalInterpreter v1382308764870 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308761414 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1382308761414 : ¬ MinimalInterpreter v1382308761414 :=
  chain_cut false 2 (by decide)

private def v1382308738886 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1382308738886 : ¬ MinimalInterpreter v1382308738886 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four619 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,2,0,1]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,2,0,1] = [v1382308499254,v1382308498390,v1382308476726,v1382308475862,v1382308470230,v1382308843318,v1382308842454,v1382308854982,v1382308851526,v1382308764870,v1382308761414,v1382308738886] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308499254) (.cons (no_v1382308498390) (.cons (no_v1382308476726) (.cons (no_v1382308475862) (.cons (no_v1382308470230) (.cons (no_v1382308843318) (.cons (no_v1382308842454) (.cons (no_v1382308854982) (.cons (no_v1382308851526) (.cons (no_v1382308764870) (.cons (no_v1382308761414) (.cons (no_v1382308738886) .nil))))))))))))

private def v1382308499258 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1382308499258 : ¬ MinimalInterpreter v1382308499258 :=
  cost_cut false 2 (by decide)

private def v1382308498394 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1382308498394 : ¬ MinimalInterpreter v1382308498394 :=
  cost_cut false 2 (by decide)

private def v1382308476730 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1382308476730 : ¬ MinimalInterpreter v1382308476730 :=
  cost_cut false 2 (by decide)

private def v1382308475866 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1382308475866 : ¬ MinimalInterpreter v1382308475866 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382308470234 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1382308470234 : ¬ MinimalInterpreter v1382308470234 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382308843322 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1382308843322 : ¬ MinimalInterpreter v1382308843322 :=
  cost_cut false 2 (by decide)

private def v1382308842458 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1382308842458 : ¬ MinimalInterpreter v1382308842458 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1382308851482 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1382308851482 : ¬ MinimalInterpreter v1382308851482 :=
  chain_cut false 2 (by decide)

private def v1382308761370 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1382308761370 : ¬ MinimalInterpreter v1382308761370 :=
  chain_cut false 2 (by decide)

private def v1382308738842 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1382308738842 : ¬ MinimalInterpreter v1382308738842 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four620 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,2,1,0]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,2,1,0] = [v1382308499258,v1382308498394,v1382308476730,v1382308475866,v1382308470234,v1382308843322,v1382308842458,v1382308851482,v1382308761370,v1382308738842] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308499258) (.cons (no_v1382308498394) (.cons (no_v1382308476730) (.cons (no_v1382308475866) (.cons (no_v1382308470234) (.cons (no_v1382308843322) (.cons (no_v1382308842458) (.cons (no_v1382308851482) (.cons (no_v1382308761370) (.cons (no_v1382308738842) .nil))))))))))

private def v1382308499354 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0)))))))))
private theorem no_v1382308499354 : ¬ MinimalInterpreter v1382308499354 :=
  chain_cut false 2 (by decide)

private def v1382308498410 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0))))))))
private theorem no_v1382308498410 : ¬ MinimalInterpreter v1382308498410 :=
  chain_cut false 2 (by decide)

private def v1382308476826 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))
private theorem no_v1382308476826 : ¬ MinimalInterpreter v1382308476826 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1382308475882 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0)))))))
private theorem no_v1382308475882 : ¬ MinimalInterpreter v1382308475882 :=
  chain_cut false 2 (by decide)

private def v1382308470250 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))
private theorem no_v1382308470250 : ¬ MinimalInterpreter v1382308470250 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1382308759450 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))
private theorem no_v1382308759450 : ¬ MinimalInterpreter v1382308759450 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1382308737514 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0))))))
private theorem no_v1382308737514 : ¬ MinimalInterpreter v1382308737514 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

theorem four621 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,3,0,0]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,3,0,0] = [v1382308499354,v1382308498410,v1382308476826,v1382308475882,v1382308470250,v1382308759450,v1382308737514] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308499354) (.cons (no_v1382308498410) (.cons (no_v1382308476826) (.cons (no_v1382308475882) (.cons (no_v1382308470250) (.cons (no_v1382308759450) (.cons (no_v1382308737514) .nil)))))))

private def v1382308878734 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1382308878734 : ¬ MinimalInterpreter v1382308878734 :=
  chain_cut false 2 (by decide)

private def v1382308877966 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1382308877966 : ¬ MinimalInterpreter v1382308877966 :=
  chain_cut false 2 (by decide)

private def v1382308768142 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1382308768142 : ¬ MinimalInterpreter v1382308768142 :=
  chain_cut false 2 (by decide)

private def v1382308767374 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1382308767374 : ¬ MinimalInterpreter v1382308767374 :=
  chain_cut false 2 (by decide)

private def v1382308739726 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1382308739726 : ¬ MinimalInterpreter v1382308739726 :=
  chain_cut false 2 (by decide)

theorem four622 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [2,0,0,2]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [2,0,0,2] = [v1382308878734,v1382308877966,v1382308768142,v1382308767374,v1382308739726] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308878734) (.cons (no_v1382308877966) (.cons (no_v1382308768142) (.cons (no_v1382308767374) (.cons (no_v1382308739726) .nil)))))

end Blc.SelfintSingleObject.Rows40
