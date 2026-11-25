import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v37849636662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v37849636662 : ¬ MinimalInterpreter v37849636662 :=
  chain_cut false 2 (by decide)

private def v37849634774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v37849634774 : ¬ MinimalInterpreter v37849634774 :=
  chain_cut false 2 (by decide)

private def v37849591606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 1))))))))
private theorem no_v37849591606 : ¬ MinimalInterpreter v37849591606 :=
  chain_cut false 2 (by decide)

private def v37849589718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 1)))))))
private theorem no_v37849589718 : ¬ MinimalInterpreter v37849589718 :=
  chain_cut false 2 (by decide)

private def v37849578454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 1)))))))
private theorem no_v37849578454 : ¬ MinimalInterpreter v37849578454 :=
  chain_cut false 2 (by decide)

private def v37850156854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))
private theorem no_v37850156854 : ¬ MinimalInterpreter v37850156854 :=
  chain_cut false 2 (by decide)

private def v37850112982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 1))))))
private theorem no_v37850112982 : ¬ MinimalInterpreter v37850112982 :=
  chain_cut false 2 (by decide)

private def v37853077302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v37853077302 : ¬ MinimalInterpreter v37853077302 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37853075414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v37853075414 : ¬ MinimalInterpreter v37853075414 :=
  chain_cut false 5 (by decide)

theorem row72 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [1,3,0,1]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [1,3,0,1] = [v37849636662,v37849634774,v37849591606,v37849589718,v37849578454,v37850156854,v37850112982,v37853077302,v37853075414] := by decide
  rw [h]
  exact (.cons (no_v37849636662) (.cons (no_v37849634774) (.cons (no_v37849591606) (.cons (no_v37849589718) (.cons (no_v37849578454) (.cons (no_v37850156854) (.cons (no_v37850112982) (.cons (no_v37853077302) (.cons (no_v37853075414) .nil)))))))))

private def v37849636666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v37849636666 : ¬ MinimalInterpreter v37849636666 :=
  chain_cut false 2 (by decide)

private def v37849634778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v37849634778 : ¬ MinimalInterpreter v37849634778 :=
  chain_cut false 2 (by decide)

private def v37849591610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 1) (.var 0))))))))
private theorem no_v37849591610 : ¬ MinimalInterpreter v37849591610 :=
  chain_cut false 2 (by decide)

private def v37849589722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 0)))))))
private theorem no_v37849589722 : ¬ MinimalInterpreter v37849589722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 2) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v37849578458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 0)))))))
private theorem no_v37849578458 : ¬ MinimalInterpreter v37849578458 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v37850156858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))
private theorem no_v37850156858 : ¬ MinimalInterpreter v37850156858 :=
  chain_cut false 2 (by decide)

private def v37850154970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 1)))) (.var 0))))))
private theorem no_v37850154970 : ¬ MinimalInterpreter v37850154970 :=
  chain_cut false 2 (by decide)

private def v37850112986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 1)) (.var 0))))))
private theorem no_v37850112986 : ¬ MinimalInterpreter v37850112986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 1)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v37853077306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v37853077306 : ¬ MinimalInterpreter v37853077306 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37853075418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v37853075418 : ¬ MinimalInterpreter v37853075418 :=
  w_cut false 0 (by decide)

theorem row73 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [1,3,1,0]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [1,3,1,0] = [v37849636666,v37849634778,v37849591610,v37849589722,v37849578458,v37850156858,v37850154970,v37850112986,v37853077306,v37853075418] := by decide
  rw [h]
  exact (.cons (no_v37849636666) (.cons (no_v37849634778) (.cons (no_v37849591610) (.cons (no_v37849589722) (.cons (no_v37849578458) (.cons (no_v37850156858) (.cons (no_v37850154970) (.cons (no_v37850112986) (.cons (no_v37853077306) (.cons (no_v37853075418) .nil))))))))))

private def v37849648350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 3)))))))))
private theorem no_v37849648350 : ¬ MinimalInterpreter v37849648350 :=
  chain_cut false 2 (by decide)

private def v37849647966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 3))))))))
private theorem no_v37849647966 : ¬ MinimalInterpreter v37849647966 :=
  chain_cut false 2 (by decide)

private def v37849593054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 3))))))))
private theorem no_v37849593054 : ¬ MinimalInterpreter v37849593054 :=
  chain_cut false 2 (by decide)

private def v37849592670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 3)))))))
private theorem no_v37849592670 : ¬ MinimalInterpreter v37849592670 :=
  chain_cut false 2 (by decide)

private def v37849578846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 3)))))))
private theorem no_v37849578846 : ¬ MinimalInterpreter v37849578846 :=
  chain_cut false 2 (by decide)

theorem row74 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [2,0,0,3]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [2,0,0,3] = [v37849648350,v37849647966,v37849593054,v37849592670,v37849578846] := by decide
  rw [h]
  exact (.cons (no_v37849648350) (.cons (no_v37849647966) (.cons (no_v37849593054) (.cons (no_v37849592670) (.cons (no_v37849578846) .nil)))))

private def v37849648366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v37849648366 : ¬ MinimalInterpreter v37849648366 :=
  cost_cut false 2 (by decide)

private def v37849647982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v37849647982 : ¬ MinimalInterpreter v37849647982 :=
  cost_cut false 2 (by decide)

private def v37849593070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v37849593070 : ¬ MinimalInterpreter v37849593070 :=
  cost_cut false 2 (by decide)

private def v37849592686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v37849592686 : ¬ MinimalInterpreter v37849592686 :=
  cost_cut false 2 (by decide)

private def v37849578862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v37849578862 : ¬ MinimalInterpreter v37849578862 :=
  cost_cut false 2 (by decide)

private def v37850394862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v37850394862 : ¬ MinimalInterpreter v37850394862 :=
  chain_cut false 2 (by decide)

private def v37850395534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))))
private theorem no_v37850395534 : ¬ MinimalInterpreter v37850395534 :=
  chain_cut false 2 (by decide)

private def v37850393998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))))
private theorem no_v37850393998 : ¬ MinimalInterpreter v37850393998 :=
  chain_cut false 2 (by decide)

private def v37850173678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v37850173678 : ¬ MinimalInterpreter v37850173678 :=
  chain_cut false 2 (by decide)

private def v37850174350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 2))))))))
private theorem no_v37850174350 : ¬ MinimalInterpreter v37850174350 :=
  chain_cut false 2 (by decide)

private def v37850172814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 2)))))))
private theorem no_v37850172814 : ¬ MinimalInterpreter v37850172814 :=
  chain_cut false 2 (by decide)

private def v37850117518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 2)))))))
private theorem no_v37850117518 : ¬ MinimalInterpreter v37850117518 :=
  chain_cut false 2 (by decide)

theorem row75 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [2,0,1,2]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [2,0,1,2] = [v37849648366,v37849647982,v37849593070,v37849592686,v37849578862,v37850394862,v37850395534,v37850393998,v37850173678,v37850174350,v37850172814,v37850117518] := by decide
  rw [h]
  exact (.cons (no_v37849648366) (.cons (no_v37849647982) (.cons (no_v37849593070) (.cons (no_v37849592686) (.cons (no_v37849578862) (.cons (no_v37850394862) (.cons (no_v37850395534) (.cons (no_v37850393998) (.cons (no_v37850173678) (.cons (no_v37850174350) (.cons (no_v37850172814) (.cons (no_v37850117518) .nil))))))))))))

private def v37849648374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v37849648374 : ¬ MinimalInterpreter v37849648374 :=
  cost_cut false 2 (by decide)

private def v37849647990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v37849647990 : ¬ MinimalInterpreter v37849647990 :=
  cost_cut false 2 (by decide)

private def v37849593078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v37849593078 : ¬ MinimalInterpreter v37849593078 :=
  cost_cut false 2 (by decide)

private def v37849592694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v37849592694 : ¬ MinimalInterpreter v37849592694 :=
  cost_cut false 2 (by decide)

private def v37849578870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v37849578870 : ¬ MinimalInterpreter v37849578870 :=
  cost_cut false 2 (by decide)

private def v37850394870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v37850394870 : ¬ MinimalInterpreter v37850394870 :=
  chain_cut false 2 (by decide)

private def v37850393718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))))
private theorem no_v37850393718 : ¬ MinimalInterpreter v37850393718 :=
  chain_cut false 2 (by decide)

private def v37850173686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v37850173686 : ¬ MinimalInterpreter v37850173686 :=
  chain_cut false 2 (by decide)

private def v37850172534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 1))))))
private theorem no_v37850172534 : ¬ MinimalInterpreter v37850172534 :=
  chain_cut false 2 (by decide)

private def v37850117238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 1))))))
private theorem no_v37850117238 : ¬ MinimalInterpreter v37850117238 :=
  chain_cut false 2 (by decide)

theorem row76 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [2,0,2,1]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [2,0,2,1] = [v37849648374,v37849647990,v37849593078,v37849592694,v37849578870,v37850394870,v37850393718,v37850173686,v37850172534,v37850117238] := by decide
  rw [h]
  exact (.cons (no_v37849648374) (.cons (no_v37849647990) (.cons (no_v37849593078) (.cons (no_v37849592694) (.cons (no_v37849578870) (.cons (no_v37850394870) (.cons (no_v37850393718) (.cons (no_v37850173686) (.cons (no_v37850172534) (.cons (no_v37850117238) .nil))))))))))

private def v37849648378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 3) (.var 0)))))))))
private theorem no_v37849648378 : ¬ MinimalInterpreter v37849648378 :=
  chain_cut false 2 (by decide)

private def v37849647994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 3)) (.var 0))))))))
private theorem no_v37849647994 : ¬ MinimalInterpreter v37849647994 :=
  chain_cut false 2 (by decide)

private def v37849593082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 3) (.var 0))))))))
private theorem no_v37849593082 : ¬ MinimalInterpreter v37849593082 :=
  chain_cut false 2 (by decide)

private def v37849592698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 3))) (.var 0)))))))
private theorem no_v37849592698 : ¬ MinimalInterpreter v37849592698 :=
  chain_cut false 2 (by decide)

private def v37849578874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 3)) (.var 0)))))))
private theorem no_v37849578874 : ¬ MinimalInterpreter v37849578874 :=
  chain_cut false 2 (by decide)

theorem row77 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [2,0,3,0]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [2,0,3,0] = [v37849648378,v37849647994,v37849593082,v37849592698,v37849578874] := by decide
  rw [h]
  exact (.cons (no_v37849648378) (.cons (no_v37849647994) (.cons (no_v37849593082) (.cons (no_v37849592698) (.cons (no_v37849578874) .nil)))))

end Blc.SelfintSingleObject.Rows37
