import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75698917178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v75698917178 : ¬ MinimalInterpreter v75698917178 :=
  cost_cut false 2 (by decide)

private def v75698916314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v75698916314 : ¬ MinimalInterpreter v75698916314 :=
  cost_cut false 2 (by decide)

private def v75698894650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v75698894650 : ¬ MinimalInterpreter v75698894650 :=
  cost_cut false 2 (by decide)

private def v75698893786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v75698893786 : ¬ MinimalInterpreter v75698893786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v75698888154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v75698888154 : ¬ MinimalInterpreter v75698888154 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v75699261242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v75699261242 : ¬ MinimalInterpreter v75699261242 :=
  cost_cut false 2 (by decide)

private def v75699260378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v75699260378 : ¬ MinimalInterpreter v75699260378 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v75699269402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0))))))))
private theorem no_v75699269402 : ¬ MinimalInterpreter v75699269402 :=
  cost_cut false 2 (by decide)

private def v75699179290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v75699179290 : ¬ MinimalInterpreter v75699179290 :=
  cost_cut false 2 (by decide)

private def v75699156762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v75699156762 : ¬ MinimalInterpreter v75699156762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem row132 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [1,2,1,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [1,2,1,0] = [v75698917178,v75698916314,v75698894650,v75698893786,v75698888154,v75699261242,v75699260378,v75699269402,v75699179290,v75699156762] := by decide
  rw [h]
  exact (.cons (no_v75698917178) (.cons (no_v75698916314) (.cons (no_v75698894650) (.cons (no_v75698893786) (.cons (no_v75698888154) (.cons (no_v75699261242) (.cons (no_v75699260378) (.cons (no_v75699269402) (.cons (no_v75699179290) (.cons (no_v75699156762) .nil))))))))))

private def v75698917274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0))))))))))
private theorem no_v75698917274 : ¬ MinimalInterpreter v75698917274 :=
  cost_cut false 2 (by decide)

private def v75698916330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0)))))))))
private theorem no_v75698916330 : ¬ MinimalInterpreter v75698916330 :=
  cost_cut false 2 (by decide)

private def v75698894746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))))
private theorem no_v75698894746 : ¬ MinimalInterpreter v75698894746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v75698893802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0))))))))
private theorem no_v75698893802 : ¬ MinimalInterpreter v75698893802 :=
  cost_cut false 2 (by decide)

private def v75698888170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))))
private theorem no_v75698888170 : ¬ MinimalInterpreter v75698888170 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v75699177370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))))))))
private theorem no_v75699177370 : ¬ MinimalInterpreter v75699177370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v75699155434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)))))))
private theorem no_v75699155434 : ¬ MinimalInterpreter v75699155434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

theorem row133 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [1,3,0,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [1,3,0,0] = [v75698917274,v75698916330,v75698894746,v75698893802,v75698888170,v75699177370,v75699155434] := by decide
  rw [h]
  exact (.cons (no_v75698917274) (.cons (no_v75698916330) (.cons (no_v75698894746) (.cons (no_v75698893802) (.cons (no_v75698888170) (.cons (no_v75699177370) (.cons (no_v75699155434) .nil)))))))

private def v75699296654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v75699296654 : ¬ MinimalInterpreter v75699296654 :=
  cost_cut false 2 (by decide)

private def v75699295886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v75699295886 : ¬ MinimalInterpreter v75699295886 :=
  cost_cut false 2 (by decide)

private def v75699186062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v75699186062 : ¬ MinimalInterpreter v75699186062 :=
  cost_cut false 2 (by decide)

private def v75699185294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2))))))))
private theorem no_v75699185294 : ¬ MinimalInterpreter v75699185294 :=
  cost_cut false 2 (by decide)

private def v75699157646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v75699157646 : ¬ MinimalInterpreter v75699157646 :=
  cost_cut false 2 (by decide)

theorem row134 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [2,0,0,2]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [2,0,0,2] = [v75699296654,v75699295886,v75699186062,v75699185294,v75699157646] := by decide
  rw [h]
  exact (.cons (no_v75699296654) (.cons (no_v75699295886) (.cons (no_v75699186062) (.cons (no_v75699185294) (.cons (no_v75699157646) .nil)))))

private def v75698923126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))))
private theorem no_v75698923126 : ¬ MinimalInterpreter v75698923126 :=
  cost_cut false 2 (by decide)

private def v75698922934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))))
private theorem no_v75698922934 : ¬ MinimalInterpreter v75698922934 :=
  cost_cut false 2 (by decide)

private def v75698895478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))))
private theorem no_v75698895478 : ¬ MinimalInterpreter v75698895478 :=
  cost_cut false 2 (by decide)

private def v75698895286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))))
private theorem no_v75698895286 : ¬ MinimalInterpreter v75698895286 :=
  cost_cut false 2 (by decide)

private def v75698888374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))))
private theorem no_v75698888374 : ¬ MinimalInterpreter v75698888374 :=
  cost_cut false 2 (by decide)

private def v75699296710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v75699296710 : ¬ MinimalInterpreter v75699296710 :=
  cost_cut false 2 (by decide)

private def v75699295942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v75699295942 : ¬ MinimalInterpreter v75699295942 :=
  cost_cut false 2 (by decide)

private def v75699295798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))))))
private theorem no_v75699295798 : ¬ MinimalInterpreter v75699295798 :=
  cost_cut false 2 (by decide)

private def v75699186118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v75699186118 : ¬ MinimalInterpreter v75699186118 :=
  cost_cut false 2 (by decide)

private def v75699185350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1))))))))
private theorem no_v75699185350 : ¬ MinimalInterpreter v75699185350 :=
  cost_cut false 2 (by decide)

private def v75699157702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v75699157702 : ¬ MinimalInterpreter v75699157702 :=
  cost_cut false 2 (by decide)

private def v75699185206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v75699185206 : ¬ MinimalInterpreter v75699185206 :=
  cost_cut false 2 (by decide)

private def v75699157558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v75699157558 : ¬ MinimalInterpreter v75699157558 :=
  cost_cut false 2 (by decide)

theorem row135 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [2,0,1,1]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [2,0,1,1] = [v75698923126,v75698922934,v75698895478,v75698895286,v75698888374,v75699296710,v75699295942,v75699295798,v75699186118,v75699185350,v75699157702,v75699185206,v75699157558] := by decide
  rw [h]
  exact (.cons (no_v75698923126) (.cons (no_v75698922934) (.cons (no_v75698895478) (.cons (no_v75698895286) (.cons (no_v75698888374) (.cons (no_v75699296710) (.cons (no_v75699295942) (.cons (no_v75699295798) (.cons (no_v75699186118) (.cons (no_v75699185350) (.cons (no_v75699157702) (.cons (no_v75699185206) (.cons (no_v75699157558) .nil)))))))))))))

private def v75699295802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))))
private theorem no_v75699295802 : ¬ MinimalInterpreter v75699295802 :=
  cost_cut false 2 (by decide)

private def v75699185210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v75699185210 : ¬ MinimalInterpreter v75699185210 :=
  cost_cut false 2 (by decide)

private def v75699157562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v75699157562 : ¬ MinimalInterpreter v75699157562 :=
  cost_cut false 2 (by decide)

theorem row136 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [2,0,2,0]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [2,0,2,0] = [v75699295802,v75699185210,v75699157562] := by decide
  rw [h]
  exact (.cons (no_v75699295802) (.cons (no_v75699185210) (.cons (no_v75699157562) .nil)))

private def v75698923318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))))
private theorem no_v75698923318 : ¬ MinimalInterpreter v75698923318 :=
  cost_cut false 2 (by decide)

private def v75698922966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))))
private theorem no_v75698922966 : ¬ MinimalInterpreter v75698922966 :=
  cost_cut false 2 (by decide)

private def v75698895670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))))
private theorem no_v75698895670 : ¬ MinimalInterpreter v75698895670 :=
  cost_cut false 2 (by decide)

private def v75698895318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))))
private theorem no_v75698895318 : ¬ MinimalInterpreter v75698895318 :=
  cost_cut false 2 (by decide)

private def v75698888406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))))
private theorem no_v75698888406 : ¬ MinimalInterpreter v75698888406 :=
  cost_cut false 2 (by decide)

private def v75699297478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v75699297478 : ¬ MinimalInterpreter v75699297478 :=
  cost_cut false 2 (by decide)

private def v75699296070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v75699296070 : ¬ MinimalInterpreter v75699296070 :=
  cost_cut false 2 (by decide)

private def v75699186886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v75699186886 : ¬ MinimalInterpreter v75699186886 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75699184438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1))))))))
private theorem no_v75699184438 : ¬ MinimalInterpreter v75699184438 :=
  cost_cut false 2 (by decide)

private def v75699185478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1))))))))
private theorem no_v75699185478 : ¬ MinimalInterpreter v75699185478 :=
  cost_cut false 2 (by decide)

private def v75699157830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v75699157830 : ¬ MinimalInterpreter v75699157830 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75699157206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1)))))))
private theorem no_v75699157206 : ¬ MinimalInterpreter v75699157206 :=
  cost_cut false 2 (by decide)

theorem row137 : BadRow (row ⟨0,2,0,4,4,4⟩ [0,0] [2,1,0,1]) := by
  have h : row ⟨0,2,0,4,4,4⟩ [0,0] [2,1,0,1] = [v75698923318,v75698922966,v75698895670,v75698895318,v75698888406,v75699297478,v75699296070,v75699186886,v75699184438,v75699185478,v75699157830,v75699157206] := by decide
  rw [h]
  exact (.cons (no_v75698923318) (.cons (no_v75698922966) (.cons (no_v75698895670) (.cons (no_v75698895318) (.cons (no_v75698888406) (.cons (no_v75699297478) (.cons (no_v75699296070) (.cons (no_v75699186886) (.cons (no_v75699184438) (.cons (no_v75699185478) (.cons (no_v75699157830) (.cons (no_v75699157206) .nil))))))))))))

end Blc.SelfintSingleObject.Rows38
