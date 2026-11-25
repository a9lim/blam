import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1450090227426 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.var 0)))
private theorem no_v1450090227426 : ¬ MinimalInterpreter v1450090227426 :=
  chain_cut false 2 (by decide)

private def v1401803624046 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1401803624046 : ¬ MinimalInterpreter v1401803624046 :=
  chain_cut false 2 (by decide)

private def v1398582398574 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1398582398574 : ¬ MinimalInterpreter v1398582398574 :=
  chain_cut false 2 (by decide)

private def v1398179745390 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1398179745390 : ¬ MinimalInterpreter v1398179745390 :=
  chain_cut false 4 (by decide)

private def v1450090216162 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.var 0)))
private theorem no_v1450090216162 : ¬ MinimalInterpreter v1450090216162 :=
  chain_cut false 2 (by decide)

private def v1401803623342 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1401803623342 : ¬ MinimalInterpreter v1401803623342 :=
  chain_cut false 2 (by decide)

private def v1398582397870 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1398582397870 : ¬ MinimalInterpreter v1398582397870 :=
  chain_cut false 2 (by decide)

private def v1398179744686 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1398179744686 : ¬ MinimalInterpreter v1398179744686 :=
  chain_cut false 4 (by decide)

private def v1450089866978 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))) (.lam (.var 0)))
private theorem no_v1450089866978 : ¬ MinimalInterpreter v1450089866978 :=
  chain_cut false 2 (by decide)

private def v1401803601518 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1401803601518 : ¬ MinimalInterpreter v1401803601518 :=
  chain_cut false 2 (by decide)

private def v1398582376046 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1398582376046 : ¬ MinimalInterpreter v1398582376046 :=
  chain_cut false 2 (by decide)

private def v1398179722862 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1398179722862 : ¬ MinimalInterpreter v1398179722862 :=
  chain_cut false 4 (by decide)

private def v1450089855714 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))) (.lam (.var 0)))
private theorem no_v1450089855714 : ¬ MinimalInterpreter v1450089855714 :=
  chain_cut false 2 (by decide)

private def v1401803600814 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1401803600814 : ¬ MinimalInterpreter v1401803600814 :=
  chain_cut false 2 (by decide)

private def v1398582375342 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1398582375342 : ¬ MinimalInterpreter v1398582375342 :=
  chain_cut false 2 (by decide)

private def v1398179722158 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1398179722158 : ¬ MinimalInterpreter v1398179722158 :=
  chain_cut false 4 (by decide)

private def v1450089765602 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))) (.lam (.var 0)))
private theorem no_v1450089765602 : ¬ MinimalInterpreter v1450089765602 :=
  chain_cut false 2 (by decide)

private def v1401803595182 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1401803595182 : ¬ MinimalInterpreter v1401803595182 :=
  chain_cut false 2 (by decide)

private def v1398582369710 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1398582369710 : ¬ MinimalInterpreter v1398582369710 :=
  chain_cut false 2 (by decide)

private def v1398179716526 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1398179716526 : ¬ MinimalInterpreter v1398179716526 :=
  chain_cut false 4 (by decide)

private def v1450095732450 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.var 0)))
private theorem no_v1450095732450 : ¬ MinimalInterpreter v1450095732450 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1381966251546 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1381966251546 : ¬ MinimalInterpreter v1381966251546 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))))) (.var 0) (by decide) (by decide))))

private def v1381966251618 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v1381966251618 : ¬ MinimalInterpreter v1381966251618 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))))) (.var 0) (by decide) (by decide))))

private def v1401803968110 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1401803968110 : ¬ MinimalInterpreter v1401803968110 :=
  chain_cut false 3 (by decide)

private def v1381966251426 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v1381966251426 : ¬ MinimalInterpreter v1381966251426 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))))) (.var 0) (by decide) (by decide))))

private def v1398582742638 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1398582742638 : ¬ MinimalInterpreter v1398582742638 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1381966251402 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v1381966251402 : ¬ MinimalInterpreter v1381966251402 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))))) (.var 0) (by decide) (by decide))))

private def v1398180089454 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1398180089454 : ¬ MinimalInterpreter v1398180089454 :=
  chain_cut false 2 (by decide)

private def v1450095721186 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.var 0)))
private theorem no_v1450095721186 : ¬ MinimalInterpreter v1450095721186 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1381954717210 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1381954717210 : ¬ MinimalInterpreter v1381954717210 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (.var 0) (by decide) (by decide))))

private def v1381954717282 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v1381954717282 : ¬ MinimalInterpreter v1381954717282 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))) (.var 0) (by decide) (by decide))))

private def v1401803967406 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1401803967406 : ¬ MinimalInterpreter v1401803967406 :=
  chain_cut false 3 (by decide)

private def v1381954717090 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v1381954717090 : ¬ MinimalInterpreter v1381954717090 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))))) (.var 0) (by decide) (by decide))))

private def v1398582741934 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1398582741934 : ¬ MinimalInterpreter v1398582741934 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1381954717066 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v1381954717066 : ¬ MinimalInterpreter v1381954717066 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))) (.var 0) (by decide) (by decide))))

private def v1398180088750 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1398180088750 : ¬ MinimalInterpreter v1398180088750 :=
  chain_cut false 2 (by decide)

theorem five360 : BadRow (bucket false 4 2 4 [1,1,0,2]) := by
  have h : bucket false 4 2 4 [1,1,0,2] = [v1450090227426,v1401803624046,v1398582398574,v1398179745390,v1450090216162,v1401803623342,v1398582397870,v1398179744686,v1450089866978,v1401803601518,v1398582376046,v1398179722862,v1450089855714,v1401803600814,v1398582375342,v1398179722158,v1450089765602,v1401803595182,v1398582369710,v1398179716526,v1450095732450,v1381966251546,v1381966251618,v1401803968110,v1381966251426,v1398582742638,v1381966251402,v1398180089454,v1450095721186,v1381954717210,v1381954717282,v1401803967406,v1381954717090,v1398582741934,v1381954717066,v1398180088750] := by decide +kernel
  rw [h]
  exact (.cons (no_v1450090227426) (.cons (no_v1401803624046) (.cons (no_v1398582398574) (.cons (no_v1398179745390) (.cons (no_v1450090216162) (.cons (no_v1401803623342) (.cons (no_v1398582397870) (.cons (no_v1398179744686) (.cons (no_v1450089866978) (.cons (no_v1401803601518) (.cons (no_v1398582376046) (.cons (no_v1398179722862) (.cons (no_v1450089855714) (.cons (no_v1401803600814) (.cons (no_v1398582375342) (.cons (no_v1398179722158) (.cons (no_v1450089765602) (.cons (no_v1401803595182) (.cons (no_v1398582369710) (.cons (no_v1398179716526) (.cons (no_v1450095732450) (.cons (no_v1381966251546) (.cons (no_v1381966251618) (.cons (no_v1401803968110) (.cons (no_v1381966251426) (.cons (no_v1398582742638) (.cons (no_v1381966251402) (.cons (no_v1398180089454) (.cons (no_v1450095721186) (.cons (no_v1381954717210) (.cons (no_v1381954717282) (.cons (no_v1401803967406) (.cons (no_v1381954717090) (.cons (no_v1398582741934) (.cons (no_v1381954717066) (.cons (no_v1398180088750) .nil))))))))))))))))))))))))))))))))))))

private def v1187156277690 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.var 0)))
private theorem no_v1187156277690 : ¬ MinimalInterpreter v1187156277690 :=
  chain_cut false 2 (by decide)

private def v1207322136174 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1207322136174 : ¬ MinimalInterpreter v1207322136174 :=
  chain_cut true 2 (by decide)

private def v1194031214106 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194031214106 : ¬ MinimalInterpreter v1194031214106 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311208046 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1175311208046 : ¬ MinimalInterpreter v1175311208046 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437234286 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1194437234286 : ¬ MinimalInterpreter v1194437234286 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156274874 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 0)))
private theorem no_v1187156274874 : ¬ MinimalInterpreter v1187156274874 :=
  chain_cut false 2 (by decide)

private def v1207322135470 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1207322135470 : ¬ MinimalInterpreter v1207322135470 :=
  chain_cut true 2 (by decide)

private def v1194031033882 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194031033882 : ¬ MinimalInterpreter v1194031033882 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311207342 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1175311207342 : ¬ MinimalInterpreter v1175311207342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437233582 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1194437233582 : ¬ MinimalInterpreter v1194437233582 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156187578 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))) (.var 0)))
private theorem no_v1187156187578 : ¬ MinimalInterpreter v1187156187578 :=
  chain_cut false 2 (by decide)

private def v1207322113646 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1207322113646 : ¬ MinimalInterpreter v1207322113646 :=
  chain_cut true 2 (by decide)

private def v1194025446938 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025446938 : ¬ MinimalInterpreter v1194025446938 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311185518 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1175311185518 : ¬ MinimalInterpreter v1175311185518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437211758 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1194437211758 : ¬ MinimalInterpreter v1194437211758 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156184762 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))) (.var 0)))
private theorem no_v1187156184762 : ¬ MinimalInterpreter v1187156184762 :=
  chain_cut false 2 (by decide)

private def v1207322112942 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v1207322112942 : ¬ MinimalInterpreter v1207322112942 :=
  chain_cut true 2 (by decide)

private def v1194025266714 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025266714 : ¬ MinimalInterpreter v1194025266714 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311184814 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v1175311184814 : ¬ MinimalInterpreter v1175311184814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437211054 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1194437211054 : ¬ MinimalInterpreter v1194437211054 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156162234 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))) (.var 0)))
private theorem no_v1187156162234 : ¬ MinimalInterpreter v1187156162234 :=
  chain_cut false 2 (by decide)

private def v1207322107310 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v1207322107310 : ¬ MinimalInterpreter v1207322107310 :=
  chain_cut true 2 (by decide)

private def v1194023824922 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194023824922 : ¬ MinimalInterpreter v1194023824922 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311179182 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v1175311179182 : ¬ MinimalInterpreter v1175311179182 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437205422 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1194437205422 : ¬ MinimalInterpreter v1194437205422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187157653946 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.var 0)))
private theorem no_v1187157653946 : ¬ MinimalInterpreter v1187157653946 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1207322480238 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1207322480238 : ¬ MinimalInterpreter v1207322480238 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194119294490 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194119294490 : ¬ MinimalInterpreter v1194119294490 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311552110 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1175311552110 : ¬ MinimalInterpreter v1175311552110 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1170125284890 : Term := (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1170125284890 : ¬ MinimalInterpreter v1170125284890 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437578350 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1194437578350 : ¬ MinimalInterpreter v1194437578350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187157651130 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 0)))
private theorem no_v1187157651130 : ¬ MinimalInterpreter v1187157651130 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1207322479534 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1207322479534 : ¬ MinimalInterpreter v1207322479534 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194119114266 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194119114266 : ¬ MinimalInterpreter v1194119114266 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311551406 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1175311551406 : ¬ MinimalInterpreter v1175311551406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1170122401306 : Term := (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1170122401306 : ¬ MinimalInterpreter v1170122401306 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437577646 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1194437577646 : ¬ MinimalInterpreter v1194437577646 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five361 : BadRow (bucket true 4 2 4 [1,1,0,2]) := by
  have h : bucket true 4 2 4 [1,1,0,2] = [v1187156277690,v1207322136174,v1194031214106,v1175311208046,v1194437234286,v1187156274874,v1207322135470,v1194031033882,v1175311207342,v1194437233582,v1187156187578,v1207322113646,v1194025446938,v1175311185518,v1194437211758,v1187156184762,v1207322112942,v1194025266714,v1175311184814,v1194437211054,v1187156162234,v1207322107310,v1194023824922,v1175311179182,v1194437205422,v1187157653946,v1207322480238,v1194119294490,v1175311552110,v1170125284890,v1194437578350,v1187157651130,v1207322479534,v1194119114266,v1175311551406,v1170122401306,v1194437577646] := by decide +kernel
  rw [h]
  exact (.cons (no_v1187156277690) (.cons (no_v1207322136174) (.cons (no_v1194031214106) (.cons (no_v1175311208046) (.cons (no_v1194437234286) (.cons (no_v1187156274874) (.cons (no_v1207322135470) (.cons (no_v1194031033882) (.cons (no_v1175311207342) (.cons (no_v1194437233582) (.cons (no_v1187156187578) (.cons (no_v1207322113646) (.cons (no_v1194025446938) (.cons (no_v1175311185518) (.cons (no_v1194437211758) (.cons (no_v1187156184762) (.cons (no_v1207322112942) (.cons (no_v1194025266714) (.cons (no_v1175311184814) (.cons (no_v1194437211054) (.cons (no_v1187156162234) (.cons (no_v1207322107310) (.cons (no_v1194023824922) (.cons (no_v1175311179182) (.cons (no_v1194437205422) (.cons (no_v1187157653946) (.cons (no_v1207322480238) (.cons (no_v1194119294490) (.cons (no_v1175311552110) (.cons (no_v1170125284890) (.cons (no_v1194437578350) (.cons (no_v1187157651130) (.cons (no_v1207322479534) (.cons (no_v1194119114266) (.cons (no_v1175311551406) (.cons (no_v1170122401306) (.cons (no_v1194437577646) .nil)))))))))))))))))))))))))))))))))))))

theorem five362 : BadRow (bucket false 4 2 4 [1,1,1,1]) := by
  have h : bucket false 4 2 4 [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five363 : BadRow (bucket true 4 2 4 [1,1,1,1]) := by
  have h : bucket true 4 2 4 [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1450090227618 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v1450090227618 : ¬ MinimalInterpreter v1450090227618 :=
  chain_cut false 2 (by decide)

private def v1401803624058 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1401803624058 : ¬ MinimalInterpreter v1401803624058 :=
  chain_cut false 2 (by decide)

private def v1398582398586 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1398582398586 : ¬ MinimalInterpreter v1398582398586 :=
  chain_cut false 2 (by decide)

private def v1398179745402 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1398179745402 : ¬ MinimalInterpreter v1398179745402 :=
  chain_cut false 4 (by decide)

private def v1450090216354 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v1450090216354 : ¬ MinimalInterpreter v1450090216354 :=
  chain_cut false 2 (by decide)

private def v1401803623354 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1401803623354 : ¬ MinimalInterpreter v1401803623354 :=
  chain_cut false 2 (by decide)

private def v1398582397882 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1398582397882 : ¬ MinimalInterpreter v1398582397882 :=
  chain_cut false 2 (by decide)

private def v1398179744698 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1398179744698 : ¬ MinimalInterpreter v1398179744698 :=
  chain_cut false 4 (by decide)

private def v1450089867170 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))) (.lam (.var 0)))
private theorem no_v1450089867170 : ¬ MinimalInterpreter v1450089867170 :=
  chain_cut false 2 (by decide)

private def v1401803601530 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1401803601530 : ¬ MinimalInterpreter v1401803601530 :=
  chain_cut false 2 (by decide)

private def v1398582376058 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1398582376058 : ¬ MinimalInterpreter v1398582376058 :=
  chain_cut false 2 (by decide)

private def v1398179722874 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1398179722874 : ¬ MinimalInterpreter v1398179722874 :=
  chain_cut false 4 (by decide)

private def v1450089855906 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) (.lam (.var 0)))
private theorem no_v1450089855906 : ¬ MinimalInterpreter v1450089855906 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))

private def v1401803600826 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1401803600826 : ¬ MinimalInterpreter v1401803600826 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398582375354 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1398582375354 : ¬ MinimalInterpreter v1398582375354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398179722170 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1398179722170 : ¬ MinimalInterpreter v1398179722170 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1450089765794 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) (.lam (.var 0)))
private theorem no_v1450089765794 : ¬ MinimalInterpreter v1450089765794 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))

private def v1401803595194 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1401803595194 : ¬ MinimalInterpreter v1401803595194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398582369722 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1398582369722 : ¬ MinimalInterpreter v1398582369722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398179716538 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1398179716538 : ¬ MinimalInterpreter v1398179716538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1450095732642 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.var 0)))
private theorem no_v1450095732642 : ¬ MinimalInterpreter v1450095732642 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1381966448154 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1381966448154 : ¬ MinimalInterpreter v1381966448154 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1381966448226 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v1381966448226 : ¬ MinimalInterpreter v1381966448226 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1401803968122 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1401803968122 : ¬ MinimalInterpreter v1401803968122 :=
  chain_cut false 3 (by decide)

private def v1381966448034 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v1381966448034 : ¬ MinimalInterpreter v1381966448034 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1398582742650 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1398582742650 : ¬ MinimalInterpreter v1398582742650 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1381966448010 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v1381966448010 : ¬ MinimalInterpreter v1381966448010 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)))) (.app (.var 1) (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.var 0))) (.var 0) (by decide) (by decide))))

private def v1398180089466 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1398180089466 : ¬ MinimalInterpreter v1398180089466 :=
  chain_cut false 2 (by decide)

private def v1450095721378 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.var 0)))
private theorem no_v1450095721378 : ¬ MinimalInterpreter v1450095721378 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.var 0))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.var 0))))

private def v1381954913818 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1381954913818 : ¬ MinimalInterpreter v1381954913818 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))))

private def v1381954913890 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v1381954913890 : ¬ MinimalInterpreter v1381954913890 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))))))

private def v1401803967418 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1401803967418 : ¬ MinimalInterpreter v1401803967418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381954913698 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v1381954913698 : ¬ MinimalInterpreter v1381954913698 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))))))

private def v1398582741946 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1398582741946 : ¬ MinimalInterpreter v1398582741946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381954913674 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v1381954913674 : ¬ MinimalInterpreter v1381954913674 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)))))

private def v1398180088762 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1398180088762 : ¬ MinimalInterpreter v1398180088762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem five364 : BadRow (bucket false 4 2 4 [1,1,2,0]) := by
  have h : bucket false 4 2 4 [1,1,2,0] = [v1450090227618,v1401803624058,v1398582398586,v1398179745402,v1450090216354,v1401803623354,v1398582397882,v1398179744698,v1450089867170,v1401803601530,v1398582376058,v1398179722874,v1450089855906,v1401803600826,v1398582375354,v1398179722170,v1450089765794,v1401803595194,v1398582369722,v1398179716538,v1450095732642,v1381966448154,v1381966448226,v1401803968122,v1381966448034,v1398582742650,v1381966448010,v1398180089466,v1450095721378,v1381954913818,v1381954913890,v1401803967418,v1381954913698,v1398582741946,v1381954913674,v1398180088762] := by decide +kernel
  rw [h]
  exact (.cons (no_v1450090227618) (.cons (no_v1401803624058) (.cons (no_v1398582398586) (.cons (no_v1398179745402) (.cons (no_v1450090216354) (.cons (no_v1401803623354) (.cons (no_v1398582397882) (.cons (no_v1398179744698) (.cons (no_v1450089867170) (.cons (no_v1401803601530) (.cons (no_v1398582376058) (.cons (no_v1398179722874) (.cons (no_v1450089855906) (.cons (no_v1401803600826) (.cons (no_v1398582375354) (.cons (no_v1398179722170) (.cons (no_v1450089765794) (.cons (no_v1401803595194) (.cons (no_v1398582369722) (.cons (no_v1398179716538) (.cons (no_v1450095732642) (.cons (no_v1381966448154) (.cons (no_v1381966448226) (.cons (no_v1401803968122) (.cons (no_v1381966448034) (.cons (no_v1398582742650) (.cons (no_v1381966448010) (.cons (no_v1398180089466) (.cons (no_v1450095721378) (.cons (no_v1381954913818) (.cons (no_v1381954913890) (.cons (no_v1401803967418) (.cons (no_v1381954913698) (.cons (no_v1398582741946) (.cons (no_v1381954913674) (.cons (no_v1398180088762) .nil))))))))))))))))))))))))))))))))))))

private def v1187156277738 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.var 0)))
private theorem no_v1187156277738 : ¬ MinimalInterpreter v1187156277738 :=
  chain_cut false 2 (by decide)

private def v1207322136186 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1207322136186 : ¬ MinimalInterpreter v1207322136186 :=
  chain_cut true 2 (by decide)

private def v1194031217178 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194031217178 : ¬ MinimalInterpreter v1194031217178 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311208058 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1175311208058 : ¬ MinimalInterpreter v1175311208058 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437234298 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1194437234298 : ¬ MinimalInterpreter v1194437234298 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156274922 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.var 0)))
private theorem no_v1187156274922 : ¬ MinimalInterpreter v1187156274922 :=
  chain_cut false 2 (by decide)

private def v1207322135482 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1207322135482 : ¬ MinimalInterpreter v1207322135482 :=
  chain_cut true 2 (by decide)

private def v1194031036954 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194031036954 : ¬ MinimalInterpreter v1194031036954 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311207354 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1175311207354 : ¬ MinimalInterpreter v1175311207354 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437233594 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1194437233594 : ¬ MinimalInterpreter v1194437233594 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156187626 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))) (.var 0)))
private theorem no_v1187156187626 : ¬ MinimalInterpreter v1187156187626 :=
  chain_cut false 2 (by decide)

private def v1207322113658 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1207322113658 : ¬ MinimalInterpreter v1207322113658 :=
  chain_cut true 2 (by decide)

private def v1194025450010 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025450010 : ¬ MinimalInterpreter v1194025450010 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311185530 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1175311185530 : ¬ MinimalInterpreter v1175311185530 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437211770 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1194437211770 : ¬ MinimalInterpreter v1194437211770 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156184810 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) (.var 0)))
private theorem no_v1187156184810 : ¬ MinimalInterpreter v1187156184810 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))

private def v1207322112954 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v1207322112954 : ¬ MinimalInterpreter v1207322112954 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1194025269786 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025269786 : ¬ MinimalInterpreter v1194025269786 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))

private def v1175311184826 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v1175311184826 : ¬ MinimalInterpreter v1175311184826 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1194437211066 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1194437211066 : ¬ MinimalInterpreter v1194437211066 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1187156162282 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) (.var 0)))
private theorem no_v1187156162282 : ¬ MinimalInterpreter v1187156162282 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))

private def v1207322107322 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v1207322107322 : ¬ MinimalInterpreter v1207322107322 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1194023827994 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194023827994 : ¬ MinimalInterpreter v1194023827994 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))

private def v1175311179194 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v1175311179194 : ¬ MinimalInterpreter v1175311179194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1194437205434 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1194437205434 : ¬ MinimalInterpreter v1194437205434 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1187157653994 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.var 0)))
private theorem no_v1187157653994 : ¬ MinimalInterpreter v1187157653994 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1207322480250 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1207322480250 : ¬ MinimalInterpreter v1207322480250 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194119297562 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194119297562 : ¬ MinimalInterpreter v1194119297562 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311552122 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1175311552122 : ¬ MinimalInterpreter v1175311552122 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1170125334042 : Term := (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1170125334042 : ¬ MinimalInterpreter v1170125334042 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437578362 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1194437578362 : ¬ MinimalInterpreter v1194437578362 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187157651178 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.var 0)))
private theorem no_v1187157651178 : ¬ MinimalInterpreter v1187157651178 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.var 0)) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (.var 0)))

private def v1207322479546 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1207322479546 : ¬ MinimalInterpreter v1207322479546 :=
  so_cut false 0 (show SO (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1194119117338 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194119117338 : ¬ MinimalInterpreter v1194119117338 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))

private def v1175311551418 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1175311551418 : ¬ MinimalInterpreter v1175311551418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1170122450458 : Term := (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1170122450458 : ¬ MinimalInterpreter v1170122450458 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) from (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))))

private def v1194437577658 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1194437577658 : ¬ MinimalInterpreter v1194437577658 :=
  so_cut false 0 (show SO (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem five365 : BadRow (bucket true 4 2 4 [1,1,2,0]) := by
  have h : bucket true 4 2 4 [1,1,2,0] = [v1187156277738,v1207322136186,v1194031217178,v1175311208058,v1194437234298,v1187156274922,v1207322135482,v1194031036954,v1175311207354,v1194437233594,v1187156187626,v1207322113658,v1194025450010,v1175311185530,v1194437211770,v1187156184810,v1207322112954,v1194025269786,v1175311184826,v1194437211066,v1187156162282,v1207322107322,v1194023827994,v1175311179194,v1194437205434,v1187157653994,v1207322480250,v1194119297562,v1175311552122,v1170125334042,v1194437578362,v1187157651178,v1207322479546,v1194119117338,v1175311551418,v1170122450458,v1194437577658] := by decide +kernel
  rw [h]
  exact (.cons (no_v1187156277738) (.cons (no_v1207322136186) (.cons (no_v1194031217178) (.cons (no_v1175311208058) (.cons (no_v1194437234298) (.cons (no_v1187156274922) (.cons (no_v1207322135482) (.cons (no_v1194031036954) (.cons (no_v1175311207354) (.cons (no_v1194437233594) (.cons (no_v1187156187626) (.cons (no_v1207322113658) (.cons (no_v1194025450010) (.cons (no_v1175311185530) (.cons (no_v1194437211770) (.cons (no_v1187156184810) (.cons (no_v1207322112954) (.cons (no_v1194025269786) (.cons (no_v1175311184826) (.cons (no_v1194437211066) (.cons (no_v1187156162282) (.cons (no_v1207322107322) (.cons (no_v1194023827994) (.cons (no_v1175311179194) (.cons (no_v1194437205434) (.cons (no_v1187157653994) (.cons (no_v1207322480250) (.cons (no_v1194119297562) (.cons (no_v1175311552122) (.cons (no_v1170125334042) (.cons (no_v1194437578362) (.cons (no_v1187157651178) (.cons (no_v1207322479546) (.cons (no_v1194119117338) (.cons (no_v1175311551418) (.cons (no_v1170122450458) (.cons (no_v1194437577658) .nil)))))))))))))))))))))))))))))))))))))

private def v1450090230626 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.var 0)))
private theorem no_v1450090230626 : ¬ MinimalInterpreter v1450090230626 :=
  chain_cut false 2 (by decide)

private def v1401803624246 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1401803624246 : ¬ MinimalInterpreter v1401803624246 :=
  chain_cut false 2 (by decide)

private def v1398582398774 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1398582398774 : ¬ MinimalInterpreter v1398582398774 :=
  chain_cut false 2 (by decide)

private def v1398179745590 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1398179745590 : ¬ MinimalInterpreter v1398179745590 :=
  chain_cut false 4 (by decide)

private def v1450090216802 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.lam (.var 0)))
private theorem no_v1450090216802 : ¬ MinimalInterpreter v1450090216802 :=
  chain_cut false 2 (by decide)

private def v1401803623382 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1401803623382 : ¬ MinimalInterpreter v1401803623382 :=
  chain_cut false 2 (by decide)

private def v1398582397910 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1398582397910 : ¬ MinimalInterpreter v1398582397910 :=
  chain_cut false 2 (by decide)

private def v1398179744726 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1398179744726 : ¬ MinimalInterpreter v1398179744726 :=
  chain_cut false 4 (by decide)

private def v1450089870178 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))) (.lam (.var 0)))
private theorem no_v1450089870178 : ¬ MinimalInterpreter v1450089870178 :=
  chain_cut false 2 (by decide)

private def v1401803601718 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1401803601718 : ¬ MinimalInterpreter v1401803601718 :=
  chain_cut false 2 (by decide)

private def v1398582376246 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1398582376246 : ¬ MinimalInterpreter v1398582376246 :=
  chain_cut false 2 (by decide)

private def v1398179723062 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1398179723062 : ¬ MinimalInterpreter v1398179723062 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1450089856354 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))) (.lam (.var 0)))
private theorem no_v1450089856354 : ¬ MinimalInterpreter v1450089856354 :=
  chain_cut false 2 (by decide)

private def v1401803600854 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1401803600854 : ¬ MinimalInterpreter v1401803600854 :=
  chain_cut false 2 (by decide)

private def v1398582375382 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1398582375382 : ¬ MinimalInterpreter v1398582375382 :=
  chain_cut false 2 (by decide)

private def v1398179722198 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1398179722198 : ¬ MinimalInterpreter v1398179722198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1450089766242 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))) (.lam (.var 0)))
private theorem no_v1450089766242 : ¬ MinimalInterpreter v1450089766242 :=
  chain_cut false 2 (by decide)

private def v1401803595222 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1401803595222 : ¬ MinimalInterpreter v1401803595222 :=
  chain_cut false 2 (by decide)

private def v1398582369750 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1398582369750 : ¬ MinimalInterpreter v1398582369750 :=
  chain_cut false 2 (by decide)

private def v1398179716566 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1398179716566 : ¬ MinimalInterpreter v1398179716566 :=
  chain_cut false 5 (by decide)

private def v1450095735650 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.var 0)))
private theorem no_v1450095735650 : ¬ MinimalInterpreter v1450095735650 :=
  chain_cut false 9 (by decide)

private def v1381969528346 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1381969528346 : ¬ MinimalInterpreter v1381969528346 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))))

private def v1381969528418 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v1381969528418 : ¬ MinimalInterpreter v1381969528418 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))))

private def v1401803968310 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1401803968310 : ¬ MinimalInterpreter v1401803968310 :=
  chain_cut false 3 (by decide)

private def v1381969528226 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v1381969528226 : ¬ MinimalInterpreter v1381969528226 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))))

private def v1398582742838 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1398582742838 : ¬ MinimalInterpreter v1398582742838 :=
  chain_cut false 9 (by decide)

private def v1381969528202 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v1381969528202 : ¬ MinimalInterpreter v1381969528202 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide))))

private def v1398180089654 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1398180089654 : ¬ MinimalInterpreter v1398180089654 :=
  chain_cut false 2 (by decide)

private def v1450095721826 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.lam (.var 0)))
private theorem no_v1450095721826 : ¬ MinimalInterpreter v1450095721826 :=
  w_cut false 0 (by decide)

private def v1381955372570 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1381955372570 : ¬ MinimalInterpreter v1381955372570 :=
  w_cut false 0 (by decide)

private def v1381955372642 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))
private theorem no_v1381955372642 : ¬ MinimalInterpreter v1381955372642 :=
  so_cut false 1 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.var 1)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))))

private def v1401803967446 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1401803967446 : ¬ MinimalInterpreter v1401803967446 :=
  chain_cut false 3 (by decide)

private def v1381955372450 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))
private theorem no_v1381955372450 : ¬ MinimalInterpreter v1381955372450 :=
  w_cut false 0 (by decide)

private def v1398582741974 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1398582741974 : ¬ MinimalInterpreter v1398582741974 :=
  w_cut false 0 (by decide)

private def v1381955372426 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))
private theorem no_v1381955372426 : ¬ MinimalInterpreter v1381955372426 :=
  so_cut false 1 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)) (.var 1)))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.lam (r := (.var 0)) (g := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0)) (.var 1))) (.app (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide))))

private def v1398180088790 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1398180088790 : ¬ MinimalInterpreter v1398180088790 :=
  chain_cut false 2 (by decide)

theorem five366 : BadRow (bucket false 4 2 4 [1,2,0,1]) := by
  have h : bucket false 4 2 4 [1,2,0,1] = [v1450090230626,v1401803624246,v1398582398774,v1398179745590,v1450090216802,v1401803623382,v1398582397910,v1398179744726,v1450089870178,v1401803601718,v1398582376246,v1398179723062,v1450089856354,v1401803600854,v1398582375382,v1398179722198,v1450089766242,v1401803595222,v1398582369750,v1398179716566,v1450095735650,v1381969528346,v1381969528418,v1401803968310,v1381969528226,v1398582742838,v1381969528202,v1398180089654,v1450095721826,v1381955372570,v1381955372642,v1401803967446,v1381955372450,v1398582741974,v1381955372426,v1398180088790] := by decide +kernel
  rw [h]
  exact (.cons (no_v1450090230626) (.cons (no_v1401803624246) (.cons (no_v1398582398774) (.cons (no_v1398179745590) (.cons (no_v1450090216802) (.cons (no_v1401803623382) (.cons (no_v1398582397910) (.cons (no_v1398179744726) (.cons (no_v1450089870178) (.cons (no_v1401803601718) (.cons (no_v1398582376246) (.cons (no_v1398179723062) (.cons (no_v1450089856354) (.cons (no_v1401803600854) (.cons (no_v1398582375382) (.cons (no_v1398179722198) (.cons (no_v1450089766242) (.cons (no_v1401803595222) (.cons (no_v1398582369750) (.cons (no_v1398179716566) (.cons (no_v1450095735650) (.cons (no_v1381969528346) (.cons (no_v1381969528418) (.cons (no_v1401803968310) (.cons (no_v1381969528226) (.cons (no_v1398582742838) (.cons (no_v1381969528202) (.cons (no_v1398180089654) (.cons (no_v1450095721826) (.cons (no_v1381955372570) (.cons (no_v1381955372642) (.cons (no_v1401803967446) (.cons (no_v1381955372450) (.cons (no_v1398582741974) (.cons (no_v1381955372426) (.cons (no_v1398180088790) .nil))))))))))))))))))))))))))))))))))))

private def v1187156278490 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.var 0)))
private theorem no_v1187156278490 : ¬ MinimalInterpreter v1187156278490 :=
  chain_cut false 2 (by decide)

private def v1207322136374 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1207322136374 : ¬ MinimalInterpreter v1207322136374 :=
  chain_cut true 2 (by decide)

private def v1194031265306 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194031265306 : ¬ MinimalInterpreter v1194031265306 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311208246 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1175311208246 : ¬ MinimalInterpreter v1175311208246 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437234486 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1194437234486 : ¬ MinimalInterpreter v1194437234486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156275034 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.var 0)))
private theorem no_v1187156275034 : ¬ MinimalInterpreter v1187156275034 :=
  chain_cut false 2 (by decide)

private def v1207322135510 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1207322135510 : ¬ MinimalInterpreter v1207322135510 :=
  chain_cut true 2 (by decide)

private def v1194031044122 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194031044122 : ¬ MinimalInterpreter v1194031044122 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311207382 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1175311207382 : ¬ MinimalInterpreter v1175311207382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437233622 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1194437233622 : ¬ MinimalInterpreter v1194437233622 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156188378 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))) (.var 0)))
private theorem no_v1187156188378 : ¬ MinimalInterpreter v1187156188378 :=
  chain_cut false 2 (by decide)

private def v1207322113846 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1207322113846 : ¬ MinimalInterpreter v1207322113846 :=
  chain_cut true 2 (by decide)

private def v1194025498138 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025498138 : ¬ MinimalInterpreter v1194025498138 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311185718 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175311185718 : ¬ MinimalInterpreter v1175311185718 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437211958 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1194437211958 : ¬ MinimalInterpreter v1194437211958 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156184922 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))) (.var 0)))
private theorem no_v1187156184922 : ¬ MinimalInterpreter v1187156184922 :=
  chain_cut false 2 (by decide)

private def v1207322112982 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v1207322112982 : ¬ MinimalInterpreter v1207322112982 :=
  chain_cut true 2 (by decide)

private def v1194025276954 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194025276954 : ¬ MinimalInterpreter v1194025276954 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311184854 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v1175311184854 : ¬ MinimalInterpreter v1175311184854 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437211094 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1194437211094 : ¬ MinimalInterpreter v1194437211094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187156162394 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))) (.var 0)))
private theorem no_v1187156162394 : ¬ MinimalInterpreter v1187156162394 :=
  chain_cut false 2 (by decide)

private def v1207322107350 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v1207322107350 : ¬ MinimalInterpreter v1207322107350 :=
  chain_cut true 2 (by decide)

private def v1194023835162 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194023835162 : ¬ MinimalInterpreter v1194023835162 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311179222 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v1175311179222 : ¬ MinimalInterpreter v1175311179222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437205462 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1194437205462 : ¬ MinimalInterpreter v1194437205462 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187157654746 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.var 0)))
private theorem no_v1187157654746 : ¬ MinimalInterpreter v1187157654746 :=
  chain_cut false 9 (by decide)

private def v1207322480438 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1207322480438 : ¬ MinimalInterpreter v1207322480438 :=
  chain_cut true 8 (by decide)

private def v1194119345690 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194119345690 : ¬ MinimalInterpreter v1194119345690 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311552310 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1175311552310 : ¬ MinimalInterpreter v1175311552310 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1170126104090 : Term := (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1170126104090 : ¬ MinimalInterpreter v1170126104090 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437578550 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1194437578550 : ¬ MinimalInterpreter v1194437578550 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1187157651290 : Term := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.var 0)))
private theorem no_v1187157651290 : ¬ MinimalInterpreter v1187157651290 :=
  w_cut false 0 (by decide)

private def v1207322479574 : Term := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1207322479574 : ¬ MinimalInterpreter v1207322479574 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194119124506 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))))
private theorem no_v1194119124506 : ¬ MinimalInterpreter v1194119124506 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175311551446 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1175311551446 : ¬ MinimalInterpreter v1175311551446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1170122565146 : Term := (.lam (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))
private theorem no_v1170122565146 : ¬ MinimalInterpreter v1170122565146 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1194437577686 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1194437577686 : ¬ MinimalInterpreter v1194437577686 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five367 : BadRow (bucket true 4 2 4 [1,2,0,1]) := by
  have h : bucket true 4 2 4 [1,2,0,1] = [v1187156278490,v1207322136374,v1194031265306,v1175311208246,v1194437234486,v1187156275034,v1207322135510,v1194031044122,v1175311207382,v1194437233622,v1187156188378,v1207322113846,v1194025498138,v1175311185718,v1194437211958,v1187156184922,v1207322112982,v1194025276954,v1175311184854,v1194437211094,v1187156162394,v1207322107350,v1194023835162,v1175311179222,v1194437205462,v1187157654746,v1207322480438,v1194119345690,v1175311552310,v1170126104090,v1194437578550,v1187157651290,v1207322479574,v1194119124506,v1175311551446,v1170122565146,v1194437577686] := by decide +kernel
  rw [h]
  exact (.cons (no_v1187156278490) (.cons (no_v1207322136374) (.cons (no_v1194031265306) (.cons (no_v1175311208246) (.cons (no_v1194437234486) (.cons (no_v1187156275034) (.cons (no_v1207322135510) (.cons (no_v1194031044122) (.cons (no_v1175311207382) (.cons (no_v1194437233622) (.cons (no_v1187156188378) (.cons (no_v1207322113846) (.cons (no_v1194025498138) (.cons (no_v1175311185718) (.cons (no_v1194437211958) (.cons (no_v1187156184922) (.cons (no_v1207322112982) (.cons (no_v1194025276954) (.cons (no_v1175311184854) (.cons (no_v1194437211094) (.cons (no_v1187156162394) (.cons (no_v1207322107350) (.cons (no_v1194023835162) (.cons (no_v1175311179222) (.cons (no_v1194437205462) (.cons (no_v1187157654746) (.cons (no_v1207322480438) (.cons (no_v1194119345690) (.cons (no_v1175311552310) (.cons (no_v1170126104090) (.cons (no_v1194437578550) (.cons (no_v1187157651290) (.cons (no_v1207322479574) (.cons (no_v1194119124506) (.cons (no_v1175311551446) (.cons (no_v1170122565146) (.cons (no_v1194437577686) .nil)))))))))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
