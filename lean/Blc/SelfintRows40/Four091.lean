import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381368962286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))))
private theorem no_v1381368962286 : ¬ MinimalInterpreter v1381368962286 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381368960878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))))
private theorem no_v1381368960878 : ¬ MinimalInterpreter v1381368960878 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381368949998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381368949998 : ¬ MinimalInterpreter v1381368949998 :=
  cost_cut false 1 (by decide)

private def v1381368948590 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))))
private theorem no_v1381368948590 : ¬ MinimalInterpreter v1381368948590 :=
  cost_cut false 1 (by decide)

private def v1381368945518 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))))
private theorem no_v1381368945518 : ¬ MinimalInterpreter v1381368945518 :=
  cost_cut false 1 (by decide)

private def v1381369273454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1381369273454 : ¬ MinimalInterpreter v1381369273454 :=
  cost_cut false 1 (by decide)

private def v1381369220334 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))))))
private theorem no_v1381369220334 : ¬ MinimalInterpreter v1381369220334 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369224302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 2)))))))
private theorem no_v1381369224302 : ¬ MinimalInterpreter v1381369224302 :=
  cost_cut false 1 (by decide)

private def v1381369212014 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1381369212014 : ¬ MinimalInterpreter v1381369212014 :=
  cost_cut false 1 (by decide)

private def v1381369209710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 2)))))))
private theorem no_v1381369209710 : ¬ MinimalInterpreter v1381369209710 :=
  cost_cut false 1 (by decide)

private def v1381370453102 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1381370453102 : ¬ MinimalInterpreter v1381370453102 :=
  cost_cut false 1 (by decide)

private def v1381375171694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1381375171694 : ¬ MinimalInterpreter v1381375171694 :=
  cost_cut false 1 (by decide)

theorem four637 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,1,1,2]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,1,1,2] = [v1381368962286,v1381368960878,v1381368949998,v1381368948590,v1381368945518,v1381369273454,v1381369220334,v1381369224302,v1381369212014,v1381369209710,v1381370453102,v1381375171694] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368962286) (.cons (no_v1381368960878) (.cons (no_v1381368949998) (.cons (no_v1381368948590) (.cons (no_v1381368945518) (.cons (no_v1381369273454) (.cons (no_v1381369220334) (.cons (no_v1381369224302) (.cons (no_v1381369212014) (.cons (no_v1381369209710) (.cons (no_v1381370453102) (.cons (no_v1381375171694) .nil))))))))))))

private def v1381368962294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))))
private theorem no_v1381368962294 : ¬ MinimalInterpreter v1381368962294 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381368960886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))))
private theorem no_v1381368960886 : ¬ MinimalInterpreter v1381368960886 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381368950006 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381368950006 : ¬ MinimalInterpreter v1381368950006 :=
  cost_cut false 1 (by decide)

private def v1381368948598 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))))
private theorem no_v1381368948598 : ¬ MinimalInterpreter v1381368948598 :=
  cost_cut false 1 (by decide)

private def v1381368945526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))))
private theorem no_v1381368945526 : ¬ MinimalInterpreter v1381368945526 :=
  cost_cut false 1 (by decide)

private def v1381369279430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1381369279430 : ¬ MinimalInterpreter v1381369279430 :=
  cost_cut false 1 (by decide)

private def v1381369273798 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1381369273798 : ¬ MinimalInterpreter v1381369273798 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369230278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1381369230278 : ¬ MinimalInterpreter v1381369230278 :=
  cost_cut false 1 (by decide)

private def v1381369220342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))))))
private theorem no_v1381369220342 : ¬ MinimalInterpreter v1381369220342 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369224646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))))))
private theorem no_v1381369224646 : ¬ MinimalInterpreter v1381369224646 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369212358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1381369212358 : ¬ MinimalInterpreter v1381369212358 :=
  cost_cut false 1 (by decide)

private def v1381369209718 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 1)))))))
private theorem no_v1381369209718 : ¬ MinimalInterpreter v1381369209718 :=
  cost_cut false 1 (by decide)

private def v1381370459078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1381370459078 : ¬ MinimalInterpreter v1381370459078 :=
  cost_cut false 1 (by decide)

private def v1381370453446 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1381370453446 : ¬ MinimalInterpreter v1381370453446 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1381375177670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1381375177670 : ¬ MinimalInterpreter v1381375177670 :=
  cost_cut false 1 (by decide)

private def v1381375172038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1381375172038 : ¬ MinimalInterpreter v1381375172038 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem four638 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,1,2,1]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,1,2,1] = [v1381368962294,v1381368960886,v1381368950006,v1381368948598,v1381368945526,v1381369279430,v1381369273798,v1381369230278,v1381369220342,v1381369224646,v1381369212358,v1381369209718,v1381370459078,v1381370453446,v1381375177670,v1381375172038] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368962294) (.cons (no_v1381368960886) (.cons (no_v1381368950006) (.cons (no_v1381368948598) (.cons (no_v1381368945526) (.cons (no_v1381369279430) (.cons (no_v1381369273798) (.cons (no_v1381369230278) (.cons (no_v1381369220342) (.cons (no_v1381369224646) (.cons (no_v1381369212358) (.cons (no_v1381369209718) (.cons (no_v1381370459078) (.cons (no_v1381370453446) (.cons (no_v1381375177670) (.cons (no_v1381375172038) .nil))))))))))))))))

private def v1381368962298 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1381368962298 : ¬ MinimalInterpreter v1381368962298 :=
  cost_cut false 1 (by decide)

private def v1381368960890 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1381368960890 : ¬ MinimalInterpreter v1381368960890 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1381368950010 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 0)))))))))
private theorem no_v1381368950010 : ¬ MinimalInterpreter v1381368950010 :=
  cost_cut false 1 (by decide)

private def v1381368948602 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0))))))))
private theorem no_v1381368948602 : ¬ MinimalInterpreter v1381368948602 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1381368945530 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 0))))))))
private theorem no_v1381368945530 : ¬ MinimalInterpreter v1381368945530 :=
  cost_cut false 1 (by decide)

private def v1381369257210 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1381369257210 : ¬ MinimalInterpreter v1381369257210 :=
  cost_cut false 1 (by decide)

private def v1381369255802 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1381369255802 : ¬ MinimalInterpreter v1381369255802 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1381369273466 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1381369273466 : ¬ MinimalInterpreter v1381369273466 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1381369224314 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1381369224314 : ¬ MinimalInterpreter v1381369224314 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1381369212026 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1381369212026 : ¬ MinimalInterpreter v1381369212026 :=
  cost_cut false 1 (by decide)

private def v1381370453114 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1381370453114 : ¬ MinimalInterpreter v1381370453114 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1381375155450 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1381375155450 : ¬ MinimalInterpreter v1381375155450 :=
  cost_cut false 1 (by decide)

private def v1381375154042 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1381375154042 : ¬ MinimalInterpreter v1381375154042 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1381375171706 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1381375171706 : ¬ MinimalInterpreter v1381375171706 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))))

theorem four639 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,1,3,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,1,3,0] = [v1381368962298,v1381368960890,v1381368950010,v1381368948602,v1381368945530,v1381369257210,v1381369255802,v1381369273466,v1381369224314,v1381369212026,v1381370453114,v1381375155450,v1381375154042,v1381375171706] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368962298) (.cons (no_v1381368960890) (.cons (no_v1381368950010) (.cons (no_v1381368948602) (.cons (no_v1381368945530) (.cons (no_v1381369257210) (.cons (no_v1381369255802) (.cons (no_v1381369273466) (.cons (no_v1381369224314) (.cons (no_v1381369212026) (.cons (no_v1381370453114) (.cons (no_v1381375155450) (.cons (no_v1381375154042) (.cons (no_v1381375171706) .nil))))))))))))))

private def v1381369280910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1381369280910 : ¬ MinimalInterpreter v1381369280910 :=
  cost_cut false 1 (by decide)

private def v1381369273998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1381369273998 : ¬ MinimalInterpreter v1381369273998 :=
  cost_cut false 1 (by decide)

private def v1381369231758 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1381369231758 : ¬ MinimalInterpreter v1381369231758 :=
  cost_cut false 1 (by decide)

private def v1381369220718 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 0) (.var 2))))))))
private theorem no_v1381369220718 : ¬ MinimalInterpreter v1381369220718 :=
  cost_cut false 1 (by decide)

private def v1381369224846 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 2))))))))
private theorem no_v1381369224846 : ¬ MinimalInterpreter v1381369224846 :=
  cost_cut false 1 (by decide)

private def v1381369212558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1381369212558 : ¬ MinimalInterpreter v1381369212558 :=
  cost_cut false 1 (by decide)

private def v1381369209774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2)))))))
private theorem no_v1381369209774 : ¬ MinimalInterpreter v1381369209774 :=
  cost_cut false 1 (by decide)

private def v1381370460558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1381370460558 : ¬ MinimalInterpreter v1381370460558 :=
  cost_cut false 1 (by decide)

private def v1381370453646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1381370453646 : ¬ MinimalInterpreter v1381370453646 :=
  cost_cut false 1 (by decide)

private def v1381375179150 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1381375179150 : ¬ MinimalInterpreter v1381375179150 :=
  cost_cut false 1 (by decide)

private def v1381375172238 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1381375172238 : ¬ MinimalInterpreter v1381375172238 :=
  cost_cut false 1 (by decide)

theorem four640 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,2,0,2]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,2,0,2] = [v1381369280910,v1381369273998,v1381369231758,v1381369220718,v1381369224846,v1381369212558,v1381369209774,v1381370460558,v1381370453646,v1381375179150,v1381375172238] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381369280910) (.cons (no_v1381369273998) (.cons (no_v1381369231758) (.cons (no_v1381369220718) (.cons (no_v1381369224846) (.cons (no_v1381369212558) (.cons (no_v1381369209774) (.cons (no_v1381370460558) (.cons (no_v1381370453646) (.cons (no_v1381375179150) (.cons (no_v1381375172238) .nil)))))))))))

private def v1381368962678 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))))
private theorem no_v1381368962678 : ¬ MinimalInterpreter v1381368962678 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381368960950 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))))
private theorem no_v1381368960950 : ¬ MinimalInterpreter v1381368960950 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381368950390 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))))
private theorem no_v1381368950390 : ¬ MinimalInterpreter v1381368950390 :=
  cost_cut false 1 (by decide)

private def v1381368948662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))))
private theorem no_v1381368948662 : ¬ MinimalInterpreter v1381368948662 :=
  cost_cut false 1 (by decide)

private def v1381368945590 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))))
private theorem no_v1381368945590 : ¬ MinimalInterpreter v1381368945590 :=
  cost_cut false 1 (by decide)

private def v1381369280966 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1381369280966 : ¬ MinimalInterpreter v1381369280966 :=
  cost_cut false 1 (by decide)

private def v1381369274054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1381369274054 : ¬ MinimalInterpreter v1381369274054 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369273910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1381369273910 : ¬ MinimalInterpreter v1381369273910 :=
  cost_cut false 1 (by decide)

private def v1381369231814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1381369231814 : ¬ MinimalInterpreter v1381369231814 :=
  cost_cut false 1 (by decide)

private def v1381369224902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))))))
private theorem no_v1381369224902 : ¬ MinimalInterpreter v1381369224902 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369212614 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1381369212614 : ¬ MinimalInterpreter v1381369212614 :=
  cost_cut false 1 (by decide)

private def v1381369224758 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v1381369224758 : ¬ MinimalInterpreter v1381369224758 :=
  cost_cut false 1 (by decide)

private def v1381369212470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1381369212470 : ¬ MinimalInterpreter v1381369212470 :=
  cost_cut false 1 (by decide)

private def v1381370460614 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1381370460614 : ¬ MinimalInterpreter v1381370460614 :=
  cost_cut false 1 (by decide)

private def v1381370453702 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1381370453702 : ¬ MinimalInterpreter v1381370453702 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1381370453558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1381370453558 : ¬ MinimalInterpreter v1381370453558 :=
  cost_cut false 1 (by decide)

private def v1381375179206 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1381375179206 : ¬ MinimalInterpreter v1381375179206 :=
  cost_cut false 1 (by decide)

private def v1381375172294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1381375172294 : ¬ MinimalInterpreter v1381375172294 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381375172150 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1381375172150 : ¬ MinimalInterpreter v1381375172150 :=
  cost_cut false 1 (by decide)

theorem four641 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,2,1,1]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,2,1,1] = [v1381368962678,v1381368960950,v1381368950390,v1381368948662,v1381368945590,v1381369280966,v1381369274054,v1381369273910,v1381369231814,v1381369224902,v1381369212614,v1381369224758,v1381369212470,v1381370460614,v1381370453702,v1381370453558,v1381375179206,v1381375172294,v1381375172150] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368962678) (.cons (no_v1381368960950) (.cons (no_v1381368950390) (.cons (no_v1381368948662) (.cons (no_v1381368945590) (.cons (no_v1381369280966) (.cons (no_v1381369274054) (.cons (no_v1381369273910) (.cons (no_v1381369231814) (.cons (no_v1381369224902) (.cons (no_v1381369212614) (.cons (no_v1381369224758) (.cons (no_v1381369212470) (.cons (no_v1381370460614) (.cons (no_v1381370453702) (.cons (no_v1381370453558) (.cons (no_v1381375179206) (.cons (no_v1381375172294) (.cons (no_v1381375172150) .nil)))))))))))))))))))

private def v1381369273914 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1381369273914 : ¬ MinimalInterpreter v1381369273914 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369220730 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 0))))))))
private theorem no_v1381369220730 : ¬ MinimalInterpreter v1381369220730 :=
  cost_cut false 1 (by decide)

private def v1381369224762 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v1381369224762 : ¬ MinimalInterpreter v1381369224762 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369212474 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1381369212474 : ¬ MinimalInterpreter v1381369212474 :=
  cost_cut false 1 (by decide)

private def v1381369209786 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 0)))))))
private theorem no_v1381369209786 : ¬ MinimalInterpreter v1381369209786 :=
  cost_cut false 1 (by decide)

private def v1381370453562 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1381370453562 : ¬ MinimalInterpreter v1381370453562 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1381375172154 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1381375172154 : ¬ MinimalInterpreter v1381375172154 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

theorem four642 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,2,2,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,2,2,0] = [v1381369273914,v1381369220730,v1381369224762,v1381369212474,v1381369209786,v1381370453562,v1381375172154] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381369273914) (.cons (no_v1381369220730) (.cons (no_v1381369224762) (.cons (no_v1381369212474) (.cons (no_v1381369209786) (.cons (no_v1381370453562) (.cons (no_v1381375172154) .nil)))))))

private def v1381368962870 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1381368962870 : ¬ MinimalInterpreter v1381368962870 :=
  cost_cut false 1 (by decide)

private def v1381368960982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1381368960982 : ¬ MinimalInterpreter v1381368960982 :=
  cost_cut false 1 (by decide)

private def v1381368950582 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381368950582 : ¬ MinimalInterpreter v1381368950582 :=
  cost_cut false 1 (by decide)

private def v1381368948694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1))))))))
private theorem no_v1381368948694 : ¬ MinimalInterpreter v1381368948694 :=
  cost_cut false 1 (by decide)

private def v1381368945622 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1))))))))
private theorem no_v1381368945622 : ¬ MinimalInterpreter v1381368945622 :=
  cost_cut false 1 (by decide)

private def v1381369257782 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1381369257782 : ¬ MinimalInterpreter v1381369257782 :=
  cost_cut false 1 (by decide)

private def v1381369255894 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1381369255894 : ¬ MinimalInterpreter v1381369255894 :=
  cost_cut false 1 (by decide)

private def v1381369220918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1))))))))
private theorem no_v1381369220918 : ¬ MinimalInterpreter v1381369220918 :=
  cost_cut false 1 (by decide)

private def v1381369209814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1)))))))
private theorem no_v1381369209814 : ¬ MinimalInterpreter v1381369209814 :=
  cost_cut false 1 (by decide)

private def v1381375156022 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1381375156022 : ¬ MinimalInterpreter v1381375156022 :=
  cost_cut false 1 (by decide)

private def v1381375154134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1381375154134 : ¬ MinimalInterpreter v1381375154134 :=
  cost_cut false 1 (by decide)

theorem four643 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,3,0,1]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,3,0,1] = [v1381368962870,v1381368960982,v1381368950582,v1381368948694,v1381368945622,v1381369257782,v1381369255894,v1381369220918,v1381369209814,v1381375156022,v1381375154134] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368962870) (.cons (no_v1381368960982) (.cons (no_v1381368950582) (.cons (no_v1381368948694) (.cons (no_v1381368945622) (.cons (no_v1381369257782) (.cons (no_v1381369255894) (.cons (no_v1381369220918) (.cons (no_v1381369209814) (.cons (no_v1381375156022) (.cons (no_v1381375154134) .nil)))))))))))

end Blc.SelfintSingleObject.Rows40
