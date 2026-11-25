import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75363307118 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v75363307118 : ¬ MinimalInterpreter v75363307118 :=
  cost_cut false 2 (by decide)

private def v75363306414 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v75363306414 : ¬ MinimalInterpreter v75363306414 :=
  cost_cut false 2 (by decide)

private def v75363300974 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v75363300974 : ¬ MinimalInterpreter v75363300974 :=
  cost_cut false 2 (by decide)

private def v75363300270 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v75363300270 : ¬ MinimalInterpreter v75363300270 :=
  cost_cut false 2 (by decide)

private def v75363298734 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v75363298734 : ¬ MinimalInterpreter v75363298734 :=
  cost_cut false 2 (by decide)

private def v75363454574 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v75363454574 : ¬ MinimalInterpreter v75363454574 :=
  cost_cut false 2 (by decide)

private def v75363453870 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v75363453870 : ¬ MinimalInterpreter v75363453870 :=
  cost_cut false 2 (by decide)

private def v75364044398 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v75364044398 : ¬ MinimalInterpreter v75364044398 :=
  cost_cut false 2 (by decide)

private def v75364043694 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v75364043694 : ¬ MinimalInterpreter v75364043694 :=
  cost_cut false 2 (by decide)

theorem row240 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [0,1,0,2]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [0,1,0,2] = [v75363307118,v75363306414,v75363300974,v75363300270,v75363298734,v75363454574,v75363453870,v75364044398,v75364043694] := by decide
  rw [h]
  exact (.cons (no_v75363307118) (.cons (no_v75363306414) (.cons (no_v75363300974) (.cons (no_v75363300270) (.cons (no_v75363298734) (.cons (no_v75363454574) (.cons (no_v75363453870) (.cons (no_v75364044398) (.cons (no_v75364043694) .nil)))))))))

theorem row241 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [0,1,1,1]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [0,1,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v75363307130 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v75363307130 : ¬ MinimalInterpreter v75363307130 :=
  cost_cut false 2 (by decide)

private def v75363306426 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v75363306426 : ¬ MinimalInterpreter v75363306426 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75363300986 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v75363300986 : ¬ MinimalInterpreter v75363300986 :=
  cost_cut false 2 (by decide)

private def v75363300282 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v75363300282 : ¬ MinimalInterpreter v75363300282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75363298746 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v75363298746 : ¬ MinimalInterpreter v75363298746 :=
  cost_cut false 2 (by decide)

private def v75363454586 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v75363454586 : ¬ MinimalInterpreter v75363454586 :=
  cost_cut false 2 (by decide)

private def v75363453882 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v75363453882 : ¬ MinimalInterpreter v75363453882 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v75364044410 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v75364044410 : ¬ MinimalInterpreter v75364044410 :=
  cost_cut false 2 (by decide)

private def v75364043706 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v75364043706 : ¬ MinimalInterpreter v75364043706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem row242 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [0,1,2,0]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [0,1,2,0] = [v75363307130,v75363306426,v75363300986,v75363300282,v75363298746,v75363454586,v75363453882,v75364044410,v75364043706] := by decide
  rw [h]
  exact (.cons (no_v75363307130) (.cons (no_v75363306426) (.cons (no_v75363300986) (.cons (no_v75363300282) (.cons (no_v75363298746) (.cons (no_v75363454586) (.cons (no_v75363453882) (.cons (no_v75364044410) (.cons (no_v75364043706) .nil)))))))))

private def v75363307318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v75363307318 : ¬ MinimalInterpreter v75363307318 :=
  cost_cut false 2 (by decide)

private def v75363306454 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v75363306454 : ¬ MinimalInterpreter v75363306454 :=
  cost_cut false 2 (by decide)

private def v75363301174 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v75363301174 : ¬ MinimalInterpreter v75363301174 :=
  cost_cut false 2 (by decide)

private def v75363300310 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v75363300310 : ¬ MinimalInterpreter v75363300310 :=
  cost_cut false 2 (by decide)

private def v75363298774 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v75363298774 : ¬ MinimalInterpreter v75363298774 :=
  cost_cut false 2 (by decide)

private def v75363454774 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v75363454774 : ¬ MinimalInterpreter v75363454774 :=
  cost_cut false 2 (by decide)

private def v75363453910 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v75363453910 : ¬ MinimalInterpreter v75363453910 :=
  cost_cut false 2 (by decide)

private def v75364044598 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v75364044598 : ¬ MinimalInterpreter v75364044598 :=
  cost_cut false 2 (by decide)

private def v75364043734 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v75364043734 : ¬ MinimalInterpreter v75364043734 :=
  cost_cut false 2 (by decide)

theorem row243 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [0,2,0,1]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [0,2,0,1] = [v75363307318,v75363306454,v75363301174,v75363300310,v75363298774,v75363454774,v75363453910,v75364044598,v75364043734] := by decide
  rw [h]
  exact (.cons (no_v75363307318) (.cons (no_v75363306454) (.cons (no_v75363301174) (.cons (no_v75363300310) (.cons (no_v75363298774) (.cons (no_v75363454774) (.cons (no_v75363453910) (.cons (no_v75364044598) (.cons (no_v75364043734) .nil)))))))))

private def v75363307322 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v75363307322 : ¬ MinimalInterpreter v75363307322 :=
  cost_cut false 2 (by decide)

private def v75363306458 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v75363306458 : ¬ MinimalInterpreter v75363306458 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75363301178 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v75363301178 : ¬ MinimalInterpreter v75363301178 :=
  cost_cut false 2 (by decide)

private def v75363300314 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v75363300314 : ¬ MinimalInterpreter v75363300314 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v75363298778 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v75363298778 : ¬ MinimalInterpreter v75363298778 :=
  cost_cut false 2 (by decide)

private def v75363454778 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v75363454778 : ¬ MinimalInterpreter v75363454778 :=
  cost_cut false 2 (by decide)

private def v75363453914 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v75363453914 : ¬ MinimalInterpreter v75363453914 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v75364044602 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v75364044602 : ¬ MinimalInterpreter v75364044602 :=
  cost_cut false 2 (by decide)

private def v75364043738 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v75364043738 : ¬ MinimalInterpreter v75364043738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem row244 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [0,2,1,0]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [0,2,1,0] = [v75363307322,v75363306458,v75363301178,v75363300314,v75363298778,v75363454778,v75363453914,v75364044602,v75364043738] := by decide
  rw [h]
  exact (.cons (no_v75363307322) (.cons (no_v75363306458) (.cons (no_v75363301178) (.cons (no_v75363300314) (.cons (no_v75363298778) (.cons (no_v75363454778) (.cons (no_v75363453914) (.cons (no_v75364044602) (.cons (no_v75364043738) .nil)))))))))

theorem row245 : BadRow (row ⟨1,2,1,3,4,3⟩ [0,1] [0,3,0,0]) := by
  have h : row ⟨1,2,1,3,4,3⟩ [0,1] [0,3,0,0] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
