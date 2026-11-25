import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308672734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402308672734 : ¬ MinimalInterpreter v1402308672734 :=
  cost_cut false 2 (by decide)

private def v1402308669278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 3)))))))))
private theorem no_v1402308669278 : ¬ MinimalInterpreter v1402308669278 :=
  cost_cut false 2 (by decide)

private def v1402308719390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402308719390 : ¬ MinimalInterpreter v1402308719390 :=
  cost_cut false 2 (by decide)

private def v1402308705566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402308705566 : ¬ MinimalInterpreter v1402308705566 :=
  cost_cut false 2 (by decide)

private def v1402308358942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1402308358942 : ¬ MinimalInterpreter v1402308358942 :=
  cost_cut false 2 (by decide)

private def v1402308336862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 0) (.var 3))))))))
private theorem no_v1402308336862 : ¬ MinimalInterpreter v1402308336862 :=
  chain_cut false 2 (by decide)

private def v1402308345118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 3))))))))
private theorem no_v1402308345118 : ¬ MinimalInterpreter v1402308345118 :=
  cost_cut false 2 (by decide)

private def v1402308255006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1402308255006 : ¬ MinimalInterpreter v1402308255006 :=
  cost_cut false 2 (by decide)

private def v1402308249438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.var 3)))))))
private theorem no_v1402308249438 : ¬ MinimalInterpreter v1402308249438 :=
  chain_cut false 2 (by decide)

private def v1402314177758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402314177758 : ¬ MinimalInterpreter v1402314177758 :=
  cost_cut false 2 (by decide)

private def v1402314174302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3)))))))))
private theorem no_v1402314174302 : ¬ MinimalInterpreter v1402314174302 :=
  cost_cut false 2 (by decide)

private def v1402314411038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 3))))))))))
private theorem no_v1402314411038 : ¬ MinimalInterpreter v1402314411038 :=
  chain_cut false 2 (by decide)

private def v1402314355742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 3)))))))))
private theorem no_v1402314355742 : ¬ MinimalInterpreter v1402314355742 :=
  chain_cut false 2 (by decide)

private def v1402312969246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.lam (.var 3)))))))))
private theorem no_v1402312969246 : ¬ MinimalInterpreter v1402312969246 :=
  chain_cut false 2 (by decide)

private def v1402312880926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1402312880926 : ¬ MinimalInterpreter v1402312880926 :=
  chain_cut false 2 (by decide)

private def v1402312913950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.lam (.var 3))))))))
private theorem no_v1402312913950 : ¬ MinimalInterpreter v1402312913950 :=
  chain_cut false 2 (by decide)

private def v1402312553502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.lam (.var 3))))))))
private theorem no_v1402312553502 : ¬ MinimalInterpreter v1402312553502 :=
  chain_cut false 2 (by decide)

private def v1402312531230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1402312531230 : ¬ MinimalInterpreter v1402312531230 :=
  chain_cut false 2 (by decide)

private def v1402336431134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 3))))))))))
private theorem no_v1402336431134 : ¬ MinimalInterpreter v1402336431134 :=
  chain_cut false 8 (by decide)

private def v1402336375838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 3)))))))))
private theorem no_v1402336375838 : ¬ MinimalInterpreter v1402336375838 :=
  w_cut false 0 (by decide)

theorem four210 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,2,0,3]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,2,0,3] = [v1402308672734,v1402308669278,v1402308719390,v1402308705566,v1402308358942,v1402308336862,v1402308345118,v1402308255006,v1402308249438,v1402314177758,v1402314174302,v1402314411038,v1402314355742,v1402312969246,v1402312880926,v1402312913950,v1402312553502,v1402312531230,v1402336431134,v1402336375838] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308672734) (.cons (no_v1402308669278) (.cons (no_v1402308719390) (.cons (no_v1402308705566) (.cons (no_v1402308358942) (.cons (no_v1402308336862) (.cons (no_v1402308345118) (.cons (no_v1402308255006) (.cons (no_v1402308249438) (.cons (no_v1402314177758) (.cons (no_v1402314174302) (.cons (no_v1402314411038) (.cons (no_v1402314355742) (.cons (no_v1402312969246) (.cons (no_v1402312880926) (.cons (no_v1402312913950) (.cons (no_v1402312553502) (.cons (no_v1402312531230) (.cons (no_v1402336431134) (.cons (no_v1402336375838) .nil))))))))))))))))))))

private def v1402308718830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 2))))))))))
private theorem no_v1402308718830 : ¬ MinimalInterpreter v1402308718830 :=
  cost_cut false 2 (by decide)

private def v1402308705390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402308705390 : ¬ MinimalInterpreter v1402308705390 :=
  cost_cut false 2 (by decide)

private def v1402308358382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v1402308358382 : ¬ MinimalInterpreter v1402308358382 :=
  cost_cut false 2 (by decide)

private def v1402308333422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 1)))) (.var 2)))))))
private theorem no_v1402308333422 : ¬ MinimalInterpreter v1402308333422 :=
  cost_cut false 2 (by decide)

private def v1402308344942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 2)))))))
private theorem no_v1402308344942 : ¬ MinimalInterpreter v1402308344942 :=
  cost_cut false 2 (by decide)

private def v1402308254830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1402308254830 : ¬ MinimalInterpreter v1402308254830 :=
  cost_cut false 2 (by decide)

private def v1402314223854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2))))))))))
private theorem no_v1402314223854 : ¬ MinimalInterpreter v1402314223854 :=
  cost_cut false 2 (by decide)

private def v1402314408846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 2))))))))))
private theorem no_v1402314408846 : ¬ MinimalInterpreter v1402314408846 :=
  chain_cut false 2 (by decide)

private def v1402314411534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2))))))))))
private theorem no_v1402314411534 : ¬ MinimalInterpreter v1402314411534 :=
  chain_cut false 2 (by decide)

private def v1402314356238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2)))))))))
private theorem no_v1402314356238 : ¬ MinimalInterpreter v1402314356238 :=
  chain_cut false 2 (by decide)

private def v1402314355086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 2))))))))
private theorem no_v1402314355086 : ¬ MinimalInterpreter v1402314355086 :=
  chain_cut false 2 (by decide)

private def v1402312967054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.lam (.var 2)))))))))
private theorem no_v1402312967054 : ¬ MinimalInterpreter v1402312967054 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.lam (.var 2))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 2)))))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312969742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.lam (.var 2)))))))))
private theorem no_v1402312969742 : ¬ MinimalInterpreter v1402312969742 :=
  chain_cut false 2 (by decide)

private def v1402312858862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312858862 : ¬ MinimalInterpreter v1402312858862 :=
  chain_cut false 2 (by decide)

private def v1402312914446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.lam (.var 2))))))))
private theorem no_v1402312914446 : ¬ MinimalInterpreter v1402312914446 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.lam (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.lam (.lam (.var 2))))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312553998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.lam (.var 2))))))))
private theorem no_v1402312553998 : ¬ MinimalInterpreter v1402312553998 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.lam (.lam (.var 2))))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312913294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.lam (.var 2)))))))
private theorem no_v1402312913294 : ¬ MinimalInterpreter v1402312913294 :=
  chain_cut false 2 (by decide)

private def v1402312552846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.lam (.var 2)))))))
private theorem no_v1402312552846 : ¬ MinimalInterpreter v1402312552846 :=
  chain_cut false 2 (by decide)

private def v1402312531054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 1))) (.var 2))))))
private theorem no_v1402312531054 : ¬ MinimalInterpreter v1402312531054 :=
  chain_cut false 2 (by decide)

private def v1402312525678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 1)) (.var 2))))))
private theorem no_v1402312525678 : ¬ MinimalInterpreter v1402312525678 :=
  chain_cut false 2 (by decide)

private def v1402336431630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2))))))))))
private theorem no_v1402336431630 : ¬ MinimalInterpreter v1402336431630 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336376334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2)))))))))
private theorem no_v1402336376334 : ¬ MinimalInterpreter v1402336376334 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.lam (.var 2))))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336375182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 2))))))))
private theorem no_v1402336375182 : ¬ MinimalInterpreter v1402336375182 :=
  chain_cut false 7 (by decide)

theorem four211 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,2,1,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,2,1,2] = [v1402308718830,v1402308705390,v1402308358382,v1402308333422,v1402308344942,v1402308254830,v1402314223854,v1402314408846,v1402314411534,v1402314356238,v1402314355086,v1402312967054,v1402312969742,v1402312858862,v1402312914446,v1402312553998,v1402312913294,v1402312552846,v1402312531054,v1402312525678,v1402336431630,v1402336376334,v1402336375182] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308718830) (.cons (no_v1402308705390) (.cons (no_v1402308358382) (.cons (no_v1402308333422) (.cons (no_v1402308344942) (.cons (no_v1402308254830) (.cons (no_v1402314223854) (.cons (no_v1402314408846) (.cons (no_v1402314411534) (.cons (no_v1402314356238) (.cons (no_v1402314355086) (.cons (no_v1402312967054) (.cons (no_v1402312969742) (.cons (no_v1402312858862) (.cons (no_v1402312914446) (.cons (no_v1402312553998) (.cons (no_v1402312913294) (.cons (no_v1402312552846) (.cons (no_v1402312531054) (.cons (no_v1402312525678) (.cons (no_v1402336431630) (.cons (no_v1402336376334) (.cons (no_v1402336375182) .nil)))))))))))))))))))))))

private def v1402308718838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))))))
private theorem no_v1402308718838 : ¬ MinimalInterpreter v1402308718838 :=
  cost_cut false 2 (by decide)

private def v1402308719558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402308719558 : ¬ MinimalInterpreter v1402308719558 :=
  cost_cut false 2 (by decide)

private def v1402308705734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402308705734 : ¬ MinimalInterpreter v1402308705734 :=
  cost_cut false 2 (by decide)

private def v1402308358390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v1402308358390 : ¬ MinimalInterpreter v1402308358390 :=
  cost_cut false 2 (by decide)

private def v1402308359110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1402308359110 : ¬ MinimalInterpreter v1402308359110 :=
  cost_cut false 2 (by decide)

private def v1402308345286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.lam (.var 1))))))))
private theorem no_v1402308345286 : ¬ MinimalInterpreter v1402308345286 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))

private def v1402308255174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1402308255174 : ¬ MinimalInterpreter v1402308255174 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402314223862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))))))
private theorem no_v1402314223862 : ¬ MinimalInterpreter v1402314223862 :=
  cost_cut false 2 (by decide)

private def v1402314355142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1))))))))
private theorem no_v1402314355142 : ¬ MinimalInterpreter v1402314355142 :=
  chain_cut false 2 (by decide)

private def v1402314354806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 1)))))))
private theorem no_v1402314354806 : ¬ MinimalInterpreter v1402314354806 :=
  chain_cut false 2 (by decide)

private def v1402312881094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1402312881094 : ¬ MinimalInterpreter v1402312881094 :=
  chain_cut false 2 (by decide)

private def v1402312858870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312858870 : ¬ MinimalInterpreter v1402312858870 :=
  chain_cut false 2 (by decide)

private def v1402312913350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.lam (.var 1)))))))
private theorem no_v1402312913350 : ¬ MinimalInterpreter v1402312913350 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 2)))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312552902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.lam (.var 1)))))))
private theorem no_v1402312552902 : ¬ MinimalInterpreter v1402312552902 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312531398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1402312531398 : ¬ MinimalInterpreter v1402312531398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312913014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 2))))) (.var 1))))))
private theorem no_v1402312913014 : ¬ MinimalInterpreter v1402312913014 :=
  chain_cut false 2 (by decide)

private def v1402312552566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 2)))) (.var 1))))))
private theorem no_v1402312552566 : ¬ MinimalInterpreter v1402312552566 :=
  chain_cut false 2 (by decide)

private def v1402312525686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 2)) (.var 1))))))
private theorem no_v1402312525686 : ¬ MinimalInterpreter v1402312525686 :=
  chain_cut false 2 (by decide)

private def v1402336375238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1))))))))
private theorem no_v1402336375238 : ¬ MinimalInterpreter v1402336375238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336374902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 1)))))))
private theorem no_v1402336374902 : ¬ MinimalInterpreter v1402336374902 :=
  chain_cut false 7 (by decide)

theorem four212 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,2,2,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,2,2,1] = [v1402308718838,v1402308719558,v1402308705734,v1402308358390,v1402308359110,v1402308345286,v1402308255174,v1402314223862,v1402314355142,v1402314354806,v1402312881094,v1402312858870,v1402312913350,v1402312552902,v1402312531398,v1402312913014,v1402312552566,v1402312525686,v1402336375238,v1402336374902] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308718838) (.cons (no_v1402308719558) (.cons (no_v1402308705734) (.cons (no_v1402308358390) (.cons (no_v1402308359110) (.cons (no_v1402308345286) (.cons (no_v1402308255174) (.cons (no_v1402314223862) (.cons (no_v1402314355142) (.cons (no_v1402314354806) (.cons (no_v1402312881094) (.cons (no_v1402312858870) (.cons (no_v1402312913350) (.cons (no_v1402312552902) (.cons (no_v1402312531398) (.cons (no_v1402312913014) (.cons (no_v1402312552566) (.cons (no_v1402312525686) (.cons (no_v1402336375238) (.cons (no_v1402336374902) .nil))))))))))))))))))))

private def v1402308672762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402308672762 : ¬ MinimalInterpreter v1402308672762 :=
  cost_cut false 2 (by decide)

private def v1402308669306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))))
private theorem no_v1402308669306 : ¬ MinimalInterpreter v1402308669306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (so_dead (by decide) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402308705402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402308705402 : ¬ MinimalInterpreter v1402308705402 :=
  cost_cut false 2 (by decide)

private def v1402308336890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 3) (.var 0))))))))
private theorem no_v1402308336890 : ¬ MinimalInterpreter v1402308336890 :=
  chain_cut false 2 (by decide)

private def v1402308333434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 3)))) (.var 0)))))))
private theorem no_v1402308333434 : ¬ MinimalInterpreter v1402308333434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 3)))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.app (.var 2) (.var 3)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.app (.var 1) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308344954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1402308344954 : ¬ MinimalInterpreter v1402308344954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 1)))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.app (.var 0) (so_dead (by decide) (.var 1))) (by decide) (by decide))))))

private def v1402308254842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1402308254842 : ¬ MinimalInterpreter v1402308254842 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 3))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308249466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.var 0)))))))
private theorem no_v1402308249466 : ¬ MinimalInterpreter v1402308249466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 3)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 3)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402314177786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402314177786 : ¬ MinimalInterpreter v1402314177786 :=
  cost_cut false 2 (by decide)

private def v1402314174330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))))
private theorem no_v1402314174330 : ¬ MinimalInterpreter v1402314174330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (.app (.var 1) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402314354810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1402314354810 : ¬ MinimalInterpreter v1402314354810 :=
  chain_cut false 2 (by decide)

private def v1402312913018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 3))))) (.var 0))))))
private theorem no_v1402312913018 : ¬ MinimalInterpreter v1402312913018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 3))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 3))))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 2)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3))))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312552570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 3)))) (.var 0))))))
private theorem no_v1402312552570 : ¬ MinimalInterpreter v1402312552570 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 3)))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312531066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 3))) (.var 0))))))
private theorem no_v1402312531066 : ¬ MinimalInterpreter v1402312531066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 3))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402336374906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1402336374906 : ¬ MinimalInterpreter v1402336374906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.lam (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four213 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,2,3,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,2,3,0] = [v1402308672762,v1402308669306,v1402308705402,v1402308336890,v1402308333434,v1402308344954,v1402308254842,v1402308249466,v1402314177786,v1402314174330,v1402314354810,v1402312913018,v1402312552570,v1402312531066,v1402336374906] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308672762) (.cons (no_v1402308669306) (.cons (no_v1402308705402) (.cons (no_v1402308336890) (.cons (no_v1402308333434) (.cons (no_v1402308344954) (.cons (no_v1402308254842) (.cons (no_v1402308249466) (.cons (no_v1402314177786) (.cons (no_v1402314174330) (.cons (no_v1402314354810) (.cons (no_v1402312913018) (.cons (no_v1402312552570) (.cons (no_v1402312531066) (.cons (no_v1402336374906) .nil)))))))))))))))

private def v1402308673134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402308673134 : ¬ MinimalInterpreter v1402308673134 :=
  cost_cut false 2 (by decide)

private def v1402308669358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 0)) (.var 2)))))))))
private theorem no_v1402308669358 : ¬ MinimalInterpreter v1402308669358 :=
  cost_cut false 2 (by decide)

private def v1402308721038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402308721038 : ¬ MinimalInterpreter v1402308721038 :=
  chain_cut false 2 (by decide)

private def v1402308705934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402308705934 : ¬ MinimalInterpreter v1402308705934 :=
  chain_cut false 2 (by decide)

private def v1402308360590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402308360590 : ¬ MinimalInterpreter v1402308360590 :=
  chain_cut false 2 (by decide)

private def v1402308337262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 2))))))))
private theorem no_v1402308337262 : ¬ MinimalInterpreter v1402308337262 :=
  cost_cut false 2 (by decide)

private def v1402308345486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.lam (.var 2))))))))
private theorem no_v1402308345486 : ¬ MinimalInterpreter v1402308345486 :=
  chain_cut false 2 (by decide)

private def v1402308255374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402308255374 : ¬ MinimalInterpreter v1402308255374 :=
  chain_cut false 2 (by decide)

private def v1402308249518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 2)))))))
private theorem no_v1402308249518 : ¬ MinimalInterpreter v1402308249518 :=
  cost_cut false 2 (by decide)

private def v1402314178158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402314178158 : ¬ MinimalInterpreter v1402314178158 :=
  cost_cut false 2 (by decide)

private def v1402314174382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2)))))))))
private theorem no_v1402314174382 : ¬ MinimalInterpreter v1402314174382 :=
  cost_cut false 2 (by decide)

private def v1402312882574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1402312882574 : ¬ MinimalInterpreter v1402312882574 :=
  chain_cut false 2 (by decide)

private def v1402312859246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312859246 : ¬ MinimalInterpreter v1402312859246 :=
  chain_cut false 2 (by decide)

private def v1402312531598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1402312531598 : ¬ MinimalInterpreter v1402312531598 :=
  chain_cut false 2 (by decide)

private def v1402312525742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 0)) (.var 2))))))
private theorem no_v1402312525742 : ¬ MinimalInterpreter v1402312525742 :=
  chain_cut false 2 (by decide)

private def v1402336246158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402336246158 : ¬ MinimalInterpreter v1402336246158 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336231054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402336231054 : ¬ MinimalInterpreter v1402336231054 :=
  chain_cut false 5 (by decide)

theorem four214 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,3,0,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,3,0,2] = [v1402308673134,v1402308669358,v1402308721038,v1402308705934,v1402308360590,v1402308337262,v1402308345486,v1402308255374,v1402308249518,v1402314178158,v1402314174382,v1402312882574,v1402312859246,v1402312531598,v1402312525742,v1402336246158,v1402336231054] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308673134) (.cons (no_v1402308669358) (.cons (no_v1402308721038) (.cons (no_v1402308705934) (.cons (no_v1402308360590) (.cons (no_v1402308337262) (.cons (no_v1402308345486) (.cons (no_v1402308255374) (.cons (no_v1402308249518) (.cons (no_v1402314178158) (.cons (no_v1402314174382) (.cons (no_v1402312882574) (.cons (no_v1402312859246) (.cons (no_v1402312531598) (.cons (no_v1402312525742) (.cons (no_v1402336246158) (.cons (no_v1402336231054) .nil)))))))))))))))))

private def v1402308673142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402308673142 : ¬ MinimalInterpreter v1402308673142 :=
  cost_cut false 2 (by decide)

private def v1402308669366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 1)) (.var 1)))))))))
private theorem no_v1402308669366 : ¬ MinimalInterpreter v1402308669366 :=
  cost_cut false 2 (by decide)

private def v1402308720758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.lam (.app (.var 1) (.var 1))))))))))
private theorem no_v1402308720758 : ¬ MinimalInterpreter v1402308720758 :=
  chain_cut false 2 (by decide)

private def v1402308721094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402308721094 : ¬ MinimalInterpreter v1402308721094 :=
  chain_cut false 2 (by decide)

private def v1402308705990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402308705990 : ¬ MinimalInterpreter v1402308705990 :=
  chain_cut false 2 (by decide)

private def v1402308705846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402308705846 : ¬ MinimalInterpreter v1402308705846 :=
  chain_cut false 2 (by decide)

private def v1402308360310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.lam (.app (.var 1) (.var 1)))))))))
private theorem no_v1402308360310 : ¬ MinimalInterpreter v1402308360310 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.lam (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.app (.app (.var 1) (.var 3)) (so_dead (by decide) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308360646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402308360646 : ¬ MinimalInterpreter v1402308360646 :=
  chain_cut false 2 (by decide)

private def v1402308345542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.lam (.var 1))))))))
private theorem no_v1402308345542 : ¬ MinimalInterpreter v1402308345542 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 2) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 3) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308255430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402308255430 : ¬ MinimalInterpreter v1402308255430 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 2)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308333494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 1)))) (.var 1)))))))
private theorem no_v1402308333494 : ¬ MinimalInterpreter v1402308333494 :=
  cost_cut false 2 (by decide)

private def v1402308345398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v1402308345398 : ¬ MinimalInterpreter v1402308345398 :=
  chain_cut false 2 (by decide)

private def v1402308255286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402308255286 : ¬ MinimalInterpreter v1402308255286 :=
  chain_cut false 2 (by decide)

private def v1402312882294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.lam (.app (.var 1) (.var 1))))))))
private theorem no_v1402312882294 : ¬ MinimalInterpreter v1402312882294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.lam (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (so_dead (by decide) (.app (.var 1) (.var 1)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312882630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1402312882630 : ¬ MinimalInterpreter v1402312882630 :=
  chain_cut false 2 (by decide)

private def v1402312867526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 1)))) (.lam (.var 1)))))))
private theorem no_v1402312867526 : ¬ MinimalInterpreter v1402312867526 :=
  chain_cut false 2 (by decide)

private def v1402312531654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1402312531654 : ¬ MinimalInterpreter v1402312531654 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 1)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312531510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 1))) (.var 1))))))
private theorem no_v1402312531510 : ¬ MinimalInterpreter v1402312531510 :=
  chain_cut false 2 (by decide)

private def v1402336246214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402336246214 : ¬ MinimalInterpreter v1402336246214 :=
  chain_cut false 10 (by decide)

private def v1402336231110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402336231110 : ¬ MinimalInterpreter v1402336231110 :=
  w_cut false 0 (by decide)

private def v1402336230966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402336230966 : ¬ MinimalInterpreter v1402336230966 :=
  chain_cut false 5 (by decide)

theorem four215 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,3,1,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,3,1,1] = [v1402308673142,v1402308669366,v1402308720758,v1402308721094,v1402308705990,v1402308705846,v1402308360310,v1402308360646,v1402308345542,v1402308255430,v1402308333494,v1402308345398,v1402308255286,v1402312882294,v1402312882630,v1402312867526,v1402312531654,v1402312531510,v1402336246214,v1402336231110,v1402336230966] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308673142) (.cons (no_v1402308669366) (.cons (no_v1402308720758) (.cons (no_v1402308721094) (.cons (no_v1402308705990) (.cons (no_v1402308705846) (.cons (no_v1402308360310) (.cons (no_v1402308360646) (.cons (no_v1402308345542) (.cons (no_v1402308255430) (.cons (no_v1402308333494) (.cons (no_v1402308345398) (.cons (no_v1402308255286) (.cons (no_v1402312882294) (.cons (no_v1402312882630) (.cons (no_v1402312867526) (.cons (no_v1402312531654) (.cons (no_v1402312531510) (.cons (no_v1402336246214) (.cons (no_v1402336231110) (.cons (no_v1402336230966) .nil)))))))))))))))))))))

private def v1402308673146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402308673146 : ¬ MinimalInterpreter v1402308673146 :=
  cost_cut false 2 (by decide)

private def v1402308669370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))))
private theorem no_v1402308669370 : ¬ MinimalInterpreter v1402308669370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))) (so_dead (by decide) (.app (.var 1) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402308705850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402308705850 : ¬ MinimalInterpreter v1402308705850 :=
  chain_cut false 2 (by decide)

private def v1402308337274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 2) (.var 0))))))))
private theorem no_v1402308337274 : ¬ MinimalInterpreter v1402308337274 :=
  cost_cut false 2 (by decide)

private def v1402308333498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 2)))) (.var 0)))))))
private theorem no_v1402308333498 : ¬ MinimalInterpreter v1402308333498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.app (.var 3) (.var 2)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308345402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v1402308345402 : ¬ MinimalInterpreter v1402308345402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.lam (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 2) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 3) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308255290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402308255290 : ¬ MinimalInterpreter v1402308255290 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 0) (.var 2)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308249530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 2)) (.var 0)))))))
private theorem no_v1402308249530 : ¬ MinimalInterpreter v1402308249530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 2)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402314178170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402314178170 : ¬ MinimalInterpreter v1402314178170 :=
  cost_cut false 2 (by decide)

private def v1402314174394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))))
private theorem no_v1402314174394 : ¬ MinimalInterpreter v1402314174394 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))) (.app (.var 1) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide))))))

private def v1402312859258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312859258 : ¬ MinimalInterpreter v1402312859258 :=
  chain_cut false 2 (by decide)

private def v1402312867386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.lam (.var 2))))) (.var 0))))))
private theorem no_v1402312867386 : ¬ MinimalInterpreter v1402312867386 :=
  chain_cut false 2 (by decide)

private def v1402312531514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 2))) (.var 0))))))
private theorem no_v1402312531514 : ¬ MinimalInterpreter v1402312531514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312525754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 2)) (.var 0))))))
private theorem no_v1402312525754 : ¬ MinimalInterpreter v1402312525754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 2)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402336230970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402336230970 : ¬ MinimalInterpreter v1402336230970 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.var 2) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

theorem four216 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,3,2,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [1,3,2,0] = [v1402308673146,v1402308669370,v1402308705850,v1402308337274,v1402308333498,v1402308345402,v1402308255290,v1402308249530,v1402314178170,v1402314174394,v1402312859258,v1402312867386,v1402312531514,v1402312525754,v1402336230970] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308673146) (.cons (no_v1402308669370) (.cons (no_v1402308705850) (.cons (no_v1402308337274) (.cons (no_v1402308333498) (.cons (no_v1402308345402) (.cons (no_v1402308255290) (.cons (no_v1402308249530) (.cons (no_v1402314178170) (.cons (no_v1402314174394) (.cons (no_v1402312859258) (.cons (no_v1402312867386) (.cons (no_v1402312531514) (.cons (no_v1402312525754) (.cons (no_v1402336230970) .nil)))))))))))))))

end Blc.SelfintSingleObject.Rows40
