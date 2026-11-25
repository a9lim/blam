import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75698923322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))))
private theorem no_v75698923322 : ¬ MinimalInterpreter v75698923322 :=
  cost_cut false 2 (by decide)

private def v75698922970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))))
private theorem no_v75698922970 : ¬ MinimalInterpreter v75698922970 :=
  cost_cut false 2 (by decide)

private def v75698895674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))))
private theorem no_v75698895674 : ¬ MinimalInterpreter v75698895674 :=
  cost_cut false 2 (by decide)

private def v75698895322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))))
private theorem no_v75698895322 : ¬ MinimalInterpreter v75698895322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v75698888410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))))
private theorem no_v75698888410 : ¬ MinimalInterpreter v75698888410 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v75699296026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0))))))))
private theorem no_v75699296026 : ¬ MinimalInterpreter v75699296026 :=
  cost_cut false 2 (by decide)

private def v75699184442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0))))))))
private theorem no_v75699184442 : ¬ MinimalInterpreter v75699184442 :=
  cost_cut false 2 (by decide)

private def v75699185434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v75699185434 : ¬ MinimalInterpreter v75699185434 :=
  cost_cut false 2 (by decide)

private def v75699157786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v75699157786 : ¬ MinimalInterpreter v75699157786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75699157210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0)))))))
private theorem no_v75699157210 : ¬ MinimalInterpreter v75699157210 :=
  cost_cut false 2 (by decide)

theorem row138 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [2,1,1,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [2,1,1,0] = [v75698923322,v75698922970,v75698895674,v75698895322,v75698888410,v75699296026,v75699184442,v75699185434,v75699157786,v75699157210] := by decide
  rw [h]
  exact (.cons (no_v75698923322) (.cons (no_v75698922970) (.cons (no_v75698895674) (.cons (no_v75698895322) (.cons (no_v75698888410) (.cons (no_v75699296026) (.cons (no_v75699184442) (.cons (no_v75699185434) (.cons (no_v75699157786) (.cons (no_v75699157210) .nil))))))))))

private def v75699184538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))))))
private theorem no_v75699184538 : ¬ MinimalInterpreter v75699184538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75699157226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))))))
private theorem no_v75699157226 : ¬ MinimalInterpreter v75699157226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem row139 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [2,2,0,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [2,2,0,0] = [v75699184538,v75699157226] := by decide
  rw [h]
  exact (.cons (no_v75699184538) (.cons (no_v75699157226) .nil))

private def v75698926390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v75698926390 : ¬ MinimalInterpreter v75698926390 :=
  cost_cut false 2 (by decide)

private def v75698926294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v75698926294 : ¬ MinimalInterpreter v75698926294 :=
  cost_cut false 2 (by decide)

private def v75698896182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v75698896182 : ¬ MinimalInterpreter v75698896182 :=
  cost_cut false 2 (by decide)

private def v75698896086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v75698896086 : ¬ MinimalInterpreter v75698896086 :=
  cost_cut false 2 (by decide)

private def v75698888534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v75698888534 : ¬ MinimalInterpreter v75698888534 :=
  cost_cut false 2 (by decide)

theorem row140 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [3,0,0,1]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [3,0,0,1] = [v75698926390,v75698926294,v75698896182,v75698896086,v75698888534] := by decide
  rw [h]
  exact (.cons (no_v75698926390) (.cons (no_v75698926294) (.cons (no_v75698896182) (.cons (no_v75698896086) (.cons (no_v75698888534) .nil)))))

private def v75698926394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v75698926394 : ¬ MinimalInterpreter v75698926394 :=
  cost_cut false 2 (by decide)

private def v75698926298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v75698926298 : ¬ MinimalInterpreter v75698926298 :=
  cost_cut false 2 (by decide)

private def v75698896186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v75698896186 : ¬ MinimalInterpreter v75698896186 :=
  cost_cut false 2 (by decide)

private def v75698896090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v75698896090 : ¬ MinimalInterpreter v75698896090 :=
  cost_cut false 2 (by decide)

private def v75698888538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v75698888538 : ¬ MinimalInterpreter v75698888538 :=
  cost_cut false 2 (by decide)

theorem row141 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [3,0,1,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [3,0,1,0] = [v75698926394,v75698926298,v75698896186,v75698896090,v75698888538] := by decide
  rw [h]
  exact (.cons (no_v75698926394) (.cons (no_v75698926298) (.cons (no_v75698896186) (.cons (no_v75698896090) (.cons (no_v75698888538) .nil)))))

private def v75698926490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v75698926490 : ¬ MinimalInterpreter v75698926490 :=
  cost_cut false 2 (by decide)

private def v75698926314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v75698926314 : ¬ MinimalInterpreter v75698926314 :=
  cost_cut false 2 (by decide)

private def v75698896282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v75698896282 : ¬ MinimalInterpreter v75698896282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v75698896106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v75698896106 : ¬ MinimalInterpreter v75698896106 :=
  cost_cut false 2 (by decide)

private def v75698888554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v75698888554 : ¬ MinimalInterpreter v75698888554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

theorem row142 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [3,1,0,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [3,1,0,0] = [v75698926490,v75698926314,v75698896282,v75698896106,v75698888554] := by decide
  rw [h]
  exact (.cons (no_v75698926490) (.cons (no_v75698926314) (.cons (no_v75698896282) (.cons (no_v75698896106) (.cons (no_v75698888554) .nil)))))

theorem row143 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [4,0,0,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [4,0,0,0] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
