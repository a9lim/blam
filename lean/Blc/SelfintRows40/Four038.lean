import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402306940142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))
private theorem no_v1402306940142 : ¬ MinimalInterpreter v1402306940142 :=
  cost_cut false 2 (by decide)

private def v1402306939758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))))
private theorem no_v1402306939758 : ¬ MinimalInterpreter v1402306939758 :=
  cost_cut false 2 (by decide)

private def v1402306917614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402306917614 : ¬ MinimalInterpreter v1402306917614 :=
  cost_cut false 2 (by decide)

private def v1402306917230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))))
private theorem no_v1402306917230 : ¬ MinimalInterpreter v1402306917230 :=
  cost_cut false 2 (by decide)

private def v1402306911598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))))
private theorem no_v1402306911598 : ¬ MinimalInterpreter v1402306911598 :=
  cost_cut false 2 (by decide)

private def v1402307284206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))))
private theorem no_v1402307284206 : ¬ MinimalInterpreter v1402307284206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))))

private def v1402307283822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))))
private theorem no_v1402307283822 : ¬ MinimalInterpreter v1402307283822 :=
  cost_cut false 2 (by decide)

private def v1402307292270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 2)))))))))
private theorem no_v1402307292270 : ¬ MinimalInterpreter v1402307292270 :=
  cost_cut false 2 (by decide)

private def v1402307202158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 2))))))))
private theorem no_v1402307202158 : ¬ MinimalInterpreter v1402307202158 :=
  cost_cut false 2 (by decide)

private def v1402307179630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402307179630 : ¬ MinimalInterpreter v1402307179630 :=
  cost_cut false 2 (by decide)

theorem four266 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,0,1,2]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,0,1,2] = [v1402306940142,v1402306939758,v1402306917614,v1402306917230,v1402306911598,v1402307284206,v1402307283822,v1402307292270,v1402307202158,v1402307179630] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306940142) (.cons (no_v1402306939758) (.cons (no_v1402306917614) (.cons (no_v1402306917230) (.cons (no_v1402306911598) (.cons (no_v1402307284206) (.cons (no_v1402307283822) (.cons (no_v1402307292270) (.cons (no_v1402307202158) (.cons (no_v1402307179630) .nil))))))))))

private def v1402306940150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))))
private theorem no_v1402306940150 : ¬ MinimalInterpreter v1402306940150 :=
  cost_cut false 2 (by decide)

private def v1402306939766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))))
private theorem no_v1402306939766 : ¬ MinimalInterpreter v1402306939766 :=
  cost_cut false 2 (by decide)

private def v1402306917622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402306917622 : ¬ MinimalInterpreter v1402306917622 :=
  cost_cut false 2 (by decide)

private def v1402306917238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))))
private theorem no_v1402306917238 : ¬ MinimalInterpreter v1402306917238 :=
  cost_cut false 2 (by decide)

private def v1402306911606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))))
private theorem no_v1402306911606 : ¬ MinimalInterpreter v1402306911606 :=
  cost_cut false 2 (by decide)

private def v1402307284214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))))
private theorem no_v1402307284214 : ¬ MinimalInterpreter v1402307284214 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))))

private def v1402307283830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))))
private theorem no_v1402307283830 : ¬ MinimalInterpreter v1402307283830 :=
  cost_cut false 2 (by decide)

private def v1402307294150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 1)))))))))))
private theorem no_v1402307294150 : ¬ MinimalInterpreter v1402307294150 :=
  cost_cut false 2 (by decide)

private def v1402307292614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 1))))))))))
private theorem no_v1402307292614 : ¬ MinimalInterpreter v1402307292614 :=
  cost_cut false 2 (by decide)

private def v1402307204038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402307204038 : ¬ MinimalInterpreter v1402307204038 :=
  cost_cut false 2 (by decide)

private def v1402307202502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 1)))))))))
private theorem no_v1402307202502 : ¬ MinimalInterpreter v1402307202502 :=
  cost_cut false 2 (by decide)

private def v1402307179974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402307179974 : ¬ MinimalInterpreter v1402307179974 :=
  cost_cut false 2 (by decide)

theorem four267 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,0,2,1]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,0,2,1] = [v1402306940150,v1402306939766,v1402306917622,v1402306917238,v1402306911606,v1402307284214,v1402307283830,v1402307294150,v1402307292614,v1402307204038,v1402307202502,v1402307179974] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306940150) (.cons (no_v1402306939766) (.cons (no_v1402306917622) (.cons (no_v1402306917238) (.cons (no_v1402306911606) (.cons (no_v1402307284214) (.cons (no_v1402307283830) (.cons (no_v1402307294150) (.cons (no_v1402307292614) (.cons (no_v1402307204038) (.cons (no_v1402307202502) (.cons (no_v1402307179974) .nil))))))))))))

private def v1402306940154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 0)))))))))))
private theorem no_v1402306940154 : ¬ MinimalInterpreter v1402306940154 :=
  cost_cut false 2 (by decide)

private def v1402306939770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 0))))))))))
private theorem no_v1402306939770 : ¬ MinimalInterpreter v1402306939770 :=
  cost_cut false 2 (by decide)

private def v1402306917626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402306917626 : ¬ MinimalInterpreter v1402306917626 :=
  cost_cut false 2 (by decide)

private def v1402306917242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0)))))))))
private theorem no_v1402306917242 : ¬ MinimalInterpreter v1402306917242 :=
  cost_cut false 2 (by decide)

private def v1402306911610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 0)))))))))
private theorem no_v1402306911610 : ¬ MinimalInterpreter v1402306911610 :=
  cost_cut false 2 (by decide)

private def v1402307292282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))))))))
private theorem no_v1402307292282 : ¬ MinimalInterpreter v1402307292282 :=
  cost_cut false 2 (by decide)

private def v1402307202170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 0))))))))
private theorem no_v1402307202170 : ¬ MinimalInterpreter v1402307202170 :=
  cost_cut false 2 (by decide)

private def v1402307179642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402307179642 : ¬ MinimalInterpreter v1402307179642 :=
  cost_cut false 2 (by decide)

theorem four268 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,0,3,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,0,3,0] = [v1402306940154,v1402306939770,v1402306917626,v1402306917242,v1402306911610,v1402307292282,v1402307202170,v1402307179642] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306940154) (.cons (no_v1402306939770) (.cons (no_v1402306917626) (.cons (no_v1402306917242) (.cons (no_v1402306911610) (.cons (no_v1402307292282) (.cons (no_v1402307202170) (.cons (no_v1402307179642) .nil))))))))

private def v1402306940526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))))
private theorem no_v1402306940526 : ¬ MinimalInterpreter v1402306940526 :=
  cost_cut false 2 (by decide)

private def v1402306939822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))))
private theorem no_v1402306939822 : ¬ MinimalInterpreter v1402306939822 :=
  cost_cut false 2 (by decide)

private def v1402306917998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402306917998 : ¬ MinimalInterpreter v1402306917998 :=
  cost_cut false 2 (by decide)

private def v1402306917294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))))
private theorem no_v1402306917294 : ¬ MinimalInterpreter v1402306917294 :=
  cost_cut false 2 (by decide)

private def v1402306911662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))))
private theorem no_v1402306911662 : ¬ MinimalInterpreter v1402306911662 :=
  cost_cut false 2 (by decide)

private def v1402307284590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))))
private theorem no_v1402307284590 : ¬ MinimalInterpreter v1402307284590 :=
  cost_cut false 2 (by decide)

private def v1402307283886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))))
private theorem no_v1402307283886 : ¬ MinimalInterpreter v1402307283886 :=
  cost_cut false 2 (by decide)

private def v1402307200622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402307200622 : ¬ MinimalInterpreter v1402307200622 :=
  cost_cut false 2 (by decide)

private def v1402307178926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 2))))))))
private theorem no_v1402307178926 : ¬ MinimalInterpreter v1402307178926 :=
  cost_cut false 2 (by decide)

theorem four269 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,1,0,2]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,1,0,2] = [v1402306940526,v1402306939822,v1402306917998,v1402306917294,v1402306911662,v1402307284590,v1402307283886,v1402307200622,v1402307178926] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306940526) (.cons (no_v1402306939822) (.cons (no_v1402306917998) (.cons (no_v1402306917294) (.cons (no_v1402306911662) (.cons (no_v1402307284590) (.cons (no_v1402307283886) (.cons (no_v1402307200622) (.cons (no_v1402307178926) .nil)))))))))

theorem four270 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,1,1,1]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402306940538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))))
private theorem no_v1402306940538 : ¬ MinimalInterpreter v1402306940538 :=
  cost_cut false 2 (by decide)

private def v1402306939834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))))
private theorem no_v1402306939834 : ¬ MinimalInterpreter v1402306939834 :=
  cost_cut false 2 (by decide)

private def v1402306918010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402306918010 : ¬ MinimalInterpreter v1402306918010 :=
  cost_cut false 2 (by decide)

private def v1402306917306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))))
private theorem no_v1402306917306 : ¬ MinimalInterpreter v1402306917306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402306911674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))))
private theorem no_v1402306911674 : ¬ MinimalInterpreter v1402306911674 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402307284602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))))
private theorem no_v1402307284602 : ¬ MinimalInterpreter v1402307284602 :=
  cost_cut false 2 (by decide)

private def v1402307283898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))))
private theorem no_v1402307283898 : ¬ MinimalInterpreter v1402307283898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))))

private def v1402307200634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402307200634 : ¬ MinimalInterpreter v1402307200634 :=
  cost_cut false 2 (by decide)

private def v1402307178938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 0))))))))
private theorem no_v1402307178938 : ¬ MinimalInterpreter v1402307178938 :=
  cost_cut false 2 (by decide)

theorem four271 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,1,2,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,1,2,0] = [v1402306940538,v1402306939834,v1402306918010,v1402306917306,v1402306911674,v1402307284602,v1402307283898,v1402307200634,v1402307178938] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306940538) (.cons (no_v1402306939834) (.cons (no_v1402306918010) (.cons (no_v1402306917306) (.cons (no_v1402306911674) (.cons (no_v1402307284602) (.cons (no_v1402307283898) (.cons (no_v1402307200634) (.cons (no_v1402307178938) .nil)))))))))

private def v1402306940726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))))))))))
private theorem no_v1402306940726 : ¬ MinimalInterpreter v1402306940726 :=
  cost_cut false 2 (by decide)

private def v1402306939862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))))))))))
private theorem no_v1402306939862 : ¬ MinimalInterpreter v1402306939862 :=
  cost_cut false 2 (by decide)

private def v1402306918198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402306918198 : ¬ MinimalInterpreter v1402306918198 :=
  cost_cut false 2 (by decide)

private def v1402306917334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)))))))))
private theorem no_v1402306917334 : ¬ MinimalInterpreter v1402306917334 :=
  cost_cut false 2 (by decide)

private def v1402306911702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))))))
private theorem no_v1402306911702 : ¬ MinimalInterpreter v1402306911702 :=
  cost_cut false 2 (by decide)

private def v1402307284790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))))
private theorem no_v1402307284790 : ¬ MinimalInterpreter v1402307284790 :=
  cost_cut false 2 (by decide)

private def v1402307283926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))))
private theorem no_v1402307283926 : ¬ MinimalInterpreter v1402307283926 :=
  cost_cut false 2 (by decide)

private def v1402307296454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 1)))))))))))
private theorem no_v1402307296454 : ¬ MinimalInterpreter v1402307296454 :=
  cost_cut false 2 (by decide)

private def v1402307292998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1))))))))))
private theorem no_v1402307292998 : ¬ MinimalInterpreter v1402307292998 :=
  cost_cut false 2 (by decide)

private def v1402307206342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402307206342 : ¬ MinimalInterpreter v1402307206342 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307202886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1)))))))))
private theorem no_v1402307202886 : ¬ MinimalInterpreter v1402307202886 :=
  cost_cut false 2 (by decide)

private def v1402307180358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402307180358 : ¬ MinimalInterpreter v1402307180358 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem four272 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,2,0,1]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [1,2,0,1] = [v1402306940726,v1402306939862,v1402306918198,v1402306917334,v1402306911702,v1402307284790,v1402307283926,v1402307296454,v1402307292998,v1402307206342,v1402307202886,v1402307180358] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306940726) (.cons (no_v1402306939862) (.cons (no_v1402306918198) (.cons (no_v1402306917334) (.cons (no_v1402306911702) (.cons (no_v1402307284790) (.cons (no_v1402307283926) (.cons (no_v1402307296454) (.cons (no_v1402307292998) (.cons (no_v1402307206342) (.cons (no_v1402307202886) (.cons (no_v1402307180358) .nil))))))))))))

end Blc.SelfintSingleObject.Rows40
