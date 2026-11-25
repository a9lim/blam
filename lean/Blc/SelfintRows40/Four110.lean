import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four770 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [0,2,0,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1376369352310 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v1376369352310 : ¬ MinimalInterpreter v1376369352310 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376369350582 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v1376369350582 : ¬ MinimalInterpreter v1376369350582 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376369340022 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v1376369340022 : ¬ MinimalInterpreter v1376369340022 :=
  cost_cut false 1 (by decide)

private def v1376369338294 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v1376369338294 : ¬ MinimalInterpreter v1376369338294 :=
  cost_cut false 1 (by decide)

private def v1376369335222 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v1376369335222 : ¬ MinimalInterpreter v1376369335222 :=
  cost_cut false 1 (by decide)

theorem four771 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [0,2,1,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [0,2,1,1] = [v1376369352310,v1376369350582,v1376369340022,v1376369338294,v1376369335222] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376369352310) (.cons (no_v1376369350582) (.cons (no_v1376369340022) (.cons (no_v1376369338294) (.cons (no_v1376369335222) .nil)))))

theorem four772 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [0,2,2,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1376369364206 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1376369364206 : ¬ MinimalInterpreter v1376369364206 :=
  cost_cut false 1 (by decide)

private def v1376369363822 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1376369363822 : ¬ MinimalInterpreter v1376369363822 :=
  cost_cut false 1 (by decide)

private def v1376369341678 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1376369341678 : ¬ MinimalInterpreter v1376369341678 :=
  cost_cut false 1 (by decide)

private def v1376369341294 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1376369341294 : ¬ MinimalInterpreter v1376369341294 :=
  cost_cut false 1 (by decide)

private def v1376369335662 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1376369335662 : ¬ MinimalInterpreter v1376369335662 :=
  cost_cut false 1 (by decide)

private def v1376369708270 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1376369708270 : ¬ MinimalInterpreter v1376369708270 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1376369707886 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1376369707886 : ¬ MinimalInterpreter v1376369707886 :=
  cost_cut false 1 (by decide)

theorem four773 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,0,1,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,0,1,2] = [v1376369364206,v1376369363822,v1376369341678,v1376369341294,v1376369335662,v1376369708270,v1376369707886] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376369364206) (.cons (no_v1376369363822) (.cons (no_v1376369341678) (.cons (no_v1376369341294) (.cons (no_v1376369335662) (.cons (no_v1376369708270) (.cons (no_v1376369707886) .nil)))))))

private def v1376369364214 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1376369364214 : ¬ MinimalInterpreter v1376369364214 :=
  cost_cut false 1 (by decide)

private def v1376369363830 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1376369363830 : ¬ MinimalInterpreter v1376369363830 :=
  cost_cut false 1 (by decide)

private def v1376369341686 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1376369341686 : ¬ MinimalInterpreter v1376369341686 :=
  cost_cut false 1 (by decide)

private def v1376369341302 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1376369341302 : ¬ MinimalInterpreter v1376369341302 :=
  cost_cut false 1 (by decide)

private def v1376369335670 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1376369335670 : ¬ MinimalInterpreter v1376369335670 :=
  cost_cut false 1 (by decide)

private def v1376369708278 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1376369708278 : ¬ MinimalInterpreter v1376369708278 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1376369707894 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1376369707894 : ¬ MinimalInterpreter v1376369707894 :=
  cost_cut false 1 (by decide)

theorem four774 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,0,2,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,0,2,1] = [v1376369364214,v1376369363830,v1376369341686,v1376369341302,v1376369335670,v1376369708278,v1376369707894] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376369364214) (.cons (no_v1376369363830) (.cons (no_v1376369341686) (.cons (no_v1376369341302) (.cons (no_v1376369335670) (.cons (no_v1376369708278) (.cons (no_v1376369707894) .nil)))))))

private def v1376369364590 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1376369364590 : ¬ MinimalInterpreter v1376369364590 :=
  cost_cut false 1 (by decide)

private def v1376369363886 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1376369363886 : ¬ MinimalInterpreter v1376369363886 :=
  cost_cut false 1 (by decide)

private def v1376369342062 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1376369342062 : ¬ MinimalInterpreter v1376369342062 :=
  cost_cut false 1 (by decide)

private def v1376369341358 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1376369341358 : ¬ MinimalInterpreter v1376369341358 :=
  cost_cut false 1 (by decide)

private def v1376369335726 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1376369335726 : ¬ MinimalInterpreter v1376369335726 :=
  cost_cut false 1 (by decide)

private def v1376369708654 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1376369708654 : ¬ MinimalInterpreter v1376369708654 :=
  cost_cut false 1 (by decide)

private def v1376369707950 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1376369707950 : ¬ MinimalInterpreter v1376369707950 :=
  cost_cut false 1 (by decide)

theorem four775 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,1,0,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,1,0,2] = [v1376369364590,v1376369363886,v1376369342062,v1376369341358,v1376369335726,v1376369708654,v1376369707950] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376369364590) (.cons (no_v1376369363886) (.cons (no_v1376369342062) (.cons (no_v1376369341358) (.cons (no_v1376369335726) (.cons (no_v1376369708654) (.cons (no_v1376369707950) .nil)))))))

theorem four776 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,1,1,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
