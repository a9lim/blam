import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four651 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,1,1,1]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381368974970 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1381368974970 : ¬ MinimalInterpreter v1381368974970 :=
  cost_cut false 1 (by decide)

private def v1381368974266 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1381368974266 : ¬ MinimalInterpreter v1381368974266 :=
  cost_cut false 1 (by decide)

private def v1381368952442 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381368952442 : ¬ MinimalInterpreter v1381368952442 :=
  cost_cut false 1 (by decide)

private def v1381368951738 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v1381368951738 : ¬ MinimalInterpreter v1381368951738 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381368946106 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v1381368946106 : ¬ MinimalInterpreter v1381368946106 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381369319034 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1381369319034 : ¬ MinimalInterpreter v1381369319034 :=
  cost_cut false 1 (by decide)

private def v1381369318330 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1381369318330 : ¬ MinimalInterpreter v1381369318330 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1381369235066 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0))))))))
private theorem no_v1381369235066 : ¬ MinimalInterpreter v1381369235066 :=
  cost_cut false 1 (by decide)

private def v1381369213370 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 0)))))))
private theorem no_v1381369213370 : ¬ MinimalInterpreter v1381369213370 :=
  cost_cut false 1 (by decide)

theorem four652 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,1,2,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,1,2,0] = [v1381368974970,v1381368974266,v1381368952442,v1381368951738,v1381368946106,v1381369319034,v1381369318330,v1381369235066,v1381369213370] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368974970) (.cons (no_v1381368974266) (.cons (no_v1381368952442) (.cons (no_v1381368951738) (.cons (no_v1381368946106) (.cons (no_v1381369319034) (.cons (no_v1381369318330) (.cons (no_v1381369235066) (.cons (no_v1381369213370) .nil)))))))))

private def v1381368975158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1381368975158 : ¬ MinimalInterpreter v1381368975158 :=
  cost_cut false 1 (by decide)

private def v1381368974294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1381368974294 : ¬ MinimalInterpreter v1381368974294 :=
  cost_cut false 1 (by decide)

private def v1381368952630 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381368952630 : ¬ MinimalInterpreter v1381368952630 :=
  cost_cut false 1 (by decide)

private def v1381368951766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v1381368951766 : ¬ MinimalInterpreter v1381368951766 :=
  cost_cut false 1 (by decide)

private def v1381368946134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v1381368946134 : ¬ MinimalInterpreter v1381368946134 :=
  cost_cut false 1 (by decide)

private def v1381369319222 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v1381369319222 : ¬ MinimalInterpreter v1381369319222 :=
  cost_cut false 1 (by decide)

private def v1381369318358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v1381369318358 : ¬ MinimalInterpreter v1381369318358 :=
  cost_cut false 1 (by decide)

private def v1381369330886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1381369330886 : ¬ MinimalInterpreter v1381369330886 :=
  cost_cut false 1 (by decide)

private def v1381369327430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1381369327430 : ¬ MinimalInterpreter v1381369327430 :=
  cost_cut false 1 (by decide)

private def v1381369240774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1381369240774 : ¬ MinimalInterpreter v1381369240774 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369237318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1381369237318 : ¬ MinimalInterpreter v1381369237318 :=
  cost_cut false 1 (by decide)

private def v1381369214790 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1381369214790 : ¬ MinimalInterpreter v1381369214790 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four653 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,2,0,1]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,2,0,1] = [v1381368975158,v1381368974294,v1381368952630,v1381368951766,v1381368946134,v1381369319222,v1381369318358,v1381369330886,v1381369327430,v1381369240774,v1381369237318,v1381369214790] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368975158) (.cons (no_v1381368974294) (.cons (no_v1381368952630) (.cons (no_v1381368951766) (.cons (no_v1381368946134) (.cons (no_v1381369319222) (.cons (no_v1381369318358) (.cons (no_v1381369330886) (.cons (no_v1381369327430) (.cons (no_v1381369240774) (.cons (no_v1381369237318) (.cons (no_v1381369214790) .nil))))))))))))

private def v1381368975162 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1381368975162 : ¬ MinimalInterpreter v1381368975162 :=
  cost_cut false 1 (by decide)

private def v1381368974298 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1381368974298 : ¬ MinimalInterpreter v1381368974298 :=
  cost_cut false 1 (by decide)

private def v1381368952634 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381368952634 : ¬ MinimalInterpreter v1381368952634 :=
  cost_cut false 1 (by decide)

private def v1381368951770 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v1381368951770 : ¬ MinimalInterpreter v1381368951770 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381368946138 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v1381368946138 : ¬ MinimalInterpreter v1381368946138 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381369319226 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v1381369319226 : ¬ MinimalInterpreter v1381369319226 :=
  cost_cut false 1 (by decide)

private def v1381369318362 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v1381369318362 : ¬ MinimalInterpreter v1381369318362 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1381369327386 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1381369327386 : ¬ MinimalInterpreter v1381369327386 :=
  cost_cut false 1 (by decide)

private def v1381369237274 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1381369237274 : ¬ MinimalInterpreter v1381369237274 :=
  cost_cut false 1 (by decide)

private def v1381369214746 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1381369214746 : ¬ MinimalInterpreter v1381369214746 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four654 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,2,1,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,2,1,0] = [v1381368975162,v1381368974298,v1381368952634,v1381368951770,v1381368946138,v1381369319226,v1381369318362,v1381369327386,v1381369237274,v1381369214746] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368975162) (.cons (no_v1381368974298) (.cons (no_v1381368952634) (.cons (no_v1381368951770) (.cons (no_v1381368946138) (.cons (no_v1381369319226) (.cons (no_v1381369318362) (.cons (no_v1381369327386) (.cons (no_v1381369237274) (.cons (no_v1381369214746) .nil))))))))))

private def v1381368975258 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.app (.var 0) (.var 0))))))))))
private theorem no_v1381368975258 : ¬ MinimalInterpreter v1381368975258 :=
  cost_cut false 1 (by decide)

private def v1381368974314 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 0)) (.var 0)))))))))
private theorem no_v1381368974314 : ¬ MinimalInterpreter v1381368974314 :=
  cost_cut false 1 (by decide)

private def v1381368952730 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1381368952730 : ¬ MinimalInterpreter v1381368952730 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1381368951786 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 3) (.var 0))) (.var 0))))))))
private theorem no_v1381368951786 : ¬ MinimalInterpreter v1381368951786 :=
  cost_cut false 1 (by decide)

private def v1381368946154 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0))))))))
private theorem no_v1381368946154 : ¬ MinimalInterpreter v1381368946154 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 3)) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1381369235354 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0))))))))
private theorem no_v1381369235354 : ¬ MinimalInterpreter v1381369235354 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.app (.var 0) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1381369213418 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0)))))))
private theorem no_v1381369213418 : ¬ MinimalInterpreter v1381369213418 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

theorem four655 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,3,0,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,3,0,0] = [v1381368975258,v1381368974314,v1381368952730,v1381368951786,v1381368946154,v1381369235354,v1381369213418] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368975258) (.cons (no_v1381368974314) (.cons (no_v1381368952730) (.cons (no_v1381368951786) (.cons (no_v1381368946154) (.cons (no_v1381369235354) (.cons (no_v1381369213418) .nil)))))))

private def v1381369354638 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1381369354638 : ¬ MinimalInterpreter v1381369354638 :=
  cost_cut false 1 (by decide)

private def v1381369353870 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1381369353870 : ¬ MinimalInterpreter v1381369353870 :=
  cost_cut false 1 (by decide)

private def v1381369244046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1381369244046 : ¬ MinimalInterpreter v1381369244046 :=
  cost_cut false 1 (by decide)

private def v1381369243278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 2))))))))
private theorem no_v1381369243278 : ¬ MinimalInterpreter v1381369243278 :=
  cost_cut false 1 (by decide)

private def v1381369215630 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1381369215630 : ¬ MinimalInterpreter v1381369215630 :=
  cost_cut false 1 (by decide)

theorem four656 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [2,0,0,2]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [2,0,0,2] = [v1381369354638,v1381369353870,v1381369244046,v1381369243278,v1381369215630] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381369354638) (.cons (no_v1381369353870) (.cons (no_v1381369244046) (.cons (no_v1381369243278) (.cons (no_v1381369215630) .nil)))))

private def v1381368981110 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))))
private theorem no_v1381368981110 : ¬ MinimalInterpreter v1381368981110 :=
  cost_cut false 1 (by decide)

private def v1381368980918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))))
private theorem no_v1381368980918 : ¬ MinimalInterpreter v1381368980918 :=
  cost_cut false 1 (by decide)

private def v1381368953462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1381368953462 : ¬ MinimalInterpreter v1381368953462 :=
  cost_cut false 1 (by decide)

private def v1381368953270 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))))
private theorem no_v1381368953270 : ¬ MinimalInterpreter v1381368953270 :=
  cost_cut false 1 (by decide)

private def v1381368946358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))))
private theorem no_v1381368946358 : ¬ MinimalInterpreter v1381368946358 :=
  cost_cut false 1 (by decide)

private def v1381369354694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1381369354694 : ¬ MinimalInterpreter v1381369354694 :=
  cost_cut false 1 (by decide)

private def v1381369353926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1381369353926 : ¬ MinimalInterpreter v1381369353926 :=
  cost_cut false 1 (by decide)

private def v1381369353782 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1381369353782 : ¬ MinimalInterpreter v1381369353782 :=
  cost_cut false 1 (by decide)

private def v1381369244102 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1381369244102 : ¬ MinimalInterpreter v1381369244102 :=
  cost_cut false 1 (by decide)

private def v1381369243334 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1))))))))
private theorem no_v1381369243334 : ¬ MinimalInterpreter v1381369243334 :=
  cost_cut false 1 (by decide)

private def v1381369215686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1381369215686 : ¬ MinimalInterpreter v1381369215686 :=
  cost_cut false 1 (by decide)

private def v1381369243190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v1381369243190 : ¬ MinimalInterpreter v1381369243190 :=
  cost_cut false 1 (by decide)

private def v1381369215542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1381369215542 : ¬ MinimalInterpreter v1381369215542 :=
  cost_cut false 1 (by decide)

theorem four657 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [2,0,1,1]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [2,0,1,1] = [v1381368981110,v1381368980918,v1381368953462,v1381368953270,v1381368946358,v1381369354694,v1381369353926,v1381369353782,v1381369244102,v1381369243334,v1381369215686,v1381369243190,v1381369215542] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368981110) (.cons (no_v1381368980918) (.cons (no_v1381368953462) (.cons (no_v1381368953270) (.cons (no_v1381368946358) (.cons (no_v1381369354694) (.cons (no_v1381369353926) (.cons (no_v1381369353782) (.cons (no_v1381369244102) (.cons (no_v1381369243334) (.cons (no_v1381369215686) (.cons (no_v1381369243190) (.cons (no_v1381369215542) .nil)))))))))))))

end Blc.SelfintSingleObject.Rows40
