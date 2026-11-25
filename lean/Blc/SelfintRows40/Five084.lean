import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five672 : BadRow (bucket false 4 3 5 [0,0,4,0,0]) := by
  have h : bucket false 4 3 5 [0,0,4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five673 : BadRow (bucket true 4 3 5 [0,0,4,0,0]) := by
  have h : bucket true 4 3 5 [0,0,4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313575646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402313575646 : ¬ MinimalInterpreter v1402313575646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2) (by decide) (by decide)))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402313575262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))))))
private theorem no_v1402313575262 : ¬ MinimalInterpreter v1402313575262 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 2) (by decide) (by decide)))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402313584862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 3))))))))))
private theorem no_v1402313584862 : ¬ MinimalInterpreter v1402313584862 :=
  chain_cut false 2 (by decide)

private def v1402313494750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 3)))))))))
private theorem no_v1402313494750 : ¬ MinimalInterpreter v1402313494750 :=
  chain_cut false 2 (by decide)

private def v1402312789214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402312789214 : ¬ MinimalInterpreter v1402312789214 :=
  chain_cut false 2 (by decide)

private def v1402312788830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))))
private theorem no_v1402312788830 : ¬ MinimalInterpreter v1402312788830 :=
  chain_cut false 2 (by decide)

private def v1402312798430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 3)))))))))
private theorem no_v1402312798430 : ¬ MinimalInterpreter v1402312798430 :=
  chain_cut false 2 (by decide)

private def v1402312708318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 3))))))))
private theorem no_v1402312708318 : ¬ MinimalInterpreter v1402312708318 :=
  chain_cut false 2 (by decide)

private def v1402312511710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 3))))))))
private theorem no_v1402312511710 : ¬ MinimalInterpreter v1402312511710 :=
  chain_cut false 2 (by decide)

private def v1402332105950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402332105950 : ¬ MinimalInterpreter v1402332105950 :=
  chain_cut false 2 (by decide)

private def v1402332105566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 3)))))))))
private theorem no_v1402332105566 : ¬ MinimalInterpreter v1402332105566 :=
  chain_cut false 2 (by decide)

private def v1402332083422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402332083422 : ¬ MinimalInterpreter v1402332083422 :=
  chain_cut false 2 (by decide)

private def v1402332083038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 3))))))))
private theorem no_v1402332083038 : ¬ MinimalInterpreter v1402332083038 :=
  chain_cut false 2 (by decide)

private def v1402332077406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 3))))))))
private theorem no_v1402332077406 : ¬ MinimalInterpreter v1402332077406 :=
  chain_cut false 2 (by decide)

private def v1402332459230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 3))))))))))
private theorem no_v1402332459230 : ¬ MinimalInterpreter v1402332459230 :=
  chain_cut false 2 (by decide)

private def v1402332369118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 3)))))))))
private theorem no_v1402332369118 : ¬ MinimalInterpreter v1402332369118 :=
  chain_cut false 2 (by decide)

private def v1402407956702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 3))))))))))
private theorem no_v1402407956702 : ¬ MinimalInterpreter v1402407956702 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407866590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 3)))))))))
private theorem no_v1402407866590 : ¬ MinimalInterpreter v1402407866590 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem five674 : BadRow (bucket false 4 3 5 [0,1,0,0,3]) := by
  have h : bucket false 4 3 5 [0,1,0,0,3] = [v1402313575646,v1402313575262,v1402313584862,v1402313494750,v1402312789214,v1402312788830,v1402312798430,v1402312708318,v1402312511710,v1402332105950,v1402332105566,v1402332083422,v1402332083038,v1402332077406,v1402332459230,v1402332369118,v1402407956702,v1402407866590] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313575646) (.cons (no_v1402313575262) (.cons (no_v1402313584862) (.cons (no_v1402313494750) (.cons (no_v1402312789214) (.cons (no_v1402312788830) (.cons (no_v1402312798430) (.cons (no_v1402312708318) (.cons (no_v1402312511710) (.cons (no_v1402332105950) (.cons (no_v1402332105566) (.cons (no_v1402332083422) (.cons (no_v1402332083038) (.cons (no_v1402332077406) (.cons (no_v1402332459230) (.cons (no_v1402332369118) (.cons (no_v1402407956702) (.cons (no_v1402407866590) .nil))))))))))))))))))

theorem five675 : BadRow (bucket true 4 3 5 [0,1,0,0,3]) := by
  have h : bucket true 4 3 5 [0,1,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313491694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 2))))))))
private theorem no_v1402313491694 : ¬ MinimalInterpreter v1402313491694 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 2)))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313491310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))))
private theorem no_v1402313491310 : ¬ MinimalInterpreter v1402313491310 :=
  chain_cut false 2 (by decide)

private def v1402313470318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 2)))))))
private theorem no_v1402313470318 : ¬ MinimalInterpreter v1402313470318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.var 2))) (.app (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402311439598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402311439598 : ¬ MinimalInterpreter v1402311439598 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 1))) (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402311390446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402311390446 : ¬ MinimalInterpreter v1402311390446 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 1))) (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312619246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312619246 : ¬ MinimalInterpreter v1402312619246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312705262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312705262 : ¬ MinimalInterpreter v1402312705262 :=
  chain_cut false 2 (by decide)

private def v1402312508654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312508654 : ¬ MinimalInterpreter v1402312508654 :=
  chain_cut false 2 (by decide)

private def v1402312704878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (.var 2))))))
private theorem no_v1402312704878 : ¬ MinimalInterpreter v1402312704878 :=
  chain_cut false 2 (by decide)

private def v1402312683886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 2))))))
private theorem no_v1402312683886 : ¬ MinimalInterpreter v1402312683886 :=
  chain_cut false 2 (by decide)

private def v1402312508270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v1402312508270 : ¬ MinimalInterpreter v1402312508270 :=
  chain_cut false 2 (by decide)

private def v1402312465774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))))))
private theorem no_v1402312465774 : ¬ MinimalInterpreter v1402312465774 :=
  chain_cut false 2 (by decide)

private def v1402312487278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 2))))))
private theorem no_v1402312487278 : ¬ MinimalInterpreter v1402312487278 :=
  chain_cut false 2 (by decide)

private def v1402312438126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v1402312438126 : ¬ MinimalInterpreter v1402312438126 :=
  chain_cut false 2 (by decide)

private def v1402332365678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))))
private theorem no_v1402332365678 : ¬ MinimalInterpreter v1402332365678 :=
  chain_cut false 2 (by decide)

private def v1402333826286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402333826286 : ¬ MinimalInterpreter v1402333826286 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402333825902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1402333825902 : ¬ MinimalInterpreter v1402333825902 :=
  chain_cut false 2 (by decide)

private def v1402330680558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402330680558 : ¬ MinimalInterpreter v1402330680558 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402330680174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1402330680174 : ¬ MinimalInterpreter v1402330680174 :=
  chain_cut false 2 (by decide)

private def v1402407603438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402407603438 : ¬ MinimalInterpreter v1402407603438 :=
  chain_cut false 4 (by decide)

private def v1402407603054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1402407603054 : ¬ MinimalInterpreter v1402407603054 :=
  chain_cut false 4 (by decide)

private def v1402407580910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402407580910 : ¬ MinimalInterpreter v1402407580910 :=
  chain_cut false 4 (by decide)

private def v1402407580526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v1402407580526 : ¬ MinimalInterpreter v1402407580526 :=
  chain_cut false 4 (by decide)

private def v1402407574894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v1402407574894 : ¬ MinimalInterpreter v1402407574894 :=
  chain_cut false 4 (by decide)

private def v1402407947502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402407947502 : ¬ MinimalInterpreter v1402407947502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1402407947118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1402407947118 : ¬ MinimalInterpreter v1402407947118 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407863150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.var 2)))))))
private theorem no_v1402407863150 : ¬ MinimalInterpreter v1402407863150 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402409323758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402409323758 : ¬ MinimalInterpreter v1402409323758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402409323374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1402409323374 : ¬ MinimalInterpreter v1402409323374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem five676 : BadRow (bucket false 4 3 5 [0,1,0,1,2]) := by
  have h : bucket false 4 3 5 [0,1,0,1,2] = [v1402313491694,v1402313491310,v1402313470318,v1402311439598,v1402311390446,v1402312619246,v1402312705262,v1402312508654,v1402312704878,v1402312683886,v1402312508270,v1402312465774,v1402312487278,v1402312438126,v1402332365678,v1402333826286,v1402333825902,v1402330680558,v1402330680174,v1402407603438,v1402407603054,v1402407580910,v1402407580526,v1402407574894,v1402407947502,v1402407947118,v1402407863150,v1402409323758,v1402409323374] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313491694) (.cons (no_v1402313491310) (.cons (no_v1402313470318) (.cons (no_v1402311439598) (.cons (no_v1402311390446) (.cons (no_v1402312619246) (.cons (no_v1402312705262) (.cons (no_v1402312508654) (.cons (no_v1402312704878) (.cons (no_v1402312683886) (.cons (no_v1402312508270) (.cons (no_v1402312465774) (.cons (no_v1402312487278) (.cons (no_v1402312438126) (.cons (no_v1402332365678) (.cons (no_v1402333826286) (.cons (no_v1402333825902) (.cons (no_v1402330680558) (.cons (no_v1402330680174) (.cons (no_v1402407603438) (.cons (no_v1402407603054) (.cons (no_v1402407580910) (.cons (no_v1402407580526) (.cons (no_v1402407574894) (.cons (no_v1402407947502) (.cons (no_v1402407947118) (.cons (no_v1402407863150) (.cons (no_v1402409323758) (.cons (no_v1402409323374) .nil)))))))))))))))))))))))))))))

theorem five677 : BadRow (bucket true 4 3 5 [0,1,0,1,2]) := by
  have h : bucket true 4 3 5 [0,1,0,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313491702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 1))))))))
private theorem no_v1402313491702 : ¬ MinimalInterpreter v1402313491702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.app (.var 2) (.var 1)))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313470326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 1)))))))
private theorem no_v1402313470326 : ¬ MinimalInterpreter v1402313470326 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2)) (.var 1))) (.app (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402311439606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402311439606 : ¬ MinimalInterpreter v1402311439606 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 1))) (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0) (by decide) (by decide)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402311390454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402311390454 : ¬ MinimalInterpreter v1402311390454 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 1))) (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0) (by decide) (by decide)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312619254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312619254 : ¬ MinimalInterpreter v1402312619254 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312705270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312705270 : ¬ MinimalInterpreter v1402312705270 :=
  chain_cut false 2 (by decide)

private def v1402312508662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312508662 : ¬ MinimalInterpreter v1402312508662 :=
  chain_cut false 2 (by decide)

private def v1402312683894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 1))))))
private theorem no_v1402312683894 : ¬ MinimalInterpreter v1402312683894 :=
  chain_cut false 2 (by decide)

private def v1402312465782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))))))
private theorem no_v1402312465782 : ¬ MinimalInterpreter v1402312465782 :=
  chain_cut false 2 (by decide)

private def v1402312487286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.var 1))))))
private theorem no_v1402312487286 : ¬ MinimalInterpreter v1402312487286 :=
  chain_cut false 2 (by decide)

private def v1402312438134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v1402312438134 : ¬ MinimalInterpreter v1402312438134 :=
  chain_cut false 2 (by decide)

private def v1402333826294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402333826294 : ¬ MinimalInterpreter v1402333826294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402333825910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1402333825910 : ¬ MinimalInterpreter v1402333825910 :=
  chain_cut false 2 (by decide)

private def v1402330680566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402330680566 : ¬ MinimalInterpreter v1402330680566 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.app (.var 0) (.var 1)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402330680182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1402330680182 : ¬ MinimalInterpreter v1402330680182 :=
  chain_cut false 2 (by decide)

private def v1402329920374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 1)))))
private theorem no_v1402329920374 : ¬ MinimalInterpreter v1402329920374 :=
  chain_cut false 2 (by decide)

private def v1402329914742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 1)))))
private theorem no_v1402329914742 : ¬ MinimalInterpreter v1402329914742 :=
  chain_cut false 2 (by decide)

private def v1402407603446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402407603446 : ¬ MinimalInterpreter v1402407603446 :=
  chain_cut false 4 (by decide)

private def v1402407603062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1402407603062 : ¬ MinimalInterpreter v1402407603062 :=
  chain_cut false 4 (by decide)

private def v1402407580918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402407580918 : ¬ MinimalInterpreter v1402407580918 :=
  chain_cut false 4 (by decide)

private def v1402407580534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v1402407580534 : ¬ MinimalInterpreter v1402407580534 :=
  chain_cut false 4 (by decide)

private def v1402407574902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v1402407574902 : ¬ MinimalInterpreter v1402407574902 :=
  chain_cut false 4 (by decide)

private def v1402407947510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402407947510 : ¬ MinimalInterpreter v1402407947510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1402407947126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1402407947126 : ¬ MinimalInterpreter v1402407947126 :=
  w_cut false 0 (by decide)

private def v1402409323766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402409323766 : ¬ MinimalInterpreter v1402409323766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402409323382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1402409323382 : ¬ MinimalInterpreter v1402409323382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem five678 : BadRow (bucket false 4 3 5 [0,1,0,2,1]) := by
  have h : bucket false 4 3 5 [0,1,0,2,1] = [v1402313491702,v1402313470326,v1402311439606,v1402311390454,v1402312619254,v1402312705270,v1402312508662,v1402312683894,v1402312465782,v1402312487286,v1402312438134,v1402333826294,v1402333825910,v1402330680566,v1402330680182,v1402329920374,v1402329914742,v1402407603446,v1402407603062,v1402407580918,v1402407580534,v1402407574902,v1402407947510,v1402407947126,v1402409323766,v1402409323382] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313491702) (.cons (no_v1402313470326) (.cons (no_v1402311439606) (.cons (no_v1402311390454) (.cons (no_v1402312619254) (.cons (no_v1402312705270) (.cons (no_v1402312508662) (.cons (no_v1402312683894) (.cons (no_v1402312465782) (.cons (no_v1402312487286) (.cons (no_v1402312438134) (.cons (no_v1402333826294) (.cons (no_v1402333825910) (.cons (no_v1402330680566) (.cons (no_v1402330680182) (.cons (no_v1402329920374) (.cons (no_v1402329914742) (.cons (no_v1402407603446) (.cons (no_v1402407603062) (.cons (no_v1402407580918) (.cons (no_v1402407580534) (.cons (no_v1402407574902) (.cons (no_v1402407947510) (.cons (no_v1402407947126) (.cons (no_v1402409323766) (.cons (no_v1402409323382) .nil))))))))))))))))))))))))))

theorem five679 : BadRow (bucket true 4 3 5 [0,1,0,2,1]) := by
  have h : bucket true 4 3 5 [0,1,0,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
