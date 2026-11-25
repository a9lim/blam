import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five56 : BadRow (bucket false 3 2 4 [1,1,0,1]) := by
  have h : bucket false 3 2 4 [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five57 : BadRow (bucket true 3 2 4 [1,1,0,1]) := by
  have h : bucket true 3 2 4 [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five58 : BadRow (bucket false 3 2 4 [1,1,1,0]) := by
  have h : bucket false 3 2 4 [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five59 : BadRow (bucket true 3 2 4 [1,1,1,0]) := by
  have h : bucket true 3 2 4 [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400612382618 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v1400612382618 : ¬ MinimalInterpreter v1400612382618 :=
  chain_cut false 2 (by decide)

private def v1400645937050 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v1400645937050 : ¬ MinimalInterpreter v1400645937050 :=
  chain_cut false 2 (by decide)

private def v1400612382186 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v1400612382186 : ¬ MinimalInterpreter v1400612382186 :=
  chain_cut false 2 (by decide)

private def v1400645936618 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v1400645936618 : ¬ MinimalInterpreter v1400645936618 :=
  chain_cut false 2 (by decide)

private def v1400612371354 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v1400612371354 : ¬ MinimalInterpreter v1400612371354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400645925786 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v1400645925786 : ¬ MinimalInterpreter v1400645925786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400612370922 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v1400612370922 : ¬ MinimalInterpreter v1400612370922 :=
  chain_cut false 2 (by decide)

private def v1400645925354 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v1400645925354 : ¬ MinimalInterpreter v1400645925354 :=
  chain_cut false 2 (by decide)

private def v1400612368106 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v1400612368106 : ¬ MinimalInterpreter v1400612368106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400645922538 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v1400645922538 : ¬ MinimalInterpreter v1400645922538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem five60 : BadRow (bucket false 3 2 4 [1,2,0,0]) := by
  have h : bucket false 3 2 4 [1,2,0,0] = [v1400612382618,v1400645937050,v1400612382186,v1400645936618,v1400612371354,v1400645925786,v1400612370922,v1400645925354,v1400612368106,v1400645922538] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400612382618) (.cons (no_v1400645937050) (.cons (no_v1400612382186) (.cons (no_v1400645936618) (.cons (no_v1400612371354) (.cons (no_v1400645925786) (.cons (no_v1400612370922) (.cons (no_v1400645925354) (.cons (no_v1400612368106) (.cons (no_v1400645922538) .nil))))))))))

private def v1175126599578 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1175126599578 : ¬ MinimalInterpreter v1175126599578 :=
  chain_cut false 2 (by decide)

private def v1174321293210 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1174321293210 : ¬ MinimalInterpreter v1174321293210 :=
  chain_cut false 2 (by decide)

private def v1175160154010 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1175160154010 : ¬ MinimalInterpreter v1175160154010 :=
  chain_cut false 2 (by decide)

private def v1174354847642 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1174354847642 : ¬ MinimalInterpreter v1174354847642 :=
  chain_cut false 3 (by decide)

private def v1175965460378 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1175965460378 : ¬ MinimalInterpreter v1175965460378 :=
  chain_cut true 2 (by decide)

private def v1174489065370 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1174489065370 : ¬ MinimalInterpreter v1174489065370 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126599146 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1175126599146 : ¬ MinimalInterpreter v1175126599146 :=
  chain_cut false 2 (by decide)

private def v1174321292778 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1174321292778 : ¬ MinimalInterpreter v1174321292778 :=
  chain_cut false 2 (by decide)

private def v1175160153578 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1175160153578 : ¬ MinimalInterpreter v1175160153578 :=
  chain_cut false 2 (by decide)

private def v1174354847210 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1174354847210 : ¬ MinimalInterpreter v1174354847210 :=
  chain_cut false 3 (by decide)

private def v1175965459946 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1175965459946 : ¬ MinimalInterpreter v1175965459946 :=
  chain_cut true 2 (by decide)

private def v1174489064938 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1174489064938 : ¬ MinimalInterpreter v1174489064938 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126588314 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1175126588314 : ¬ MinimalInterpreter v1175126588314 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174321281946 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1174321281946 : ¬ MinimalInterpreter v1174321281946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175160142746 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1175160142746 : ¬ MinimalInterpreter v1175160142746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174354836378 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1174354836378 : ¬ MinimalInterpreter v1174354836378 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175965449114 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1175965449114 : ¬ MinimalInterpreter v1175965449114 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174489054106 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v1174489054106 : ¬ MinimalInterpreter v1174489054106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175126587882 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1175126587882 : ¬ MinimalInterpreter v1175126587882 :=
  chain_cut false 2 (by decide)

private def v1174321281514 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1174321281514 : ¬ MinimalInterpreter v1174321281514 :=
  chain_cut false 2 (by decide)

private def v1175160142314 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1175160142314 : ¬ MinimalInterpreter v1175160142314 :=
  chain_cut false 2 (by decide)

private def v1174354835946 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1174354835946 : ¬ MinimalInterpreter v1174354835946 :=
  chain_cut false 3 (by decide)

private def v1175965448682 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1175965448682 : ¬ MinimalInterpreter v1175965448682 :=
  chain_cut true 2 (by decide)

private def v1174489053674 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v1174489053674 : ¬ MinimalInterpreter v1174489053674 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126585066 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1175126585066 : ¬ MinimalInterpreter v1175126585066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174321278698 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1174321278698 : ¬ MinimalInterpreter v1174321278698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175160139498 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1175160139498 : ¬ MinimalInterpreter v1175160139498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174354833130 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1174354833130 : ¬ MinimalInterpreter v1174354833130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1175965445866 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1175965445866 : ¬ MinimalInterpreter v1175965445866 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1174489050858 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v1174489050858 : ¬ MinimalInterpreter v1174489050858 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem five61 : BadRow (bucket true 3 2 4 [1,2,0,0]) := by
  have h : bucket true 3 2 4 [1,2,0,0] = [v1175126599578,v1174321293210,v1175160154010,v1174354847642,v1175965460378,v1174489065370,v1175126599146,v1174321292778,v1175160153578,v1174354847210,v1175965459946,v1174489064938,v1175126588314,v1174321281946,v1175160142746,v1174354836378,v1175965449114,v1174489054106,v1175126587882,v1174321281514,v1175160142314,v1174354835946,v1175965448682,v1174489053674,v1175126585066,v1174321278698,v1175160139498,v1174354833130,v1175965445866,v1174489050858] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175126599578) (.cons (no_v1174321293210) (.cons (no_v1175160154010) (.cons (no_v1174354847642) (.cons (no_v1175965460378) (.cons (no_v1174489065370) (.cons (no_v1175126599146) (.cons (no_v1174321292778) (.cons (no_v1175160153578) (.cons (no_v1174354847210) (.cons (no_v1175965459946) (.cons (no_v1174489064938) (.cons (no_v1175126588314) (.cons (no_v1174321281946) (.cons (no_v1175160142746) (.cons (no_v1174354836378) (.cons (no_v1175965449114) (.cons (no_v1174489054106) (.cons (no_v1175126587882) (.cons (no_v1174321281514) (.cons (no_v1175160142314) (.cons (no_v1174354835946) (.cons (no_v1175965448682) (.cons (no_v1174489053674) (.cons (no_v1175126585066) (.cons (no_v1174321278698) (.cons (no_v1175160139498) (.cons (no_v1174354833130) (.cons (no_v1175965445866) (.cons (no_v1174489050858) .nil))))))))))))))))))))))))))))))

private def v1400612385590 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1400612385590 : ¬ MinimalInterpreter v1400612385590 :=
  chain_cut false 2 (by decide)

private def v1400645940022 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1400645940022 : ¬ MinimalInterpreter v1400645940022 :=
  chain_cut false 2 (by decide)

private def v1400612385494 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1400612385494 : ¬ MinimalInterpreter v1400612385494 :=
  chain_cut false 2 (by decide)

private def v1400645939926 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1400645939926 : ¬ MinimalInterpreter v1400645939926 :=
  chain_cut false 2 (by decide)

private def v1400612371766 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1400612371766 : ¬ MinimalInterpreter v1400612371766 :=
  chain_cut false 2 (by decide)

private def v1400645926198 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1400645926198 : ¬ MinimalInterpreter v1400645926198 :=
  chain_cut false 2 (by decide)

private def v1400612371670 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1400612371670 : ¬ MinimalInterpreter v1400612371670 :=
  chain_cut false 2 (by decide)

private def v1400645926102 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1400645926102 : ¬ MinimalInterpreter v1400645926102 :=
  chain_cut false 2 (by decide)

private def v1400612368214 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1400612368214 : ¬ MinimalInterpreter v1400612368214 :=
  chain_cut false 2 (by decide)

private def v1400645922646 : Term := (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1400645922646 : ¬ MinimalInterpreter v1400645922646 :=
  chain_cut false 2 (by decide)

theorem five62 : BadRow (bucket false 3 2 4 [2,0,0,1]) := by
  have h : bucket false 3 2 4 [2,0,0,1] = [v1400612385590,v1400645940022,v1400612385494,v1400645939926,v1400612371766,v1400645926198,v1400612371670,v1400645926102,v1400612368214,v1400645922646] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400612385590) (.cons (no_v1400645940022) (.cons (no_v1400612385494) (.cons (no_v1400645939926) (.cons (no_v1400612371766) (.cons (no_v1400645926198) (.cons (no_v1400612371670) (.cons (no_v1400645926102) (.cons (no_v1400612368214) (.cons (no_v1400645922646) .nil))))))))))

private def v1175126602550 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175126602550 : ¬ MinimalInterpreter v1175126602550 :=
  chain_cut false 2 (by decide)

private def v1174321296182 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1174321296182 : ¬ MinimalInterpreter v1174321296182 :=
  chain_cut false 2 (by decide)

private def v1175160156982 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175160156982 : ¬ MinimalInterpreter v1175160156982 :=
  chain_cut false 2 (by decide)

private def v1174354850614 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1174354850614 : ¬ MinimalInterpreter v1174354850614 :=
  chain_cut false 3 (by decide)

private def v1175965463350 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1175965463350 : ¬ MinimalInterpreter v1175965463350 :=
  chain_cut true 2 (by decide)

private def v1174489068342 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1174489068342 : ¬ MinimalInterpreter v1174489068342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126602454 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1175126602454 : ¬ MinimalInterpreter v1175126602454 :=
  chain_cut false 2 (by decide)

private def v1174321296086 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1174321296086 : ¬ MinimalInterpreter v1174321296086 :=
  chain_cut false 2 (by decide)

private def v1175160156886 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1175160156886 : ¬ MinimalInterpreter v1175160156886 :=
  chain_cut false 2 (by decide)

private def v1174354850518 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1174354850518 : ¬ MinimalInterpreter v1174354850518 :=
  chain_cut false 3 (by decide)

private def v1175965463254 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1175965463254 : ¬ MinimalInterpreter v1175965463254 :=
  chain_cut true 2 (by decide)

private def v1174489068246 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1174489068246 : ¬ MinimalInterpreter v1174489068246 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126588726 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1175126588726 : ¬ MinimalInterpreter v1175126588726 :=
  chain_cut false 2 (by decide)

private def v1174321282358 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1174321282358 : ¬ MinimalInterpreter v1174321282358 :=
  chain_cut false 2 (by decide)

private def v1175160143158 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1175160143158 : ¬ MinimalInterpreter v1175160143158 :=
  chain_cut false 2 (by decide)

private def v1174354836790 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1174354836790 : ¬ MinimalInterpreter v1174354836790 :=
  chain_cut false 3 (by decide)

private def v1175965449526 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1175965449526 : ¬ MinimalInterpreter v1175965449526 :=
  chain_cut true 2 (by decide)

private def v1174489054518 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1174489054518 : ¬ MinimalInterpreter v1174489054518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126588630 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1175126588630 : ¬ MinimalInterpreter v1175126588630 :=
  chain_cut false 2 (by decide)

private def v1174321282262 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1174321282262 : ¬ MinimalInterpreter v1174321282262 :=
  chain_cut false 2 (by decide)

private def v1175160143062 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1175160143062 : ¬ MinimalInterpreter v1175160143062 :=
  chain_cut false 2 (by decide)

private def v1174354836694 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1174354836694 : ¬ MinimalInterpreter v1174354836694 :=
  chain_cut false 3 (by decide)

private def v1175965449430 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1175965449430 : ¬ MinimalInterpreter v1175965449430 :=
  chain_cut true 2 (by decide)

private def v1174489054422 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1174489054422 : ¬ MinimalInterpreter v1174489054422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1175126585174 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1175126585174 : ¬ MinimalInterpreter v1175126585174 :=
  chain_cut false 2 (by decide)

private def v1174321278806 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1174321278806 : ¬ MinimalInterpreter v1174321278806 :=
  chain_cut false 2 (by decide)

private def v1175160139606 : Term := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1175160139606 : ¬ MinimalInterpreter v1175160139606 :=
  chain_cut false 2 (by decide)

private def v1174354833238 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1174354833238 : ¬ MinimalInterpreter v1174354833238 :=
  chain_cut false 3 (by decide)

private def v1175965445974 : Term := (.lam (.app (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1175965445974 : ¬ MinimalInterpreter v1175965445974 :=
  chain_cut true 2 (by decide)

private def v1174489050966 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1174489050966 : ¬ MinimalInterpreter v1174489050966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five63 : BadRow (bucket true 3 2 4 [2,0,0,1]) := by
  have h : bucket true 3 2 4 [2,0,0,1] = [v1175126602550,v1174321296182,v1175160156982,v1174354850614,v1175965463350,v1174489068342,v1175126602454,v1174321296086,v1175160156886,v1174354850518,v1175965463254,v1174489068246,v1175126588726,v1174321282358,v1175160143158,v1174354836790,v1175965449526,v1174489054518,v1175126588630,v1174321282262,v1175160143062,v1174354836694,v1175965449430,v1174489054422,v1175126585174,v1174321278806,v1175160139606,v1174354833238,v1175965445974,v1174489050966] := by decide +kernel
  rw [h]
  exact (.cons (no_v1175126602550) (.cons (no_v1174321296182) (.cons (no_v1175160156982) (.cons (no_v1174354850614) (.cons (no_v1175965463350) (.cons (no_v1174489068342) (.cons (no_v1175126602454) (.cons (no_v1174321296086) (.cons (no_v1175160156886) (.cons (no_v1174354850518) (.cons (no_v1175965463254) (.cons (no_v1174489068246) (.cons (no_v1175126588726) (.cons (no_v1174321282358) (.cons (no_v1175160143158) (.cons (no_v1174354836790) (.cons (no_v1175965449526) (.cons (no_v1174489054518) (.cons (no_v1175126588630) (.cons (no_v1174321282262) (.cons (no_v1175160143062) (.cons (no_v1174354836694) (.cons (no_v1175965449430) (.cons (no_v1174489054422) (.cons (no_v1175126585174) (.cons (no_v1174321278806) (.cons (no_v1175160139606) (.cons (no_v1174354833238) (.cons (no_v1175965445974) (.cons (no_v1174489050966) .nil))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
