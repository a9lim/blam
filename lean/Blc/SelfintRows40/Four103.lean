import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four721 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [1,1,2,1]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [1,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381033549422 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2))))))))
private theorem no_v1381033549422 : ¬ MinimalInterpreter v1381033549422 :=
  cost_cut false 1 (by decide)

private def v1381033547694 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2)))))))
private theorem no_v1381033547694 : ¬ MinimalInterpreter v1381033547694 :=
  cost_cut false 1 (by decide)

private def v1381033504366 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2)))))))
private theorem no_v1381033504366 : ¬ MinimalInterpreter v1381033504366 :=
  cost_cut false 1 (by decide)

private def v1381033502638 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2))))))
private theorem no_v1381033502638 : ¬ MinimalInterpreter v1381033502638 :=
  cost_cut false 1 (by decide)

private def v1381033491374 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2))))))
private theorem no_v1381033491374 : ¬ MinimalInterpreter v1381033491374 :=
  cost_cut false 1 (by decide)

theorem four722 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [1,2,0,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [1,2,0,2] = [v1381033549422,v1381033547694,v1381033504366,v1381033502638,v1381033491374] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033549422) (.cons (no_v1381033547694) (.cons (no_v1381033504366) (.cons (no_v1381033502638) (.cons (no_v1381033491374) .nil)))))

theorem four723 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [1,2,1,1]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [1,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381033549434 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0))))))))
private theorem no_v1381033549434 : ¬ MinimalInterpreter v1381033549434 :=
  cost_cut false 1 (by decide)

private def v1381033547706 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0)))))))
private theorem no_v1381033547706 : ¬ MinimalInterpreter v1381033547706 :=
  cost_cut false 1 (by decide)

private def v1381033504378 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0)))))))
private theorem no_v1381033504378 : ¬ MinimalInterpreter v1381033504378 :=
  cost_cut false 1 (by decide)

private def v1381033502650 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))))
private theorem no_v1381033502650 : ¬ MinimalInterpreter v1381033502650 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1381033491386 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))))
private theorem no_v1381033491386 : ¬ MinimalInterpreter v1381033491386 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four724 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [1,2,2,0]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [1,2,2,0] = [v1381033549434,v1381033547706,v1381033504378,v1381033502650,v1381033491386] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033549434) (.cons (no_v1381033547706) (.cons (no_v1381033504378) (.cons (no_v1381033502650) (.cons (no_v1381033491386) .nil)))))

private def v1381033561326 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1381033561326 : ¬ MinimalInterpreter v1381033561326 :=
  cost_cut false 1 (by decide)

private def v1381033560942 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1381033560942 : ¬ MinimalInterpreter v1381033560942 :=
  cost_cut false 1 (by decide)

private def v1381033506030 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1381033506030 : ¬ MinimalInterpreter v1381033506030 :=
  cost_cut false 1 (by decide)

private def v1381033505646 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1381033505646 : ¬ MinimalInterpreter v1381033505646 :=
  cost_cut false 1 (by decide)

private def v1381033491822 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1381033491822 : ¬ MinimalInterpreter v1381033491822 :=
  cost_cut false 1 (by decide)

theorem four725 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,0,1,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,0,1,2] = [v1381033561326,v1381033560942,v1381033506030,v1381033505646,v1381033491822] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033561326) (.cons (no_v1381033560942) (.cons (no_v1381033506030) (.cons (no_v1381033505646) (.cons (no_v1381033491822) .nil)))))

private def v1381033561334 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1381033561334 : ¬ MinimalInterpreter v1381033561334 :=
  cost_cut false 1 (by decide)

private def v1381033560950 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1381033560950 : ¬ MinimalInterpreter v1381033560950 :=
  cost_cut false 1 (by decide)

private def v1381033506038 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1381033506038 : ¬ MinimalInterpreter v1381033506038 :=
  cost_cut false 1 (by decide)

private def v1381033505654 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1381033505654 : ¬ MinimalInterpreter v1381033505654 :=
  cost_cut false 1 (by decide)

private def v1381033491830 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1381033491830 : ¬ MinimalInterpreter v1381033491830 :=
  cost_cut false 1 (by decide)

theorem four726 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,0,2,1]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,0,2,1] = [v1381033561334,v1381033560950,v1381033506038,v1381033505654,v1381033491830] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033561334) (.cons (no_v1381033560950) (.cons (no_v1381033506038) (.cons (no_v1381033505654) (.cons (no_v1381033491830) .nil)))))

private def v1381033561710 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1381033561710 : ¬ MinimalInterpreter v1381033561710 :=
  cost_cut false 1 (by decide)

private def v1381033561006 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1381033561006 : ¬ MinimalInterpreter v1381033561006 :=
  cost_cut false 1 (by decide)

private def v1381033506414 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1381033506414 : ¬ MinimalInterpreter v1381033506414 :=
  cost_cut false 1 (by decide)

private def v1381033505710 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1381033505710 : ¬ MinimalInterpreter v1381033505710 :=
  cost_cut false 1 (by decide)

private def v1381033491886 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1381033491886 : ¬ MinimalInterpreter v1381033491886 :=
  cost_cut false 1 (by decide)

theorem four727 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,1,0,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [2,1,0,2] = [v1381033561710,v1381033561006,v1381033506414,v1381033505710,v1381033491886] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033561710) (.cons (no_v1381033561006) (.cons (no_v1381033506414) (.cons (no_v1381033505710) (.cons (no_v1381033491886) .nil)))))

end Blc.SelfintSingleObject.Rows40
