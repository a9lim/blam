import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row114 : BadRow (row ⟨1,2,0,2,4,5⟩ [0,0] [1,1,1,2]) := by
  have h : row ⟨1,2,0,2,4,5⟩ [0,0] [1,1,1,2] = [] := by decide
  rw [h]
  exact .nil

theorem row115 : BadRow (row ⟨1,2,0,2,4,5⟩ [0,0] [1,1,2,1]) := by
  have h : row ⟨1,2,0,2,4,5⟩ [0,0] [1,1,2,1] = [] := by decide
  rw [h]
  exact .nil

private def v35232390766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2))))))))
private theorem no_v35232390766 : ¬ MinimalInterpreter v35232390766 :=
  cost_cut false 1 (by decide)

private def v35232389038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2)))))))
private theorem no_v35232389038 : ¬ MinimalInterpreter v35232389038 :=
  cost_cut false 1 (by decide)

private def v35232345710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2)))))))
private theorem no_v35232345710 : ¬ MinimalInterpreter v35232345710 :=
  cost_cut false 1 (by decide)

private def v35232343982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2))))))
private theorem no_v35232343982 : ¬ MinimalInterpreter v35232343982 :=
  cost_cut false 1 (by decide)

private def v35232332718 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2))))))
private theorem no_v35232332718 : ¬ MinimalInterpreter v35232332718 :=
  cost_cut false 1 (by decide)

theorem row116 : BadRow (row ⟨1,2,0,2,4,5⟩ [0,0] [1,2,0,2]) := by
  have h : row ⟨1,2,0,2,4,5⟩ [0,0] [1,2,0,2] = [v35232390766,v35232389038,v35232345710,v35232343982,v35232332718] := by decide
  rw [h]
  exact (.cons (no_v35232390766) (.cons (no_v35232389038) (.cons (no_v35232345710) (.cons (no_v35232343982) (.cons (no_v35232332718) .nil)))))

theorem row117 : BadRow (row ⟨1,2,0,2,4,5⟩ [0,0] [1,2,1,1]) := by
  have h : row ⟨1,2,0,2,4,5⟩ [0,0] [1,2,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v35232390778 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0))))))))
private theorem no_v35232390778 : ¬ MinimalInterpreter v35232390778 :=
  cost_cut false 1 (by decide)

private def v35232389050 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0)))))))
private theorem no_v35232389050 : ¬ MinimalInterpreter v35232389050 :=
  cost_cut false 1 (by decide)

private def v35232345722 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0)))))))
private theorem no_v35232345722 : ¬ MinimalInterpreter v35232345722 :=
  cost_cut false 1 (by decide)

private def v35232343994 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))))
private theorem no_v35232343994 : ¬ MinimalInterpreter v35232343994 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v35232332730 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))))
private theorem no_v35232332730 : ¬ MinimalInterpreter v35232332730 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row118 : BadRow (row ⟨1,2,0,2,4,5⟩ [0,0] [1,2,2,0]) := by
  have h : row ⟨1,2,0,2,4,5⟩ [0,0] [1,2,2,0] = [v35232390778,v35232389050,v35232345722,v35232343994,v35232332730] := by decide
  rw [h]
  exact (.cons (no_v35232390778) (.cons (no_v35232389050) (.cons (no_v35232345722) (.cons (no_v35232343994) (.cons (no_v35232332730) .nil)))))

private def v35232402670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v35232402670 : ¬ MinimalInterpreter v35232402670 :=
  cost_cut false 1 (by decide)

private def v35232402286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v35232402286 : ¬ MinimalInterpreter v35232402286 :=
  cost_cut false 1 (by decide)

private def v35232347374 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v35232347374 : ¬ MinimalInterpreter v35232347374 :=
  cost_cut false 1 (by decide)

private def v35232346990 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v35232346990 : ¬ MinimalInterpreter v35232346990 :=
  cost_cut false 1 (by decide)

private def v35232333166 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v35232333166 : ¬ MinimalInterpreter v35232333166 :=
  cost_cut false 1 (by decide)

theorem row119 : BadRow (row ⟨1,2,0,2,4,5⟩ [0,0] [2,0,1,2]) := by
  have h : row ⟨1,2,0,2,4,5⟩ [0,0] [2,0,1,2] = [v35232402670,v35232402286,v35232347374,v35232346990,v35232333166] := by decide
  rw [h]
  exact (.cons (no_v35232402670) (.cons (no_v35232402286) (.cons (no_v35232347374) (.cons (no_v35232346990) (.cons (no_v35232333166) .nil)))))

end Blc.SelfintSingleObject.Rows37
