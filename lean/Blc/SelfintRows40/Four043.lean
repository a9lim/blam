import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four301 : BadRow (markedRow ⟨1,2,2,2,4,6⟩ [1,1] [2,2,0,2]) := by
  have h : markedRow ⟨1,2,2,2,4,6⟩ [1,1] [2,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four302 : BadRow (markedRow ⟨1,2,2,2,4,6⟩ [1,1] [2,2,1,1]) := by
  have h : markedRow ⟨1,2,2,2,4,6⟩ [1,1] [2,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four303 : BadRow (markedRow ⟨1,2,2,2,4,6⟩ [1,1] [2,2,2,0]) := by
  have h : markedRow ⟨1,2,2,2,4,6⟩ [1,1] [2,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four304 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,0,0,2,2]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381370535150 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381370535150 : ¬ MinimalInterpreter v1381370535150 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370533742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v1381370533742 : ¬ MinimalInterpreter v1381370533742 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370522862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v1381370522862 : ¬ MinimalInterpreter v1381370522862 :=
  cost_cut false 1 (by decide)

private def v1381370521454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v1381370521454 : ¬ MinimalInterpreter v1381370521454 :=
  cost_cut false 1 (by decide)

private def v1381370518382 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v1381370518382 : ¬ MinimalInterpreter v1381370518382 :=
  cost_cut false 1 (by decide)

private def v1381370338542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v1381370338542 : ¬ MinimalInterpreter v1381370338542 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370337134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v1381370337134 : ¬ MinimalInterpreter v1381370337134 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370326254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v1381370326254 : ¬ MinimalInterpreter v1381370326254 :=
  cost_cut false 1 (by decide)

private def v1381370277102 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v1381370277102 : ¬ MinimalInterpreter v1381370277102 :=
  cost_cut false 1 (by decide)

private def v1381370324846 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 2))))))
private theorem no_v1381370324846 : ¬ MinimalInterpreter v1381370324846 :=
  cost_cut false 1 (by decide)

private def v1381370321774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 2))))))
private theorem no_v1381370321774 : ¬ MinimalInterpreter v1381370321774 :=
  cost_cut false 1 (by decide)

private def v1381370275694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v1381370275694 : ¬ MinimalInterpreter v1381370275694 :=
  cost_cut false 1 (by decide)

private def v1381370272622 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v1381370272622 : ¬ MinimalInterpreter v1381370272622 :=
  cost_cut false 1 (by decide)

private def v1381370260334 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v1381370260334 : ¬ MinimalInterpreter v1381370260334 :=
  cost_cut false 1 (by decide)

private def v1381375253742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381375253742 : ¬ MinimalInterpreter v1381375253742 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381375252334 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v1381375252334 : ¬ MinimalInterpreter v1381375252334 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381375241454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v1381375241454 : ¬ MinimalInterpreter v1381375241454 :=
  cost_cut false 1 (by decide)

private def v1381375240046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v1381375240046 : ¬ MinimalInterpreter v1381375240046 :=
  cost_cut false 1 (by decide)

private def v1381375236974 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v1381375236974 : ¬ MinimalInterpreter v1381375236974 :=
  cost_cut false 1 (by decide)

private def v1381394128110 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381394128110 : ¬ MinimalInterpreter v1381394128110 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381394126702 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v1381394126702 : ¬ MinimalInterpreter v1381394126702 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381394115822 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v1381394115822 : ¬ MinimalInterpreter v1381394115822 :=
  cost_cut false 1 (by decide)

private def v1381394114414 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v1381394114414 : ¬ MinimalInterpreter v1381394114414 :=
  cost_cut false 1 (by decide)

private def v1381394111342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v1381394111342 : ¬ MinimalInterpreter v1381394111342 :=
  cost_cut false 1 (by decide)

theorem four305 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,0,1,1,2]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,0,1,1,2] = [v1381370535150,v1381370533742,v1381370522862,v1381370521454,v1381370518382,v1381370338542,v1381370337134,v1381370326254,v1381370277102,v1381370324846,v1381370321774,v1381370275694,v1381370272622,v1381370260334,v1381375253742,v1381375252334,v1381375241454,v1381375240046,v1381375236974,v1381394128110,v1381394126702,v1381394115822,v1381394114414,v1381394111342] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370535150) (.cons (no_v1381370533742) (.cons (no_v1381370522862) (.cons (no_v1381370521454) (.cons (no_v1381370518382) (.cons (no_v1381370338542) (.cons (no_v1381370337134) (.cons (no_v1381370326254) (.cons (no_v1381370277102) (.cons (no_v1381370324846) (.cons (no_v1381370321774) (.cons (no_v1381370275694) (.cons (no_v1381370272622) (.cons (no_v1381370260334) (.cons (no_v1381375253742) (.cons (no_v1381375252334) (.cons (no_v1381375241454) (.cons (no_v1381375240046) (.cons (no_v1381375236974) (.cons (no_v1381394128110) (.cons (no_v1381394126702) (.cons (no_v1381394115822) (.cons (no_v1381394114414) (.cons (no_v1381394111342) .nil))))))))))))))))))))))))

private def v1381370535158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381370535158 : ¬ MinimalInterpreter v1381370535158 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370533750 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v1381370533750 : ¬ MinimalInterpreter v1381370533750 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370522870 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))))))))
private theorem no_v1381370522870 : ¬ MinimalInterpreter v1381370522870 :=
  cost_cut false 1 (by decide)

private def v1381370521462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)))))))
private theorem no_v1381370521462 : ¬ MinimalInterpreter v1381370521462 :=
  cost_cut false 1 (by decide)

private def v1381370518390 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)))))))
private theorem no_v1381370518390 : ¬ MinimalInterpreter v1381370518390 :=
  cost_cut false 1 (by decide)

private def v1381370338550 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v1381370338550 : ¬ MinimalInterpreter v1381370338550 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370337142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v1381370337142 : ¬ MinimalInterpreter v1381370337142 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370326262 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v1381370326262 : ¬ MinimalInterpreter v1381370326262 :=
  cost_cut false 1 (by decide)

private def v1381370277110 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v1381370277110 : ¬ MinimalInterpreter v1381370277110 :=
  cost_cut false 1 (by decide)

private def v1381370324854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 1))))))
private theorem no_v1381370324854 : ¬ MinimalInterpreter v1381370324854 :=
  cost_cut false 1 (by decide)

private def v1381370321782 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 1))))))
private theorem no_v1381370321782 : ¬ MinimalInterpreter v1381370321782 :=
  cost_cut false 1 (by decide)

private def v1381370275702 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v1381370275702 : ¬ MinimalInterpreter v1381370275702 :=
  cost_cut false 1 (by decide)

private def v1381370272630 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v1381370272630 : ¬ MinimalInterpreter v1381370272630 :=
  cost_cut false 1 (by decide)

private def v1381370260342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v1381370260342 : ¬ MinimalInterpreter v1381370260342 :=
  cost_cut false 1 (by decide)

private def v1381375253750 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381375253750 : ¬ MinimalInterpreter v1381375253750 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381375252342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v1381375252342 : ¬ MinimalInterpreter v1381375252342 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381375241462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))))))))
private theorem no_v1381375241462 : ¬ MinimalInterpreter v1381375241462 :=
  cost_cut false 1 (by decide)

private def v1381375240054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)))))))
private theorem no_v1381375240054 : ¬ MinimalInterpreter v1381375240054 :=
  cost_cut false 1 (by decide)

private def v1381375236982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)))))))
private theorem no_v1381375236982 : ¬ MinimalInterpreter v1381375236982 :=
  cost_cut false 1 (by decide)

private def v1381374650230 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 1)))))
private theorem no_v1381374650230 : ¬ MinimalInterpreter v1381374650230 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 1))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1381374647158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.var 1)))))
private theorem no_v1381374647158 : ¬ MinimalInterpreter v1381374647158 :=
  cost_cut false 1 (by decide)

private def v1381394128118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381394128118 : ¬ MinimalInterpreter v1381394128118 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381394126710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v1381394126710 : ¬ MinimalInterpreter v1381394126710 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381394115830 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))))))))
private theorem no_v1381394115830 : ¬ MinimalInterpreter v1381394115830 :=
  cost_cut false 1 (by decide)

private def v1381394114422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)))))))
private theorem no_v1381394114422 : ¬ MinimalInterpreter v1381394114422 :=
  cost_cut false 1 (by decide)

private def v1381394111350 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)))))))
private theorem no_v1381394111350 : ¬ MinimalInterpreter v1381394111350 :=
  cost_cut false 1 (by decide)

theorem four306 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,0,1,2,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,0,1,2,1] = [v1381370535158,v1381370533750,v1381370522870,v1381370521462,v1381370518390,v1381370338550,v1381370337142,v1381370326262,v1381370277110,v1381370324854,v1381370321782,v1381370275702,v1381370272630,v1381370260342,v1381375253750,v1381375252342,v1381375241462,v1381375240054,v1381375236982,v1381374650230,v1381374647158,v1381394128118,v1381394126710,v1381394115830,v1381394114422,v1381394111350] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370535158) (.cons (no_v1381370533750) (.cons (no_v1381370522870) (.cons (no_v1381370521462) (.cons (no_v1381370518390) (.cons (no_v1381370338550) (.cons (no_v1381370337142) (.cons (no_v1381370326262) (.cons (no_v1381370277110) (.cons (no_v1381370324854) (.cons (no_v1381370321782) (.cons (no_v1381370275702) (.cons (no_v1381370272630) (.cons (no_v1381370260342) (.cons (no_v1381375253750) (.cons (no_v1381375252342) (.cons (no_v1381375241462) (.cons (no_v1381375240054) (.cons (no_v1381375236982) (.cons (no_v1381374650230) (.cons (no_v1381374647158) (.cons (no_v1381394128118) (.cons (no_v1381394126710) (.cons (no_v1381394115830) (.cons (no_v1381394114422) (.cons (no_v1381394111350) .nil))))))))))))))))))))))))))

theorem four307 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,0,2,0,2]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
