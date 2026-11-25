import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five352 : BadRow (bucket false 4 2 4 [1,0,0,3]) := by
  have h : bucket false 4 2 4 [1,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five353 : BadRow (bucket true 4 2 4 [1,0,0,3]) := by
  have h : bucket true 4 2 4 [1,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1450090221282 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.var 0)))
private theorem no_v1450090221282 : ¬ MinimalInterpreter v1450090221282 :=
  chain_cut false 2 (by decide)

private def v1401803623662 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1401803623662 : ¬ MinimalInterpreter v1401803623662 :=
  chain_cut false 2 (by decide)

private def v1398582398190 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1398582398190 : ¬ MinimalInterpreter v1398582398190 :=
  chain_cut false 2 (by decide)

private def v1398179745006 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1398179745006 : ¬ MinimalInterpreter v1398179745006 :=
  chain_cut false 4 (by decide)

private def v1450090215138 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.lam (.var 0)))
private theorem no_v1450090215138 : ¬ MinimalInterpreter v1450090215138 :=
  chain_cut false 2 (by decide)

private def v1401803623278 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1401803623278 : ¬ MinimalInterpreter v1401803623278 :=
  chain_cut false 2 (by decide)

private def v1398582397806 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1398582397806 : ¬ MinimalInterpreter v1398582397806 :=
  chain_cut false 2 (by decide)

private def v1398179744622 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1398179744622 : ¬ MinimalInterpreter v1398179744622 :=
  chain_cut false 4 (by decide)

private def v1450089860834 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))) (.lam (.var 0)))
private theorem no_v1450089860834 : ¬ MinimalInterpreter v1450089860834 :=
  chain_cut false 2 (by decide)

private def v1401803601134 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1401803601134 : ¬ MinimalInterpreter v1401803601134 :=
  chain_cut false 2 (by decide)

private def v1398582375662 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1398582375662 : ¬ MinimalInterpreter v1398582375662 :=
  chain_cut false 2 (by decide)

private def v1398179722478 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1398179722478 : ¬ MinimalInterpreter v1398179722478 :=
  chain_cut false 7 (by decide)

private def v1450089854690 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))) (.lam (.var 0)))
private theorem no_v1450089854690 : ¬ MinimalInterpreter v1450089854690 :=
  chain_cut false 2 (by decide)

private def v1401803600750 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1401803600750 : ¬ MinimalInterpreter v1401803600750 :=
  chain_cut false 2 (by decide)

private def v1398582375278 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1398582375278 : ¬ MinimalInterpreter v1398582375278 :=
  chain_cut false 2 (by decide)

private def v1398179722094 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1398179722094 : ¬ MinimalInterpreter v1398179722094 :=
  chain_cut false 4 (by decide)

private def v1450089764578 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))) (.lam (.var 0)))
private theorem no_v1450089764578 : ¬ MinimalInterpreter v1450089764578 :=
  chain_cut false 2 (by decide)

private def v1401803595118 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1401803595118 : ¬ MinimalInterpreter v1401803595118 :=
  chain_cut false 2 (by decide)

private def v1398582369646 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1398582369646 : ¬ MinimalInterpreter v1398582369646 :=
  chain_cut false 2 (by decide)

private def v1398179716462 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1398179716462 : ¬ MinimalInterpreter v1398179716462 :=
  cycle_cut 3 6 (by decide) (by decide)

private def v1450095726306 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.var 0)))
private theorem no_v1450095726306 : ¬ MinimalInterpreter v1450095726306 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))

private def v1381959960090 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1381959960090 : ¬ MinimalInterpreter v1381959960090 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))))

private def v1381959960162 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v1381959960162 : ¬ MinimalInterpreter v1381959960162 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))))

private def v1401803967726 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1401803967726 : ¬ MinimalInterpreter v1401803967726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381959959970 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v1381959959970 : ¬ MinimalInterpreter v1381959959970 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))))))

private def v1398582742254 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1398582742254 : ¬ MinimalInterpreter v1398582742254 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381959959946 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v1381959959946 : ¬ MinimalInterpreter v1381959959946 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))))

private def v1398180089070 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1398180089070 : ¬ MinimalInterpreter v1398180089070 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1450095720162 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.lam (.var 0)))
private theorem no_v1450095720162 : ¬ MinimalInterpreter v1450095720162 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1381953668634 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1381953668634 : ¬ MinimalInterpreter v1381953668634 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (.var 0) (by decide) (by decide))))

private def v1381953668706 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v1381953668706 : ¬ MinimalInterpreter v1381953668706 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))) (.var 0) (by decide) (by decide))))

private def v1401803967342 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1401803967342 : ¬ MinimalInterpreter v1401803967342 :=
  chain_cut false 3 (by decide)

private def v1381953668514 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v1381953668514 : ¬ MinimalInterpreter v1381953668514 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))))) (.var 0) (by decide) (by decide))))

private def v1398582741870 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1398582741870 : ¬ MinimalInterpreter v1398582741870 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1381953668490 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v1381953668490 : ¬ MinimalInterpreter v1381953668490 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))) (.var 0) (by decide) (by decide))))

private def v1398180088686 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1398180088686 : ¬ MinimalInterpreter v1398180088686 :=
  chain_cut false 2 (by decide)

theorem five354 : BadRow (bucket false 4 2 4 [1,0,1,2]) := by
  have h : bucket false 4 2 4 [1,0,1,2] = [v1450090221282,v1401803623662,v1398582398190,v1398179745006,v1450090215138,v1401803623278,v1398582397806,v1398179744622,v1450089860834,v1401803601134,v1398582375662,v1398179722478,v1450089854690,v1401803600750,v1398582375278,v1398179722094,v1450089764578,v1401803595118,v1398582369646,v1398179716462,v1450095726306,v1381959960090,v1381959960162,v1401803967726,v1381959959970,v1398582742254,v1381959959946,v1398180089070,v1450095720162,v1381953668634,v1381953668706,v1401803967342,v1381953668514,v1398582741870,v1381953668490,v1398180088686] := by decide +kernel
  rw [h]
  exact (.cons (no_v1450090221282) (.cons (no_v1401803623662) (.cons (no_v1398582398190) (.cons (no_v1398179745006) (.cons (no_v1450090215138) (.cons (no_v1401803623278) (.cons (no_v1398582397806) (.cons (no_v1398179744622) (.cons (no_v1450089860834) (.cons (no_v1401803601134) (.cons (no_v1398582375662) (.cons (no_v1398179722478) (.cons (no_v1450089854690) (.cons (no_v1401803600750) (.cons (no_v1398582375278) (.cons (no_v1398179722094) (.cons (no_v1450089764578) (.cons (no_v1401803595118) (.cons (no_v1398582369646) (.cons (no_v1398179716462) (.cons (no_v1450095726306) (.cons (no_v1381959960090) (.cons (no_v1381959960162) (.cons (no_v1401803967726) (.cons (no_v1381959959970) (.cons (no_v1398582742254) (.cons (no_v1381959959946) (.cons (no_v1398180089070) (.cons (no_v1450095720162) (.cons (no_v1381953668634) (.cons (no_v1381953668706) (.cons (no_v1401803967342) (.cons (no_v1381953668514) (.cons (no_v1398582741870) (.cons (no_v1381953668490) (.cons (no_v1398180088686) .nil))))))))))))))))))))))))))))))))))))

private def v1187156276154 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.var 0)))
private theorem no_v1187156276154 : ¬ MinimalInterpreter v1187156276154 :=
  chain_cut false 2 (by decide)

private def v1207322135790 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1207322135790 : ¬ MinimalInterpreter v1207322135790 :=
  chain_cut true 2 (by decide)

private def v1194031115802 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194031115802 : ¬ MinimalInterpreter v1194031115802 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311207662 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1175311207662 : ¬ MinimalInterpreter v1175311207662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437233902 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1194437233902 : ¬ MinimalInterpreter v1194437233902 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156274618 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.var 0)))
private theorem no_v1187156274618 : ¬ MinimalInterpreter v1187156274618 :=
  chain_cut false 2 (by decide)

private def v1207322135406 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1207322135406 : ¬ MinimalInterpreter v1207322135406 :=
  chain_cut true 2 (by decide)

private def v1194031017498 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194031017498 : ¬ MinimalInterpreter v1194031017498 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311207278 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1175311207278 : ¬ MinimalInterpreter v1175311207278 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437233518 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1194437233518 : ¬ MinimalInterpreter v1194437233518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156186042 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))) (.var 0)))
private theorem no_v1187156186042 : ¬ MinimalInterpreter v1187156186042 :=
  chain_cut false 2 (by decide)

private def v1207322113262 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1207322113262 : ¬ MinimalInterpreter v1207322113262 :=
  chain_cut true 2 (by decide)

private def v1194025348634 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025348634 : ¬ MinimalInterpreter v1194025348634 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311185134 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1175311185134 : ¬ MinimalInterpreter v1175311185134 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437211374 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1194437211374 : ¬ MinimalInterpreter v1194437211374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156184506 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))) (.var 0)))
private theorem no_v1187156184506 : ¬ MinimalInterpreter v1187156184506 :=
  chain_cut false 2 (by decide)

private def v1207322112878 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v1207322112878 : ¬ MinimalInterpreter v1207322112878 :=
  chain_cut true 2 (by decide)

private def v1194025250330 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025250330 : ¬ MinimalInterpreter v1194025250330 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311184750 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v1175311184750 : ¬ MinimalInterpreter v1175311184750 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437210990 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1194437210990 : ¬ MinimalInterpreter v1194437210990 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156161978 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))) (.var 0)))
private theorem no_v1187156161978 : ¬ MinimalInterpreter v1187156161978 :=
  chain_cut false 2 (by decide)

private def v1207322107246 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v1207322107246 : ¬ MinimalInterpreter v1207322107246 :=
  chain_cut true 2 (by decide)

private def v1194023808538 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194023808538 : ¬ MinimalInterpreter v1194023808538 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311179118 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v1175311179118 : ¬ MinimalInterpreter v1175311179118 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437205358 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1194437205358 : ¬ MinimalInterpreter v1194437205358 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187157652410 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.var 0)))
private theorem no_v1187157652410 : ¬ MinimalInterpreter v1187157652410 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (.var 0)))

private def v1207322479854 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1207322479854 : ¬ MinimalInterpreter v1207322479854 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1194119196186 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194119196186 : ¬ MinimalInterpreter v1194119196186 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))

private def v1175311551726 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1175311551726 : ¬ MinimalInterpreter v1175311551726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1170123712026 : Term := (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1170123712026 : ¬ MinimalInterpreter v1170123712026 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))))

private def v1194437577966 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1194437577966 : ¬ MinimalInterpreter v1194437577966 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1187157650874 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.var 0)))
private theorem no_v1187157650874 : ¬ MinimalInterpreter v1187157650874 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1207322479470 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1207322479470 : ¬ MinimalInterpreter v1207322479470 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194119097882 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194119097882 : ¬ MinimalInterpreter v1194119097882 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311551342 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1175311551342 : ¬ MinimalInterpreter v1175311551342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1170122139162 : Term := (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1170122139162 : ¬ MinimalInterpreter v1170122139162 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437577582 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1194437577582 : ¬ MinimalInterpreter v1194437577582 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five355 : BadRow (bucket true 4 2 4 [1,0,1,2]) := by
  have h : bucket true 4 2 4 [1,0,1,2] = [v1187156276154,v1207322135790,v1194031115802,v1175311207662,v1194437233902,v1187156274618,v1207322135406,v1194031017498,v1175311207278,v1194437233518,v1187156186042,v1207322113262,v1194025348634,v1175311185134,v1194437211374,v1187156184506,v1207322112878,v1194025250330,v1175311184750,v1194437210990,v1187156161978,v1207322107246,v1194023808538,v1175311179118,v1194437205358,v1187157652410,v1207322479854,v1194119196186,v1175311551726,v1170123712026,v1194437577966,v1187157650874,v1207322479470,v1194119097882,v1175311551342,v1170122139162,v1194437577582] := by decide +kernel
  rw [h]
  exact (.cons (no_v1187156276154) (.cons (no_v1207322135790) (.cons (no_v1194031115802) (.cons (no_v1175311207662) (.cons (no_v1194437233902) (.cons (no_v1187156274618) (.cons (no_v1207322135406) (.cons (no_v1194031017498) (.cons (no_v1175311207278) (.cons (no_v1194437233518) (.cons (no_v1187156186042) (.cons (no_v1207322113262) (.cons (no_v1194025348634) (.cons (no_v1175311185134) (.cons (no_v1194437211374) (.cons (no_v1187156184506) (.cons (no_v1207322112878) (.cons (no_v1194025250330) (.cons (no_v1175311184750) (.cons (no_v1194437210990) (.cons (no_v1187156161978) (.cons (no_v1207322107246) (.cons (no_v1194023808538) (.cons (no_v1175311179118) (.cons (no_v1194437205358) (.cons (no_v1187157652410) (.cons (no_v1207322479854) (.cons (no_v1194119196186) (.cons (no_v1175311551726) (.cons (no_v1170123712026) (.cons (no_v1194437577966) (.cons (no_v1187157650874) (.cons (no_v1207322479470) (.cons (no_v1194119097882) (.cons (no_v1175311551342) (.cons (no_v1170122139162) (.cons (no_v1194437577582) .nil)))))))))))))))))))))))))))))))))))))

private def v1450090221410 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.var 0)))
private theorem no_v1450090221410 : ¬ MinimalInterpreter v1450090221410 :=
  chain_cut false 2 (by decide)

private def v1401803623670 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1401803623670 : ¬ MinimalInterpreter v1401803623670 :=
  chain_cut false 2 (by decide)

private def v1398582398198 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1398582398198 : ¬ MinimalInterpreter v1398582398198 :=
  chain_cut false 2 (by decide)

private def v1398179745014 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1398179745014 : ¬ MinimalInterpreter v1398179745014 :=
  chain_cut false 4 (by decide)

private def v1450090215266 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.var 0)))
private theorem no_v1450090215266 : ¬ MinimalInterpreter v1450090215266 :=
  chain_cut false 2 (by decide)

private def v1401803623286 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1401803623286 : ¬ MinimalInterpreter v1401803623286 :=
  chain_cut false 2 (by decide)

private def v1398582397814 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1398582397814 : ¬ MinimalInterpreter v1398582397814 :=
  chain_cut false 2 (by decide)

private def v1398179744630 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1398179744630 : ¬ MinimalInterpreter v1398179744630 :=
  chain_cut false 4 (by decide)

private def v1450089860962 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))) (.lam (.var 0)))
private theorem no_v1450089860962 : ¬ MinimalInterpreter v1450089860962 :=
  chain_cut false 2 (by decide)

private def v1401803601142 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1401803601142 : ¬ MinimalInterpreter v1401803601142 :=
  chain_cut false 2 (by decide)

private def v1398582375670 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1398582375670 : ¬ MinimalInterpreter v1398582375670 :=
  chain_cut false 2 (by decide)

private def v1398179722486 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1398179722486 : ¬ MinimalInterpreter v1398179722486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1450089854818 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))) (.lam (.var 0)))
private theorem no_v1450089854818 : ¬ MinimalInterpreter v1450089854818 :=
  chain_cut false 2 (by decide)

private def v1401803600758 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1401803600758 : ¬ MinimalInterpreter v1401803600758 :=
  chain_cut false 2 (by decide)

private def v1398582375286 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1398582375286 : ¬ MinimalInterpreter v1398582375286 :=
  chain_cut false 2 (by decide)

private def v1398179722102 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1398179722102 : ¬ MinimalInterpreter v1398179722102 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1450089764706 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))) (.lam (.var 0)))
private theorem no_v1450089764706 : ¬ MinimalInterpreter v1450089764706 :=
  chain_cut false 2 (by decide)

private def v1401803595126 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1401803595126 : ¬ MinimalInterpreter v1401803595126 :=
  chain_cut false 2 (by decide)

private def v1398582369654 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1398582369654 : ¬ MinimalInterpreter v1398582369654 :=
  chain_cut false 2 (by decide)

private def v1398179716470 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1398179716470 : ¬ MinimalInterpreter v1398179716470 :=
  chain_cut false 5 (by decide)

private def v1450095726434 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.var 0)))
private theorem no_v1450095726434 : ¬ MinimalInterpreter v1450095726434 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))

private def v1381960091162 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1381960091162 : ¬ MinimalInterpreter v1381960091162 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))))

private def v1381960091234 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v1381960091234 : ¬ MinimalInterpreter v1381960091234 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))))

private def v1401803967734 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1401803967734 : ¬ MinimalInterpreter v1401803967734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381960091042 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v1381960091042 : ¬ MinimalInterpreter v1381960091042 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))))))

private def v1398582742262 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1398582742262 : ¬ MinimalInterpreter v1398582742262 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381960091018 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v1381960091018 : ¬ MinimalInterpreter v1381960091018 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))))

private def v1398180089078 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1398180089078 : ¬ MinimalInterpreter v1398180089078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1450095720290 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.var 0)))
private theorem no_v1450095720290 : ¬ MinimalInterpreter v1450095720290 :=
  w_cut false 0 (by decide)

private def v1381953799706 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1381953799706 : ¬ MinimalInterpreter v1381953799706 :=
  w_cut false 0 (by decide)

private def v1381953799778 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v1381953799778 : ¬ MinimalInterpreter v1381953799778 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))) (.var 1)) (.var 0) (by decide) (by decide))))

private def v1401803967350 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1401803967350 : ¬ MinimalInterpreter v1401803967350 :=
  chain_cut false 3 (by decide)

private def v1381953799586 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v1381953799586 : ¬ MinimalInterpreter v1381953799586 :=
  w_cut false 0 (by decide)

private def v1398582741878 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1398582741878 : ¬ MinimalInterpreter v1398582741878 :=
  w_cut false 0 (by decide)

private def v1381953799562 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v1381953799562 : ¬ MinimalInterpreter v1381953799562 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))) (.var 1)) (.var 0) (by decide) (by decide))))

private def v1398180088694 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1398180088694 : ¬ MinimalInterpreter v1398180088694 :=
  chain_cut false 2 (by decide)

theorem five356 : BadRow (bucket false 4 2 4 [1,0,2,1]) := by
  have h : bucket false 4 2 4 [1,0,2,1] = [v1450090221410,v1401803623670,v1398582398198,v1398179745014,v1450090215266,v1401803623286,v1398582397814,v1398179744630,v1450089860962,v1401803601142,v1398582375670,v1398179722486,v1450089854818,v1401803600758,v1398582375286,v1398179722102,v1450089764706,v1401803595126,v1398582369654,v1398179716470,v1450095726434,v1381960091162,v1381960091234,v1401803967734,v1381960091042,v1398582742262,v1381960091018,v1398180089078,v1450095720290,v1381953799706,v1381953799778,v1401803967350,v1381953799586,v1398582741878,v1381953799562,v1398180088694] := by decide +kernel
  rw [h]
  exact (.cons (no_v1450090221410) (.cons (no_v1401803623670) (.cons (no_v1398582398198) (.cons (no_v1398179745014) (.cons (no_v1450090215266) (.cons (no_v1401803623286) (.cons (no_v1398582397814) (.cons (no_v1398179744630) (.cons (no_v1450089860962) (.cons (no_v1401803601142) (.cons (no_v1398582375670) (.cons (no_v1398179722486) (.cons (no_v1450089854818) (.cons (no_v1401803600758) (.cons (no_v1398582375286) (.cons (no_v1398179722102) (.cons (no_v1450089764706) (.cons (no_v1401803595126) (.cons (no_v1398582369654) (.cons (no_v1398179716470) (.cons (no_v1450095726434) (.cons (no_v1381960091162) (.cons (no_v1381960091234) (.cons (no_v1401803967734) (.cons (no_v1381960091042) (.cons (no_v1398582742262) (.cons (no_v1381960091018) (.cons (no_v1398180089078) (.cons (no_v1450095720290) (.cons (no_v1381953799706) (.cons (no_v1381953799778) (.cons (no_v1401803967350) (.cons (no_v1381953799586) (.cons (no_v1398582741878) (.cons (no_v1381953799562) (.cons (no_v1398180088694) .nil))))))))))))))))))))))))))))))))))))

private def v1187156276186 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.var 0)))
private theorem no_v1187156276186 : ¬ MinimalInterpreter v1187156276186 :=
  chain_cut false 2 (by decide)

private def v1207322135798 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1207322135798 : ¬ MinimalInterpreter v1207322135798 :=
  chain_cut true 2 (by decide)

private def v1194031117850 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194031117850 : ¬ MinimalInterpreter v1194031117850 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311207670 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1175311207670 : ¬ MinimalInterpreter v1175311207670 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437233910 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1194437233910 : ¬ MinimalInterpreter v1194437233910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156274650 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.var 0)))
private theorem no_v1187156274650 : ¬ MinimalInterpreter v1187156274650 :=
  chain_cut false 2 (by decide)

private def v1207322135414 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1207322135414 : ¬ MinimalInterpreter v1207322135414 :=
  chain_cut true 2 (by decide)

private def v1194031019546 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194031019546 : ¬ MinimalInterpreter v1194031019546 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311207286 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1175311207286 : ¬ MinimalInterpreter v1175311207286 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437233526 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1194437233526 : ¬ MinimalInterpreter v1194437233526 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156186074 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))) (.var 0)))
private theorem no_v1187156186074 : ¬ MinimalInterpreter v1187156186074 :=
  chain_cut false 2 (by decide)

private def v1207322113270 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1207322113270 : ¬ MinimalInterpreter v1207322113270 :=
  chain_cut true 2 (by decide)

private def v1194025350682 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025350682 : ¬ MinimalInterpreter v1194025350682 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311185142 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1175311185142 : ¬ MinimalInterpreter v1175311185142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437211382 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1194437211382 : ¬ MinimalInterpreter v1194437211382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156184538 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))) (.var 0)))
private theorem no_v1187156184538 : ¬ MinimalInterpreter v1187156184538 :=
  chain_cut false 2 (by decide)

private def v1207322112886 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v1207322112886 : ¬ MinimalInterpreter v1207322112886 :=
  chain_cut true 2 (by decide)

private def v1194025252378 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025252378 : ¬ MinimalInterpreter v1194025252378 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311184758 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v1175311184758 : ¬ MinimalInterpreter v1175311184758 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437210998 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1194437210998 : ¬ MinimalInterpreter v1194437210998 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156162010 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))) (.var 0)))
private theorem no_v1187156162010 : ¬ MinimalInterpreter v1187156162010 :=
  chain_cut false 2 (by decide)

private def v1207322107254 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v1207322107254 : ¬ MinimalInterpreter v1207322107254 :=
  chain_cut true 2 (by decide)

private def v1194023810586 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194023810586 : ¬ MinimalInterpreter v1194023810586 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311179126 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v1175311179126 : ¬ MinimalInterpreter v1175311179126 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437205366 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1194437205366 : ¬ MinimalInterpreter v1194437205366 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187157652442 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.var 0)))
private theorem no_v1187157652442 : ¬ MinimalInterpreter v1187157652442 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (.var 0)))

private def v1207322479862 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1207322479862 : ¬ MinimalInterpreter v1207322479862 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1194119198234 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194119198234 : ¬ MinimalInterpreter v1194119198234 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))

private def v1175311551734 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1175311551734 : ¬ MinimalInterpreter v1175311551734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1170123744794 : Term := (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1170123744794 : ¬ MinimalInterpreter v1170123744794 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))))

private def v1194437577974 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1194437577974 : ¬ MinimalInterpreter v1194437577974 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1187157650906 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.var 0)))
private theorem no_v1187157650906 : ¬ MinimalInterpreter v1187157650906 :=
  w_cut false 0 (by decide)

private def v1207322479478 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1207322479478 : ¬ MinimalInterpreter v1207322479478 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194119099930 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194119099930 : ¬ MinimalInterpreter v1194119099930 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311551350 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1175311551350 : ¬ MinimalInterpreter v1175311551350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1170122171930 : Term := (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1170122171930 : ¬ MinimalInterpreter v1170122171930 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437577590 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1194437577590 : ¬ MinimalInterpreter v1194437577590 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five357 : BadRow (bucket true 4 2 4 [1,0,2,1]) := by
  have h : bucket true 4 2 4 [1,0,2,1] = [v1187156276186,v1207322135798,v1194031117850,v1175311207670,v1194437233910,v1187156274650,v1207322135414,v1194031019546,v1175311207286,v1194437233526,v1187156186074,v1207322113270,v1194025350682,v1175311185142,v1194437211382,v1187156184538,v1207322112886,v1194025252378,v1175311184758,v1194437210998,v1187156162010,v1207322107254,v1194023810586,v1175311179126,v1194437205366,v1187157652442,v1207322479862,v1194119198234,v1175311551734,v1170123744794,v1194437577974,v1187157650906,v1207322479478,v1194119099930,v1175311551350,v1170122171930,v1194437577590] := by decide +kernel
  rw [h]
  exact (.cons (no_v1187156276186) (.cons (no_v1207322135798) (.cons (no_v1194031117850) (.cons (no_v1175311207670) (.cons (no_v1194437233910) (.cons (no_v1187156274650) (.cons (no_v1207322135414) (.cons (no_v1194031019546) (.cons (no_v1175311207286) (.cons (no_v1194437233526) (.cons (no_v1187156186074) (.cons (no_v1207322113270) (.cons (no_v1194025350682) (.cons (no_v1175311185142) (.cons (no_v1194437211382) (.cons (no_v1187156184538) (.cons (no_v1207322112886) (.cons (no_v1194025252378) (.cons (no_v1175311184758) (.cons (no_v1194437210998) (.cons (no_v1187156162010) (.cons (no_v1207322107254) (.cons (no_v1194023810586) (.cons (no_v1175311179126) (.cons (no_v1194437205366) (.cons (no_v1187157652442) (.cons (no_v1207322479862) (.cons (no_v1194119198234) (.cons (no_v1175311551734) (.cons (no_v1170123744794) (.cons (no_v1194437577974) (.cons (no_v1187157650906) (.cons (no_v1207322479478) (.cons (no_v1194119099930) (.cons (no_v1175311551350) (.cons (no_v1170122171930) (.cons (no_v1194437577590) .nil)))))))))))))))))))))))))))))))))))))

theorem five358 : BadRow (bucket false 4 2 4 [1,0,3,0]) := by
  have h : bucket false 4 2 4 [1,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five359 : BadRow (bucket true 4 2 4 [1,0,3,0]) := by
  have h : bucket true 4 2 4 [1,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
