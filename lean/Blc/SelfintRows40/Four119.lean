import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four833 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [1,2,0,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [1,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four834 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [2,0,0,1]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [2,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four835 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [2,0,1,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [2,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four836 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [2,1] [2,1,0,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [2,1] [2,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1376134470110 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1376134470110 : ¬ MinimalInterpreter v1376134470110 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1376134469342 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1376134469342 : ¬ MinimalInterpreter v1376134469342 :=
  cost_cut false 1 (by decide)

private def v1376134457822 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))))))))
private theorem no_v1376134457822 : ¬ MinimalInterpreter v1376134457822 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1376134457054 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 3)))))))
private theorem no_v1376134457054 : ¬ MinimalInterpreter v1376134457054 :=
  cost_cut false 1 (by decide)

private def v1376134453982 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3)))))))
private theorem no_v1376134453982 : ¬ MinimalInterpreter v1376134453982 :=
  cost_cut false 1 (by decide)

private def v1376134765022 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1376134765022 : ¬ MinimalInterpreter v1376134765022 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1376134764254 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1376134764254 : ¬ MinimalInterpreter v1376134764254 :=
  cost_cut false 1 (by decide)

private def v1376134784798 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1376134784798 : ¬ MinimalInterpreter v1376134784798 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1376134781726 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1376134781726 : ¬ MinimalInterpreter v1376134781726 :=
  cost_cut false 1 (by decide)

private def v1376134735646 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v1376134735646 : ¬ MinimalInterpreter v1376134735646 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1376134732574 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 3)))))))
private theorem no_v1376134732574 : ¬ MinimalInterpreter v1376134732574 :=
  cost_cut false 1 (by decide)

private def v1376134720286 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v1376134720286 : ¬ MinimalInterpreter v1376134720286 :=
  cost_cut false 1 (by decide)

private def v1376135964446 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1376135964446 : ¬ MinimalInterpreter v1376135964446 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1376135961374 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1376135961374 : ¬ MinimalInterpreter v1376135961374 :=
  cost_cut false 1 (by decide)

private def v1376140663262 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1376140663262 : ¬ MinimalInterpreter v1376140663262 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1376140662494 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1376140662494 : ¬ MinimalInterpreter v1376140662494 :=
  cost_cut false 1 (by decide)

private def v1376140683038 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1376140683038 : ¬ MinimalInterpreter v1376140683038 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1376140679966 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1376140679966 : ¬ MinimalInterpreter v1376140679966 :=
  cost_cut false 1 (by decide)

theorem four837 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,0,1,3]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,0,1,3] = [v1376134470110,v1376134469342,v1376134457822,v1376134457054,v1376134453982,v1376134765022,v1376134764254,v1376134784798,v1376134781726,v1376134735646,v1376134732574,v1376134720286,v1376135964446,v1376135961374,v1376140663262,v1376140662494,v1376140683038,v1376140679966] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134470110) (.cons (no_v1376134469342) (.cons (no_v1376134457822) (.cons (no_v1376134457054) (.cons (no_v1376134453982) (.cons (no_v1376134765022) (.cons (no_v1376134764254) (.cons (no_v1376134784798) (.cons (no_v1376134781726) (.cons (no_v1376134735646) (.cons (no_v1376134732574) (.cons (no_v1376134720286) (.cons (no_v1376135964446) (.cons (no_v1376135961374) (.cons (no_v1376140663262) (.cons (no_v1376140662494) (.cons (no_v1376140683038) (.cons (no_v1376140679966) .nil))))))))))))))))))

private def v1376134784910 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1376134784910 : ¬ MinimalInterpreter v1376134784910 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134781838 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1376134781838 : ¬ MinimalInterpreter v1376134781838 :=
  cost_cut false 1 (by decide)

private def v1376134781166 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1376134781166 : ¬ MinimalInterpreter v1376134781166 :=
  cost_cut false 1 (by decide)

private def v1376134735758 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v1376134735758 : ¬ MinimalInterpreter v1376134735758 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134732686 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 2)))))))
private theorem no_v1376134732686 : ¬ MinimalInterpreter v1376134732686 :=
  cost_cut false 1 (by decide)

private def v1376134720398 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v1376134720398 : ¬ MinimalInterpreter v1376134720398 :=
  cost_cut false 1 (by decide)

private def v1376134732014 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))
private theorem no_v1376134732014 : ¬ MinimalInterpreter v1376134732014 :=
  cost_cut false 1 (by decide)

private def v1376134719726 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2))))))
private theorem no_v1376134719726 : ¬ MinimalInterpreter v1376134719726 :=
  cost_cut false 1 (by decide)

private def v1376135964558 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1376135964558 : ¬ MinimalInterpreter v1376135964558 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1376135961486 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1376135961486 : ¬ MinimalInterpreter v1376135961486 :=
  cost_cut false 1 (by decide)

private def v1376135960814 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1376135960814 : ¬ MinimalInterpreter v1376135960814 :=
  cost_cut false 1 (by decide)

private def v1376140683150 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1376140683150 : ¬ MinimalInterpreter v1376140683150 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376140680078 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1376140680078 : ¬ MinimalInterpreter v1376140680078 :=
  cost_cut false 1 (by decide)

private def v1376140679406 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1376140679406 : ¬ MinimalInterpreter v1376140679406 :=
  cost_cut false 1 (by decide)

theorem four838 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,0,2,2]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,0,2,2] = [v1376134784910,v1376134781838,v1376134781166,v1376134735758,v1376134732686,v1376134720398,v1376134732014,v1376134719726,v1376135964558,v1376135961486,v1376135960814,v1376140683150,v1376140680078,v1376140679406] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134784910) (.cons (no_v1376134781838) (.cons (no_v1376134781166) (.cons (no_v1376134735758) (.cons (no_v1376134732686) (.cons (no_v1376134720398) (.cons (no_v1376134732014) (.cons (no_v1376134719726) (.cons (no_v1376135964558) (.cons (no_v1376135961486) (.cons (no_v1376135960814) (.cons (no_v1376140683150) (.cons (no_v1376140680078) (.cons (no_v1376140679406) .nil))))))))))))))

private def v1376134470134 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1376134470134 : ¬ MinimalInterpreter v1376134470134 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1376134469366 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1376134469366 : ¬ MinimalInterpreter v1376134469366 :=
  cost_cut false 1 (by decide)

private def v1376134457846 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))))
private theorem no_v1376134457846 : ¬ MinimalInterpreter v1376134457846 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1376134457078 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 1)))))))
private theorem no_v1376134457078 : ¬ MinimalInterpreter v1376134457078 :=
  cost_cut false 1 (by decide)

private def v1376134454006 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1)))))))
private theorem no_v1376134454006 : ¬ MinimalInterpreter v1376134454006 :=
  cost_cut false 1 (by decide)

private def v1376134765046 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1376134765046 : ¬ MinimalInterpreter v1376134765046 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1376134764278 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1376134764278 : ¬ MinimalInterpreter v1376134764278 :=
  cost_cut false 1 (by decide)

private def v1376134781174 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1376134781174 : ¬ MinimalInterpreter v1376134781174 :=
  cost_cut false 1 (by decide)

private def v1376134732022 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))
private theorem no_v1376134732022 : ¬ MinimalInterpreter v1376134732022 :=
  cost_cut false 1 (by decide)

private def v1376134719734 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1))))))
private theorem no_v1376134719734 : ¬ MinimalInterpreter v1376134719734 :=
  cost_cut false 1 (by decide)

private def v1376135960822 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1376135960822 : ¬ MinimalInterpreter v1376135960822 :=
  cost_cut false 1 (by decide)

private def v1376140663286 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1376140663286 : ¬ MinimalInterpreter v1376140663286 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1376140662518 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1376140662518 : ¬ MinimalInterpreter v1376140662518 :=
  cost_cut false 1 (by decide)

private def v1376140679414 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1376140679414 : ¬ MinimalInterpreter v1376140679414 :=
  cost_cut false 1 (by decide)

theorem four839 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,0,3,1]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [0,0,3,1] = [v1376134470134,v1376134469366,v1376134457846,v1376134457078,v1376134454006,v1376134765046,v1376134764278,v1376134781174,v1376134732022,v1376134719734,v1376135960822,v1376140663286,v1376140662518,v1376140679414] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134470134) (.cons (no_v1376134469366) (.cons (no_v1376134457846) (.cons (no_v1376134457078) (.cons (no_v1376134454006) (.cons (no_v1376134765046) (.cons (no_v1376134764278) (.cons (no_v1376134781174) (.cons (no_v1376134732022) (.cons (no_v1376134719734) (.cons (no_v1376135960822) (.cons (no_v1376140663286) (.cons (no_v1376140662518) (.cons (no_v1376140679414) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows40
