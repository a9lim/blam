import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v700197162810 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v700197162810 : ¬ MinimalInterpreter v700197162810 :=
  chain_cut false 2 (by decide)
private def v700197161946 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v700197161946 : ¬ MinimalInterpreter v700197161946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700197156666 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v700197156666 : ¬ MinimalInterpreter v700197156666 :=
  chain_cut false 2 (by decide)
private def v700197155802 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v700197155802 : ¬ MinimalInterpreter v700197155802 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700197154266 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v700197154266 : ¬ MinimalInterpreter v700197154266 :=
  chain_cut false 2 (by decide)
private def v700197310266 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v700197310266 : ¬ MinimalInterpreter v700197310266 :=
  chain_cut false 2 (by decide)
private def v700197309402 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v700197309402 : ¬ MinimalInterpreter v700197309402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v700197900090 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v700197900090 : ¬ MinimalInterpreter v700197900090 :=
  cost_cut false 3 (by decide)
private def v700197899226 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v700197899226 : ¬ MinimalInterpreter v700197899226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem row522 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [0,2,1,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [0,2,1,0] = [v700197162810,v700197161946,v700197156666,v700197155802,v700197154266,v700197310266,v700197309402,v700197900090,v700197899226] := by decide +kernel
  rw [h]
  exact (.cons (no_v700197162810) (.cons (no_v700197161946) (.cons (no_v700197156666) (.cons (no_v700197155802) (.cons (no_v700197154266) (.cons (no_v700197310266) (.cons (no_v700197309402) (.cons (no_v700197900090) (.cons (no_v700197899226) .nil)))))))))

private def v700197168750 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v700197168750 : ¬ MinimalInterpreter v700197168750 :=
  chain_cut false 2 (by decide)
private def v700197168558 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v700197168558 : ¬ MinimalInterpreter v700197168558 :=
  chain_cut false 2 (by decide)
private def v700197157486 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v700197157486 : ¬ MinimalInterpreter v700197157486 :=
  chain_cut false 2 (by decide)
private def v700197157294 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v700197157294 : ¬ MinimalInterpreter v700197157294 :=
  chain_cut false 2 (by decide)
private def v700197154478 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v700197154478 : ¬ MinimalInterpreter v700197154478 :=
  chain_cut false 2 (by decide)
theorem row523 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [1,0,0,2]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [1,0,0,2] = [v700197168750,v700197168558,v700197157486,v700197157294,v700197154478] := by decide +kernel
  rw [h]
  exact (.cons (no_v700197168750) (.cons (no_v700197168558) (.cons (no_v700197157486) (.cons (no_v700197157294) (.cons (no_v700197154478) .nil)))))

theorem row524 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [1,0,1,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v700197168762 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v700197168762 : ¬ MinimalInterpreter v700197168762 :=
  chain_cut false 2 (by decide)
private def v700197168570 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v700197168570 : ¬ MinimalInterpreter v700197168570 :=
  chain_cut false 2 (by decide)
private def v700197157498 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v700197157498 : ¬ MinimalInterpreter v700197157498 :=
  chain_cut false 2 (by decide)
private def v700197157306 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v700197157306 : ¬ MinimalInterpreter v700197157306 :=
  chain_cut false 2 (by decide)
private def v700197154490 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v700197154490 : ¬ MinimalInterpreter v700197154490 :=
  chain_cut false 2 (by decide)
theorem row525 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [1,0,2,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [1,0,2,0] = [v700197168762,v700197168570,v700197157498,v700197157306,v700197154490] := by decide +kernel
  rw [h]
  exact (.cons (no_v700197168762) (.cons (no_v700197168570) (.cons (no_v700197157498) (.cons (no_v700197157306) (.cons (no_v700197154490) .nil)))))

theorem row526 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [1,1,0,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row527 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [1,1,1,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
