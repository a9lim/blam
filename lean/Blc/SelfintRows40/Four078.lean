import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400964893942 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1400964893942 : ¬ MinimalInterpreter v1400964893942 :=
  cost_cut false 2 (by decide)

private def v1400964893558 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1400964893558 : ¬ MinimalInterpreter v1400964893558 :=
  cost_cut false 2 (by decide)

private def v1400964838646 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1400964838646 : ¬ MinimalInterpreter v1400964838646 :=
  cost_cut false 2 (by decide)

private def v1400964838262 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1400964838262 : ¬ MinimalInterpreter v1400964838262 :=
  cost_cut false 2 (by decide)

private def v1400964824438 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1400964824438 : ¬ MinimalInterpreter v1400964824438 :=
  cost_cut false 2 (by decide)

private def v1400965640438 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v1400965640438 : ¬ MinimalInterpreter v1400965640438 :=
  chain_cut false 2 (by decide)

private def v1400965639286 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))))
private theorem no_v1400965639286 : ¬ MinimalInterpreter v1400965639286 :=
  chain_cut false 2 (by decide)

private def v1400965419254 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v1400965419254 : ¬ MinimalInterpreter v1400965419254 :=
  chain_cut false 2 (by decide)

private def v1400965418102 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 1))))))
private theorem no_v1400965418102 : ¬ MinimalInterpreter v1400965418102 :=
  chain_cut false 2 (by decide)

private def v1400965362806 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 1))))))
private theorem no_v1400965362806 : ¬ MinimalInterpreter v1400965362806 :=
  chain_cut false 2 (by decide)

theorem four546 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,0,2,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,0,2,1] = [v1400964893942,v1400964893558,v1400964838646,v1400964838262,v1400964824438,v1400965640438,v1400965639286,v1400965419254,v1400965418102,v1400965362806] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964893942) (.cons (no_v1400964893558) (.cons (no_v1400964838646) (.cons (no_v1400964838262) (.cons (no_v1400964824438) (.cons (no_v1400965640438) (.cons (no_v1400965639286) (.cons (no_v1400965419254) (.cons (no_v1400965418102) (.cons (no_v1400965362806) .nil))))))))))

private def v1400964893946 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 3) (.var 0)))))))))
private theorem no_v1400964893946 : ¬ MinimalInterpreter v1400964893946 :=
  chain_cut false 2 (by decide)

private def v1400964893562 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 3)) (.var 0))))))))
private theorem no_v1400964893562 : ¬ MinimalInterpreter v1400964893562 :=
  chain_cut false 2 (by decide)

private def v1400964838650 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 3) (.var 0))))))))
private theorem no_v1400964838650 : ¬ MinimalInterpreter v1400964838650 :=
  chain_cut false 2 (by decide)

private def v1400964838266 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 3))) (.var 0)))))))
private theorem no_v1400964838266 : ¬ MinimalInterpreter v1400964838266 :=
  chain_cut false 2 (by decide)

private def v1400964824442 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 3)) (.var 0)))))))
private theorem no_v1400964824442 : ¬ MinimalInterpreter v1400964824442 :=
  chain_cut false 2 (by decide)

theorem four547 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,0,3,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,0,3,0] = [v1400964893946,v1400964893562,v1400964838650,v1400964838266,v1400964824442] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964893946) (.cons (no_v1400964893562) (.cons (no_v1400964838650) (.cons (no_v1400964838266) (.cons (no_v1400964824442) .nil)))))

private def v1400964894318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400964894318 : ¬ MinimalInterpreter v1400964894318 :=
  cost_cut false 2 (by decide)

private def v1400964893614 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1400964893614 : ¬ MinimalInterpreter v1400964893614 :=
  cost_cut false 2 (by decide)

private def v1400964839022 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1400964839022 : ¬ MinimalInterpreter v1400964839022 :=
  cost_cut false 2 (by decide)

private def v1400964838318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1400964838318 : ¬ MinimalInterpreter v1400964838318 :=
  cost_cut false 2 (by decide)

private def v1400964824494 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1400964824494 : ¬ MinimalInterpreter v1400964824494 :=
  cost_cut false 2 (by decide)

private def v1400965642638 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1400965642638 : ¬ MinimalInterpreter v1400965642638 :=
  chain_cut false 2 (by decide)

private def v1400965639822 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1400965639822 : ¬ MinimalInterpreter v1400965639822 :=
  chain_cut false 2 (by decide)

private def v1400965421454 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1400965421454 : ¬ MinimalInterpreter v1400965421454 :=
  chain_cut false 2 (by decide)

private def v1400965418638 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 2)))))))
private theorem no_v1400965418638 : ¬ MinimalInterpreter v1400965418638 :=
  chain_cut false 2 (by decide)

private def v1400965363342 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1400965363342 : ¬ MinimalInterpreter v1400965363342 :=
  chain_cut false 2 (by decide)

theorem four548 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,1,0,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,1,0,2] = [v1400964894318,v1400964893614,v1400964839022,v1400964838318,v1400964824494,v1400965642638,v1400965639822,v1400965421454,v1400965418638,v1400965363342] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964894318) (.cons (no_v1400964893614) (.cons (no_v1400964839022) (.cons (no_v1400964838318) (.cons (no_v1400964824494) (.cons (no_v1400965642638) (.cons (no_v1400965639822) (.cons (no_v1400965421454) (.cons (no_v1400965418638) (.cons (no_v1400965363342) .nil))))))))))

private def v1400965642358 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 1)))))))))
private theorem no_v1400965642358 : ¬ MinimalInterpreter v1400965642358 :=
  chain_cut false 2 (by decide)

private def v1400965642694 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1400965642694 : ¬ MinimalInterpreter v1400965642694 :=
  chain_cut false 2 (by decide)

private def v1400965639878 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1400965639878 : ¬ MinimalInterpreter v1400965639878 :=
  chain_cut false 2 (by decide)

private def v1400965639734 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1400965639734 : ¬ MinimalInterpreter v1400965639734 :=
  chain_cut false 2 (by decide)

private def v1400965421174 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1))))))))
private theorem no_v1400965421174 : ¬ MinimalInterpreter v1400965421174 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965421510 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1400965421510 : ¬ MinimalInterpreter v1400965421510 :=
  chain_cut false 2 (by decide)

private def v1400965416566 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 1)))))))
private theorem no_v1400965416566 : ¬ MinimalInterpreter v1400965416566 :=
  chain_cut false 2 (by decide)

private def v1400965418694 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1400965418694 : ¬ MinimalInterpreter v1400965418694 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965363398 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1400965363398 : ¬ MinimalInterpreter v1400965363398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965415862 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 1)))) (.var 1))))))
private theorem no_v1400965415862 : ¬ MinimalInterpreter v1400965415862 :=
  chain_cut false 2 (by decide)

private def v1400965418550 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1400965418550 : ¬ MinimalInterpreter v1400965418550 :=
  chain_cut false 2 (by decide)

private def v1400965363254 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 1))))))
private theorem no_v1400965363254 : ¬ MinimalInterpreter v1400965363254 :=
  chain_cut false 2 (by decide)

private def v1400965362102 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 1))))))
private theorem no_v1400965362102 : ¬ MinimalInterpreter v1400965362102 :=
  chain_cut false 2 (by decide)

theorem four549 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,1,1,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,1,1,1] = [v1400965642358,v1400965642694,v1400965639878,v1400965639734,v1400965421174,v1400965421510,v1400965416566,v1400965418694,v1400965363398,v1400965415862,v1400965418550,v1400965363254,v1400965362102] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965642358) (.cons (no_v1400965642694) (.cons (no_v1400965639878) (.cons (no_v1400965639734) (.cons (no_v1400965421174) (.cons (no_v1400965421510) (.cons (no_v1400965416566) (.cons (no_v1400965418694) (.cons (no_v1400965363398) (.cons (no_v1400965415862) (.cons (no_v1400965418550) (.cons (no_v1400965363254) (.cons (no_v1400965362102) .nil)))))))))))))

private def v1400964894330 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400964894330 : ¬ MinimalInterpreter v1400964894330 :=
  cost_cut false 2 (by decide)

private def v1400964893626 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1400964893626 : ¬ MinimalInterpreter v1400964893626 :=
  cost_cut false 2 (by decide)

private def v1400964839034 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1400964839034 : ¬ MinimalInterpreter v1400964839034 :=
  cost_cut false 2 (by decide)

private def v1400964838330 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1400964838330 : ¬ MinimalInterpreter v1400964838330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400964824506 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1400964824506 : ¬ MinimalInterpreter v1400964824506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400965639738 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1400965639738 : ¬ MinimalInterpreter v1400965639738 :=
  chain_cut false 2 (by decide)

private def v1400965415866 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v1400965415866 : ¬ MinimalInterpreter v1400965415866 :=
  chain_cut false 2 (by decide)

private def v1400965418554 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1400965418554 : ¬ MinimalInterpreter v1400965418554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965363258 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0))))))
private theorem no_v1400965363258 : ¬ MinimalInterpreter v1400965363258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four550 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,1,2,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,1,2,0] = [v1400964894330,v1400964893626,v1400964839034,v1400964838330,v1400964824506,v1400965639738,v1400965415866,v1400965418554,v1400965363258] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964894330) (.cons (no_v1400964893626) (.cons (no_v1400964839034) (.cons (no_v1400964838330) (.cons (no_v1400964824506) (.cons (no_v1400965639738) (.cons (no_v1400965415866) (.cons (no_v1400965418554) (.cons (no_v1400965363258) .nil)))))))))

private def v1400964894518 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400964894518 : ¬ MinimalInterpreter v1400964894518 :=
  cost_cut false 2 (by decide)

private def v1400964893654 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1400964893654 : ¬ MinimalInterpreter v1400964893654 :=
  cost_cut false 2 (by decide)

private def v1400964839222 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1400964839222 : ¬ MinimalInterpreter v1400964839222 :=
  cost_cut false 2 (by decide)

private def v1400964838358 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1400964838358 : ¬ MinimalInterpreter v1400964838358 :=
  cost_cut false 2 (by decide)

private def v1400964824534 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1400964824534 : ¬ MinimalInterpreter v1400964824534 :=
  cost_cut false 2 (by decide)

private def v1400965416758 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 1)))))))
private theorem no_v1400965416758 : ¬ MinimalInterpreter v1400965416758 :=
  chain_cut false 2 (by decide)

private def v1400965362134 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 1))))))
private theorem no_v1400965362134 : ¬ MinimalInterpreter v1400965362134 :=
  chain_cut false 2 (by decide)

theorem four551 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,2,0,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,2,0,1] = [v1400964894518,v1400964893654,v1400964839222,v1400964838358,v1400964824534,v1400965416758,v1400965362134] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964894518) (.cons (no_v1400964893654) (.cons (no_v1400964839222) (.cons (no_v1400964838358) (.cons (no_v1400964824534) (.cons (no_v1400965416758) (.cons (no_v1400965362134) .nil)))))))

private def v1400964894522 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400964894522 : ¬ MinimalInterpreter v1400964894522 :=
  cost_cut false 2 (by decide)

private def v1400964893658 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1400964893658 : ¬ MinimalInterpreter v1400964893658 :=
  cost_cut false 2 (by decide)

private def v1400964839226 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1400964839226 : ¬ MinimalInterpreter v1400964839226 :=
  cost_cut false 2 (by decide)

private def v1400964838362 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1400964838362 : ¬ MinimalInterpreter v1400964838362 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400964824538 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1400964824538 : ¬ MinimalInterpreter v1400964824538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))

private def v1400965416762 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 1) (.var 0)))))))
private theorem no_v1400965416762 : ¬ MinimalInterpreter v1400965416762 :=
  chain_cut false 2 (by decide)

private def v1400965415898 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 1)))) (.var 0))))))
private theorem no_v1400965415898 : ¬ MinimalInterpreter v1400965415898 :=
  chain_cut false 2 (by decide)

private def v1400965362138 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0))))))
private theorem no_v1400965362138 : ¬ MinimalInterpreter v1400965362138 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 1)) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four552 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,2,1,0]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [2,2,1,0] = [v1400964894522,v1400964893658,v1400964839226,v1400964838362,v1400964824538,v1400965416762,v1400965415898,v1400965362138] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964894522) (.cons (no_v1400964893658) (.cons (no_v1400964839226) (.cons (no_v1400964838362) (.cons (no_v1400964824538) (.cons (no_v1400965416762) (.cons (no_v1400965415898) (.cons (no_v1400965362138) .nil))))))))

end Blc.SelfintSingleObject.Rows40
