import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402313499254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 1))))))))
private theorem no_v1402313499254 : ¬ MinimalInterpreter v1402313499254 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 1)))) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))

private def v1402313499062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 1)))) (.var 1)))))))
private theorem no_v1402313499062 : ¬ MinimalInterpreter v1402313499062 :=
  chain_cut false 2 (by decide)

private def v1402313472182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 1)))))))
private theorem no_v1402313472182 : ¬ MinimalInterpreter v1402313472182 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.var 1))) (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))

private def v1402312712822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 1) (.var 1)))))))
private theorem no_v1402312712822 : ¬ MinimalInterpreter v1402312712822 :=
  chain_cut false 2 (by decide)

private def v1402312516214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 1)))))))
private theorem no_v1402312516214 : ¬ MinimalInterpreter v1402312516214 :=
  chain_cut false 2 (by decide)

private def v1402312712630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 1))))) (.var 1))))))
private theorem no_v1402312712630 : ¬ MinimalInterpreter v1402312712630 :=
  chain_cut false 2 (by decide)

private def v1402312685750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.var 1))))))
private theorem no_v1402312685750 : ¬ MinimalInterpreter v1402312685750 :=
  chain_cut false 2 (by decide)

private def v1402312516022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 1)))) (.var 1))))))
private theorem no_v1402312516022 : ¬ MinimalInterpreter v1402312516022 :=
  chain_cut false 2 (by decide)

private def v1402312489142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)) (.var 1))))))
private theorem no_v1402312489142 : ¬ MinimalInterpreter v1402312489142 :=
  chain_cut false 2 (by decide)

private def v1402312439990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 1))))))
private theorem no_v1402312439990 : ¬ MinimalInterpreter v1402312439990 :=
  chain_cut false 2 (by decide)

private def v1402332373430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 1)))) (.var 1)))))))
private theorem no_v1402332373430 : ¬ MinimalInterpreter v1402332373430 :=
  chain_cut false 2 (by decide)

private def v1402329921974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 1)))))
private theorem no_v1402329921974 : ¬ MinimalInterpreter v1402329921974 :=
  chain_cut false 2 (by decide)

private def v1402329915062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))) (.var 1)))))
private theorem no_v1402329915062 : ¬ MinimalInterpreter v1402329915062 :=
  chain_cut false 2 (by decide)

private def v1402407609974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402407609974 : ¬ MinimalInterpreter v1402407609974 :=
  chain_cut false 4 (by decide)

private def v1402407609782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))))
private theorem no_v1402407609782 : ¬ MinimalInterpreter v1402407609782 :=
  chain_cut false 4 (by decide)

private def v1402407582326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1402407582326 : ¬ MinimalInterpreter v1402407582326 :=
  chain_cut false 4 (by decide)

private def v1402407582134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))))
private theorem no_v1402407582134 : ¬ MinimalInterpreter v1402407582134 :=
  chain_cut false 4 (by decide)

private def v1402407575222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))))
private theorem no_v1402407575222 : ¬ MinimalInterpreter v1402407575222 :=
  chain_cut false 4 (by decide)

private def v1402407870902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 1)))) (.var 1)))))))
private theorem no_v1402407870902 : ¬ MinimalInterpreter v1402407870902 :=
  chain_cut false 5 (by decide)

theorem five696 : BadRow (bucket false 4 3 5 [0,2,0,1,1]) := by
  have h : bucket false 4 3 5 [0,2,0,1,1] = [v1402313499254,v1402313499062,v1402313472182,v1402312712822,v1402312516214,v1402312712630,v1402312685750,v1402312516022,v1402312489142,v1402312439990,v1402332373430,v1402329921974,v1402329915062,v1402407609974,v1402407609782,v1402407582326,v1402407582134,v1402407575222,v1402407870902] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313499254) (.cons (no_v1402313499062) (.cons (no_v1402313472182) (.cons (no_v1402312712822) (.cons (no_v1402312516214) (.cons (no_v1402312712630) (.cons (no_v1402312685750) (.cons (no_v1402312516022) (.cons (no_v1402312489142) (.cons (no_v1402312439990) (.cons (no_v1402332373430) (.cons (no_v1402329921974) (.cons (no_v1402329915062) (.cons (no_v1402407609974) (.cons (no_v1402407609782) (.cons (no_v1402407582326) (.cons (no_v1402407582134) (.cons (no_v1402407575222) (.cons (no_v1402407870902) .nil)))))))))))))))))))

theorem five697 : BadRow (bucket true 4 3 5 [0,2,0,1,1]) := by
  have h : bucket true 4 3 5 [0,2,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313606778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402313606778 : ¬ MinimalInterpreter v1402313606778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.app (.var 2) (.var 0)))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1) (by decide) (by decide)))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313606586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v1402313606586 : ¬ MinimalInterpreter v1402313606586 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))))) (.lam (r := (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1) (by decide) (by decide)))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313611386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))))))))
private theorem no_v1402313611386 : ¬ MinimalInterpreter v1402313611386 :=
  chain_cut false 2 (by decide)

private def v1402313500794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 0)))))))))
private theorem no_v1402313500794 : ¬ MinimalInterpreter v1402313500794 :=
  chain_cut false 2 (by decide)

private def v1402313499066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.var 0)))))))
private theorem no_v1402313499066 : ¬ MinimalInterpreter v1402313499066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide))) (.var 0))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312820346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402312820346 : ¬ MinimalInterpreter v1402312820346 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312820154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v1402312820154 : ¬ MinimalInterpreter v1402312820154 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312824954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.app (.var 2) (.var 0)))))))))
private theorem no_v1402312824954 : ¬ MinimalInterpreter v1402312824954 :=
  chain_cut false 2 (by decide)

private def v1402312714362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.app (.var 2) (.var 0))))))))
private theorem no_v1402312714362 : ¬ MinimalInterpreter v1402312714362 :=
  chain_cut false 2 (by decide)

private def v1402312517754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.app (.var 2) (.var 0))))))))
private theorem no_v1402312517754 : ¬ MinimalInterpreter v1402312517754 :=
  chain_cut false 2 (by decide)

private def v1402312620666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312620666 : ¬ MinimalInterpreter v1402312620666 :=
  chain_cut false 2 (by decide)

private def v1402312712634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))) (.var 0))))))
private theorem no_v1402312712634 : ¬ MinimalInterpreter v1402312712634 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide)))) (.var 0)) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312516026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 2)))) (.var 0))))))
private theorem no_v1402312516026 : ¬ MinimalInterpreter v1402312516026 :=
  chain_cut false 2 (by decide)

private def v1402312466106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 2)) (.var 0))))))
private theorem no_v1402312466106 : ¬ MinimalInterpreter v1402312466106 :=
  chain_cut false 2 (by decide)

private def v1402332485754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))))))))
private theorem no_v1402332485754 : ¬ MinimalInterpreter v1402332485754 :=
  chain_cut false 2 (by decide)

private def v1402332375162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 0)))))))))
private theorem no_v1402332375162 : ¬ MinimalInterpreter v1402332375162 :=
  chain_cut false 2 (by decide)

private def v1402332373434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.var 0)))))))
private theorem no_v1402332373434 : ¬ MinimalInterpreter v1402332373434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide))) (.var 0)) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402407983226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))))))))
private theorem no_v1402407983226 : ¬ MinimalInterpreter v1402407983226 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407872634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 0)))))))))
private theorem no_v1402407872634 : ¬ MinimalInterpreter v1402407872634 :=
  chain_cut false 5 (by decide)

private def v1402407870906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.var 0)))))))
private theorem no_v1402407870906 : ¬ MinimalInterpreter v1402407870906 :=
  w_cut false 0 (by decide)

theorem five698 : BadRow (bucket false 4 3 5 [0,2,0,2,0]) := by
  have h : bucket false 4 3 5 [0,2,0,2,0] = [v1402313606778,v1402313606586,v1402313611386,v1402313500794,v1402313499066,v1402312820346,v1402312820154,v1402312824954,v1402312714362,v1402312517754,v1402312620666,v1402312712634,v1402312516026,v1402312466106,v1402332485754,v1402332375162,v1402332373434,v1402407983226,v1402407872634,v1402407870906] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313606778) (.cons (no_v1402313606586) (.cons (no_v1402313611386) (.cons (no_v1402313500794) (.cons (no_v1402313499066) (.cons (no_v1402312820346) (.cons (no_v1402312820154) (.cons (no_v1402312824954) (.cons (no_v1402312714362) (.cons (no_v1402312517754) (.cons (no_v1402312620666) (.cons (no_v1402312712634) (.cons (no_v1402312516026) (.cons (no_v1402312466106) (.cons (no_v1402332485754) (.cons (no_v1402332375162) (.cons (no_v1402332373434) (.cons (no_v1402407983226) (.cons (no_v1402407872634) (.cons (no_v1402407870906) .nil))))))))))))))))))))

theorem five699 : BadRow (bucket true 4 3 5 [0,2,0,2,0]) := by
  have h : bucket true 4 3 5 [0,2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313612342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 1))))))))))
private theorem no_v1402313612342 : ¬ MinimalInterpreter v1402313612342 :=
  chain_cut false 2 (by decide)

private def v1402313611030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))))))
private theorem no_v1402313611030 : ¬ MinimalInterpreter v1402313611030 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 1)))) (.app (.var 1) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313501750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402313501750 : ¬ MinimalInterpreter v1402313501750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 1))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313499094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 1) (.var 0)))) (.var 1)))))))
private theorem no_v1402313499094 : ¬ MinimalInterpreter v1402313499094 :=
  chain_cut false 2 (by decide)

private def v1402313500438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v1402313500438 : ¬ MinimalInterpreter v1402313500438 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 1))) (.app (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313472790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v1402313472790 : ¬ MinimalInterpreter v1402313472790 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 1))))) (.lam (r := (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.var 1))) (.app (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312825910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402312825910 : ¬ MinimalInterpreter v1402312825910 :=
  chain_cut false 2 (by decide)

private def v1402312824598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))))
private theorem no_v1402312824598 : ¬ MinimalInterpreter v1402312824598 :=
  chain_cut false 2 (by decide)

private def v1402312715318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.var 1))))))))
private theorem no_v1402312715318 : ¬ MinimalInterpreter v1402312715318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312518710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.var 1))))))))
private theorem no_v1402312518710 : ¬ MinimalInterpreter v1402312518710 :=
  chain_cut false 2 (by decide)

private def v1402312712662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.var 0))))) (.var 1))))))
private theorem no_v1402312712662 : ¬ MinimalInterpreter v1402312712662 :=
  chain_cut false 2 (by decide)

private def v1402312714006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 1))))))
private theorem no_v1402312714006 : ¬ MinimalInterpreter v1402312714006 :=
  chain_cut false 2 (by decide)

private def v1402312686358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 1))))))
private theorem no_v1402312686358 : ¬ MinimalInterpreter v1402312686358 :=
  chain_cut false 2 (by decide)

private def v1402312516054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 0)))) (.var 1))))))
private theorem no_v1402312516054 : ¬ MinimalInterpreter v1402312516054 :=
  chain_cut false 2 (by decide)

private def v1402312517398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 1))))))
private theorem no_v1402312517398 : ¬ MinimalInterpreter v1402312517398 :=
  chain_cut false 2 (by decide)

private def v1402312489750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 1))))))
private theorem no_v1402312489750 : ¬ MinimalInterpreter v1402312489750 :=
  chain_cut false 2 (by decide)

private def v1402312440598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 1))))))
private theorem no_v1402312440598 : ¬ MinimalInterpreter v1402312440598 :=
  chain_cut false 2 (by decide)

private def v1402332486710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 1))))))))))
private theorem no_v1402332486710 : ¬ MinimalInterpreter v1402332486710 :=
  chain_cut false 2 (by decide)

private def v1402332376118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402332376118 : ¬ MinimalInterpreter v1402332376118 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.var 2) (.var 1)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332373462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 0)))) (.var 1)))))))
private theorem no_v1402332373462 : ¬ MinimalInterpreter v1402332373462 :=
  chain_cut false 2 (by decide)

private def v1402329922006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 1)))))
private theorem no_v1402329922006 : ¬ MinimalInterpreter v1402329922006 :=
  chain_cut false 2 (by decide)

private def v1402329915094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 1)))))
private theorem no_v1402329915094 : ¬ MinimalInterpreter v1402329915094 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1402407610166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402407610166 : ¬ MinimalInterpreter v1402407610166 :=
  chain_cut false 4 (by decide)

private def v1402407609814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))))
private theorem no_v1402407609814 : ¬ MinimalInterpreter v1402407609814 :=
  chain_cut false 4 (by decide)

private def v1402407582518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402407582518 : ¬ MinimalInterpreter v1402407582518 :=
  chain_cut false 4 (by decide)

private def v1402407582166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))))
private theorem no_v1402407582166 : ¬ MinimalInterpreter v1402407582166 :=
  chain_cut false 4 (by decide)

private def v1402407575254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))))
private theorem no_v1402407575254 : ¬ MinimalInterpreter v1402407575254 :=
  chain_cut false 4 (by decide)

private def v1402407984182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 1))))))))))
private theorem no_v1402407984182 : ¬ MinimalInterpreter v1402407984182 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407873590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 1)))))))))
private theorem no_v1402407873590 : ¬ MinimalInterpreter v1402407873590 :=
  w_cut false 0 (by decide)

private def v1402407870934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 0)))) (.var 1)))))))
private theorem no_v1402407870934 : ¬ MinimalInterpreter v1402407870934 :=
  chain_cut false 5 (by decide)

theorem five700 : BadRow (bucket false 4 3 5 [0,2,1,0,1]) := by
  have h : bucket false 4 3 5 [0,2,1,0,1] = [v1402313612342,v1402313611030,v1402313501750,v1402313499094,v1402313500438,v1402313472790,v1402312825910,v1402312824598,v1402312715318,v1402312518710,v1402312712662,v1402312714006,v1402312686358,v1402312516054,v1402312517398,v1402312489750,v1402312440598,v1402332486710,v1402332376118,v1402332373462,v1402329922006,v1402329915094,v1402407610166,v1402407609814,v1402407582518,v1402407582166,v1402407575254,v1402407984182,v1402407873590,v1402407870934] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313612342) (.cons (no_v1402313611030) (.cons (no_v1402313501750) (.cons (no_v1402313499094) (.cons (no_v1402313500438) (.cons (no_v1402313472790) (.cons (no_v1402312825910) (.cons (no_v1402312824598) (.cons (no_v1402312715318) (.cons (no_v1402312518710) (.cons (no_v1402312712662) (.cons (no_v1402312714006) (.cons (no_v1402312686358) (.cons (no_v1402312516054) (.cons (no_v1402312517398) (.cons (no_v1402312489750) (.cons (no_v1402312440598) (.cons (no_v1402332486710) (.cons (no_v1402332376118) (.cons (no_v1402332373462) (.cons (no_v1402329922006) (.cons (no_v1402329915094) (.cons (no_v1402407610166) (.cons (no_v1402407609814) (.cons (no_v1402407582518) (.cons (no_v1402407582166) (.cons (no_v1402407575254) (.cons (no_v1402407984182) (.cons (no_v1402407873590) (.cons (no_v1402407870934) .nil))))))))))))))))))))))))))))))

theorem five701 : BadRow (bucket true 4 3 5 [0,2,1,0,1]) := by
  have h : bucket true 4 3 5 [0,2,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313612346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 0))))))))))
private theorem no_v1402313612346 : ¬ MinimalInterpreter v1402313612346 :=
  chain_cut false 2 (by decide)

private def v1402313612514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v1402313612514 : ¬ MinimalInterpreter v1402313612514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313611106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v1402313611106 : ¬ MinimalInterpreter v1402313611106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.lam (r := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (so_closed_lam (by decide) (.var 0))))) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313501754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402313501754 : ¬ MinimalInterpreter v1402313501754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 0))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313501922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v1402313501922 : ¬ MinimalInterpreter v1402313501922 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.var 0))))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (so_closed_lam (by decide) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313500514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 0))))))))
private theorem no_v1402313500514 : ¬ MinimalInterpreter v1402313500514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 0)))))) (.lam (r := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313472866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v1402313472866 : ¬ MinimalInterpreter v1402313472866 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 0)))))) (.lam (r := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312825914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402312825914 : ¬ MinimalInterpreter v1402312825914 :=
  chain_cut false 2 (by decide)

private def v1402312826082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v1402312826082 : ¬ MinimalInterpreter v1402312826082 :=
  chain_cut false 2 (by decide)

private def v1402312824674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))))
private theorem no_v1402312824674 : ¬ MinimalInterpreter v1402312824674 :=
  chain_cut false 2 (by decide)

private def v1402312715322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 1) (.var 0))))))))
private theorem no_v1402312715322 : ¬ MinimalInterpreter v1402312715322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 1) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 1) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312715490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v1402312715490 : ¬ MinimalInterpreter v1402312715490 :=
  chain_cut false 2 (by decide)

private def v1402312518714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 1) (.var 0))))))))
private theorem no_v1402312518714 : ¬ MinimalInterpreter v1402312518714 :=
  chain_cut false 2 (by decide)

private def v1402312518882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v1402312518882 : ¬ MinimalInterpreter v1402312518882 :=
  chain_cut false 2 (by decide)

private def v1402312714082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.lam (.var 0)))))))
private theorem no_v1402312714082 : ¬ MinimalInterpreter v1402312714082 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312686434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.lam (.var 0)))))))
private theorem no_v1402312686434 : ¬ MinimalInterpreter v1402312686434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.lam (.var 0))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (so_closed_lam (by decide) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312517474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))) (.lam (.var 0)))))))
private theorem no_v1402312517474 : ¬ MinimalInterpreter v1402312517474 :=
  chain_cut false 2 (by decide)

private def v1402312489826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)) (.lam (.var 0)))))))
private theorem no_v1402312489826 : ¬ MinimalInterpreter v1402312489826 :=
  chain_cut false 2 (by decide)

private def v1402312440674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)) (.lam (.var 0)))))))
private theorem no_v1402312440674 : ¬ MinimalInterpreter v1402312440674 :=
  chain_cut false 2 (by decide)

private def v1402332486714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 0))))))))))
private theorem no_v1402332486714 : ¬ MinimalInterpreter v1402332486714 :=
  chain_cut false 2 (by decide)

private def v1402332376122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402332376122 : ¬ MinimalInterpreter v1402332376122 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 0))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.var 2) (.var 1)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402407610170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402407610170 : ¬ MinimalInterpreter v1402407610170 :=
  chain_cut false 4 (by decide)

private def v1402407609818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))))
private theorem no_v1402407609818 : ¬ MinimalInterpreter v1402407609818 :=
  chain_cut false 4 (by decide)

private def v1402407582522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402407582522 : ¬ MinimalInterpreter v1402407582522 :=
  chain_cut false 4 (by decide)

private def v1402407582170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))))
private theorem no_v1402407582170 : ¬ MinimalInterpreter v1402407582170 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402407575258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))))
private theorem no_v1402407575258 : ¬ MinimalInterpreter v1402407575258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402407984186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 0))))))))))
private theorem no_v1402407984186 : ¬ MinimalInterpreter v1402407984186 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407873594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 0)))))))))
private theorem no_v1402407873594 : ¬ MinimalInterpreter v1402407873594 :=
  w_cut false 0 (by decide)

theorem five702 : BadRow (bucket false 4 3 5 [0,2,1,1,0]) := by
  have h : bucket false 4 3 5 [0,2,1,1,0] = [v1402313612346,v1402313612514,v1402313611106,v1402313501754,v1402313501922,v1402313500514,v1402313472866,v1402312825914,v1402312826082,v1402312824674,v1402312715322,v1402312715490,v1402312518714,v1402312518882,v1402312714082,v1402312686434,v1402312517474,v1402312489826,v1402312440674,v1402332486714,v1402332376122,v1402407610170,v1402407609818,v1402407582522,v1402407582170,v1402407575258,v1402407984186,v1402407873594] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313612346) (.cons (no_v1402313612514) (.cons (no_v1402313611106) (.cons (no_v1402313501754) (.cons (no_v1402313501922) (.cons (no_v1402313500514) (.cons (no_v1402313472866) (.cons (no_v1402312825914) (.cons (no_v1402312826082) (.cons (no_v1402312824674) (.cons (no_v1402312715322) (.cons (no_v1402312715490) (.cons (no_v1402312518714) (.cons (no_v1402312518882) (.cons (no_v1402312714082) (.cons (no_v1402312686434) (.cons (no_v1402312517474) (.cons (no_v1402312489826) (.cons (no_v1402312440674) (.cons (no_v1402332486714) (.cons (no_v1402332376122) (.cons (no_v1402407610170) (.cons (no_v1402407609818) (.cons (no_v1402407582522) (.cons (no_v1402407582170) (.cons (no_v1402407575258) (.cons (no_v1402407984186) (.cons (no_v1402407873594) .nil))))))))))))))))))))))))))))

theorem five703 : BadRow (bucket true 4 3 5 [0,2,1,1,0]) := by
  have h : bucket true 4 3 5 [0,2,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
