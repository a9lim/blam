import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402314801978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402314801978 : ¬ MinimalInterpreter v1402314801978 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314801882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1402314801882 : ¬ MinimalInterpreter v1402314801882 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314804282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))))))
private theorem no_v1402314804282 : ¬ MinimalInterpreter v1402314804282 :=
  chain_cut false 2 (by decide)

private def v1402314804450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v1402314804450 : ¬ MinimalInterpreter v1402314804450 :=
  chain_cut false 2 (by decide)

private def v1402314804066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v1402314804066 : ¬ MinimalInterpreter v1402314804066 :=
  chain_cut false 2 (by decide)

private def v1402314781754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402314781754 : ¬ MinimalInterpreter v1402314781754 :=
  chain_cut false 2 (by decide)

private def v1402314781922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v1402314781922 : ¬ MinimalInterpreter v1402314781922 :=
  chain_cut false 2 (by decide)

private def v1402314780986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402314780986 : ¬ MinimalInterpreter v1402314780986 :=
  chain_cut false 2 (by decide)

private def v1402314781538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 0))))))))
private theorem no_v1402314781538 : ¬ MinimalInterpreter v1402314781538 :=
  chain_cut false 2 (by decide)

private def v1402314775906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v1402314775906 : ¬ MinimalInterpreter v1402314775906 :=
  chain_cut false 2 (by decide)

private def v1402314780890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))))
private theorem no_v1402314780890 : ¬ MinimalInterpreter v1402314780890 :=
  chain_cut false 2 (by decide)

private def v1402314775642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v1402314775642 : ¬ MinimalInterpreter v1402314775642 :=
  chain_cut false 2 (by decide)

private def v1402313032506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402313032506 : ¬ MinimalInterpreter v1402313032506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313032410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1402313032410 : ¬ MinimalInterpreter v1402313032410 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313034810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402313034810 : ¬ MinimalInterpreter v1402313034810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313034978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v1402313034978 : ¬ MinimalInterpreter v1402313034978 :=
  chain_cut false 2 (by decide)

private def v1402313034594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))))
private theorem no_v1402313034594 : ¬ MinimalInterpreter v1402313034594 :=
  chain_cut false 2 (by decide)

private def v1402313012282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.app (.var 1) (.var 0))))))))
private theorem no_v1402313012282 : ¬ MinimalInterpreter v1402313012282 :=
  chain_cut false 2 (by decide)

private def v1402313012450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v1402313012450 : ¬ MinimalInterpreter v1402313012450 :=
  chain_cut false 2 (by decide)

private def v1402312569914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.app (.var 1) (.var 0))))))))
private theorem no_v1402312569914 : ¬ MinimalInterpreter v1402312569914 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.app (.var 1) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.app (.var 1) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312570082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v1402312570082 : ¬ MinimalInterpreter v1402312570082 :=
  chain_cut false 2 (by decide)

private def v1402312990010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312990010 : ¬ MinimalInterpreter v1402312990010 :=
  chain_cut false 2 (by decide)

private def v1402313011514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402313011514 : ¬ MinimalInterpreter v1402313011514 :=
  chain_cut false 2 (by decide)

private def v1402312569146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312569146 : ¬ MinimalInterpreter v1402312569146 :=
  chain_cut false 2 (by decide)

private def v1402313012066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))) (.lam (.var 0)))))))
private theorem no_v1402313012066 : ¬ MinimalInterpreter v1402313012066 :=
  chain_cut false 2 (by decide)

private def v1402313006434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))) (.lam (.var 0)))))))
private theorem no_v1402313006434 : ¬ MinimalInterpreter v1402313006434 :=
  chain_cut false 2 (by decide)

private def v1402312569698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))
private theorem no_v1402312569698 : ¬ MinimalInterpreter v1402312569698 :=
  chain_cut false 2 (by decide)

private def v1402312564066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)) (.lam (.var 0)))))))
private theorem no_v1402312564066 : ¬ MinimalInterpreter v1402312564066 :=
  chain_cut false 2 (by decide)

private def v1402312453474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)) (.lam (.var 0)))))))
private theorem no_v1402312453474 : ¬ MinimalInterpreter v1402312453474 :=
  chain_cut false 2 (by decide)

private def v1402313011418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (.var 0))))))
private theorem no_v1402313011418 : ¬ MinimalInterpreter v1402313011418 :=
  chain_cut false 2 (by decide)

private def v1402313006170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 0))))))
private theorem no_v1402313006170 : ¬ MinimalInterpreter v1402313006170 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 1))) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312569050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.var 0))))))
private theorem no_v1402312569050 : ¬ MinimalInterpreter v1402312569050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312558426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 0))))))
private theorem no_v1402312558426 : ¬ MinimalInterpreter v1402312558426 :=
  chain_cut false 2 (by decide)

private def v1402312563802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 0))))))
private theorem no_v1402312563802 : ¬ MinimalInterpreter v1402312563802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 1)) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312453210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v1402312453210 : ¬ MinimalInterpreter v1402312453210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem five768 : BadRow (bucket false 4 3 5 [2,1,0,1,0]) := by
  have h : bucket false 4 3 5 [2,1,0,1,0] = [v1402314801978,v1402314801882,v1402314804282,v1402314804450,v1402314804066,v1402314781754,v1402314781922,v1402314780986,v1402314781538,v1402314775906,v1402314780890,v1402314775642,v1402313032506,v1402313032410,v1402313034810,v1402313034978,v1402313034594,v1402313012282,v1402313012450,v1402312569914,v1402312570082,v1402312990010,v1402313011514,v1402312569146,v1402313012066,v1402313006434,v1402312569698,v1402312564066,v1402312453474,v1402313011418,v1402313006170,v1402312569050,v1402312558426,v1402312563802,v1402312453210] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314801978) (.cons (no_v1402314801882) (.cons (no_v1402314804282) (.cons (no_v1402314804450) (.cons (no_v1402314804066) (.cons (no_v1402314781754) (.cons (no_v1402314781922) (.cons (no_v1402314780986) (.cons (no_v1402314781538) (.cons (no_v1402314775906) (.cons (no_v1402314780890) (.cons (no_v1402314775642) (.cons (no_v1402313032506) (.cons (no_v1402313032410) (.cons (no_v1402313034810) (.cons (no_v1402313034978) (.cons (no_v1402313034594) (.cons (no_v1402313012282) (.cons (no_v1402313012450) (.cons (no_v1402312569914) (.cons (no_v1402312570082) (.cons (no_v1402312990010) (.cons (no_v1402313011514) (.cons (no_v1402312569146) (.cons (no_v1402313012066) (.cons (no_v1402313006434) (.cons (no_v1402312569698) (.cons (no_v1402312564066) (.cons (no_v1402312453474) (.cons (no_v1402313011418) (.cons (no_v1402313006170) (.cons (no_v1402312569050) (.cons (no_v1402312558426) (.cons (no_v1402312563802) (.cons (no_v1402312453210) .nil)))))))))))))))))))))))))))))))))))

theorem five769 : BadRow (bucket true 4 3 5 [2,1,0,1,0]) := by
  have h : bucket true 4 3 5 [2,1,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314802074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402314802074 : ¬ MinimalInterpreter v1402314802074 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314801898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1402314801898 : ¬ MinimalInterpreter v1402314801898 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402314804834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v1402314804834 : ¬ MinimalInterpreter v1402314804834 :=
  chain_cut false 2 (by decide)

private def v1402314804130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v1402314804130 : ¬ MinimalInterpreter v1402314804130 :=
  chain_cut false 2 (by decide)

private def v1402314804106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))))
private theorem no_v1402314804106 : ¬ MinimalInterpreter v1402314804106 :=
  chain_cut false 2 (by decide)

private def v1402314782306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v1402314782306 : ¬ MinimalInterpreter v1402314782306 :=
  chain_cut false 2 (by decide)

private def v1402314781602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 0))))))))
private theorem no_v1402314781602 : ¬ MinimalInterpreter v1402314781602 :=
  chain_cut false 2 (by decide)

private def v1402314775970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v1402314775970 : ¬ MinimalInterpreter v1402314775970 :=
  chain_cut false 2 (by decide)

private def v1402314780906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.var 0)))))))
private theorem no_v1402314780906 : ¬ MinimalInterpreter v1402314780906 :=
  chain_cut false 2 (by decide)

private def v1402314781578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v1402314781578 : ¬ MinimalInterpreter v1402314781578 :=
  chain_cut false 2 (by decide)

private def v1402314775946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v1402314775946 : ¬ MinimalInterpreter v1402314775946 :=
  chain_cut false 2 (by decide)

private def v1402313032602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402313032602 : ¬ MinimalInterpreter v1402313032602 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313032426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1402313032426 : ¬ MinimalInterpreter v1402313032426 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313035362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v1402313035362 : ¬ MinimalInterpreter v1402313035362 :=
  chain_cut false 2 (by decide)

private def v1402313034658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))))
private theorem no_v1402313034658 : ¬ MinimalInterpreter v1402313034658 :=
  chain_cut false 2 (by decide)

private def v1402313034634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))))
private theorem no_v1402313034634 : ¬ MinimalInterpreter v1402313034634 :=
  chain_cut false 2 (by decide)

private def v1402313012834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v1402313012834 : ¬ MinimalInterpreter v1402313012834 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312570466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v1402312570466 : ¬ MinimalInterpreter v1402312570466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.lam (.var 0)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313012130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))) (.lam (.var 0)))))))
private theorem no_v1402313012130 : ¬ MinimalInterpreter v1402313012130 :=
  chain_cut false 2 (by decide)

private def v1402313006498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))) (.lam (.var 0)))))))
private theorem no_v1402313006498 : ¬ MinimalInterpreter v1402313006498 :=
  chain_cut false 2 (by decide)

private def v1402312569762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))) (.lam (.var 0)))))))
private theorem no_v1402312569762 : ¬ MinimalInterpreter v1402312569762 :=
  chain_cut false 2 (by decide)

private def v1402312564130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.var 0)))))))
private theorem no_v1402312564130 : ¬ MinimalInterpreter v1402312564130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312453538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.lam (.var 0)))))))
private theorem no_v1402312453538 : ¬ MinimalInterpreter v1402312453538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313011434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (.var 0))))))
private theorem no_v1402313011434 : ¬ MinimalInterpreter v1402313011434 :=
  chain_cut false 2 (by decide)

private def v1402313012106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 0))))))
private theorem no_v1402313012106 : ¬ MinimalInterpreter v1402313012106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (so_closed_lam (by decide) (.var 0))))) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313006474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 0))))))
private theorem no_v1402313006474 : ¬ MinimalInterpreter v1402313006474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312569066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 0)))) (.var 0))))))
private theorem no_v1402312569066 : ¬ MinimalInterpreter v1402312569066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 0)))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312569738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 0))))))
private theorem no_v1402312569738 : ¬ MinimalInterpreter v1402312569738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312564106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 0))))))
private theorem no_v1402312564106 : ¬ MinimalInterpreter v1402312564106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312453514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 0))))))
private theorem no_v1402312453514 : ¬ MinimalInterpreter v1402312453514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 0)))) (.lam (r := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem five770 : BadRow (bucket false 4 3 5 [2,1,1,0,0]) := by
  have h : bucket false 4 3 5 [2,1,1,0,0] = [v1402314802074,v1402314801898,v1402314804834,v1402314804130,v1402314804106,v1402314782306,v1402314781602,v1402314775970,v1402314780906,v1402314781578,v1402314775946,v1402313032602,v1402313032426,v1402313035362,v1402313034658,v1402313034634,v1402313012834,v1402312570466,v1402313012130,v1402313006498,v1402312569762,v1402312564130,v1402312453538,v1402313011434,v1402313012106,v1402313006474,v1402312569066,v1402312569738,v1402312564106,v1402312453514] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314802074) (.cons (no_v1402314801898) (.cons (no_v1402314804834) (.cons (no_v1402314804130) (.cons (no_v1402314804106) (.cons (no_v1402314782306) (.cons (no_v1402314781602) (.cons (no_v1402314775970) (.cons (no_v1402314780906) (.cons (no_v1402314781578) (.cons (no_v1402314775946) (.cons (no_v1402313032602) (.cons (no_v1402313032426) (.cons (no_v1402313035362) (.cons (no_v1402313034658) (.cons (no_v1402313034634) (.cons (no_v1402313012834) (.cons (no_v1402312570466) (.cons (no_v1402313012130) (.cons (no_v1402313006498) (.cons (no_v1402312569762) (.cons (no_v1402312564130) (.cons (no_v1402312453538) (.cons (no_v1402313011434) (.cons (no_v1402313012106) (.cons (no_v1402313006474) (.cons (no_v1402312569066) (.cons (no_v1402312569738) (.cons (no_v1402312564106) (.cons (no_v1402312453514) .nil))))))))))))))))))))))))))))))

theorem five771 : BadRow (bucket true 4 3 5 [2,1,1,0,0]) := by
  have h : bucket true 4 3 5 [2,1,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402312990362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 0)))))))
private theorem no_v1402312990362 : ¬ MinimalInterpreter v1402312990362 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312990314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0))))))
private theorem no_v1402312990314 : ¬ MinimalInterpreter v1402312990314 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1) (by decide) (by decide))) (.var 0)) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312988586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))) (.var 0))))))
private theorem no_v1402312988586 : ¬ MinimalInterpreter v1402312988586 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1) (by decide) (by decide))) (.var 0)) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312558506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.var 0))))))
private theorem no_v1402312558506 : ¬ MinimalInterpreter v1402312558506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (.var 0)) (.var 0)) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem five772 : BadRow (bucket false 4 3 5 [2,2,0,0,0]) := by
  have h : bucket false 4 3 5 [2,2,0,0,0] = [v1402312990362,v1402312990314,v1402312988586,v1402312558506] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402312990362) (.cons (no_v1402312990314) (.cons (no_v1402312988586) (.cons (no_v1402312558506) .nil))))

theorem five773 : BadRow (bucket true 4 3 5 [2,2,0,0,0]) := by
  have h : bucket true 4 3 5 [2,2,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five774 : BadRow (bucket false 4 3 5 [3,0,0,0,1]) := by
  have h : bucket false 4 3 5 [3,0,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five775 : BadRow (bucket true 4 3 5 [3,0,0,0,1]) := by
  have h : bucket true 4 3 5 [3,0,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
