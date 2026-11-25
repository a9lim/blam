import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row282 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [0,1,0,1,1]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [0,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690685273722 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v690685273722 : ¬ MinimalInterpreter v690685273722 :=
  cost_cut false 1 (by decide)
private def v690685273530 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v690685273530 : ¬ MinimalInterpreter v690685273530 :=
  cost_cut false 1 (by decide)
private def v690685262458 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v690685262458 : ¬ MinimalInterpreter v690685262458 :=
  cost_cut false 1 (by decide)
private def v690685262266 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v690685262266 : ¬ MinimalInterpreter v690685262266 :=
  cost_cut false 1 (by decide)
private def v690685259450 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v690685259450 : ¬ MinimalInterpreter v690685259450 :=
  cost_cut false 1 (by decide)
private def v690685175418 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v690685175418 : ¬ MinimalInterpreter v690685175418 :=
  cost_cut false 1 (by decide)
private def v690685175226 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v690685175226 : ¬ MinimalInterpreter v690685175226 :=
  cost_cut false 1 (by decide)
private def v690685164154 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)))))))
private theorem no_v690685164154 : ¬ MinimalInterpreter v690685164154 :=
  cost_cut false 1 (by decide)
private def v690685139578 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v690685139578 : ¬ MinimalInterpreter v690685139578 :=
  cost_cut false 1 (by decide)
private def v690685163962 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))))))
private theorem no_v690685163962 : ¬ MinimalInterpreter v690685163962 :=
  cost_cut false 1 (by decide)
private def v690685161146 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))))))
private theorem no_v690685161146 : ¬ MinimalInterpreter v690685161146 :=
  cost_cut false 1 (by decide)
private def v690685139386 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v690685139386 : ¬ MinimalInterpreter v690685139386 :=
  cost_cut false 1 (by decide)
private def v690685136570 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.var 0))))))
private theorem no_v690685136570 : ¬ MinimalInterpreter v690685136570 :=
  cost_cut false 1 (by decide)
private def v690685130426 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v690685130426 : ¬ MinimalInterpreter v690685130426 :=
  cost_cut false 1 (by decide)
private def v690687633018 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v690687633018 : ¬ MinimalInterpreter v690687633018 :=
  cost_cut false 1 (by decide)
private def v690687632826 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v690687632826 : ¬ MinimalInterpreter v690687632826 :=
  cost_cut false 1 (by decide)
private def v690687621754 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v690687621754 : ¬ MinimalInterpreter v690687621754 :=
  cost_cut false 1 (by decide)
private def v690687621562 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v690687621562 : ¬ MinimalInterpreter v690687621562 :=
  cost_cut false 1 (by decide)
private def v690687618746 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v690687618746 : ¬ MinimalInterpreter v690687618746 :=
  cost_cut false 1 (by decide)
private def v690687326650 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0)))))
private theorem no_v690687326650 : ¬ MinimalInterpreter v690687326650 :=
  cost_cut false 1 (by decide)
private def v690687323834 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))))
private theorem no_v690687323834 : ¬ MinimalInterpreter v690687323834 :=
  cost_cut false 1 (by decide)
private def v690697070202 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v690697070202 : ¬ MinimalInterpreter v690697070202 :=
  cost_cut false 1 (by decide)
private def v690697070010 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v690697070010 : ¬ MinimalInterpreter v690697070010 :=
  cost_cut false 1 (by decide)
private def v690697058938 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v690697058938 : ¬ MinimalInterpreter v690697058938 :=
  cost_cut false 1 (by decide)
private def v690697058746 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v690697058746 : ¬ MinimalInterpreter v690697058746 :=
  cost_cut false 1 (by decide)
private def v690697055930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v690697055930 : ¬ MinimalInterpreter v690697055930 :=
  cost_cut false 1 (by decide)
private def v690695977402 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))))
private theorem no_v690695977402 : ¬ MinimalInterpreter v690695977402 :=
  cost_cut false 1 (by decide)
private def v690695974586 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 0))))
private theorem no_v690695974586 : ¬ MinimalInterpreter v690695974586 :=
  cost_cut false 1 (by decide)
theorem row283 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [0,1,0,2,0]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [0,1,0,2,0] = [v690685273722,v690685273530,v690685262458,v690685262266,v690685259450,v690685175418,v690685175226,v690685164154,v690685139578,v690685163962,v690685161146,v690685139386,v690685136570,v690685130426,v690687633018,v690687632826,v690687621754,v690687621562,v690687618746,v690687326650,v690687323834,v690697070202,v690697070010,v690697058938,v690697058746,v690697055930,v690695977402,v690695974586] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685273722) (.cons (no_v690685273530) (.cons (no_v690685262458) (.cons (no_v690685262266) (.cons (no_v690685259450) (.cons (no_v690685175418) (.cons (no_v690685175226) (.cons (no_v690685164154) (.cons (no_v690685139578) (.cons (no_v690685163962) (.cons (no_v690685161146) (.cons (no_v690685139386) (.cons (no_v690685136570) (.cons (no_v690685130426) (.cons (no_v690687633018) (.cons (no_v690687632826) (.cons (no_v690687621754) (.cons (no_v690687621562) (.cons (no_v690687618746) (.cons (no_v690687326650) (.cons (no_v690687323834) (.cons (no_v690697070202) (.cons (no_v690697070010) (.cons (no_v690697058938) (.cons (no_v690697058746) (.cons (no_v690697055930) (.cons (no_v690695977402) (.cons (no_v690695974586) .nil))))))))))))))))))))))))))))

theorem row284 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [0,1,1,0,1]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [0,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row285 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [0,1,1,1,0]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [0,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690685274010 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v690685274010 : ¬ MinimalInterpreter v690685274010 :=
  cost_cut false 1 (by decide)
private def v690685273578 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v690685273578 : ¬ MinimalInterpreter v690685273578 :=
  cost_cut false 1 (by decide)
private def v690685262746 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v690685262746 : ¬ MinimalInterpreter v690685262746 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685262314 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v690685262314 : ¬ MinimalInterpreter v690685262314 :=
  cost_cut false 1 (by decide)
private def v690685259498 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v690685259498 : ¬ MinimalInterpreter v690685259498 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685175706 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v690685175706 : ¬ MinimalInterpreter v690685175706 :=
  cost_cut false 1 (by decide)
private def v690685175274 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v690685175274 : ¬ MinimalInterpreter v690685175274 :=
  cost_cut false 1 (by decide)
private def v690685164442 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v690685164442 : ¬ MinimalInterpreter v690685164442 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685139866 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v690685139866 : ¬ MinimalInterpreter v690685139866 :=
  cost_cut false 1 (by decide)
private def v690685164010 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))))))
private theorem no_v690685164010 : ¬ MinimalInterpreter v690685164010 :=
  cost_cut false 1 (by decide)
private def v690685161194 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))))))
private theorem no_v690685161194 : ¬ MinimalInterpreter v690685161194 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685139434 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v690685139434 : ¬ MinimalInterpreter v690685139434 :=
  cost_cut false 1 (by decide)
private def v690685136618 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v690685136618 : ¬ MinimalInterpreter v690685136618 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685130474 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v690685130474 : ¬ MinimalInterpreter v690685130474 :=
  cost_cut false 1 (by decide)
private def v690687633306 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v690687633306 : ¬ MinimalInterpreter v690687633306 :=
  cost_cut false 1 (by decide)
private def v690687632874 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v690687632874 : ¬ MinimalInterpreter v690687632874 :=
  cost_cut false 1 (by decide)
private def v690687622042 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v690687622042 : ¬ MinimalInterpreter v690687622042 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690687621610 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v690687621610 : ¬ MinimalInterpreter v690687621610 :=
  cost_cut false 1 (by decide)
private def v690687618794 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v690687618794 : ¬ MinimalInterpreter v690687618794 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690687326698 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0)))))
private theorem no_v690687326698 : ¬ MinimalInterpreter v690687326698 :=
  cost_cut false 1 (by decide)
private def v690687323882 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0)))))
private theorem no_v690687323882 : ¬ MinimalInterpreter v690687323882 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))
private def v690697070490 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v690697070490 : ¬ MinimalInterpreter v690697070490 :=
  cost_cut false 1 (by decide)
private def v690697070058 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v690697070058 : ¬ MinimalInterpreter v690697070058 :=
  cost_cut false 1 (by decide)
private def v690697059226 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v690697059226 : ¬ MinimalInterpreter v690697059226 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690697058794 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v690697058794 : ¬ MinimalInterpreter v690697058794 :=
  cost_cut false 1 (by decide)
private def v690697055978 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v690697055978 : ¬ MinimalInterpreter v690697055978 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690695977450 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))))
private theorem no_v690695977450 : ¬ MinimalInterpreter v690695977450 :=
  cost_cut false 1 (by decide)
private def v690695974634 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0))))
private theorem no_v690695974634 : ¬ MinimalInterpreter v690695974634 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0)))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)))))
theorem row286 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [0,1,2,0,0]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [0,1,2,0,0] = [v690685274010,v690685273578,v690685262746,v690685262314,v690685259498,v690685175706,v690685175274,v690685164442,v690685139866,v690685164010,v690685161194,v690685139434,v690685136618,v690685130474,v690687633306,v690687632874,v690687622042,v690687621610,v690687618794,v690687326698,v690687323882,v690697070490,v690697070058,v690697059226,v690697058794,v690697055978,v690695977450,v690695974634] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685274010) (.cons (no_v690685273578) (.cons (no_v690685262746) (.cons (no_v690685262314) (.cons (no_v690685259498) (.cons (no_v690685175706) (.cons (no_v690685175274) (.cons (no_v690685164442) (.cons (no_v690685139866) (.cons (no_v690685164010) (.cons (no_v690685161194) (.cons (no_v690685139434) (.cons (no_v690685136618) (.cons (no_v690685130474) (.cons (no_v690687633306) (.cons (no_v690687632874) (.cons (no_v690687622042) (.cons (no_v690687621610) (.cons (no_v690687618794) (.cons (no_v690687326698) (.cons (no_v690687323882) (.cons (no_v690697070490) (.cons (no_v690697070058) (.cons (no_v690697059226) (.cons (no_v690697058794) (.cons (no_v690697055978) (.cons (no_v690695977450) (.cons (no_v690695974634) .nil))))))))))))))))))))))))))))

private def v690685276982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v690685276982 : ¬ MinimalInterpreter v690685276982 :=
  cost_cut false 1 (by decide)
private def v690685276886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v690685276886 : ¬ MinimalInterpreter v690685276886 :=
  cost_cut false 1 (by decide)
private def v690685263158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v690685263158 : ¬ MinimalInterpreter v690685263158 :=
  cost_cut false 1 (by decide)
private def v690685263062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v690685263062 : ¬ MinimalInterpreter v690685263062 :=
  cost_cut false 1 (by decide)
private def v690685259606 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v690685259606 : ¬ MinimalInterpreter v690685259606 :=
  cost_cut false 1 (by decide)
private def v690685178678 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v690685178678 : ¬ MinimalInterpreter v690685178678 :=
  cost_cut false 1 (by decide)
private def v690685178582 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v690685178582 : ¬ MinimalInterpreter v690685178582 :=
  cost_cut false 1 (by decide)
private def v690685164854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v690685164854 : ¬ MinimalInterpreter v690685164854 :=
  cost_cut false 1 (by decide)
private def v690685140278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v690685140278 : ¬ MinimalInterpreter v690685140278 :=
  cost_cut false 1 (by decide)
private def v690685164758 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v690685164758 : ¬ MinimalInterpreter v690685164758 :=
  cost_cut false 1 (by decide)
private def v690685161302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1))))))
private theorem no_v690685161302 : ¬ MinimalInterpreter v690685161302 :=
  cost_cut false 1 (by decide)
private def v690685140182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v690685140182 : ¬ MinimalInterpreter v690685140182 :=
  cost_cut false 1 (by decide)
private def v690685136726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v690685136726 : ¬ MinimalInterpreter v690685136726 :=
  cost_cut false 1 (by decide)
private def v690685130582 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v690685130582 : ¬ MinimalInterpreter v690685130582 :=
  cost_cut false 1 (by decide)
private def v690687636278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v690687636278 : ¬ MinimalInterpreter v690687636278 :=
  cost_cut false 1 (by decide)
private def v690687636182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v690687636182 : ¬ MinimalInterpreter v690687636182 :=
  cost_cut false 1 (by decide)
private def v690687622454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v690687622454 : ¬ MinimalInterpreter v690687622454 :=
  cost_cut false 1 (by decide)
private def v690687622358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v690687622358 : ¬ MinimalInterpreter v690687622358 :=
  cost_cut false 1 (by decide)
private def v690687618902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v690687618902 : ¬ MinimalInterpreter v690687618902 :=
  cost_cut false 1 (by decide)
private def v690697073462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v690697073462 : ¬ MinimalInterpreter v690697073462 :=
  cost_cut false 1 (by decide)
private def v690697073366 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v690697073366 : ¬ MinimalInterpreter v690697073366 :=
  cost_cut false 1 (by decide)
private def v690697059638 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v690697059638 : ¬ MinimalInterpreter v690697059638 :=
  cost_cut false 1 (by decide)
private def v690697059542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v690697059542 : ¬ MinimalInterpreter v690697059542 :=
  cost_cut false 1 (by decide)
private def v690697056086 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v690697056086 : ¬ MinimalInterpreter v690697056086 :=
  cost_cut false 1 (by decide)
theorem row287 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [0,2,0,0,1]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [0,2,0,0,1] = [v690685276982,v690685276886,v690685263158,v690685263062,v690685259606,v690685178678,v690685178582,v690685164854,v690685140278,v690685164758,v690685161302,v690685140182,v690685136726,v690685130582,v690687636278,v690687636182,v690687622454,v690687622358,v690687618902,v690697073462,v690697073366,v690697059638,v690697059542,v690697056086] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685276982) (.cons (no_v690685276886) (.cons (no_v690685263158) (.cons (no_v690685263062) (.cons (no_v690685259606) (.cons (no_v690685178678) (.cons (no_v690685178582) (.cons (no_v690685164854) (.cons (no_v690685140278) (.cons (no_v690685164758) (.cons (no_v690685161302) (.cons (no_v690685140182) (.cons (no_v690685136726) (.cons (no_v690685130582) (.cons (no_v690687636278) (.cons (no_v690687636182) (.cons (no_v690687622454) (.cons (no_v690687622358) (.cons (no_v690687618902) (.cons (no_v690697073462) (.cons (no_v690697073366) (.cons (no_v690697059638) (.cons (no_v690697059542) (.cons (no_v690697056086) .nil))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows39
