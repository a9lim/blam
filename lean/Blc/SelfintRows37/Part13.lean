import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v37849648750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v37849648750 : ¬ MinimalInterpreter v37849648750 :=
  cost_cut false 2 (by decide)

private def v37849648046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v37849648046 : ¬ MinimalInterpreter v37849648046 :=
  cost_cut false 2 (by decide)

private def v37849593454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v37849593454 : ¬ MinimalInterpreter v37849593454 :=
  cost_cut false 2 (by decide)

private def v37849592750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v37849592750 : ¬ MinimalInterpreter v37849592750 :=
  cost_cut false 2 (by decide)

private def v37849578926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v37849578926 : ¬ MinimalInterpreter v37849578926 :=
  cost_cut false 2 (by decide)

private def v37850397070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v37850397070 : ¬ MinimalInterpreter v37850397070 :=
  chain_cut false 2 (by decide)

private def v37850394254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))))
private theorem no_v37850394254 : ¬ MinimalInterpreter v37850394254 :=
  chain_cut false 2 (by decide)

private def v37850175886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v37850175886 : ¬ MinimalInterpreter v37850175886 :=
  chain_cut false 2 (by decide)

private def v37850173070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 2)))))))
private theorem no_v37850173070 : ¬ MinimalInterpreter v37850173070 :=
  chain_cut false 2 (by decide)

private def v37850117774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v37850117774 : ¬ MinimalInterpreter v37850117774 :=
  chain_cut false 2 (by decide)

theorem row78 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [2,1,0,2]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [2,1,0,2] = [v37849648750,v37849648046,v37849593454,v37849592750,v37849578926,v37850397070,v37850394254,v37850175886,v37850173070,v37850117774] := by decide
  rw [h]
  exact (.cons (no_v37849648750) (.cons (no_v37849648046) (.cons (no_v37849593454) (.cons (no_v37849592750) (.cons (no_v37849578926) (.cons (no_v37850397070) (.cons (no_v37850394254) (.cons (no_v37850175886) (.cons (no_v37850173070) (.cons (no_v37850117774) .nil))))))))))

private def v37850396790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))))
private theorem no_v37850396790 : ¬ MinimalInterpreter v37850396790 :=
  chain_cut false 2 (by decide)

private def v37850397126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v37850397126 : ¬ MinimalInterpreter v37850397126 :=
  chain_cut false 2 (by decide)

private def v37850394310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))))
private theorem no_v37850394310 : ¬ MinimalInterpreter v37850394310 :=
  chain_cut false 2 (by decide)

private def v37850394166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))))
private theorem no_v37850394166 : ¬ MinimalInterpreter v37850394166 :=
  chain_cut false 2 (by decide)

private def v37850175606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1))))))))
private theorem no_v37850175606 : ¬ MinimalInterpreter v37850175606 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850175942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v37850175942 : ¬ MinimalInterpreter v37850175942 :=
  chain_cut false 2 (by decide)

private def v37850170998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 1)))))))
private theorem no_v37850170998 : ¬ MinimalInterpreter v37850170998 :=
  chain_cut false 2 (by decide)

private def v37850173126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1)))))))
private theorem no_v37850173126 : ¬ MinimalInterpreter v37850173126 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850117830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v37850117830 : ¬ MinimalInterpreter v37850117830 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850170294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 1)))) (.var 1))))))
private theorem no_v37850170294 : ¬ MinimalInterpreter v37850170294 :=
  chain_cut false 2 (by decide)

private def v37850172982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 1))))))
private theorem no_v37850172982 : ¬ MinimalInterpreter v37850172982 :=
  chain_cut false 2 (by decide)

private def v37850117686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 1))))))
private theorem no_v37850117686 : ¬ MinimalInterpreter v37850117686 :=
  chain_cut false 2 (by decide)

private def v37850116534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 1))))))
private theorem no_v37850116534 : ¬ MinimalInterpreter v37850116534 :=
  chain_cut false 2 (by decide)

theorem row79 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [2,1,1,1]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [2,1,1,1] = [v37850396790,v37850397126,v37850394310,v37850394166,v37850175606,v37850175942,v37850170998,v37850173126,v37850117830,v37850170294,v37850172982,v37850117686,v37850116534] := by decide
  rw [h]
  exact (.cons (no_v37850396790) (.cons (no_v37850397126) (.cons (no_v37850394310) (.cons (no_v37850394166) (.cons (no_v37850175606) (.cons (no_v37850175942) (.cons (no_v37850170998) (.cons (no_v37850173126) (.cons (no_v37850117830) (.cons (no_v37850170294) (.cons (no_v37850172982) (.cons (no_v37850117686) (.cons (no_v37850116534) .nil)))))))))))))

private def v37849648762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v37849648762 : ¬ MinimalInterpreter v37849648762 :=
  cost_cut false 2 (by decide)

private def v37849648058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v37849648058 : ¬ MinimalInterpreter v37849648058 :=
  cost_cut false 2 (by decide)

private def v37849593466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v37849593466 : ¬ MinimalInterpreter v37849593466 :=
  cost_cut false 2 (by decide)

private def v37849592762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v37849592762 : ¬ MinimalInterpreter v37849592762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v37849578938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v37849578938 : ¬ MinimalInterpreter v37849578938 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v37850394170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 2))) (.var 0)))))))
private theorem no_v37850394170 : ¬ MinimalInterpreter v37850394170 :=
  chain_cut false 2 (by decide)

private def v37850170298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v37850170298 : ¬ MinimalInterpreter v37850170298 :=
  chain_cut false 2 (by decide)

private def v37850172986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0))))))
private theorem no_v37850172986 : ¬ MinimalInterpreter v37850172986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850117690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0))))))
private theorem no_v37850117690 : ¬ MinimalInterpreter v37850117690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row80 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [2,1,2,0]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [2,1,2,0] = [v37849648762,v37849648058,v37849593466,v37849592762,v37849578938,v37850394170,v37850170298,v37850172986,v37850117690] := by decide
  rw [h]
  exact (.cons (no_v37849648762) (.cons (no_v37849648058) (.cons (no_v37849593466) (.cons (no_v37849592762) (.cons (no_v37849578938) (.cons (no_v37850394170) (.cons (no_v37850170298) (.cons (no_v37850172986) (.cons (no_v37850117690) .nil)))))))))

private def v37849648950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v37849648950 : ¬ MinimalInterpreter v37849648950 :=
  cost_cut false 2 (by decide)

private def v37849648086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v37849648086 : ¬ MinimalInterpreter v37849648086 :=
  cost_cut false 2 (by decide)

private def v37849593654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v37849593654 : ¬ MinimalInterpreter v37849593654 :=
  cost_cut false 2 (by decide)

private def v37849592790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v37849592790 : ¬ MinimalInterpreter v37849592790 :=
  cost_cut false 2 (by decide)

private def v37849578966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v37849578966 : ¬ MinimalInterpreter v37849578966 :=
  cost_cut false 2 (by decide)

private def v37850171190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 1)))))))
private theorem no_v37850171190 : ¬ MinimalInterpreter v37850171190 :=
  chain_cut false 2 (by decide)

private def v37850116566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 1))))))
private theorem no_v37850116566 : ¬ MinimalInterpreter v37850116566 :=
  chain_cut false 2 (by decide)

theorem row81 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [2,2,0,1]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [2,2,0,1] = [v37849648950,v37849648086,v37849593654,v37849592790,v37849578966,v37850171190,v37850116566] := by decide
  rw [h]
  exact (.cons (no_v37849648950) (.cons (no_v37849648086) (.cons (no_v37849593654) (.cons (no_v37849592790) (.cons (no_v37849578966) (.cons (no_v37850171190) (.cons (no_v37850116566) .nil)))))))

private def v37849648954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v37849648954 : ¬ MinimalInterpreter v37849648954 :=
  cost_cut false 2 (by decide)

private def v37849648090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v37849648090 : ¬ MinimalInterpreter v37849648090 :=
  cost_cut false 2 (by decide)

private def v37849593658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v37849593658 : ¬ MinimalInterpreter v37849593658 :=
  cost_cut false 2 (by decide)

private def v37849592794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v37849592794 : ¬ MinimalInterpreter v37849592794 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v37849578970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v37849578970 : ¬ MinimalInterpreter v37849578970 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))

private def v37850171194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 1) (.var 0)))))))
private theorem no_v37850171194 : ¬ MinimalInterpreter v37850171194 :=
  chain_cut false 2 (by decide)

private def v37850170330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 1)))) (.var 0))))))
private theorem no_v37850170330 : ¬ MinimalInterpreter v37850170330 :=
  chain_cut false 2 (by decide)

private def v37850116570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0))))))
private theorem no_v37850116570 : ¬ MinimalInterpreter v37850116570 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 1)) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row82 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [2,2,1,0]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [2,2,1,0] = [v37849648954,v37849648090,v37849593658,v37849592794,v37849578970,v37850171194,v37850170330,v37850116570] := by decide
  rw [h]
  exact (.cons (no_v37849648954) (.cons (no_v37849648090) (.cons (no_v37849593658) (.cons (no_v37849592794) (.cons (no_v37849578970) (.cons (no_v37850171194) (.cons (no_v37850170330) (.cons (no_v37850116570) .nil))))))))

private def v37849649050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.app (.var 0) (.var 0)))))))))
private theorem no_v37849649050 : ¬ MinimalInterpreter v37849649050 :=
  chain_cut false 2 (by decide)

private def v37849648106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.var 0)) (.var 0))))))))
private theorem no_v37849648106 : ¬ MinimalInterpreter v37849648106 :=
  chain_cut false 2 (by decide)

private def v37849593754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0))))))))
private theorem no_v37849593754 : ¬ MinimalInterpreter v37849593754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37849592810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 0))) (.var 0)))))))
private theorem no_v37849592810 : ¬ MinimalInterpreter v37849592810 :=
  chain_cut false 2 (by decide)

private def v37849578986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0)))))))
private theorem no_v37849578986 : ¬ MinimalInterpreter v37849578986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row83 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [2,3,0,0]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [2,3,0,0] = [v37849649050,v37849648106,v37849593754,v37849592810,v37849578986] := by decide
  rw [h]
  exact (.cons (no_v37849649050) (.cons (no_v37849648106) (.cons (no_v37849593754) (.cons (no_v37849592810) (.cons (no_v37849578986) .nil)))))

end Blc.SelfintSingleObject.Rows37
