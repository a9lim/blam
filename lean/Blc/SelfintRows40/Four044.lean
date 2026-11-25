import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381370535542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v1381370535542 : ¬ MinimalInterpreter v1381370535542 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370533814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v1381370533814 : ¬ MinimalInterpreter v1381370533814 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370523254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v1381370523254 : ¬ MinimalInterpreter v1381370523254 :=
  cost_cut false 1 (by decide)

private def v1381370521526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v1381370521526 : ¬ MinimalInterpreter v1381370521526 :=
  cost_cut false 1 (by decide)

private def v1381370518454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v1381370518454 : ¬ MinimalInterpreter v1381370518454 :=
  cost_cut false 1 (by decide)

private def v1381370338934 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v1381370338934 : ¬ MinimalInterpreter v1381370338934 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370337206 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v1381370337206 : ¬ MinimalInterpreter v1381370337206 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370326646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 1)))))))
private theorem no_v1381370326646 : ¬ MinimalInterpreter v1381370326646 :=
  cost_cut false 1 (by decide)

private def v1381370277494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v1381370277494 : ¬ MinimalInterpreter v1381370277494 :=
  cost_cut false 1 (by decide)

private def v1381370324918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 1))))))
private theorem no_v1381370324918 : ¬ MinimalInterpreter v1381370324918 :=
  cost_cut false 1 (by decide)

private def v1381370321846 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 1))))))
private theorem no_v1381370321846 : ¬ MinimalInterpreter v1381370321846 :=
  cost_cut false 1 (by decide)

private def v1381370275766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v1381370275766 : ¬ MinimalInterpreter v1381370275766 :=
  cost_cut false 1 (by decide)

private def v1381370272694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.var 1))))))
private theorem no_v1381370272694 : ¬ MinimalInterpreter v1381370272694 :=
  cost_cut false 1 (by decide)

private def v1381370260406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v1381370260406 : ¬ MinimalInterpreter v1381370260406 :=
  cost_cut false 1 (by decide)

private def v1381375254134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v1381375254134 : ¬ MinimalInterpreter v1381375254134 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381375252406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v1381375252406 : ¬ MinimalInterpreter v1381375252406 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381375241846 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v1381375241846 : ¬ MinimalInterpreter v1381375241846 :=
  cost_cut false 1 (by decide)

private def v1381375240118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v1381375240118 : ¬ MinimalInterpreter v1381375240118 :=
  cost_cut false 1 (by decide)

private def v1381375237046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v1381375237046 : ¬ MinimalInterpreter v1381375237046 :=
  cost_cut false 1 (by decide)

private def v1381374650294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 1)))))
private theorem no_v1381374650294 : ¬ MinimalInterpreter v1381374650294 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 1))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1381374647222 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 1)))))
private theorem no_v1381374647222 : ¬ MinimalInterpreter v1381374647222 :=
  cost_cut false 1 (by decide)

private def v1381394128502 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v1381394128502 : ¬ MinimalInterpreter v1381394128502 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381394126774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v1381394126774 : ¬ MinimalInterpreter v1381394126774 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381394116214 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v1381394116214 : ¬ MinimalInterpreter v1381394116214 :=
  cost_cut false 1 (by decide)

private def v1381394114486 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v1381394114486 : ¬ MinimalInterpreter v1381394114486 :=
  cost_cut false 1 (by decide)

private def v1381394111414 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v1381394111414 : ¬ MinimalInterpreter v1381394111414 :=
  cost_cut false 1 (by decide)

theorem four308 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,0,2,1,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,0,2,1,1] = [v1381370535542,v1381370533814,v1381370523254,v1381370521526,v1381370518454,v1381370338934,v1381370337206,v1381370326646,v1381370277494,v1381370324918,v1381370321846,v1381370275766,v1381370272694,v1381370260406,v1381375254134,v1381375252406,v1381375241846,v1381375240118,v1381375237046,v1381374650294,v1381374647222,v1381394128502,v1381394126774,v1381394116214,v1381394114486,v1381394111414] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370535542) (.cons (no_v1381370533814) (.cons (no_v1381370523254) (.cons (no_v1381370521526) (.cons (no_v1381370518454) (.cons (no_v1381370338934) (.cons (no_v1381370337206) (.cons (no_v1381370326646) (.cons (no_v1381370277494) (.cons (no_v1381370324918) (.cons (no_v1381370321846) (.cons (no_v1381370275766) (.cons (no_v1381370272694) (.cons (no_v1381370260406) (.cons (no_v1381375254134) (.cons (no_v1381375252406) (.cons (no_v1381375241846) (.cons (no_v1381375240118) (.cons (no_v1381375237046) (.cons (no_v1381374650294) (.cons (no_v1381374647222) (.cons (no_v1381394128502) (.cons (no_v1381394126774) (.cons (no_v1381394116214) (.cons (no_v1381394114486) (.cons (no_v1381394111414) .nil))))))))))))))))))))))))))

theorem four309 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,0,2,2,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381370547438 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381370547438 : ¬ MinimalInterpreter v1381370547438 :=
  cost_cut false 1 (by decide)

private def v1381370547054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1381370547054 : ¬ MinimalInterpreter v1381370547054 :=
  cost_cut false 1 (by decide)

private def v1381370524910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1381370524910 : ¬ MinimalInterpreter v1381370524910 :=
  cost_cut false 1 (by decide)

private def v1381370524526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1381370524526 : ¬ MinimalInterpreter v1381370524526 :=
  cost_cut false 1 (by decide)

private def v1381370518894 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1381370518894 : ¬ MinimalInterpreter v1381370518894 :=
  cost_cut false 1 (by decide)

private def v1381370350830 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1381370350830 : ¬ MinimalInterpreter v1381370350830 :=
  cost_cut false 1 (by decide)

private def v1381370350446 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1381370350446 : ¬ MinimalInterpreter v1381370350446 :=
  cost_cut false 1 (by decide)

private def v1381370328302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v1381370328302 : ¬ MinimalInterpreter v1381370328302 :=
  cost_cut false 1 (by decide)

private def v1381370279150 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1381370279150 : ¬ MinimalInterpreter v1381370279150 :=
  cost_cut false 1 (by decide)

private def v1381370327918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v1381370327918 : ¬ MinimalInterpreter v1381370327918 :=
  cost_cut false 1 (by decide)

private def v1381370322286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 2))))))
private theorem no_v1381370322286 : ¬ MinimalInterpreter v1381370322286 :=
  cost_cut false 1 (by decide)

private def v1381370278766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1381370278766 : ¬ MinimalInterpreter v1381370278766 :=
  cost_cut false 1 (by decide)

private def v1381370273134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v1381370273134 : ¬ MinimalInterpreter v1381370273134 :=
  cost_cut false 1 (by decide)

private def v1381370260846 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1381370260846 : ¬ MinimalInterpreter v1381370260846 :=
  cost_cut false 1 (by decide)

private def v1381375266030 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381375266030 : ¬ MinimalInterpreter v1381375266030 :=
  cost_cut false 1 (by decide)

private def v1381375265646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1381375265646 : ¬ MinimalInterpreter v1381375265646 :=
  cost_cut false 1 (by decide)

private def v1381375243502 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1381375243502 : ¬ MinimalInterpreter v1381375243502 :=
  cost_cut false 1 (by decide)

private def v1381375243118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1381375243118 : ¬ MinimalInterpreter v1381375243118 :=
  cost_cut false 1 (by decide)

private def v1381375237486 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1381375237486 : ¬ MinimalInterpreter v1381375237486 :=
  cost_cut false 1 (by decide)

private def v1381375610094 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381375610094 : ¬ MinimalInterpreter v1381375610094 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381375609710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1381375609710 : ¬ MinimalInterpreter v1381375609710 :=
  cost_cut false 1 (by decide)

private def v1381374823662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1381374823662 : ¬ MinimalInterpreter v1381374823662 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381374823278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1381374823278 : ¬ MinimalInterpreter v1381374823278 :=
  cost_cut false 1 (by decide)

private def v1381394140398 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381394140398 : ¬ MinimalInterpreter v1381394140398 :=
  cost_cut false 1 (by decide)

private def v1381394140014 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1381394140014 : ¬ MinimalInterpreter v1381394140014 :=
  cost_cut false 1 (by decide)

private def v1381394117870 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1381394117870 : ¬ MinimalInterpreter v1381394117870 :=
  cost_cut false 1 (by decide)

private def v1381394117486 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1381394117486 : ¬ MinimalInterpreter v1381394117486 :=
  cost_cut false 1 (by decide)

private def v1381394111854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1381394111854 : ¬ MinimalInterpreter v1381394111854 :=
  cost_cut false 1 (by decide)

private def v1381394484462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381394484462 : ¬ MinimalInterpreter v1381394484462 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1381394484078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1381394484078 : ¬ MinimalInterpreter v1381394484078 :=
  cost_cut false 1 (by decide)

theorem four310 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,1,0,1,2]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,1,0,1,2] = [v1381370547438,v1381370547054,v1381370524910,v1381370524526,v1381370518894,v1381370350830,v1381370350446,v1381370328302,v1381370279150,v1381370327918,v1381370322286,v1381370278766,v1381370273134,v1381370260846,v1381375266030,v1381375265646,v1381375243502,v1381375243118,v1381375237486,v1381375610094,v1381375609710,v1381374823662,v1381374823278,v1381394140398,v1381394140014,v1381394117870,v1381394117486,v1381394111854,v1381394484462,v1381394484078] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370547438) (.cons (no_v1381370547054) (.cons (no_v1381370524910) (.cons (no_v1381370524526) (.cons (no_v1381370518894) (.cons (no_v1381370350830) (.cons (no_v1381370350446) (.cons (no_v1381370328302) (.cons (no_v1381370279150) (.cons (no_v1381370327918) (.cons (no_v1381370322286) (.cons (no_v1381370278766) (.cons (no_v1381370273134) (.cons (no_v1381370260846) (.cons (no_v1381375266030) (.cons (no_v1381375265646) (.cons (no_v1381375243502) (.cons (no_v1381375243118) (.cons (no_v1381375237486) (.cons (no_v1381375610094) (.cons (no_v1381375609710) (.cons (no_v1381374823662) (.cons (no_v1381374823278) (.cons (no_v1381394140398) (.cons (no_v1381394140014) (.cons (no_v1381394117870) (.cons (no_v1381394117486) (.cons (no_v1381394111854) (.cons (no_v1381394484462) (.cons (no_v1381394484078) .nil))))))))))))))))))))))))))))))

private def v1381370547446 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381370547446 : ¬ MinimalInterpreter v1381370547446 :=
  cost_cut false 1 (by decide)

private def v1381370547062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1381370547062 : ¬ MinimalInterpreter v1381370547062 :=
  cost_cut false 1 (by decide)

private def v1381370524918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1381370524918 : ¬ MinimalInterpreter v1381370524918 :=
  cost_cut false 1 (by decide)

private def v1381370524534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1381370524534 : ¬ MinimalInterpreter v1381370524534 :=
  cost_cut false 1 (by decide)

private def v1381370518902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1381370518902 : ¬ MinimalInterpreter v1381370518902 :=
  cost_cut false 1 (by decide)

private def v1381370350838 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1381370350838 : ¬ MinimalInterpreter v1381370350838 :=
  cost_cut false 1 (by decide)

private def v1381370350454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1381370350454 : ¬ MinimalInterpreter v1381370350454 :=
  cost_cut false 1 (by decide)

private def v1381370328310 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v1381370328310 : ¬ MinimalInterpreter v1381370328310 :=
  cost_cut false 1 (by decide)

private def v1381370279158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1381370279158 : ¬ MinimalInterpreter v1381370279158 :=
  cost_cut false 1 (by decide)

private def v1381370327926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 1))))))
private theorem no_v1381370327926 : ¬ MinimalInterpreter v1381370327926 :=
  cost_cut false 1 (by decide)

private def v1381370322294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 1))))))
private theorem no_v1381370322294 : ¬ MinimalInterpreter v1381370322294 :=
  cost_cut false 1 (by decide)

private def v1381370278774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1381370278774 : ¬ MinimalInterpreter v1381370278774 :=
  cost_cut false 1 (by decide)

private def v1381370273142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v1381370273142 : ¬ MinimalInterpreter v1381370273142 :=
  cost_cut false 1 (by decide)

private def v1381370260854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1381370260854 : ¬ MinimalInterpreter v1381370260854 :=
  cost_cut false 1 (by decide)

private def v1381375266038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381375266038 : ¬ MinimalInterpreter v1381375266038 :=
  cost_cut false 1 (by decide)

private def v1381375265654 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1381375265654 : ¬ MinimalInterpreter v1381375265654 :=
  cost_cut false 1 (by decide)

private def v1381375243510 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1381375243510 : ¬ MinimalInterpreter v1381375243510 :=
  cost_cut false 1 (by decide)

private def v1381375243126 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1381375243126 : ¬ MinimalInterpreter v1381375243126 :=
  cost_cut false 1 (by decide)

private def v1381375237494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1381375237494 : ¬ MinimalInterpreter v1381375237494 :=
  cost_cut false 1 (by decide)

private def v1381375610102 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381375610102 : ¬ MinimalInterpreter v1381375610102 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381375609718 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1381375609718 : ¬ MinimalInterpreter v1381375609718 :=
  cost_cut false 1 (by decide)

private def v1381374823670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1381374823670 : ¬ MinimalInterpreter v1381374823670 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381374823286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1381374823286 : ¬ MinimalInterpreter v1381374823286 :=
  cost_cut false 1 (by decide)

private def v1381374653302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 1)))))
private theorem no_v1381374653302 : ¬ MinimalInterpreter v1381374653302 :=
  cost_cut false 1 (by decide)

private def v1381374647670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 1)))))
private theorem no_v1381374647670 : ¬ MinimalInterpreter v1381374647670 :=
  cost_cut false 1 (by decide)

private def v1381394140406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381394140406 : ¬ MinimalInterpreter v1381394140406 :=
  cost_cut false 1 (by decide)

private def v1381394140022 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1381394140022 : ¬ MinimalInterpreter v1381394140022 :=
  cost_cut false 1 (by decide)

private def v1381394117878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1381394117878 : ¬ MinimalInterpreter v1381394117878 :=
  cost_cut false 1 (by decide)

private def v1381394117494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1381394117494 : ¬ MinimalInterpreter v1381394117494 :=
  cost_cut false 1 (by decide)

private def v1381394111862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1381394111862 : ¬ MinimalInterpreter v1381394111862 :=
  cost_cut false 1 (by decide)

private def v1381394484470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381394484470 : ¬ MinimalInterpreter v1381394484470 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1381394484086 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1381394484086 : ¬ MinimalInterpreter v1381394484086 :=
  cost_cut false 1 (by decide)

theorem four311 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,1,0,2,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,1,0,2,1] = [v1381370547446,v1381370547062,v1381370524918,v1381370524534,v1381370518902,v1381370350838,v1381370350454,v1381370328310,v1381370279158,v1381370327926,v1381370322294,v1381370278774,v1381370273142,v1381370260854,v1381375266038,v1381375265654,v1381375243510,v1381375243126,v1381375237494,v1381375610102,v1381375609718,v1381374823670,v1381374823286,v1381374653302,v1381374647670,v1381394140406,v1381394140022,v1381394117878,v1381394117494,v1381394111862,v1381394484470,v1381394484086] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370547446) (.cons (no_v1381370547062) (.cons (no_v1381370524918) (.cons (no_v1381370524534) (.cons (no_v1381370518902) (.cons (no_v1381370350838) (.cons (no_v1381370350454) (.cons (no_v1381370328310) (.cons (no_v1381370279158) (.cons (no_v1381370327926) (.cons (no_v1381370322294) (.cons (no_v1381370278774) (.cons (no_v1381370273142) (.cons (no_v1381370260854) (.cons (no_v1381375266038) (.cons (no_v1381375265654) (.cons (no_v1381375243510) (.cons (no_v1381375243126) (.cons (no_v1381375237494) (.cons (no_v1381375610102) (.cons (no_v1381375609718) (.cons (no_v1381374823670) (.cons (no_v1381374823286) (.cons (no_v1381374653302) (.cons (no_v1381374647670) (.cons (no_v1381394140406) (.cons (no_v1381394140022) (.cons (no_v1381394117878) (.cons (no_v1381394117494) (.cons (no_v1381394111862) (.cons (no_v1381394484470) (.cons (no_v1381394484086) .nil))))))))))))))))))))))))))))))))

private def v1381370547822 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381370547822 : ¬ MinimalInterpreter v1381370547822 :=
  cost_cut false 1 (by decide)

private def v1381370547118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1381370547118 : ¬ MinimalInterpreter v1381370547118 :=
  cost_cut false 1 (by decide)

private def v1381370525294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1381370525294 : ¬ MinimalInterpreter v1381370525294 :=
  cost_cut false 1 (by decide)

private def v1381370524590 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1381370524590 : ¬ MinimalInterpreter v1381370524590 :=
  cost_cut false 1 (by decide)

private def v1381370518958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1381370518958 : ¬ MinimalInterpreter v1381370518958 :=
  cost_cut false 1 (by decide)

private def v1381370351214 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1381370351214 : ¬ MinimalInterpreter v1381370351214 :=
  cost_cut false 1 (by decide)

private def v1381370350510 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1381370350510 : ¬ MinimalInterpreter v1381370350510 :=
  cost_cut false 1 (by decide)

private def v1381370328686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v1381370328686 : ¬ MinimalInterpreter v1381370328686 :=
  cost_cut false 1 (by decide)

private def v1381370279534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1381370279534 : ¬ MinimalInterpreter v1381370279534 :=
  cost_cut false 1 (by decide)

private def v1381370327982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 2))))))
private theorem no_v1381370327982 : ¬ MinimalInterpreter v1381370327982 :=
  cost_cut false 1 (by decide)

private def v1381370322350 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 2))))))
private theorem no_v1381370322350 : ¬ MinimalInterpreter v1381370322350 :=
  cost_cut false 1 (by decide)

private def v1381370278830 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1381370278830 : ¬ MinimalInterpreter v1381370278830 :=
  cost_cut false 1 (by decide)

private def v1381370273198 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v1381370273198 : ¬ MinimalInterpreter v1381370273198 :=
  cost_cut false 1 (by decide)

private def v1381370260910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1381370260910 : ¬ MinimalInterpreter v1381370260910 :=
  cost_cut false 1 (by decide)

private def v1381375266414 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381375266414 : ¬ MinimalInterpreter v1381375266414 :=
  cost_cut false 1 (by decide)

private def v1381375265710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1381375265710 : ¬ MinimalInterpreter v1381375265710 :=
  cost_cut false 1 (by decide)

private def v1381375243886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1381375243886 : ¬ MinimalInterpreter v1381375243886 :=
  cost_cut false 1 (by decide)

private def v1381375243182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1381375243182 : ¬ MinimalInterpreter v1381375243182 :=
  cost_cut false 1 (by decide)

private def v1381375237550 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1381375237550 : ¬ MinimalInterpreter v1381375237550 :=
  cost_cut false 1 (by decide)

private def v1381375610478 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381375610478 : ¬ MinimalInterpreter v1381375610478 :=
  cost_cut false 1 (by decide)

private def v1381375609774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1381375609774 : ¬ MinimalInterpreter v1381375609774 :=
  cost_cut false 1 (by decide)

private def v1381374824046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1381374824046 : ¬ MinimalInterpreter v1381374824046 :=
  cost_cut false 1 (by decide)

private def v1381374823342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1381374823342 : ¬ MinimalInterpreter v1381374823342 :=
  cost_cut false 1 (by decide)

private def v1381394140782 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381394140782 : ¬ MinimalInterpreter v1381394140782 :=
  cost_cut false 1 (by decide)

private def v1381394140078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1381394140078 : ¬ MinimalInterpreter v1381394140078 :=
  cost_cut false 1 (by decide)

private def v1381394118254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1381394118254 : ¬ MinimalInterpreter v1381394118254 :=
  cost_cut false 1 (by decide)

private def v1381394117550 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1381394117550 : ¬ MinimalInterpreter v1381394117550 :=
  cost_cut false 1 (by decide)

private def v1381394111918 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1381394111918 : ¬ MinimalInterpreter v1381394111918 :=
  cost_cut false 1 (by decide)

private def v1381394484846 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381394484846 : ¬ MinimalInterpreter v1381394484846 :=
  cost_cut false 1 (by decide)

private def v1381394484142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1381394484142 : ¬ MinimalInterpreter v1381394484142 :=
  cost_cut false 1 (by decide)

theorem four312 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,1,1,0,2]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,1,1,0,2] = [v1381370547822,v1381370547118,v1381370525294,v1381370524590,v1381370518958,v1381370351214,v1381370350510,v1381370328686,v1381370279534,v1381370327982,v1381370322350,v1381370278830,v1381370273198,v1381370260910,v1381375266414,v1381375265710,v1381375243886,v1381375243182,v1381375237550,v1381375610478,v1381375609774,v1381374824046,v1381374823342,v1381394140782,v1381394140078,v1381394118254,v1381394117550,v1381394111918,v1381394484846,v1381394484142] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370547822) (.cons (no_v1381370547118) (.cons (no_v1381370525294) (.cons (no_v1381370524590) (.cons (no_v1381370518958) (.cons (no_v1381370351214) (.cons (no_v1381370350510) (.cons (no_v1381370328686) (.cons (no_v1381370279534) (.cons (no_v1381370327982) (.cons (no_v1381370322350) (.cons (no_v1381370278830) (.cons (no_v1381370273198) (.cons (no_v1381370260910) (.cons (no_v1381375266414) (.cons (no_v1381375265710) (.cons (no_v1381375243886) (.cons (no_v1381375243182) (.cons (no_v1381375237550) (.cons (no_v1381375610478) (.cons (no_v1381375609774) (.cons (no_v1381374824046) (.cons (no_v1381374823342) (.cons (no_v1381394140782) (.cons (no_v1381394140078) (.cons (no_v1381394118254) (.cons (no_v1381394117550) (.cons (no_v1381394111918) (.cons (no_v1381394484846) (.cons (no_v1381394484142) .nil))))))))))))))))))))))))))))))

theorem four313 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,1,1,1,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381370547834 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381370547834 : ¬ MinimalInterpreter v1381370547834 :=
  cost_cut false 1 (by decide)

private def v1381370547130 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1381370547130 : ¬ MinimalInterpreter v1381370547130 :=
  cost_cut false 1 (by decide)

private def v1381370525306 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1381370525306 : ¬ MinimalInterpreter v1381370525306 :=
  cost_cut false 1 (by decide)

private def v1381370524602 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1381370524602 : ¬ MinimalInterpreter v1381370524602 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370518970 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1381370518970 : ¬ MinimalInterpreter v1381370518970 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370351226 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1381370351226 : ¬ MinimalInterpreter v1381370351226 :=
  cost_cut false 1 (by decide)

private def v1381370350522 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1381370350522 : ¬ MinimalInterpreter v1381370350522 :=
  cost_cut false 1 (by decide)

private def v1381370328698 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v1381370328698 : ¬ MinimalInterpreter v1381370328698 :=
  cost_cut false 1 (by decide)

private def v1381370279546 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1381370279546 : ¬ MinimalInterpreter v1381370279546 :=
  cost_cut false 1 (by decide)

private def v1381370327994 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v1381370327994 : ¬ MinimalInterpreter v1381370327994 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370322362 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0))))))
private theorem no_v1381370322362 : ¬ MinimalInterpreter v1381370322362 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370278842 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1381370278842 : ¬ MinimalInterpreter v1381370278842 :=
  cost_cut false 1 (by decide)

private def v1381370273210 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v1381370273210 : ¬ MinimalInterpreter v1381370273210 :=
  cost_cut false 1 (by decide)

private def v1381370260922 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1381370260922 : ¬ MinimalInterpreter v1381370260922 :=
  cost_cut false 1 (by decide)

private def v1381375266426 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381375266426 : ¬ MinimalInterpreter v1381375266426 :=
  cost_cut false 1 (by decide)

private def v1381375265722 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1381375265722 : ¬ MinimalInterpreter v1381375265722 :=
  cost_cut false 1 (by decide)

private def v1381375243898 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1381375243898 : ¬ MinimalInterpreter v1381375243898 :=
  cost_cut false 1 (by decide)

private def v1381375243194 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1381375243194 : ¬ MinimalInterpreter v1381375243194 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381375237562 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1381375237562 : ¬ MinimalInterpreter v1381375237562 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381375610490 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381375610490 : ¬ MinimalInterpreter v1381375610490 :=
  cost_cut false 1 (by decide)

private def v1381375609786 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1381375609786 : ¬ MinimalInterpreter v1381375609786 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381374824058 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1381374824058 : ¬ MinimalInterpreter v1381374824058 :=
  cost_cut false 1 (by decide)

private def v1381374823354 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1381374823354 : ¬ MinimalInterpreter v1381374823354 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381394140794 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381394140794 : ¬ MinimalInterpreter v1381394140794 :=
  cost_cut false 1 (by decide)

private def v1381394140090 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1381394140090 : ¬ MinimalInterpreter v1381394140090 :=
  cost_cut false 1 (by decide)

private def v1381394118266 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1381394118266 : ¬ MinimalInterpreter v1381394118266 :=
  cost_cut false 1 (by decide)

private def v1381394117562 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1381394117562 : ¬ MinimalInterpreter v1381394117562 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381394111930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1381394111930 : ¬ MinimalInterpreter v1381394111930 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381394484858 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381394484858 : ¬ MinimalInterpreter v1381394484858 :=
  cost_cut false 1 (by decide)

private def v1381394484154 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1381394484154 : ¬ MinimalInterpreter v1381394484154 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

theorem four314 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,1,1,2,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,1,1,2,0] = [v1381370547834,v1381370547130,v1381370525306,v1381370524602,v1381370518970,v1381370351226,v1381370350522,v1381370328698,v1381370279546,v1381370327994,v1381370322362,v1381370278842,v1381370273210,v1381370260922,v1381375266426,v1381375265722,v1381375243898,v1381375243194,v1381375237562,v1381375610490,v1381375609786,v1381374824058,v1381374823354,v1381394140794,v1381394140090,v1381394118266,v1381394117562,v1381394111930,v1381394484858,v1381394484154] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370547834) (.cons (no_v1381370547130) (.cons (no_v1381370525306) (.cons (no_v1381370524602) (.cons (no_v1381370518970) (.cons (no_v1381370351226) (.cons (no_v1381370350522) (.cons (no_v1381370328698) (.cons (no_v1381370279546) (.cons (no_v1381370327994) (.cons (no_v1381370322362) (.cons (no_v1381370278842) (.cons (no_v1381370273210) (.cons (no_v1381370260922) (.cons (no_v1381375266426) (.cons (no_v1381375265722) (.cons (no_v1381375243898) (.cons (no_v1381375243194) (.cons (no_v1381375237562) (.cons (no_v1381375610490) (.cons (no_v1381375609786) (.cons (no_v1381374824058) (.cons (no_v1381374823354) (.cons (no_v1381394140794) (.cons (no_v1381394140090) (.cons (no_v1381394118266) (.cons (no_v1381394117562) (.cons (no_v1381394111930) (.cons (no_v1381394484858) (.cons (no_v1381394484154) .nil))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
