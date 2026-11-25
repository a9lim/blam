import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v37681745134 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v37681745134 : ¬ MinimalInterpreter v37681745134 :=
  chain_cut false 2 (by decide)

private def v37681744750 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v37681744750 : ¬ MinimalInterpreter v37681744750 :=
  chain_cut false 2 (by decide)

private def v37681722606 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v37681722606 : ¬ MinimalInterpreter v37681722606 :=
  chain_cut false 2 (by decide)

private def v37681722222 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v37681722222 : ¬ MinimalInterpreter v37681722222 :=
  chain_cut false 2 (by decide)

private def v37681716590 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v37681716590 : ¬ MinimalInterpreter v37681716590 :=
  chain_cut false 2 (by decide)

private def v37682089198 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v37682089198 : ¬ MinimalInterpreter v37682089198 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37682088814 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v37682088814 : ¬ MinimalInterpreter v37682088814 :=
  cost_cut false 3 (by decide)

theorem row132 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [1,0,1,2]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [1,0,1,2] = [v37681745134,v37681744750,v37681722606,v37681722222,v37681716590,v37682089198,v37682088814] := by decide
  rw [h]
  exact (.cons (no_v37681745134) (.cons (no_v37681744750) (.cons (no_v37681722606) (.cons (no_v37681722222) (.cons (no_v37681716590) (.cons (no_v37682089198) (.cons (no_v37682088814) .nil)))))))

private def v37681745142 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v37681745142 : ¬ MinimalInterpreter v37681745142 :=
  chain_cut false 2 (by decide)

private def v37681744758 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v37681744758 : ¬ MinimalInterpreter v37681744758 :=
  chain_cut false 2 (by decide)

private def v37681722614 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v37681722614 : ¬ MinimalInterpreter v37681722614 :=
  chain_cut false 2 (by decide)

private def v37681722230 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v37681722230 : ¬ MinimalInterpreter v37681722230 :=
  chain_cut false 2 (by decide)

private def v37681716598 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v37681716598 : ¬ MinimalInterpreter v37681716598 :=
  chain_cut false 2 (by decide)

private def v37682089206 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v37682089206 : ¬ MinimalInterpreter v37682089206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37682088822 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v37682088822 : ¬ MinimalInterpreter v37682088822 :=
  cost_cut false 3 (by decide)

theorem row133 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [1,0,2,1]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [1,0,2,1] = [v37681745142,v37681744758,v37681722614,v37681722230,v37681716598,v37682089206,v37682088822] := by decide
  rw [h]
  exact (.cons (no_v37681745142) (.cons (no_v37681744758) (.cons (no_v37681722614) (.cons (no_v37681722230) (.cons (no_v37681716598) (.cons (no_v37682089206) (.cons (no_v37682088822) .nil)))))))

private def v37681745518 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v37681745518 : ¬ MinimalInterpreter v37681745518 :=
  chain_cut false 2 (by decide)

private def v37681744814 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v37681744814 : ¬ MinimalInterpreter v37681744814 :=
  chain_cut false 2 (by decide)

private def v37681722990 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v37681722990 : ¬ MinimalInterpreter v37681722990 :=
  chain_cut false 2 (by decide)

private def v37681722286 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v37681722286 : ¬ MinimalInterpreter v37681722286 :=
  chain_cut false 2 (by decide)

private def v37681716654 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v37681716654 : ¬ MinimalInterpreter v37681716654 :=
  chain_cut false 2 (by decide)

private def v37682089582 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v37682089582 : ¬ MinimalInterpreter v37682089582 :=
  cost_cut false 3 (by decide)

private def v37682088878 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v37682088878 : ¬ MinimalInterpreter v37682088878 :=
  cost_cut false 3 (by decide)

theorem row134 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [1,1,0,2]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [1,1,0,2] = [v37681745518,v37681744814,v37681722990,v37681722286,v37681716654,v37682089582,v37682088878] := by decide
  rw [h]
  exact (.cons (no_v37681745518) (.cons (no_v37681744814) (.cons (no_v37681722990) (.cons (no_v37681722286) (.cons (no_v37681716654) (.cons (no_v37682089582) (.cons (no_v37682088878) .nil)))))))

theorem row135 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [1,1,1,1]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [1,1,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v37681745530 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v37681745530 : ¬ MinimalInterpreter v37681745530 :=
  chain_cut false 2 (by decide)

private def v37681744826 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v37681744826 : ¬ MinimalInterpreter v37681744826 :=
  chain_cut false 2 (by decide)

private def v37681723002 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v37681723002 : ¬ MinimalInterpreter v37681723002 :=
  chain_cut false 2 (by decide)

private def v37681722298 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v37681722298 : ¬ MinimalInterpreter v37681722298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37681716666 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v37681716666 : ¬ MinimalInterpreter v37681716666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37682089594 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v37682089594 : ¬ MinimalInterpreter v37682089594 :=
  cost_cut false 3 (by decide)

private def v37682088890 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v37682088890 : ¬ MinimalInterpreter v37682088890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row136 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [1,1,2,0]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [1,1,2,0] = [v37681745530,v37681744826,v37681723002,v37681722298,v37681716666,v37682089594,v37682088890] := by decide
  rw [h]
  exact (.cons (no_v37681745530) (.cons (no_v37681744826) (.cons (no_v37681723002) (.cons (no_v37681722298) (.cons (no_v37681716666) (.cons (no_v37682089594) (.cons (no_v37682088890) .nil)))))))

private def v37681745718 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v37681745718 : ¬ MinimalInterpreter v37681745718 :=
  chain_cut false 2 (by decide)

private def v37681744854 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v37681744854 : ¬ MinimalInterpreter v37681744854 :=
  chain_cut false 2 (by decide)

private def v37681723190 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v37681723190 : ¬ MinimalInterpreter v37681723190 :=
  chain_cut false 2 (by decide)

private def v37681722326 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v37681722326 : ¬ MinimalInterpreter v37681722326 :=
  chain_cut false 2 (by decide)

private def v37681716694 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v37681716694 : ¬ MinimalInterpreter v37681716694 :=
  chain_cut false 2 (by decide)

private def v37682089782 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v37682089782 : ¬ MinimalInterpreter v37682089782 :=
  cost_cut false 3 (by decide)

private def v37682088918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v37682088918 : ¬ MinimalInterpreter v37682088918 :=
  cost_cut false 3 (by decide)

theorem row137 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [1,2,0,1]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [1,2,0,1] = [v37681745718,v37681744854,v37681723190,v37681722326,v37681716694,v37682089782,v37682088918] := by decide
  rw [h]
  exact (.cons (no_v37681745718) (.cons (no_v37681744854) (.cons (no_v37681723190) (.cons (no_v37681722326) (.cons (no_v37681716694) (.cons (no_v37682089782) (.cons (no_v37682088918) .nil)))))))

end Blc.SelfintSingleObject.Rows37
