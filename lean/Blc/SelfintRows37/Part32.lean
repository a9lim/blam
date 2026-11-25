import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v35232212602 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v35232212602 : ¬ MinimalInterpreter v35232212602 :=
  cost_cut false 1 (by decide)

private def v35232212410 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v35232212410 : ¬ MinimalInterpreter v35232212410 :=
  cost_cut false 1 (by decide)

private def v35232201338 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v35232201338 : ¬ MinimalInterpreter v35232201338 :=
  cost_cut false 1 (by decide)

private def v35232201146 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v35232201146 : ¬ MinimalInterpreter v35232201146 :=
  cost_cut false 1 (by decide)

private def v35232198330 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v35232198330 : ¬ MinimalInterpreter v35232198330 :=
  cost_cut false 1 (by decide)

theorem row192 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [1,0,2,0]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [1,0,2,0] = [v35232212602,v35232212410,v35232201338,v35232201146,v35232198330] := by decide
  rw [h]
  exact (.cons (no_v35232212602) (.cons (no_v35232212410) (.cons (no_v35232201338) (.cons (no_v35232201146) (.cons (no_v35232198330) .nil)))))

theorem row193 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [1,1,0,1]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [1,1,0,1] = [] := by decide
  rw [h]
  exact .nil

theorem row194 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [1,1,1,0]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [1,1,1,0] = [] := by decide
  rw [h]
  exact .nil

private def v35232212890 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v35232212890 : ¬ MinimalInterpreter v35232212890 :=
  cost_cut false 1 (by decide)

private def v35232212458 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v35232212458 : ¬ MinimalInterpreter v35232212458 :=
  cost_cut false 1 (by decide)

private def v35232201626 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v35232201626 : ¬ MinimalInterpreter v35232201626 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v35232201194 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v35232201194 : ¬ MinimalInterpreter v35232201194 :=
  cost_cut false 1 (by decide)

private def v35232198378 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v35232198378 : ¬ MinimalInterpreter v35232198378 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem row195 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [1,2,0,0]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [1,2,0,0] = [v35232212890,v35232212458,v35232201626,v35232201194,v35232198378] := by decide
  rw [h]
  exact (.cons (no_v35232212890) (.cons (no_v35232212458) (.cons (no_v35232201626) (.cons (no_v35232201194) (.cons (no_v35232198378) .nil)))))

private def v35232215862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v35232215862 : ¬ MinimalInterpreter v35232215862 :=
  cost_cut false 1 (by decide)

private def v35232215766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v35232215766 : ¬ MinimalInterpreter v35232215766 :=
  cost_cut false 1 (by decide)

private def v35232202038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v35232202038 : ¬ MinimalInterpreter v35232202038 :=
  cost_cut false 1 (by decide)

private def v35232201942 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v35232201942 : ¬ MinimalInterpreter v35232201942 :=
  cost_cut false 1 (by decide)

private def v35232198486 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v35232198486 : ¬ MinimalInterpreter v35232198486 :=
  cost_cut false 1 (by decide)

theorem row196 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [2,0,0,1]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [2,0,0,1] = [v35232215862,v35232215766,v35232202038,v35232201942,v35232198486] := by decide
  rw [h]
  exact (.cons (no_v35232215862) (.cons (no_v35232215766) (.cons (no_v35232202038) (.cons (no_v35232201942) (.cons (no_v35232198486) .nil)))))

private def v35232215866 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v35232215866 : ¬ MinimalInterpreter v35232215866 :=
  cost_cut false 1 (by decide)

private def v35232215770 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v35232215770 : ¬ MinimalInterpreter v35232215770 :=
  cost_cut false 1 (by decide)

private def v35232202042 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v35232202042 : ¬ MinimalInterpreter v35232202042 :=
  cost_cut false 1 (by decide)

private def v35232201946 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v35232201946 : ¬ MinimalInterpreter v35232201946 :=
  cost_cut false 1 (by decide)

private def v35232198490 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v35232198490 : ¬ MinimalInterpreter v35232198490 :=
  cost_cut false 1 (by decide)

theorem row197 : BadRow (row ⟨1,2,0,3,4,3⟩ [0,0] [2,0,1,0]) := by
  have h : row ⟨1,2,0,3,4,3⟩ [0,0] [2,0,1,0] = [v35232215866,v35232215770,v35232202042,v35232201946,v35232198490] := by decide
  rw [h]
  exact (.cons (no_v35232215866) (.cons (no_v35232215770) (.cons (no_v35232202042) (.cons (no_v35232201946) (.cons (no_v35232198490) .nil)))))

end Blc.SelfintSingleObject.Rows37
