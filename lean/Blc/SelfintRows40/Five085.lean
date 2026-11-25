import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402313575674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402313575674 : ¬ MinimalInterpreter v1402313575674 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 3) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 3) (.var 0))) (.var 2) (by decide) (by decide)))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402313575290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))))))
private theorem no_v1402313575290 : ¬ MinimalInterpreter v1402313575290 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2) (by decide) (by decide)))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402313584890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.var 0))))))))))
private theorem no_v1402313584890 : ¬ MinimalInterpreter v1402313584890 :=
  chain_cut false 2 (by decide)

private def v1402313494778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.var 0)))))))))
private theorem no_v1402313494778 : ¬ MinimalInterpreter v1402313494778 :=
  chain_cut false 2 (by decide)

private def v1402313491322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 3)))) (.var 0)))))))
private theorem no_v1402313491322 : ¬ MinimalInterpreter v1402313491322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.var 1)))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 3)) (.var 2) (by decide) (by decide))) (.var 0))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402312789242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402312789242 : ¬ MinimalInterpreter v1402312789242 :=
  chain_cut false 2 (by decide)

private def v1402312788858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))))))
private theorem no_v1402312788858 : ¬ MinimalInterpreter v1402312788858 :=
  chain_cut false 2 (by decide)

private def v1402312798458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.app (.var 3) (.var 0)))))))))
private theorem no_v1402312798458 : ¬ MinimalInterpreter v1402312798458 :=
  chain_cut false 2 (by decide)

private def v1402312708346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.app (.var 3) (.var 0))))))))
private theorem no_v1402312708346 : ¬ MinimalInterpreter v1402312708346 :=
  chain_cut false 2 (by decide)

private def v1402312511738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.app (.var 3) (.var 0))))))))
private theorem no_v1402312511738 : ¬ MinimalInterpreter v1402312511738 :=
  chain_cut false 2 (by decide)

private def v1402312704890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 3))))) (.var 0))))))
private theorem no_v1402312704890 : ¬ MinimalInterpreter v1402312704890 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 3))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.var 1)))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 3)) (.var 2) (by decide) (by decide)))) (.var 0)) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402312508282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 3)))) (.var 0))))))
private theorem no_v1402312508282 : ¬ MinimalInterpreter v1402312508282 :=
  chain_cut false 2 (by decide)

private def v1402332105978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402332105978 : ¬ MinimalInterpreter v1402332105978 :=
  chain_cut false 2 (by decide)

private def v1402332105594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 0)))))))))
private theorem no_v1402332105594 : ¬ MinimalInterpreter v1402332105594 :=
  chain_cut false 2 (by decide)

private def v1402332083450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402332083450 : ¬ MinimalInterpreter v1402332083450 :=
  chain_cut false 2 (by decide)

private def v1402332083066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0))))))))
private theorem no_v1402332083066 : ¬ MinimalInterpreter v1402332083066 :=
  chain_cut false 2 (by decide)

private def v1402332077434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 0))))))))
private theorem no_v1402332077434 : ¬ MinimalInterpreter v1402332077434 :=
  chain_cut false 2 (by decide)

private def v1402332459258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.var 0))))))))))
private theorem no_v1402332459258 : ¬ MinimalInterpreter v1402332459258 :=
  chain_cut false 2 (by decide)

private def v1402332369146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.var 0)))))))))
private theorem no_v1402332369146 : ¬ MinimalInterpreter v1402332369146 :=
  chain_cut false 2 (by decide)

private def v1402332365690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 3)))) (.var 0)))))))
private theorem no_v1402332365690 : ¬ MinimalInterpreter v1402332365690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 3)) (.var 2) (by decide) (by decide))) (.var 0)) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide))) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402329920378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))) (.var 0)))))
private theorem no_v1402329920378 : ¬ MinimalInterpreter v1402329920378 :=
  chain_cut false 2 (by decide)

private def v1402329914746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.var 0)))))
private theorem no_v1402329914746 : ¬ MinimalInterpreter v1402329914746 :=
  chain_cut false 2 (by decide)

private def v1402407956730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.var 0))))))))))
private theorem no_v1402407956730 : ¬ MinimalInterpreter v1402407956730 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407866618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.var 0)))))))))
private theorem no_v1402407866618 : ¬ MinimalInterpreter v1402407866618 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407863162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 3)))) (.var 0)))))))
private theorem no_v1402407863162 : ¬ MinimalInterpreter v1402407863162 :=
  w_cut false 0 (by decide)

theorem five680 : BadRow (bucket false 4 3 5 [0,1,0,3,0]) := by
  have h : bucket false 4 3 5 [0,1,0,3,0] = [v1402313575674,v1402313575290,v1402313584890,v1402313494778,v1402313491322,v1402312789242,v1402312788858,v1402312798458,v1402312708346,v1402312511738,v1402312704890,v1402312508282,v1402332105978,v1402332105594,v1402332083450,v1402332083066,v1402332077434,v1402332459258,v1402332369146,v1402332365690,v1402329920378,v1402329914746,v1402407956730,v1402407866618,v1402407863162] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313575674) (.cons (no_v1402313575290) (.cons (no_v1402313584890) (.cons (no_v1402313494778) (.cons (no_v1402313491322) (.cons (no_v1402312789242) (.cons (no_v1402312788858) (.cons (no_v1402312798458) (.cons (no_v1402312708346) (.cons (no_v1402312511738) (.cons (no_v1402312704890) (.cons (no_v1402312508282) (.cons (no_v1402332105978) (.cons (no_v1402332105594) (.cons (no_v1402332083450) (.cons (no_v1402332083066) (.cons (no_v1402332077434) (.cons (no_v1402332459258) (.cons (no_v1402332369146) (.cons (no_v1402332365690) (.cons (no_v1402329920378) (.cons (no_v1402329914746) (.cons (no_v1402407956730) (.cons (no_v1402407866618) (.cons (no_v1402407863162) .nil)))))))))))))))))))))))))

theorem five681 : BadRow (bucket true 4 3 5 [0,1,0,3,0]) := by
  have h : bucket true 4 3 5 [0,1,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313584174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))))))
private theorem no_v1402313584174 : ¬ MinimalInterpreter v1402313584174 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2)))) (.app (.var 0) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313491374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.var 2)))))))
private theorem no_v1402313491374 : ¬ MinimalInterpreter v1402313491374 :=
  chain_cut false 2 (by decide)

private def v1402313494062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 2)))))))
private theorem no_v1402313494062 : ¬ MinimalInterpreter v1402313494062 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 2))) (.app (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313471534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2)))))))
private theorem no_v1402313471534 : ¬ MinimalInterpreter v1402313471534 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2))))) (.lam (r := (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.var 2))) (.app (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312797742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))))
private theorem no_v1402312797742 : ¬ MinimalInterpreter v1402312797742 :=
  chain_cut false 2 (by decide)

private def v1402312704942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (.var 2))))))
private theorem no_v1402312704942 : ¬ MinimalInterpreter v1402312704942 :=
  chain_cut false 2 (by decide)

private def v1402312707630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 2))))))
private theorem no_v1402312707630 : ¬ MinimalInterpreter v1402312707630 :=
  chain_cut false 2 (by decide)

private def v1402312685102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 2))))))
private theorem no_v1402312685102 : ¬ MinimalInterpreter v1402312685102 :=
  chain_cut false 2 (by decide)

private def v1402312508334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 0)))) (.var 2))))))
private theorem no_v1402312508334 : ¬ MinimalInterpreter v1402312508334 :=
  chain_cut false 2 (by decide)

private def v1402312511022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 2))))))
private theorem no_v1402312511022 : ¬ MinimalInterpreter v1402312511022 :=
  chain_cut false 2 (by decide)

private def v1402312488494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 2))))))
private theorem no_v1402312488494 : ¬ MinimalInterpreter v1402312488494 :=
  chain_cut false 2 (by decide)

private def v1402312439342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 2))))))
private theorem no_v1402312439342 : ¬ MinimalInterpreter v1402312439342 :=
  chain_cut false 2 (by decide)

private def v1402332365742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.var 2)))))))
private theorem no_v1402332365742 : ¬ MinimalInterpreter v1402332365742 :=
  chain_cut false 2 (by decide)

private def v1402333826670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402333826670 : ¬ MinimalInterpreter v1402333826670 :=
  chain_cut false 2 (by decide)

private def v1402333825966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1402333825966 : ¬ MinimalInterpreter v1402333825966 :=
  chain_cut false 2 (by decide)

private def v1402330680942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402330680942 : ¬ MinimalInterpreter v1402330680942 :=
  chain_cut false 2 (by decide)

private def v1402330680238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1402330680238 : ¬ MinimalInterpreter v1402330680238 :=
  chain_cut false 2 (by decide)

private def v1402407603822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402407603822 : ¬ MinimalInterpreter v1402407603822 :=
  chain_cut false 4 (by decide)

private def v1402407603118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1402407603118 : ¬ MinimalInterpreter v1402407603118 :=
  chain_cut false 4 (by decide)

private def v1402407581294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402407581294 : ¬ MinimalInterpreter v1402407581294 :=
  chain_cut false 4 (by decide)

private def v1402407580590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v1402407580590 : ¬ MinimalInterpreter v1402407580590 :=
  chain_cut false 4 (by decide)

private def v1402407574958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v1402407574958 : ¬ MinimalInterpreter v1402407574958 :=
  chain_cut false 4 (by decide)

private def v1402407947886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402407947886 : ¬ MinimalInterpreter v1402407947886 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407947182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1402407947182 : ¬ MinimalInterpreter v1402407947182 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407863214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.var 2)))))))
private theorem no_v1402407863214 : ¬ MinimalInterpreter v1402407863214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402409324142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402409324142 : ¬ MinimalInterpreter v1402409324142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402409323438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1402409323438 : ¬ MinimalInterpreter v1402409323438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

theorem five682 : BadRow (bucket false 4 3 5 [0,1,1,0,2]) := by
  have h : bucket false 4 3 5 [0,1,1,0,2] = [v1402313584174,v1402313491374,v1402313494062,v1402313471534,v1402312797742,v1402312704942,v1402312707630,v1402312685102,v1402312508334,v1402312511022,v1402312488494,v1402312439342,v1402332365742,v1402333826670,v1402333825966,v1402330680942,v1402330680238,v1402407603822,v1402407603118,v1402407581294,v1402407580590,v1402407574958,v1402407947886,v1402407947182,v1402407863214,v1402409324142,v1402409323438] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313584174) (.cons (no_v1402313491374) (.cons (no_v1402313494062) (.cons (no_v1402313471534) (.cons (no_v1402312797742) (.cons (no_v1402312704942) (.cons (no_v1402312707630) (.cons (no_v1402312685102) (.cons (no_v1402312508334) (.cons (no_v1402312511022) (.cons (no_v1402312488494) (.cons (no_v1402312439342) (.cons (no_v1402332365742) (.cons (no_v1402333826670) (.cons (no_v1402333825966) (.cons (no_v1402330680942) (.cons (no_v1402330680238) (.cons (no_v1402407603822) (.cons (no_v1402407603118) (.cons (no_v1402407581294) (.cons (no_v1402407580590) (.cons (no_v1402407574958) (.cons (no_v1402407947886) (.cons (no_v1402407947182) (.cons (no_v1402407863214) (.cons (no_v1402409324142) (.cons (no_v1402409323438) .nil)))))))))))))))))))))))))))

theorem five683 : BadRow (bucket true 4 3 5 [0,1,1,0,2]) := by
  have h : bucket true 4 3 5 [0,1,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five684 : BadRow (bucket false 4 3 5 [0,1,1,1,1]) := by
  have h : bucket false 4 3 5 [0,1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five685 : BadRow (bucket true 4 3 5 [0,1,1,1,1]) := by
  have h : bucket true 4 3 5 [0,1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313587170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))))))
private theorem no_v1402313587170 : ¬ MinimalInterpreter v1402313587170 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0))))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))

private def v1402313584354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))))
private theorem no_v1402313584354 : ¬ MinimalInterpreter v1402313584354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))) (.lam (r := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313497058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v1402313497058 : ¬ MinimalInterpreter v1402313497058 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (so_closed_lam (by decide) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))

private def v1402313494242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 0))))))))
private theorem no_v1402313494242 : ¬ MinimalInterpreter v1402313494242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 0)))))) (.lam (r := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313471714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0))))))))
private theorem no_v1402313471714 : ¬ MinimalInterpreter v1402313471714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0)))))) (.lam (r := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312800738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v1402312800738 : ¬ MinimalInterpreter v1402312800738 :=
  chain_cut false 2 (by decide)

private def v1402312797922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))))
private theorem no_v1402312797922 : ¬ MinimalInterpreter v1402312797922 :=
  chain_cut false 2 (by decide)

private def v1402312710626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 2) (.lam (.var 0))))))))
private theorem no_v1402312710626 : ¬ MinimalInterpreter v1402312710626 :=
  chain_cut false 2 (by decide)

private def v1402312514018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 2) (.lam (.var 0))))))))
private theorem no_v1402312514018 : ¬ MinimalInterpreter v1402312514018 :=
  chain_cut false 2 (by decide)

private def v1402312707810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.lam (.var 0)))))))
private theorem no_v1402312707810 : ¬ MinimalInterpreter v1402312707810 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.lam (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312685282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.lam (.var 0)))))))
private theorem no_v1402312685282 : ¬ MinimalInterpreter v1402312685282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.lam (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (so_closed_lam (by decide) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312511202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))) (.lam (.var 0)))))))
private theorem no_v1402312511202 : ¬ MinimalInterpreter v1402312511202 :=
  chain_cut false 2 (by decide)

private def v1402312488674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)) (.lam (.var 0)))))))
private theorem no_v1402312488674 : ¬ MinimalInterpreter v1402312488674 :=
  chain_cut false 2 (by decide)

private def v1402312439522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)) (.lam (.var 0)))))))
private theorem no_v1402312439522 : ¬ MinimalInterpreter v1402312439522 :=
  chain_cut false 2 (by decide)

private def v1402333826682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402333826682 : ¬ MinimalInterpreter v1402333826682 :=
  chain_cut false 2 (by decide)

private def v1402333825978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1402333825978 : ¬ MinimalInterpreter v1402333825978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402330680954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402330680954 : ¬ MinimalInterpreter v1402330680954 :=
  chain_cut false 2 (by decide)

private def v1402330680250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1402330680250 : ¬ MinimalInterpreter v1402330680250 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402407603834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402407603834 : ¬ MinimalInterpreter v1402407603834 :=
  chain_cut false 4 (by decide)

private def v1402407603130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1402407603130 : ¬ MinimalInterpreter v1402407603130 :=
  chain_cut false 4 (by decide)

private def v1402407581306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402407581306 : ¬ MinimalInterpreter v1402407581306 :=
  chain_cut false 4 (by decide)

private def v1402407580602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v1402407580602 : ¬ MinimalInterpreter v1402407580602 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402407574970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v1402407574970 : ¬ MinimalInterpreter v1402407574970 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402407947898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402407947898 : ¬ MinimalInterpreter v1402407947898 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407947194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1402407947194 : ¬ MinimalInterpreter v1402407947194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1402409324154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402409324154 : ¬ MinimalInterpreter v1402409324154 :=
  chain_cut false 12 (by decide)

private def v1402409323450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1402409323450 : ¬ MinimalInterpreter v1402409323450 :=
  w_cut false 0 (by decide)

theorem five686 : BadRow (bucket false 4 3 5 [0,1,1,2,0]) := by
  have h : bucket false 4 3 5 [0,1,1,2,0] = [v1402313587170,v1402313584354,v1402313497058,v1402313494242,v1402313471714,v1402312800738,v1402312797922,v1402312710626,v1402312514018,v1402312707810,v1402312685282,v1402312511202,v1402312488674,v1402312439522,v1402333826682,v1402333825978,v1402330680954,v1402330680250,v1402407603834,v1402407603130,v1402407581306,v1402407580602,v1402407574970,v1402407947898,v1402407947194,v1402409324154,v1402409323450] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313587170) (.cons (no_v1402313584354) (.cons (no_v1402313497058) (.cons (no_v1402313494242) (.cons (no_v1402313471714) (.cons (no_v1402312800738) (.cons (no_v1402312797922) (.cons (no_v1402312710626) (.cons (no_v1402312514018) (.cons (no_v1402312707810) (.cons (no_v1402312685282) (.cons (no_v1402312511202) (.cons (no_v1402312488674) (.cons (no_v1402312439522) (.cons (no_v1402333826682) (.cons (no_v1402333825978) (.cons (no_v1402330680954) (.cons (no_v1402330680250) (.cons (no_v1402407603834) (.cons (no_v1402407603130) (.cons (no_v1402407581306) (.cons (no_v1402407580602) (.cons (no_v1402407574970) (.cons (no_v1402407947898) (.cons (no_v1402407947194) (.cons (no_v1402409324154) (.cons (no_v1402409323450) .nil)))))))))))))))))))))))))))

theorem five687 : BadRow (bucket true 4 3 5 [0,1,1,2,0]) := by
  have h : bucket true 4 3 5 [0,1,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
