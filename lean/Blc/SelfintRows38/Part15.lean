import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75700772062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v75700772062 : ¬ MinimalInterpreter v75700772062 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700770654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v75700770654 : ¬ MinimalInterpreter v75700770654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700794142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v75700794142 : ¬ MinimalInterpreter v75700794142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700788510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v75700788510 : ¬ MinimalInterpreter v75700788510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700351774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v75700351774 : ¬ MinimalInterpreter v75700351774 :=
  chain_cut false 3 (by decide)

private def v75700346142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 3)))))))
private theorem no_v75700346142 : ¬ MinimalInterpreter v75700346142 :=
  chain_cut false 3 (by decide)

private def v75700235550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v75700235550 : ¬ MinimalInterpreter v75700235550 :=
  chain_cut false 3 (by decide)

theorem row90 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [2,1,0,3]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [2,1,0,3] = [v75700772062,v75700770654,v75700794142,v75700788510,v75700351774,v75700346142,v75700235550] := by decide
  rw [h]
  exact (.cons (no_v75700772062) (.cons (no_v75700770654) (.cons (no_v75700794142) (.cons (no_v75700788510) (.cons (no_v75700351774) (.cons (no_v75700346142) (.cons (no_v75700235550) .nil)))))))

private def v75700772078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v75700772078 : ¬ MinimalInterpreter v75700772078 :=
  chain_cut false 2 (by decide)

private def v75700770670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v75700770670 : ¬ MinimalInterpreter v75700770670 :=
  chain_cut false 2 (by decide)

private def v75700793582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v75700793582 : ¬ MinimalInterpreter v75700793582 :=
  chain_cut false 2 (by decide)

private def v75700788334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v75700788334 : ¬ MinimalInterpreter v75700788334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700351214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v75700351214 : ¬ MinimalInterpreter v75700351214 :=
  chain_cut false 2 (by decide)

private def v75700341998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v75700341998 : ¬ MinimalInterpreter v75700341998 :=
  chain_cut false 3 (by decide)

private def v75700345966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 2))))))
private theorem no_v75700345966 : ¬ MinimalInterpreter v75700345966 :=
  chain_cut false 3 (by decide)

private def v75700235374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 2))))))
private theorem no_v75700235374 : ¬ MinimalInterpreter v75700235374 :=
  chain_cut false 3 (by decide)

private def v75700233070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v75700233070 : ¬ MinimalInterpreter v75700233070 :=
  chain_cut false 3 (by decide)

theorem row91 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [2,1,1,2]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [2,1,1,2] = [v75700772078,v75700770670,v75700793582,v75700788334,v75700351214,v75700341998,v75700345966,v75700235374,v75700233070] := by decide
  rw [h]
  exact (.cons (no_v75700772078) (.cons (no_v75700770670) (.cons (no_v75700793582) (.cons (no_v75700788334) (.cons (no_v75700351214) (.cons (no_v75700341998) (.cons (no_v75700345966) (.cons (no_v75700235374) (.cons (no_v75700233070) .nil)))))))))

private def v75700772086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v75700772086 : ¬ MinimalInterpreter v75700772086 :=
  chain_cut false 2 (by decide)

private def v75700770678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v75700770678 : ¬ MinimalInterpreter v75700770678 :=
  chain_cut false 2 (by decide)

private def v75700793590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v75700793590 : ¬ MinimalInterpreter v75700793590 :=
  chain_cut false 2 (by decide)

private def v75700794310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v75700794310 : ¬ MinimalInterpreter v75700794310 :=
  chain_cut true 4 (by decide)

private def v75700788678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v75700788678 : ¬ MinimalInterpreter v75700788678 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700351222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v75700351222 : ¬ MinimalInterpreter v75700351222 :=
  chain_cut false 2 (by decide)

private def v75700351942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v75700351942 : ¬ MinimalInterpreter v75700351942 :=
  chain_cut false 3 (by decide)

private def v75700342006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v75700342006 : ¬ MinimalInterpreter v75700342006 :=
  chain_cut false 3 (by decide)

private def v75700346310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))
private theorem no_v75700346310 : ¬ MinimalInterpreter v75700346310 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700235718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v75700235718 : ¬ MinimalInterpreter v75700235718 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700340598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 2)))) (.var 1))))))
private theorem no_v75700340598 : ¬ MinimalInterpreter v75700340598 :=
  chain_cut false 2 (by decide)

private def v75700233078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v75700233078 : ¬ MinimalInterpreter v75700233078 :=
  chain_cut false 3 (by decide)

theorem row92 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [2,1,2,1]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [2,1,2,1] = [v75700772086,v75700770678,v75700793590,v75700794310,v75700788678,v75700351222,v75700351942,v75700342006,v75700346310,v75700235718,v75700340598,v75700233078] := by decide
  rw [h]
  exact (.cons (no_v75700772086) (.cons (no_v75700770678) (.cons (no_v75700793590) (.cons (no_v75700794310) (.cons (no_v75700788678) (.cons (no_v75700351222) (.cons (no_v75700351942) (.cons (no_v75700342006) (.cons (no_v75700346310) (.cons (no_v75700235718) (.cons (no_v75700340598) (.cons (no_v75700233078) .nil))))))))))))

private def v75700772090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v75700772090 : ¬ MinimalInterpreter v75700772090 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700770682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v75700770682 : ¬ MinimalInterpreter v75700770682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 2) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v75700788346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v75700788346 : ¬ MinimalInterpreter v75700788346 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700345978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))
private theorem no_v75700345978 : ¬ MinimalInterpreter v75700345978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 3)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700235386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 3))) (.var 0))))))
private theorem no_v75700235386 : ¬ MinimalInterpreter v75700235386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 3))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 3))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row93 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [2,1,3,0]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [2,1,3,0] = [v75700772090,v75700770682,v75700788346,v75700345978,v75700235386] := by decide
  rw [h]
  exact (.cons (no_v75700772090) (.cons (no_v75700770682) (.cons (no_v75700788346) (.cons (no_v75700345978) (.cons (no_v75700235386) .nil)))))

private def v75700795790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v75700795790 : ¬ MinimalInterpreter v75700795790 :=
  chain_cut false 4 (by decide)

private def v75700788878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v75700788878 : ¬ MinimalInterpreter v75700788878 :=
  chain_cut false 4 (by decide)

private def v75700353422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v75700353422 : ¬ MinimalInterpreter v75700353422 :=
  w_cut false 0 (by decide)

private def v75700342382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 2)))))))
private theorem no_v75700342382 : ¬ MinimalInterpreter v75700342382 :=
  chain_cut false 3 (by decide)

private def v75700346510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.lam (.var 2)))))))
private theorem no_v75700346510 : ¬ MinimalInterpreter v75700346510 :=
  chain_cut false 5 (by decide)

private def v75700235918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v75700235918 : ¬ MinimalInterpreter v75700235918 :=
  w_cut false 0 (by decide)

private def v75700233134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 2))))))
private theorem no_v75700233134 : ¬ MinimalInterpreter v75700233134 :=
  chain_cut false 3 (by decide)

theorem row94 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [2,2,0,2]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [2,2,0,2] = [v75700795790,v75700788878,v75700353422,v75700342382,v75700346510,v75700235918,v75700233134] := by decide
  rw [h]
  exact (.cons (no_v75700795790) (.cons (no_v75700788878) (.cons (no_v75700353422) (.cons (no_v75700342382) (.cons (no_v75700346510) (.cons (no_v75700235918) (.cons (no_v75700233134) .nil)))))))

private def v75700772470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v75700772470 : ¬ MinimalInterpreter v75700772470 :=
  chain_cut false 2 (by decide)

private def v75700770742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v75700770742 : ¬ MinimalInterpreter v75700770742 :=
  chain_cut false 2 (by decide)

private def v75700795846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v75700795846 : ¬ MinimalInterpreter v75700795846 :=
  chain_cut false 4 (by decide)

private def v75700788934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v75700788934 : ¬ MinimalInterpreter v75700788934 :=
  chain_cut false 4 (by decide)

private def v75700788790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v75700788790 : ¬ MinimalInterpreter v75700788790 :=
  chain_cut false 4 (by decide)

private def v75700353478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v75700353478 : ¬ MinimalInterpreter v75700353478 :=
  w_cut false 0 (by decide)

private def v75700346566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))
private theorem no_v75700346566 : ¬ MinimalInterpreter v75700346566 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700235974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v75700235974 : ¬ MinimalInterpreter v75700235974 :=
  w_cut false 0 (by decide)

private def v75700340662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 1)))) (.var 1))))))
private theorem no_v75700340662 : ¬ MinimalInterpreter v75700340662 :=
  chain_cut false 2 (by decide)

private def v75700346422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.lam (.var 1)))) (.var 1))))))
private theorem no_v75700346422 : ¬ MinimalInterpreter v75700346422 :=
  chain_cut false 5 (by decide)

private def v75700235830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 1))) (.var 1))))))
private theorem no_v75700235830 : ¬ MinimalInterpreter v75700235830 :=
  w_cut false 0 (by decide)

theorem row95 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [2,2,1,1]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [2,2,1,1] = [v75700772470,v75700770742,v75700795846,v75700788934,v75700788790,v75700353478,v75700346566,v75700235974,v75700340662,v75700346422,v75700235830] := by decide
  rw [h]
  exact (.cons (no_v75700772470) (.cons (no_v75700770742) (.cons (no_v75700795846) (.cons (no_v75700788934) (.cons (no_v75700788790) (.cons (no_v75700353478) (.cons (no_v75700346566) (.cons (no_v75700235974) (.cons (no_v75700340662) (.cons (no_v75700346422) (.cons (no_v75700235830) .nil)))))))))))

end Blc.SelfintSingleObject.Rows38
