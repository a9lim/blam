import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v35232402678 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v35232402678 : ¬ MinimalInterpreter v35232402678 :=
  cost_cut false 1 (by decide)

private def v35232402294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v35232402294 : ¬ MinimalInterpreter v35232402294 :=
  cost_cut false 1 (by decide)

private def v35232347382 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v35232347382 : ¬ MinimalInterpreter v35232347382 :=
  cost_cut false 1 (by decide)

private def v35232346998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v35232346998 : ¬ MinimalInterpreter v35232346998 :=
  cost_cut false 1 (by decide)

private def v35232333174 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v35232333174 : ¬ MinimalInterpreter v35232333174 :=
  cost_cut false 1 (by decide)

theorem row120 : BadRow (row ⟨1,2,0,2,4,5⟩ [0,0] [2,0,2,1]) := by
  have h : row ⟨1,2,0,2,4,5⟩ [0,0] [2,0,2,1] = [v35232402678,v35232402294,v35232347382,v35232346998,v35232333174] := by decide
  rw [h]
  exact (.cons (no_v35232402678) (.cons (no_v35232402294) (.cons (no_v35232347382) (.cons (no_v35232346998) (.cons (no_v35232333174) .nil)))))

private def v35232403054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v35232403054 : ¬ MinimalInterpreter v35232403054 :=
  cost_cut false 1 (by decide)

private def v35232402350 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v35232402350 : ¬ MinimalInterpreter v35232402350 :=
  cost_cut false 1 (by decide)

private def v35232347758 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v35232347758 : ¬ MinimalInterpreter v35232347758 :=
  cost_cut false 1 (by decide)

private def v35232347054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v35232347054 : ¬ MinimalInterpreter v35232347054 :=
  cost_cut false 1 (by decide)

private def v35232333230 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v35232333230 : ¬ MinimalInterpreter v35232333230 :=
  cost_cut false 1 (by decide)

theorem row121 : BadRow (row ⟨1,2,0,2,4,5⟩ [0,0] [2,1,0,2]) := by
  have h : row ⟨1,2,0,2,4,5⟩ [0,0] [2,1,0,2] = [v35232403054,v35232402350,v35232347758,v35232347054,v35232333230] := by decide
  rw [h]
  exact (.cons (no_v35232403054) (.cons (no_v35232402350) (.cons (no_v35232347758) (.cons (no_v35232347054) (.cons (no_v35232333230) .nil)))))

theorem row122 : BadRow (row ⟨1,2,0,2,4,5⟩ [0,0] [2,1,1,1]) := by
  have h : row ⟨1,2,0,2,4,5⟩ [0,0] [2,1,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v35232403066 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v35232403066 : ¬ MinimalInterpreter v35232403066 :=
  cost_cut false 1 (by decide)

private def v35232402362 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v35232402362 : ¬ MinimalInterpreter v35232402362 :=
  cost_cut false 1 (by decide)

private def v35232347770 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v35232347770 : ¬ MinimalInterpreter v35232347770 :=
  cost_cut false 1 (by decide)

private def v35232347066 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v35232347066 : ¬ MinimalInterpreter v35232347066 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v35232333242 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v35232333242 : ¬ MinimalInterpreter v35232333242 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row123 : BadRow (row ⟨1,2,0,2,4,5⟩ [0,0] [2,1,2,0]) := by
  have h : row ⟨1,2,0,2,4,5⟩ [0,0] [2,1,2,0] = [v35232403066,v35232402362,v35232347770,v35232347066,v35232333242] := by decide
  rw [h]
  exact (.cons (no_v35232403066) (.cons (no_v35232402362) (.cons (no_v35232347770) (.cons (no_v35232347066) (.cons (no_v35232333242) .nil)))))

private def v35232403254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v35232403254 : ¬ MinimalInterpreter v35232403254 :=
  cost_cut false 1 (by decide)

private def v35232402390 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v35232402390 : ¬ MinimalInterpreter v35232402390 :=
  cost_cut false 1 (by decide)

private def v35232347958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v35232347958 : ¬ MinimalInterpreter v35232347958 :=
  cost_cut false 1 (by decide)

private def v35232347094 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v35232347094 : ¬ MinimalInterpreter v35232347094 :=
  cost_cut false 1 (by decide)

private def v35232333270 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v35232333270 : ¬ MinimalInterpreter v35232333270 :=
  cost_cut false 1 (by decide)

theorem row124 : BadRow (row ⟨1,2,0,2,4,5⟩ [0,0] [2,2,0,1]) := by
  have h : row ⟨1,2,0,2,4,5⟩ [0,0] [2,2,0,1] = [v35232403254,v35232402390,v35232347958,v35232347094,v35232333270] := by decide
  rw [h]
  exact (.cons (no_v35232403254) (.cons (no_v35232402390) (.cons (no_v35232347958) (.cons (no_v35232347094) (.cons (no_v35232333270) .nil)))))

private def v35232403258 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v35232403258 : ¬ MinimalInterpreter v35232403258 :=
  cost_cut false 1 (by decide)

private def v35232402394 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v35232402394 : ¬ MinimalInterpreter v35232402394 :=
  cost_cut false 1 (by decide)

private def v35232347962 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v35232347962 : ¬ MinimalInterpreter v35232347962 :=
  cost_cut false 1 (by decide)

private def v35232347098 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v35232347098 : ¬ MinimalInterpreter v35232347098 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v35232333274 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v35232333274 : ¬ MinimalInterpreter v35232333274 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

theorem row125 : BadRow (row ⟨1,2,0,2,4,5⟩ [0,0] [2,2,1,0]) := by
  have h : row ⟨1,2,0,2,4,5⟩ [0,0] [2,2,1,0] = [v35232403258,v35232402394,v35232347962,v35232347098,v35232333274] := by decide
  rw [h]
  exact (.cons (no_v35232403258) (.cons (no_v35232402394) (.cons (no_v35232347962) (.cons (no_v35232347098) (.cons (no_v35232333274) .nil)))))

end Blc.SelfintSingleObject.Rows37
