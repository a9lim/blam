import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1382308508570 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1382308508570 : ¬ MinimalInterpreter v1382308508570 :=
  chain_cut false 2 (by decide)

private def v1382308508394 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1382308508394 : ¬ MinimalInterpreter v1382308508394 :=
  chain_cut false 2 (by decide)

private def v1382308478362 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1382308478362 : ¬ MinimalInterpreter v1382308478362 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1382308478186 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1382308478186 : ¬ MinimalInterpreter v1382308478186 :=
  chain_cut false 2 (by decide)

private def v1382308470634 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1382308470634 : ¬ MinimalInterpreter v1382308470634 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

theorem four630 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [3,1,0,0]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [3,1,0,0] = [v1382308508570,v1382308508394,v1382308478362,v1382308478186,v1382308470634] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308508570) (.cons (no_v1382308508394) (.cons (no_v1382308478362) (.cons (no_v1382308478186) (.cons (no_v1382308470634) .nil)))))

theorem four631 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,0,0,4]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,0,0,4] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381368961502 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1381368961502 : ¬ MinimalInterpreter v1381368961502 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1381368960734 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1381368960734 : ¬ MinimalInterpreter v1381368960734 :=
  cost_cut false 1 (by decide)

private def v1381368949214 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3)))))))))
private theorem no_v1381368949214 : ¬ MinimalInterpreter v1381368949214 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1381368948446 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 3))))))))
private theorem no_v1381368948446 : ¬ MinimalInterpreter v1381368948446 :=
  cost_cut false 1 (by decide)

private def v1381368945374 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3))))))))
private theorem no_v1381368945374 : ¬ MinimalInterpreter v1381368945374 :=
  cost_cut false 1 (by decide)

private def v1381369256414 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1381369256414 : ¬ MinimalInterpreter v1381369256414 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1381369255646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1381369255646 : ¬ MinimalInterpreter v1381369255646 :=
  cost_cut false 1 (by decide)

private def v1381369276190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1381369276190 : ¬ MinimalInterpreter v1381369276190 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1381369273118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v1381369273118 : ¬ MinimalInterpreter v1381369273118 :=
  cost_cut false 1 (by decide)

private def v1381369227038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1381369227038 : ¬ MinimalInterpreter v1381369227038 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1381369223966 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 3))))))))
private theorem no_v1381369223966 : ¬ MinimalInterpreter v1381369223966 :=
  cost_cut false 1 (by decide)

private def v1381369211678 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1381369211678 : ¬ MinimalInterpreter v1381369211678 :=
  cost_cut false 1 (by decide)

private def v1381370455838 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1381370455838 : ¬ MinimalInterpreter v1381370455838 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1381370452766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v1381370452766 : ¬ MinimalInterpreter v1381370452766 :=
  cost_cut false 1 (by decide)

private def v1381375154654 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1381375154654 : ¬ MinimalInterpreter v1381375154654 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1381375153886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1381375153886 : ¬ MinimalInterpreter v1381375153886 :=
  cost_cut false 1 (by decide)

private def v1381375174430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1381375174430 : ¬ MinimalInterpreter v1381375174430 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))))

private def v1381375171358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v1381375171358 : ¬ MinimalInterpreter v1381375171358 :=
  cost_cut false 1 (by decide)

theorem four632 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,0,1,3]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,0,1,3] = [v1381368961502,v1381368960734,v1381368949214,v1381368948446,v1381368945374,v1381369256414,v1381369255646,v1381369276190,v1381369273118,v1381369227038,v1381369223966,v1381369211678,v1381370455838,v1381370452766,v1381375154654,v1381375153886,v1381375174430,v1381375171358] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368961502) (.cons (no_v1381368960734) (.cons (no_v1381368949214) (.cons (no_v1381368948446) (.cons (no_v1381368945374) (.cons (no_v1381369256414) (.cons (no_v1381369255646) (.cons (no_v1381369276190) (.cons (no_v1381369273118) (.cons (no_v1381369227038) (.cons (no_v1381369223966) (.cons (no_v1381369211678) (.cons (no_v1381370455838) (.cons (no_v1381370452766) (.cons (no_v1381375154654) (.cons (no_v1381375153886) (.cons (no_v1381375174430) (.cons (no_v1381375171358) .nil))))))))))))))))))

private def v1381369276302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1381369276302 : ¬ MinimalInterpreter v1381369276302 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369273230 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v1381369273230 : ¬ MinimalInterpreter v1381369273230 :=
  cost_cut false 1 (by decide)

private def v1381369272558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
private theorem no_v1381369272558 : ¬ MinimalInterpreter v1381369272558 :=
  cost_cut false 1 (by decide)

private def v1381369227150 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1381369227150 : ¬ MinimalInterpreter v1381369227150 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1381369224078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 2))))))))
private theorem no_v1381369224078 : ¬ MinimalInterpreter v1381369224078 :=
  cost_cut false 1 (by decide)

private def v1381369211790 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1381369211790 : ¬ MinimalInterpreter v1381369211790 :=
  cost_cut false 1 (by decide)

private def v1381369223406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2)))))))
private theorem no_v1381369223406 : ¬ MinimalInterpreter v1381369223406 :=
  cost_cut false 1 (by decide)

private def v1381369211118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1381369211118 : ¬ MinimalInterpreter v1381369211118 :=
  cost_cut false 1 (by decide)

private def v1381370455950 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1381370455950 : ¬ MinimalInterpreter v1381370455950 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1381370452878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v1381370452878 : ¬ MinimalInterpreter v1381370452878 :=
  cost_cut false 1 (by decide)

private def v1381370452206 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
private theorem no_v1381370452206 : ¬ MinimalInterpreter v1381370452206 :=
  cost_cut false 1 (by decide)

private def v1381375174542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1381375174542 : ¬ MinimalInterpreter v1381375174542 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1381375171470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v1381375171470 : ¬ MinimalInterpreter v1381375171470 :=
  cost_cut false 1 (by decide)

private def v1381375170798 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
private theorem no_v1381375170798 : ¬ MinimalInterpreter v1381375170798 :=
  cost_cut false 1 (by decide)

theorem four633 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,0,2,2]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,0,2,2] = [v1381369276302,v1381369273230,v1381369272558,v1381369227150,v1381369224078,v1381369211790,v1381369223406,v1381369211118,v1381370455950,v1381370452878,v1381370452206,v1381375174542,v1381375171470,v1381375170798] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381369276302) (.cons (no_v1381369273230) (.cons (no_v1381369272558) (.cons (no_v1381369227150) (.cons (no_v1381369224078) (.cons (no_v1381369211790) (.cons (no_v1381369223406) (.cons (no_v1381369211118) (.cons (no_v1381370455950) (.cons (no_v1381370452878) (.cons (no_v1381370452206) (.cons (no_v1381375174542) (.cons (no_v1381375171470) (.cons (no_v1381375170798) .nil))))))))))))))

private def v1381368961526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1381368961526 : ¬ MinimalInterpreter v1381368961526 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1381368960758 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1381368960758 : ¬ MinimalInterpreter v1381368960758 :=
  cost_cut false 1 (by decide)

private def v1381368949238 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1)))))))))
private theorem no_v1381368949238 : ¬ MinimalInterpreter v1381368949238 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1381368948470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 1))))))))
private theorem no_v1381368948470 : ¬ MinimalInterpreter v1381368948470 :=
  cost_cut false 1 (by decide)

private def v1381368945398 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1))))))))
private theorem no_v1381368945398 : ¬ MinimalInterpreter v1381368945398 :=
  cost_cut false 1 (by decide)

private def v1381369256438 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1381369256438 : ¬ MinimalInterpreter v1381369256438 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1381369255670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1381369255670 : ¬ MinimalInterpreter v1381369255670 :=
  cost_cut false 1 (by decide)

private def v1381369272566 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
private theorem no_v1381369272566 : ¬ MinimalInterpreter v1381369272566 :=
  cost_cut false 1 (by decide)

private def v1381369223414 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 1)))))))
private theorem no_v1381369223414 : ¬ MinimalInterpreter v1381369223414 :=
  cost_cut false 1 (by decide)

private def v1381369211126 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1381369211126 : ¬ MinimalInterpreter v1381369211126 :=
  cost_cut false 1 (by decide)

private def v1381370452214 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
private theorem no_v1381370452214 : ¬ MinimalInterpreter v1381370452214 :=
  cost_cut false 1 (by decide)

private def v1381375154678 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1381375154678 : ¬ MinimalInterpreter v1381375154678 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1381375153910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1381375153910 : ¬ MinimalInterpreter v1381375153910 :=
  cost_cut false 1 (by decide)

private def v1381375170806 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
private theorem no_v1381375170806 : ¬ MinimalInterpreter v1381375170806 :=
  cost_cut false 1 (by decide)

theorem four634 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,0,3,1]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,0,3,1] = [v1381368961526,v1381368960758,v1381368949238,v1381368948470,v1381368945398,v1381369256438,v1381369255670,v1381369272566,v1381369223414,v1381369211126,v1381370452214,v1381375154678,v1381375153910,v1381375170806] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368961526) (.cons (no_v1381368960758) (.cons (no_v1381368949238) (.cons (no_v1381368948470) (.cons (no_v1381368945398) (.cons (no_v1381369256438) (.cons (no_v1381369255670) (.cons (no_v1381369272566) (.cons (no_v1381369223414) (.cons (no_v1381369211126) (.cons (no_v1381370452214) (.cons (no_v1381375154678) (.cons (no_v1381375153910) (.cons (no_v1381375170806) .nil))))))))))))))

theorem four635 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,0,4,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381368962270 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1381368962270 : ¬ MinimalInterpreter v1381368962270 :=
  cost_cut false 1 (by decide)

private def v1381368960862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1381368960862 : ¬ MinimalInterpreter v1381368960862 :=
  cost_cut false 1 (by decide)

private def v1381368949982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 3)))))))))
private theorem no_v1381368949982 : ¬ MinimalInterpreter v1381368949982 :=
  cost_cut false 1 (by decide)

private def v1381368948574 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 3))))))))
private theorem no_v1381368948574 : ¬ MinimalInterpreter v1381368948574 :=
  cost_cut false 1 (by decide)

private def v1381368945502 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 3))))))))
private theorem no_v1381368945502 : ¬ MinimalInterpreter v1381368945502 :=
  cost_cut false 1 (by decide)

private def v1381369257182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1381369257182 : ¬ MinimalInterpreter v1381369257182 :=
  cost_cut false 1 (by decide)

private def v1381369255774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1381369255774 : ¬ MinimalInterpreter v1381369255774 :=
  cost_cut false 1 (by decide)

private def v1381369279262 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1381369279262 : ¬ MinimalInterpreter v1381369279262 :=
  cost_cut false 1 (by decide)

private def v1381369273630 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1381369273630 : ¬ MinimalInterpreter v1381369273630 :=
  cost_cut false 1 (by decide)

private def v1381369230110 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1381369230110 : ¬ MinimalInterpreter v1381369230110 :=
  cost_cut false 1 (by decide)

private def v1381369224478 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 3))))))))
private theorem no_v1381369224478 : ¬ MinimalInterpreter v1381369224478 :=
  cost_cut false 1 (by decide)

private def v1381369212190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1381369212190 : ¬ MinimalInterpreter v1381369212190 :=
  cost_cut false 1 (by decide)

private def v1381370458910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1381370458910 : ¬ MinimalInterpreter v1381370458910 :=
  cost_cut false 1 (by decide)

private def v1381370453278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1381370453278 : ¬ MinimalInterpreter v1381370453278 :=
  cost_cut false 1 (by decide)

private def v1381375155422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1381375155422 : ¬ MinimalInterpreter v1381375155422 :=
  cost_cut false 1 (by decide)

private def v1381375154014 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1381375154014 : ¬ MinimalInterpreter v1381375154014 :=
  cost_cut false 1 (by decide)

private def v1381375177502 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1381375177502 : ¬ MinimalInterpreter v1381375177502 :=
  cost_cut false 1 (by decide)

private def v1381375171870 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1381375171870 : ¬ MinimalInterpreter v1381375171870 :=
  cost_cut false 1 (by decide)

theorem four636 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,1,0,3]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,1,0,3] = [v1381368962270,v1381368960862,v1381368949982,v1381368948574,v1381368945502,v1381369257182,v1381369255774,v1381369279262,v1381369273630,v1381369230110,v1381369224478,v1381369212190,v1381370458910,v1381370453278,v1381375155422,v1381375154014,v1381375177502,v1381375171870] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368962270) (.cons (no_v1381368960862) (.cons (no_v1381368949982) (.cons (no_v1381368948574) (.cons (no_v1381368945502) (.cons (no_v1381369257182) (.cons (no_v1381369255774) (.cons (no_v1381369279262) (.cons (no_v1381369273630) (.cons (no_v1381369230110) (.cons (no_v1381369224478) (.cons (no_v1381369212190) (.cons (no_v1381370458910) (.cons (no_v1381370453278) (.cons (no_v1381375155422) (.cons (no_v1381375154014) (.cons (no_v1381375177502) (.cons (no_v1381375171870) .nil))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
