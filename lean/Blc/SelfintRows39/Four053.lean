import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690634158906 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v690634158906 : ¬ MinimalInterpreter v690634158906 :=
  cost_cut false 1 (by decide)
private def v690634158810 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v690634158810 : ¬ MinimalInterpreter v690634158810 :=
  cost_cut false 1 (by decide)
private def v690634145082 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v690634145082 : ¬ MinimalInterpreter v690634145082 :=
  cost_cut false 1 (by decide)
private def v690634144986 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v690634144986 : ¬ MinimalInterpreter v690634144986 :=
  cost_cut false 1 (by decide)
private def v690634141530 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v690634141530 : ¬ MinimalInterpreter v690634141530 :=
  cost_cut false 1 (by decide)
private def v690231505722 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v690231505722 : ¬ MinimalInterpreter v690231505722 :=
  cost_cut false 1 (by decide)
private def v690231505626 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v690231505626 : ¬ MinimalInterpreter v690231505626 :=
  cost_cut false 1 (by decide)
private def v690231491898 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v690231491898 : ¬ MinimalInterpreter v690231491898 :=
  cost_cut false 1 (by decide)
private def v690231491802 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v690231491802 : ¬ MinimalInterpreter v690231491802 :=
  cost_cut false 1 (by decide)
private def v690231488346 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v690231488346 : ¬ MinimalInterpreter v690231488346 :=
  cost_cut false 1 (by decide)
theorem row318 : BadRow (row ⟨1,3,0,2,4,3⟩ [0,0,0] [2,0,1,0]) := by
  have h : row ⟨1,3,0,2,4,3⟩ [0,0,0] [2,0,1,0] = [v690634158906,v690634158810,v690634145082,v690634144986,v690634141530,v690231505722,v690231505626,v690231491898,v690231491802,v690231488346] := by decide +kernel
  rw [h]
  exact (.cons (no_v690634158906) (.cons (no_v690634158810) (.cons (no_v690634145082) (.cons (no_v690634144986) (.cons (no_v690634141530) (.cons (no_v690231505722) (.cons (no_v690231505626) (.cons (no_v690231491898) (.cons (no_v690231491802) (.cons (no_v690231488346) .nil))))))))))

private def v690634159002 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v690634159002 : ¬ MinimalInterpreter v690634159002 :=
  cost_cut false 1 (by decide)
private def v690634158826 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v690634158826 : ¬ MinimalInterpreter v690634158826 :=
  cost_cut false 1 (by decide)
private def v690634145178 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v690634145178 : ¬ MinimalInterpreter v690634145178 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690634145002 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v690634145002 : ¬ MinimalInterpreter v690634145002 :=
  cost_cut false 1 (by decide)
private def v690634141546 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v690634141546 : ¬ MinimalInterpreter v690634141546 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690231505818 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v690231505818 : ¬ MinimalInterpreter v690231505818 :=
  cost_cut false 1 (by decide)
private def v690231505642 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v690231505642 : ¬ MinimalInterpreter v690231505642 :=
  cost_cut false 1 (by decide)
private def v690231491994 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v690231491994 : ¬ MinimalInterpreter v690231491994 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690231491818 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v690231491818 : ¬ MinimalInterpreter v690231491818 :=
  cost_cut false 1 (by decide)
private def v690231488362 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v690231488362 : ¬ MinimalInterpreter v690231488362 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row319 : BadRow (row ⟨1,3,0,2,4,3⟩ [0,0,0] [2,1,0,0]) := by
  have h : row ⟨1,3,0,2,4,3⟩ [0,0,0] [2,1,0,0] = [v690634159002,v690634158826,v690634145178,v690634145002,v690634141546,v690231505818,v690231505642,v690231491994,v690231491818,v690231488362] := by decide +kernel
  rw [h]
  exact (.cons (no_v690634159002) (.cons (no_v690634158826) (.cons (no_v690634145178) (.cons (no_v690634145002) (.cons (no_v690634141546) (.cons (no_v690231505818) (.cons (no_v690231505642) (.cons (no_v690231491994) (.cons (no_v690231491818) (.cons (no_v690231488362) .nil))))))))))

private def v690684638174 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v690684638174 : ¬ MinimalInterpreter v690684638174 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3))))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3)))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690684636638 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v690684636638 : ¬ MinimalInterpreter v690684636638 :=
  cost_cut false 1 (by decide)
private def v690684613598 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3))))))))
private theorem no_v690684613598 : ¬ MinimalInterpreter v690684613598 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690684612062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 3)))))))
private theorem no_v690684612062 : ¬ MinimalInterpreter v690684612062 :=
  cost_cut false 1 (by decide)
private def v690684605918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 3)))))))
private theorem no_v690684605918 : ¬ MinimalInterpreter v690684605918 :=
  cost_cut false 1 (by decide)
private def v690685264862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v690685264862 : ¬ MinimalInterpreter v690685264862 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3))))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685166558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3))))))))
private theorem no_v690685166558 : ¬ MinimalInterpreter v690685166558 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690687587294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v690687587294 : ¬ MinimalInterpreter v690687587294 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v690687585758 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v690687585758 : ¬ MinimalInterpreter v690687585758 :=
  cost_cut false 1 (by decide)
private def v690687624158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v690687624158 : ¬ MinimalInterpreter v690687624158 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.app (.var 0) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690697024478 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v690697024478 : ¬ MinimalInterpreter v690697024478 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v690697022942 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v690697022942 : ¬ MinimalInterpreter v690697022942 :=
  cost_cut false 1 (by decide)
private def v690697061342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v690697061342 : ¬ MinimalInterpreter v690697061342 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row320 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [0,0,2,3]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [0,0,2,3] = [v690684638174,v690684636638,v690684613598,v690684612062,v690684605918,v690685264862,v690685166558,v690687587294,v690687585758,v690687624158,v690697024478,v690697022942,v690697061342] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684638174) (.cons (no_v690684636638) (.cons (no_v690684613598) (.cons (no_v690684612062) (.cons (no_v690684605918) (.cons (no_v690685264862) (.cons (no_v690685166558) (.cons (no_v690687587294) (.cons (no_v690687585758) (.cons (no_v690687624158) (.cons (no_v690697024478) (.cons (no_v690697022942) (.cons (no_v690697061342) .nil)))))))))))))

private def v690684638190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v690684638190 : ¬ MinimalInterpreter v690684638190 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2))))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2)))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690684636654 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v690684636654 : ¬ MinimalInterpreter v690684636654 :=
  cost_cut false 1 (by decide)
private def v690684613614 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2))))))))
private theorem no_v690684613614 : ¬ MinimalInterpreter v690684613614 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690684612078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2)))))))
private theorem no_v690684612078 : ¬ MinimalInterpreter v690684612078 :=
  cost_cut false 1 (by decide)
private def v690684605934 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 2)))))))
private theorem no_v690684605934 : ¬ MinimalInterpreter v690684605934 :=
  cost_cut false 1 (by decide)
private def v690685264878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v690685264878 : ¬ MinimalInterpreter v690685264878 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2))))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685166574 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2))))))))
private theorem no_v690685166574 : ¬ MinimalInterpreter v690685166574 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2)))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690687587310 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v690687587310 : ¬ MinimalInterpreter v690687587310 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v690687585774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v690687585774 : ¬ MinimalInterpreter v690687585774 :=
  cost_cut false 1 (by decide)
private def v690687624174 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v690687624174 : ¬ MinimalInterpreter v690687624174 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.app (.var 0) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690697024494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v690697024494 : ¬ MinimalInterpreter v690697024494 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v690697022958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v690697022958 : ¬ MinimalInterpreter v690697022958 :=
  cost_cut false 1 (by decide)
private def v690697061358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v690697061358 : ¬ MinimalInterpreter v690697061358 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row321 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [0,0,3,2]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [0,0,3,2] = [v690684638190,v690684636654,v690684613614,v690684612078,v690684605934,v690685264878,v690685166574,v690687587310,v690687585774,v690687624174,v690697024494,v690697022958,v690697061358] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684638190) (.cons (no_v690684636654) (.cons (no_v690684613614) (.cons (no_v690684612078) (.cons (no_v690684605934) (.cons (no_v690685264878) (.cons (no_v690685166574) (.cons (no_v690687587310) (.cons (no_v690687585774) (.cons (no_v690687624174) (.cons (no_v690697024494) (.cons (no_v690697022958) (.cons (no_v690697061358) .nil)))))))))))))

private def v690684639710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 3)))))))))
private theorem no_v690684639710 : ¬ MinimalInterpreter v690684639710 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 3)))) (.app (.var 0) (.app (.var 0) (.var 2))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v690684636894 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3))))))))
private theorem no_v690684636894 : ¬ MinimalInterpreter v690684636894 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3))) (.app (.app (.var 0) (.var 0)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v690684615134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 3))))))))
private theorem no_v690684615134 : ¬ MinimalInterpreter v690684615134 :=
  cost_cut false 1 (by decide)
private def v690684612318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 3)))))))
private theorem no_v690684612318 : ¬ MinimalInterpreter v690684612318 :=
  cost_cut false 1 (by decide)
private def v690684606174 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 3)))))))
private theorem no_v690684606174 : ¬ MinimalInterpreter v690684606174 :=
  cost_cut false 1 (by decide)
private def v690685272542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v690685272542 : ¬ MinimalInterpreter v690685272542 :=
  cost_cut false 1 (by decide)
private def v690685273886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v690685273886 : ¬ MinimalInterpreter v690685273886 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v690685262622 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3))))))))
private theorem no_v690685262622 : ¬ MinimalInterpreter v690685262622 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 3)))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))
private def v690685174238 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 3))))))))
private theorem no_v690685174238 : ¬ MinimalInterpreter v690685174238 :=
  cost_cut false 1 (by decide)
private def v690685175582 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v690685175582 : ¬ MinimalInterpreter v690685175582 :=
  cost_cut false 1 (by decide)
private def v690685164318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 3)))))))
private theorem no_v690685164318 : ¬ MinimalInterpreter v690685164318 :=
  cost_cut false 1 (by decide)
private def v690685139742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v690685139742 : ¬ MinimalInterpreter v690685139742 :=
  cost_cut false 1 (by decide)
private def v690687631838 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v690687631838 : ¬ MinimalInterpreter v690687631838 :=
  cost_cut false 1 (by decide)
private def v690697069022 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v690697069022 : ¬ MinimalInterpreter v690697069022 :=
  cost_cut false 1 (by decide)
theorem row322 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [0,1,1,3]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [0,1,1,3] = [v690684639710,v690684636894,v690684615134,v690684612318,v690684606174,v690685272542,v690685273886,v690685262622,v690685174238,v690685175582,v690685164318,v690685139742,v690687631838,v690697069022] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684639710) (.cons (no_v690684636894) (.cons (no_v690684615134) (.cons (no_v690684612318) (.cons (no_v690684606174) (.cons (no_v690685272542) (.cons (no_v690685273886) (.cons (no_v690685262622) (.cons (no_v690685174238) (.cons (no_v690685175582) (.cons (no_v690685164318) (.cons (no_v690685139742) (.cons (no_v690687631838) (.cons (no_v690697069022) .nil))))))))))))))

private def v690684639726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))))
private theorem no_v690684639726 : ¬ MinimalInterpreter v690684639726 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))
private def v690684636910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))))
private theorem no_v690684636910 : ¬ MinimalInterpreter v690684636910 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690684615150 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2))))))))
private theorem no_v690684615150 : ¬ MinimalInterpreter v690684615150 :=
  cost_cut false 1 (by decide)
private def v690684612334 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2)))))))
private theorem no_v690684612334 : ¬ MinimalInterpreter v690684612334 :=
  cost_cut false 1 (by decide)
private def v690684606190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2)))))))
private theorem no_v690684606190 : ¬ MinimalInterpreter v690684606190 :=
  cost_cut false 1 (by decide)
private def v690685273998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v690685273998 : ¬ MinimalInterpreter v690685273998 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685262734 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2))))))))
private theorem no_v690685262734 : ¬ MinimalInterpreter v690685262734 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685262062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2)))))))
private theorem no_v690685262062 : ¬ MinimalInterpreter v690685262062 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 2))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685175694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v690685175694 : ¬ MinimalInterpreter v690685175694 :=
  cost_cut false 1 (by decide)
private def v690685164430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 2)))))))
private theorem no_v690685164430 : ¬ MinimalInterpreter v690685164430 :=
  cost_cut false 1 (by decide)
private def v690685139854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v690685139854 : ¬ MinimalInterpreter v690685139854 :=
  cost_cut false 1 (by decide)
private def v690685153006 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 2)))) (.var 2))))))
private theorem no_v690685153006 : ¬ MinimalInterpreter v690685153006 :=
  cost_cut false 1 (by decide)
private def v690685163758 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 2)))) (.var 2))))))
private theorem no_v690685163758 : ¬ MinimalInterpreter v690685163758 :=
  cost_cut false 1 (by decide)
private def v690685139182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 2))))))
private theorem no_v690685139182 : ¬ MinimalInterpreter v690685139182 :=
  cost_cut false 1 (by decide)
theorem row323 : BadRow (row ⟨1,2,0,3,4,5⟩ [0,0] [0,1,2,2]) := by
  have h : row ⟨1,2,0,3,4,5⟩ [0,0] [0,1,2,2] = [v690684639726,v690684636910,v690684615150,v690684612334,v690684606190,v690685273998,v690685262734,v690685262062,v690685175694,v690685164430,v690685139854,v690685153006,v690685163758,v690685139182] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684639726) (.cons (no_v690684636910) (.cons (no_v690684615150) (.cons (no_v690684612334) (.cons (no_v690684606190) (.cons (no_v690685273998) (.cons (no_v690685262734) (.cons (no_v690685262062) (.cons (no_v690685175694) (.cons (no_v690685164430) (.cons (no_v690685139854) (.cons (no_v690685153006) (.cons (no_v690685163758) (.cons (no_v690685139182) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows39
