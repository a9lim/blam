import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row42 : BadRow (row ⟨0,3,0,2,4,3⟩ [0,0,0] [1,0,1,1]) := by
  have h : row ⟨0,3,0,2,4,3⟩ [0,0,0] [1,0,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v37799126650 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v37799126650 : ¬ MinimalInterpreter v37799126650 :=
  chain_cut true 3 (by decide)

private def v37799126458 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v37799126458 : ¬ MinimalInterpreter v37799126458 :=
  chain_cut true 3 (by decide)

private def v37799115386 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v37799115386 : ¬ MinimalInterpreter v37799115386 :=
  chain_cut true 3 (by decide)

private def v37799115194 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v37799115194 : ¬ MinimalInterpreter v37799115194 :=
  chain_cut true 3 (by decide)

private def v37799112378 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v37799112378 : ¬ MinimalInterpreter v37799112378 :=
  chain_cut true 3 (by decide)

private def v37396473466 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v37396473466 : ¬ MinimalInterpreter v37396473466 :=
  chain_cut false 4 (by decide)

private def v37396473274 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v37396473274 : ¬ MinimalInterpreter v37396473274 :=
  chain_cut false 4 (by decide)

private def v37396462202 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v37396462202 : ¬ MinimalInterpreter v37396462202 :=
  chain_cut false 5 (by decide)

private def v37396462010 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v37396462010 : ¬ MinimalInterpreter v37396462010 :=
  chain_cut false 4 (by decide)

private def v37396459194 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v37396459194 : ¬ MinimalInterpreter v37396459194 :=
  chain_cut false 5 (by decide)

theorem row43 : BadRow (row ⟨0,3,0,2,4,3⟩ [0,0,0] [1,0,2,0]) := by
  have h : row ⟨0,3,0,2,4,3⟩ [0,0,0] [1,0,2,0] = [v37799126650,v37799126458,v37799115386,v37799115194,v37799112378,v37396473466,v37396473274,v37396462202,v37396462010,v37396459194] := by decide
  rw [h]
  exact (.cons (no_v37799126650) (.cons (no_v37799126458) (.cons (no_v37799115386) (.cons (no_v37799115194) (.cons (no_v37799112378) (.cons (no_v37396473466) (.cons (no_v37396473274) (.cons (no_v37396462202) (.cons (no_v37396462010) (.cons (no_v37396459194) .nil))))))))))

theorem row44 : BadRow (row ⟨0,3,0,2,4,3⟩ [0,0,0] [1,1,0,1]) := by
  have h : row ⟨0,3,0,2,4,3⟩ [0,0,0] [1,1,0,1] = [] := by decide
  rw [h]
  exact .nil

theorem row45 : BadRow (row ⟨0,3,0,2,4,3⟩ [0,0,0] [1,1,1,0]) := by
  have h : row ⟨0,3,0,2,4,3⟩ [0,0,0] [1,1,1,0] = [] := by decide
  rw [h]
  exact .nil

private def v37799126938 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v37799126938 : ¬ MinimalInterpreter v37799126938 :=
  chain_cut true 3 (by decide)

private def v37799126506 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v37799126506 : ¬ MinimalInterpreter v37799126506 :=
  chain_cut true 3 (by decide)

private def v37799115674 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v37799115674 : ¬ MinimalInterpreter v37799115674 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37799115242 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v37799115242 : ¬ MinimalInterpreter v37799115242 :=
  chain_cut true 3 (by decide)

private def v37799112426 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v37799112426 : ¬ MinimalInterpreter v37799112426 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37396473754 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v37396473754 : ¬ MinimalInterpreter v37396473754 :=
  chain_cut false 4 (by decide)

private def v37396473322 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v37396473322 : ¬ MinimalInterpreter v37396473322 :=
  chain_cut false 4 (by decide)

private def v37396462490 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v37396462490 : ¬ MinimalInterpreter v37396462490 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37396462058 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v37396462058 : ¬ MinimalInterpreter v37396462058 :=
  chain_cut false 4 (by decide)

private def v37396459242 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v37396459242 : ¬ MinimalInterpreter v37396459242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row46 : BadRow (row ⟨0,3,0,2,4,3⟩ [0,0,0] [1,2,0,0]) := by
  have h : row ⟨0,3,0,2,4,3⟩ [0,0,0] [1,2,0,0] = [v37799126938,v37799126506,v37799115674,v37799115242,v37799112426,v37396473754,v37396473322,v37396462490,v37396462058,v37396459242] := by decide
  rw [h]
  exact (.cons (no_v37799126938) (.cons (no_v37799126506) (.cons (no_v37799115674) (.cons (no_v37799115242) (.cons (no_v37799112426) (.cons (no_v37396473754) (.cons (no_v37396473322) (.cons (no_v37396462490) (.cons (no_v37396462058) (.cons (no_v37396459242) .nil))))))))))

private def v37799129910 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v37799129910 : ¬ MinimalInterpreter v37799129910 :=
  chain_cut false 3 (by decide)

private def v37799129814 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v37799129814 : ¬ MinimalInterpreter v37799129814 :=
  chain_cut false 3 (by decide)

private def v37799116086 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v37799116086 : ¬ MinimalInterpreter v37799116086 :=
  chain_cut false 3 (by decide)

private def v37799115990 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v37799115990 : ¬ MinimalInterpreter v37799115990 :=
  chain_cut false 3 (by decide)

private def v37799112534 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v37799112534 : ¬ MinimalInterpreter v37799112534 :=
  chain_cut false 3 (by decide)

private def v37396476726 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v37396476726 : ¬ MinimalInterpreter v37396476726 :=
  chain_cut false 4 (by decide)

private def v37396476630 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v37396476630 : ¬ MinimalInterpreter v37396476630 :=
  chain_cut false 4 (by decide)

private def v37396462902 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v37396462902 : ¬ MinimalInterpreter v37396462902 :=
  chain_cut false 5 (by decide)

private def v37396462806 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v37396462806 : ¬ MinimalInterpreter v37396462806 :=
  chain_cut false 5 (by decide)

private def v37396459350 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v37396459350 : ¬ MinimalInterpreter v37396459350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row47 : BadRow (row ⟨0,3,0,2,4,3⟩ [0,0,0] [2,0,0,1]) := by
  have h : row ⟨0,3,0,2,4,3⟩ [0,0,0] [2,0,0,1] = [v37799129910,v37799129814,v37799116086,v37799115990,v37799112534,v37396476726,v37396476630,v37396462902,v37396462806,v37396459350] := by decide
  rw [h]
  exact (.cons (no_v37799129910) (.cons (no_v37799129814) (.cons (no_v37799116086) (.cons (no_v37799115990) (.cons (no_v37799112534) (.cons (no_v37396476726) (.cons (no_v37396476630) (.cons (no_v37396462902) (.cons (no_v37396462806) (.cons (no_v37396459350) .nil))))))))))

end Blc.SelfintSingleObject.Rows37
