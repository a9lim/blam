import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402313607066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402313607066 : ¬ MinimalInterpreter v1402313607066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1) (by decide) (by decide)))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313606634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v1402313606634 : ¬ MinimalInterpreter v1402313606634 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))))) (.lam (r := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1) (by decide) (by decide)))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313499114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.var 0)))))))
private theorem no_v1402313499114 : ¬ MinimalInterpreter v1402313499114 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (.var 0))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312820634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402312820634 : ¬ MinimalInterpreter v1402312820634 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312820202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v1402312820202 : ¬ MinimalInterpreter v1402312820202 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312712682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))) (.var 0))))))
private theorem no_v1402312712682 : ¬ MinimalInterpreter v1402312712682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 0))))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide)))) (.var 0)) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312516074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 0)))) (.var 0))))))
private theorem no_v1402312516074 : ¬ MinimalInterpreter v1402312516074 :=
  chain_cut false 2 (by decide)

private def v1402332373482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.var 0)))))))
private theorem no_v1402332373482 : ¬ MinimalInterpreter v1402332373482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (.var 0)) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402407870954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 0)))) (.var 0)))))))
private theorem no_v1402407870954 : ¬ MinimalInterpreter v1402407870954 :=
  w_cut false 0 (by decide)

theorem five704 : BadRow (bucket false 4 3 5 [0,2,2,0,0]) := by
  have h : bucket false 4 3 5 [0,2,2,0,0] = [v1402313607066,v1402313606634,v1402313499114,v1402312820634,v1402312820202,v1402312712682,v1402312516074,v1402332373482,v1402407870954] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313607066) (.cons (no_v1402313606634) (.cons (no_v1402313499114) (.cons (no_v1402312820634) (.cons (no_v1402312820202) (.cons (no_v1402312712682) (.cons (no_v1402312516074) (.cons (no_v1402332373482) (.cons (no_v1402407870954) .nil)))))))))

theorem five705 : BadRow (bucket true 4 3 5 [0,2,2,0,0]) := by
  have h : bucket true 4 3 5 [0,2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402312621366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 0)))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312621366 : ¬ MinimalInterpreter v1402312621366 :=
  chain_cut false 2 (by decide)

private def v1402312621270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 0))))) (.var 1))))))
private theorem no_v1402312621270 : ¬ MinimalInterpreter v1402312621270 :=
  chain_cut false 2 (by decide)

private def v1402312613718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 0)))) (.var 1))))))
private theorem no_v1402312613718 : ¬ MinimalInterpreter v1402312613718 :=
  chain_cut false 2 (by decide)

private def v1402312466262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 3) (.var 0)))) (.var 0)) (.var 1))))))
private theorem no_v1402312466262 : ¬ MinimalInterpreter v1402312466262 :=
  chain_cut false 2 (by decide)

private def v1402332115766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402332115766 : ¬ MinimalInterpreter v1402332115766 :=
  chain_cut false 2 (by decide)

private def v1402332115670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v1402332115670 : ¬ MinimalInterpreter v1402332115670 :=
  chain_cut false 2 (by decide)

private def v1402332085558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v1402332085558 : ¬ MinimalInterpreter v1402332085558 :=
  chain_cut false 2 (by decide)

private def v1402332085462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v1402332085462 : ¬ MinimalInterpreter v1402332085462 :=
  chain_cut false 2 (by decide)

private def v1402332077910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v1402332077910 : ¬ MinimalInterpreter v1402332077910 :=
  chain_cut false 2 (by decide)

theorem five706 : BadRow (bucket false 4 3 5 [0,3,0,0,1]) := by
  have h : bucket false 4 3 5 [0,3,0,0,1] = [v1402312621366,v1402312621270,v1402312613718,v1402312466262,v1402332115766,v1402332115670,v1402332085558,v1402332085462,v1402332077910] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402312621366) (.cons (no_v1402312621270) (.cons (no_v1402312613718) (.cons (no_v1402312466262) (.cons (no_v1402332115766) (.cons (no_v1402332115670) (.cons (no_v1402332085558) (.cons (no_v1402332085462) (.cons (no_v1402332077910) .nil)))))))))

theorem five707 : BadRow (bucket true 4 3 5 [0,3,0,0,1]) := by
  have h : bucket true 4 3 5 [0,3,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402312621370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 0)))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312621370 : ¬ MinimalInterpreter v1402312621370 :=
  chain_cut false 2 (by decide)

private def v1402312466266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 3) (.var 0)))) (.var 1)) (.var 0))))))
private theorem no_v1402312466266 : ¬ MinimalInterpreter v1402312466266 :=
  chain_cut false 2 (by decide)

private def v1402332115770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402332115770 : ¬ MinimalInterpreter v1402332115770 :=
  chain_cut false 2 (by decide)

private def v1402332115674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v1402332115674 : ¬ MinimalInterpreter v1402332115674 :=
  chain_cut false 2 (by decide)

private def v1402332085562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1402332085562 : ¬ MinimalInterpreter v1402332085562 :=
  chain_cut false 2 (by decide)

private def v1402332085466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v1402332085466 : ¬ MinimalInterpreter v1402332085466 :=
  chain_cut false 2 (by decide)

private def v1402332077914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v1402332077914 : ¬ MinimalInterpreter v1402332077914 :=
  chain_cut false 2 (by decide)

private def v1402329922778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))) (.var 0)))))
private theorem no_v1402329922778 : ¬ MinimalInterpreter v1402329922778 :=
  chain_cut false 2 (by decide)

private def v1402329915226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))) (.var 0)))))
private theorem no_v1402329915226 : ¬ MinimalInterpreter v1402329915226 :=
  chain_cut false 2 (by decide)

theorem five708 : BadRow (bucket false 4 3 5 [0,3,0,1,0]) := by
  have h : bucket false 4 3 5 [0,3,0,1,0] = [v1402312621370,v1402312466266,v1402332115770,v1402332115674,v1402332085562,v1402332085466,v1402332077914,v1402329922778,v1402329915226] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402312621370) (.cons (no_v1402312466266) (.cons (no_v1402332115770) (.cons (no_v1402332115674) (.cons (no_v1402332085562) (.cons (no_v1402332085466) (.cons (no_v1402332077914) (.cons (no_v1402329922778) (.cons (no_v1402329915226) .nil)))))))))

theorem five709 : BadRow (bucket true 4 3 5 [0,3,0,1,0]) := by
  have h : bucket true 4 3 5 [0,3,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402332115866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402332115866 : ¬ MinimalInterpreter v1402332115866 :=
  chain_cut false 2 (by decide)

private def v1402332115690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v1402332115690 : ¬ MinimalInterpreter v1402332115690 :=
  chain_cut false 2 (by decide)

private def v1402332085658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402332085658 : ¬ MinimalInterpreter v1402332085658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332085482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v1402332085482 : ¬ MinimalInterpreter v1402332085482 :=
  chain_cut false 2 (by decide)

private def v1402332077930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v1402332077930 : ¬ MinimalInterpreter v1402332077930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402329922794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))) (.var 0)))))
private theorem no_v1402329922794 : ¬ MinimalInterpreter v1402329922794 :=
  chain_cut false 2 (by decide)

private def v1402329915242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))) (.var 0)))))
private theorem no_v1402329915242 : ¬ MinimalInterpreter v1402329915242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

theorem five710 : BadRow (bucket false 4 3 5 [0,3,1,0,0]) := by
  have h : bucket false 4 3 5 [0,3,1,0,0] = [v1402332115866,v1402332115690,v1402332085658,v1402332085482,v1402332077930,v1402329922794,v1402329915242] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402332115866) (.cons (no_v1402332115690) (.cons (no_v1402332085658) (.cons (no_v1402332085482) (.cons (no_v1402332077930) (.cons (no_v1402329922794) (.cons (no_v1402329915242) .nil)))))))

theorem five711 : BadRow (bucket true 4 3 5 [0,3,1,0,0]) := by
  have h : bucket true 4 3 5 [0,3,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
