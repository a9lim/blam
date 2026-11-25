import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402312629878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v1402312629878 : ¬ MinimalInterpreter v1402312629878 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312628150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v1402312628150 : ¬ MinimalInterpreter v1402312628150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312470134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v1402312470134 : ¬ MinimalInterpreter v1402312470134 :=
  chain_cut false 2 (by decide)

private def v1402312468406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v1402312468406 : ¬ MinimalInterpreter v1402312468406 :=
  chain_cut false 2 (by decide)

private def v1402312428470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v1402312428470 : ¬ MinimalInterpreter v1402312428470 :=
  chain_cut false 2 (by decide)

private def v1402329917366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 1)))))
private theorem no_v1402329917366 : ¬ MinimalInterpreter v1402329917366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1402329914294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))) (.var 1)))))
private theorem no_v1402329914294 : ¬ MinimalInterpreter v1402329914294 :=
  chain_cut false 2 (by decide)

private def v1402407591542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402407591542 : ¬ MinimalInterpreter v1402407591542 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402407589814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))))
private theorem no_v1402407589814 : ¬ MinimalInterpreter v1402407589814 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402407579254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402407579254 : ¬ MinimalInterpreter v1402407579254 :=
  chain_cut false 4 (by decide)

private def v1402407577526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))))
private theorem no_v1402407577526 : ¬ MinimalInterpreter v1402407577526 :=
  chain_cut false 4 (by decide)

private def v1402407574454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))))
private theorem no_v1402407574454 : ¬ MinimalInterpreter v1402407574454 :=
  chain_cut false 4 (by decide)

theorem five664 : BadRow (bucket false 4 3 5 [0,0,2,1,1]) := by
  have h : bucket false 4 3 5 [0,0,2,1,1] = [v1402312629878,v1402312628150,v1402312470134,v1402312468406,v1402312428470,v1402329917366,v1402329914294,v1402407591542,v1402407589814,v1402407579254,v1402407577526,v1402407574454] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402312629878) (.cons (no_v1402312628150) (.cons (no_v1402312470134) (.cons (no_v1402312468406) (.cons (no_v1402312428470) (.cons (no_v1402329917366) (.cons (no_v1402329914294) (.cons (no_v1402407591542) (.cons (no_v1402407589814) (.cons (no_v1402407579254) (.cons (no_v1402407577526) (.cons (no_v1402407574454) .nil))))))))))))

theorem five665 : BadRow (bucket true 4 3 5 [0,0,2,1,1]) := by
  have h : bucket true 4 3 5 [0,0,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313537658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))))))))
private theorem no_v1402313537658 : ¬ MinimalInterpreter v1402313537658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0)))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313488506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 0)))))))))
private theorem no_v1402313488506 : ¬ MinimalInterpreter v1402313488506 :=
  chain_cut false 2 (by decide)

private def v1402312751226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.app (.var 2) (.var 0)))))))))
private theorem no_v1402312751226 : ¬ MinimalInterpreter v1402312751226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide)))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312702074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.app (.var 2) (.var 0))))))))
private theorem no_v1402312702074 : ¬ MinimalInterpreter v1402312702074 :=
  chain_cut false 2 (by decide)

private def v1402312505466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.app (.var 2) (.var 0))))))))
private theorem no_v1402312505466 : ¬ MinimalInterpreter v1402312505466 :=
  chain_cut false 2 (by decide)

private def v1402312617594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312617594 : ¬ MinimalInterpreter v1402312617594 :=
  chain_cut false 2 (by decide)

private def v1402312465338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 2)) (.var 0))))))
private theorem no_v1402312465338 : ¬ MinimalInterpreter v1402312465338 :=
  chain_cut false 2 (by decide)

private def v1402332412026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))))))))
private theorem no_v1402332412026 : ¬ MinimalInterpreter v1402332412026 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0)))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide)))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332362874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 0)))))))))
private theorem no_v1402332362874 : ¬ MinimalInterpreter v1402332362874 :=
  chain_cut false 2 (by decide)

private def v1402407909498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))))))))
private theorem no_v1402407909498 : ¬ MinimalInterpreter v1402407909498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide)))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407860346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 0)))))))))
private theorem no_v1402407860346 : ¬ MinimalInterpreter v1402407860346 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five666 : BadRow (bucket false 4 3 5 [0,0,2,2,0]) := by
  have h : bucket false 4 3 5 [0,0,2,2,0] = [v1402313537658,v1402313488506,v1402312751226,v1402312702074,v1402312505466,v1402312617594,v1402312465338,v1402332412026,v1402332362874,v1402407909498,v1402407860346] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313537658) (.cons (no_v1402313488506) (.cons (no_v1402312751226) (.cons (no_v1402312702074) (.cons (no_v1402312505466) (.cons (no_v1402312617594) (.cons (no_v1402312465338) (.cons (no_v1402332412026) (.cons (no_v1402332362874) (.cons (no_v1402407909498) (.cons (no_v1402407860346) .nil)))))))))))

theorem five667 : BadRow (bucket true 4 3 5 [0,0,2,2,0]) := by
  have h : bucket true 4 3 5 [0,0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313476054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 3) (.var 0)))) (.var 1)))))))
private theorem no_v1402313476054 : ¬ MinimalInterpreter v1402313476054 :=
  chain_cut false 2 (by decide)

private def v1402312617782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312617782 : ¬ MinimalInterpreter v1402312617782 :=
  chain_cut false 2 (by decide)

private def v1402312615894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 0))))) (.var 1))))))
private theorem no_v1402312615894 : ¬ MinimalInterpreter v1402312615894 :=
  chain_cut false 2 (by decide)

private def v1402312612822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))) (.var 1))))))
private theorem no_v1402312612822 : ¬ MinimalInterpreter v1402312612822 :=
  chain_cut false 2 (by decide)

private def v1402312689622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 0))))) (.var 1))))))
private theorem no_v1402312689622 : ¬ MinimalInterpreter v1402312689622 :=
  chain_cut false 2 (by decide)

private def v1402312493014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 0)))) (.var 1))))))
private theorem no_v1402312493014 : ¬ MinimalInterpreter v1402312493014 :=
  chain_cut false 2 (by decide)

private def v1402312465366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 0)) (.var 1))))))
private theorem no_v1402312465366 : ¬ MinimalInterpreter v1402312465366 :=
  chain_cut false 2 (by decide)

private def v1402332094262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402332094262 : ¬ MinimalInterpreter v1402332094262 :=
  chain_cut false 2 (by decide)

private def v1402332092374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1402332092374 : ¬ MinimalInterpreter v1402332092374 :=
  chain_cut false 2 (by decide)

private def v1402332081974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402332081974 : ¬ MinimalInterpreter v1402332081974 :=
  chain_cut false 2 (by decide)

private def v1402332080086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1))))))))
private theorem no_v1402332080086 : ¬ MinimalInterpreter v1402332080086 :=
  chain_cut false 2 (by decide)

private def v1402332077014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1))))))))
private theorem no_v1402332077014 : ¬ MinimalInterpreter v1402332077014 :=
  chain_cut false 2 (by decide)

private def v1402332389174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402332389174 : ¬ MinimalInterpreter v1402332389174 :=
  chain_cut false 2 (by decide)

private def v1402332387286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1402332387286 : ¬ MinimalInterpreter v1402332387286 :=
  chain_cut false 2 (by decide)

private def v1402332350422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 0)))) (.var 1)))))))
private theorem no_v1402332350422 : ¬ MinimalInterpreter v1402332350422 :=
  chain_cut false 2 (by decide)

private def v1402333568822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402333568822 : ¬ MinimalInterpreter v1402333568822 :=
  chain_cut false 2 (by decide)

private def v1402333566934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1402333566934 : ¬ MinimalInterpreter v1402333566934 :=
  chain_cut false 2 (by decide)

private def v1402330423094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402330423094 : ¬ MinimalInterpreter v1402330423094 :=
  chain_cut false 2 (by decide)

private def v1402330421206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1402330421206 : ¬ MinimalInterpreter v1402330421206 :=
  chain_cut false 2 (by decide)

private def v1402407847894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 0)))) (.var 1)))))))
private theorem no_v1402407847894 : ¬ MinimalInterpreter v1402407847894 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409066294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402409066294 : ¬ MinimalInterpreter v1402409066294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402409064406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1402409064406 : ¬ MinimalInterpreter v1402409064406 :=
  chain_cut false 7 (by decide)

theorem five668 : BadRow (bucket false 4 3 5 [0,0,3,0,1]) := by
  have h : bucket false 4 3 5 [0,0,3,0,1] = [v1402313476054,v1402312617782,v1402312615894,v1402312612822,v1402312689622,v1402312493014,v1402312465366,v1402332094262,v1402332092374,v1402332081974,v1402332080086,v1402332077014,v1402332389174,v1402332387286,v1402332350422,v1402333568822,v1402333566934,v1402330423094,v1402330421206,v1402407847894,v1402409066294,v1402409064406] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313476054) (.cons (no_v1402312617782) (.cons (no_v1402312615894) (.cons (no_v1402312612822) (.cons (no_v1402312689622) (.cons (no_v1402312493014) (.cons (no_v1402312465366) (.cons (no_v1402332094262) (.cons (no_v1402332092374) (.cons (no_v1402332081974) (.cons (no_v1402332080086) (.cons (no_v1402332077014) (.cons (no_v1402332389174) (.cons (no_v1402332387286) (.cons (no_v1402332350422) (.cons (no_v1402333568822) (.cons (no_v1402333566934) (.cons (no_v1402330423094) (.cons (no_v1402330421206) (.cons (no_v1402407847894) (.cons (no_v1402409066294) (.cons (no_v1402409064406) .nil))))))))))))))))))))))

theorem five669 : BadRow (bucket true 4 3 5 [0,0,3,0,1]) := by
  have h : bucket true 4 3 5 [0,0,3,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402312617786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312617786 : ¬ MinimalInterpreter v1402312617786 :=
  chain_cut false 2 (by decide)

private def v1402312465370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 1)) (.var 0))))))
private theorem no_v1402312465370 : ¬ MinimalInterpreter v1402312465370 :=
  chain_cut false 2 (by decide)

private def v1402332094266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402332094266 : ¬ MinimalInterpreter v1402332094266 :=
  chain_cut false 2 (by decide)

private def v1402332092378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1402332092378 : ¬ MinimalInterpreter v1402332092378 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332081978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402332081978 : ¬ MinimalInterpreter v1402332081978 :=
  chain_cut false 2 (by decide)

private def v1402332080090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))))
private theorem no_v1402332080090 : ¬ MinimalInterpreter v1402332080090 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332077018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0))))))))
private theorem no_v1402332077018 : ¬ MinimalInterpreter v1402332077018 :=
  chain_cut false 2 (by decide)

private def v1402332389178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402332389178 : ¬ MinimalInterpreter v1402332389178 :=
  chain_cut false 2 (by decide)

private def v1402332387290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1402332387290 : ¬ MinimalInterpreter v1402332387290 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402333568826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402333568826 : ¬ MinimalInterpreter v1402333568826 :=
  chain_cut false 2 (by decide)

private def v1402333566938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1402333566938 : ¬ MinimalInterpreter v1402333566938 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402330423098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402330423098 : ¬ MinimalInterpreter v1402330423098 :=
  chain_cut false 2 (by decide)

private def v1402330421210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1402330421210 : ¬ MinimalInterpreter v1402330421210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402329917402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))) (.var 0)))))
private theorem no_v1402329917402 : ¬ MinimalInterpreter v1402329917402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402329914330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))) (.var 0)))))
private theorem no_v1402329914330 : ¬ MinimalInterpreter v1402329914330 :=
  chain_cut false 2 (by decide)

private def v1402409066298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402409066298 : ¬ MinimalInterpreter v1402409066298 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402409064410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1402409064410 : ¬ MinimalInterpreter v1402409064410 :=
  w_cut false 0 (by decide)

theorem five670 : BadRow (bucket false 4 3 5 [0,0,3,1,0]) := by
  have h : bucket false 4 3 5 [0,0,3,1,0] = [v1402312617786,v1402312465370,v1402332094266,v1402332092378,v1402332081978,v1402332080090,v1402332077018,v1402332389178,v1402332387290,v1402333568826,v1402333566938,v1402330423098,v1402330421210,v1402329917402,v1402329914330,v1402409066298,v1402409064410] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402312617786) (.cons (no_v1402312465370) (.cons (no_v1402332094266) (.cons (no_v1402332092378) (.cons (no_v1402332081978) (.cons (no_v1402332080090) (.cons (no_v1402332077018) (.cons (no_v1402332389178) (.cons (no_v1402332387290) (.cons (no_v1402333568826) (.cons (no_v1402333566938) (.cons (no_v1402330423098) (.cons (no_v1402330421210) (.cons (no_v1402329917402) (.cons (no_v1402329914330) (.cons (no_v1402409066298) (.cons (no_v1402409064410) .nil)))))))))))))))))

theorem five671 : BadRow (bucket true 4 3 5 [0,0,3,1,0]) := by
  have h : bucket true 4 3 5 [0,0,3,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
