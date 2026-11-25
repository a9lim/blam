import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row270 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [2,1,1,1]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [2,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v691154439802 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v691154439802 : ¬ MinimalInterpreter v691154439802 :=
  chain_cut true 4 (by decide)
private def v691154439098 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v691154439098 : ¬ MinimalInterpreter v691154439098 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154384506 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v691154384506 : ¬ MinimalInterpreter v691154384506 :=
  chain_cut false 3 (by decide)
private def v691154383802 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v691154383802 : ¬ MinimalInterpreter v691154383802 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v691154369978 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v691154369978 : ¬ MinimalInterpreter v691154369978 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row271 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [2,1,2,0]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [2,1,2,0] = [v691154439802,v691154439098,v691154384506,v691154383802,v691154369978] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154439802) (.cons (no_v691154439098) (.cons (no_v691154384506) (.cons (no_v691154383802) (.cons (no_v691154369978) .nil)))))

private def v691154439990 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v691154439990 : ¬ MinimalInterpreter v691154439990 :=
  chain_cut false 4 (by decide)
private def v691154439126 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v691154439126 : ¬ MinimalInterpreter v691154439126 :=
  chain_cut false 4 (by decide)
private def v691154384694 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v691154384694 : ¬ MinimalInterpreter v691154384694 :=
  w_cut false 0 (by decide)
private def v691154383830 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v691154383830 : ¬ MinimalInterpreter v691154383830 :=
  chain_cut false 5 (by decide)
private def v691154370006 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v691154370006 : ¬ MinimalInterpreter v691154370006 :=
  w_cut false 0 (by decide)
theorem row272 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [2,2,0,1]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [2,2,0,1] = [v691154439990,v691154439126,v691154384694,v691154383830,v691154370006] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154439990) (.cons (no_v691154439126) (.cons (no_v691154384694) (.cons (no_v691154383830) (.cons (no_v691154370006) .nil)))))

private def v691154439994 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v691154439994 : ¬ MinimalInterpreter v691154439994 :=
  chain_cut false 4 (by decide)
private def v691154439130 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v691154439130 : ¬ MinimalInterpreter v691154439130 :=
  chain_cut false 4 (by decide)
private def v691154384698 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v691154384698 : ¬ MinimalInterpreter v691154384698 :=
  w_cut false 0 (by decide)
private def v691154383834 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v691154383834 : ¬ MinimalInterpreter v691154383834 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v691154370010 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v691154370010 : ¬ MinimalInterpreter v691154370010 :=
  w_cut false 0 (by decide)
theorem row273 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [2,2,1,0]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [2,2,1,0] = [v691154439994,v691154439130,v691154384698,v691154383834,v691154370010] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154439994) (.cons (no_v691154439130) (.cons (no_v691154384698) (.cons (no_v691154383834) (.cons (no_v691154370010) .nil)))))

private def v690685267182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v690685267182 : ¬ MinimalInterpreter v690685267182 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685266798 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v690685266798 : ¬ MinimalInterpreter v690685266798 :=
  cost_cut false 1 (by decide)
private def v690685261038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v690685261038 : ¬ MinimalInterpreter v690685261038 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685260654 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v690685260654 : ¬ MinimalInterpreter v690685260654 :=
  cost_cut false 1 (by decide)
private def v690685259118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v690685259118 : ¬ MinimalInterpreter v690685259118 :=
  cost_cut false 1 (by decide)
private def v690685168878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v690685168878 : ¬ MinimalInterpreter v690685168878 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685168494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v690685168494 : ¬ MinimalInterpreter v690685168494 :=
  cost_cut false 1 (by decide)
private def v690685162734 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v690685162734 : ¬ MinimalInterpreter v690685162734 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685138158 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v690685138158 : ¬ MinimalInterpreter v690685138158 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685162350 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v690685162350 : ¬ MinimalInterpreter v690685162350 :=
  cost_cut false 1 (by decide)
private def v690685160814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2))))))
private theorem no_v690685160814 : ¬ MinimalInterpreter v690685160814 :=
  cost_cut false 1 (by decide)
private def v690685137774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v690685137774 : ¬ MinimalInterpreter v690685137774 :=
  cost_cut false 1 (by decide)
private def v690685136238 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v690685136238 : ¬ MinimalInterpreter v690685136238 :=
  cost_cut false 1 (by decide)
private def v690685130094 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v690685130094 : ¬ MinimalInterpreter v690685130094 :=
  cost_cut false 1 (by decide)
private def v690687626478 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v690687626478 : ¬ MinimalInterpreter v690687626478 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690687626094 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v690687626094 : ¬ MinimalInterpreter v690687626094 :=
  cost_cut false 1 (by decide)
private def v690687620334 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v690687620334 : ¬ MinimalInterpreter v690687620334 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690687619950 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v690687619950 : ¬ MinimalInterpreter v690687619950 :=
  cost_cut false 1 (by decide)
private def v690687618414 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v690687618414 : ¬ MinimalInterpreter v690687618414 :=
  cost_cut false 1 (by decide)
private def v690687773934 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v690687773934 : ¬ MinimalInterpreter v690687773934 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v690687773550 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v690687773550 : ¬ MinimalInterpreter v690687773550 :=
  cost_cut false 1 (by decide)
private def v690687380718 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v690687380718 : ¬ MinimalInterpreter v690687380718 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690687380334 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v690687380334 : ¬ MinimalInterpreter v690687380334 :=
  cost_cut false 1 (by decide)
private def v690697063662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v690697063662 : ¬ MinimalInterpreter v690697063662 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690697063278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v690697063278 : ¬ MinimalInterpreter v690697063278 :=
  cost_cut false 1 (by decide)
private def v690697057518 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v690697057518 : ¬ MinimalInterpreter v690697057518 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690697057134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v690697057134 : ¬ MinimalInterpreter v690697057134 :=
  cost_cut false 1 (by decide)
private def v690697055598 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v690697055598 : ¬ MinimalInterpreter v690697055598 :=
  cost_cut false 1 (by decide)
private def v690697211118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v690697211118 : ¬ MinimalInterpreter v690697211118 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v690697210734 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v690697210734 : ¬ MinimalInterpreter v690697210734 :=
  cost_cut false 1 (by decide)
private def v690697800942 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v690697800942 : ¬ MinimalInterpreter v690697800942 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v690697800558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v690697800558 : ¬ MinimalInterpreter v690697800558 :=
  cost_cut false 1 (by decide)
private def v690696228078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v690696228078 : ¬ MinimalInterpreter v690696228078 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690696227694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v690696227694 : ¬ MinimalInterpreter v690696227694 :=
  cost_cut false 1 (by decide)
theorem row274 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [0,0,0,1,2]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [0,0,0,1,2] = [v690685267182,v690685266798,v690685261038,v690685260654,v690685259118,v690685168878,v690685168494,v690685162734,v690685138158,v690685162350,v690685160814,v690685137774,v690685136238,v690685130094,v690687626478,v690687626094,v690687620334,v690687619950,v690687618414,v690687773934,v690687773550,v690687380718,v690687380334,v690697063662,v690697063278,v690697057518,v690697057134,v690697055598,v690697211118,v690697210734,v690697800942,v690697800558,v690696228078,v690696227694] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685267182) (.cons (no_v690685266798) (.cons (no_v690685261038) (.cons (no_v690685260654) (.cons (no_v690685259118) (.cons (no_v690685168878) (.cons (no_v690685168494) (.cons (no_v690685162734) (.cons (no_v690685138158) (.cons (no_v690685162350) (.cons (no_v690685160814) (.cons (no_v690685137774) (.cons (no_v690685136238) (.cons (no_v690685130094) (.cons (no_v690687626478) (.cons (no_v690687626094) (.cons (no_v690687620334) (.cons (no_v690687619950) (.cons (no_v690687618414) (.cons (no_v690687773934) (.cons (no_v690687773550) (.cons (no_v690687380718) (.cons (no_v690687380334) (.cons (no_v690697063662) (.cons (no_v690697063278) (.cons (no_v690697057518) (.cons (no_v690697057134) (.cons (no_v690697055598) (.cons (no_v690697211118) (.cons (no_v690697210734) (.cons (no_v690697800942) (.cons (no_v690697800558) (.cons (no_v690696228078) (.cons (no_v690696227694) .nil))))))))))))))))))))))))))))))))))

private def v690685267190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v690685267190 : ¬ MinimalInterpreter v690685267190 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685266806 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v690685266806 : ¬ MinimalInterpreter v690685266806 :=
  cost_cut false 1 (by decide)
private def v690685261046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v690685261046 : ¬ MinimalInterpreter v690685261046 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685260662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v690685260662 : ¬ MinimalInterpreter v690685260662 :=
  cost_cut false 1 (by decide)
private def v690685259126 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v690685259126 : ¬ MinimalInterpreter v690685259126 :=
  cost_cut false 1 (by decide)
private def v690685168886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v690685168886 : ¬ MinimalInterpreter v690685168886 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685168502 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v690685168502 : ¬ MinimalInterpreter v690685168502 :=
  cost_cut false 1 (by decide)
private def v690685162742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v690685162742 : ¬ MinimalInterpreter v690685162742 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685138166 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v690685138166 : ¬ MinimalInterpreter v690685138166 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685162358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))))))
private theorem no_v690685162358 : ¬ MinimalInterpreter v690685162358 :=
  cost_cut false 1 (by decide)
private def v690685160822 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))))))
private theorem no_v690685160822 : ¬ MinimalInterpreter v690685160822 :=
  cost_cut false 1 (by decide)
private def v690685137782 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v690685137782 : ¬ MinimalInterpreter v690685137782 :=
  cost_cut false 1 (by decide)
private def v690685136246 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v690685136246 : ¬ MinimalInterpreter v690685136246 :=
  cost_cut false 1 (by decide)
private def v690685130102 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v690685130102 : ¬ MinimalInterpreter v690685130102 :=
  cost_cut false 1 (by decide)
private def v690687626486 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v690687626486 : ¬ MinimalInterpreter v690687626486 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690687626102 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v690687626102 : ¬ MinimalInterpreter v690687626102 :=
  cost_cut false 1 (by decide)
private def v690687620342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v690687620342 : ¬ MinimalInterpreter v690687620342 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690687619958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v690687619958 : ¬ MinimalInterpreter v690687619958 :=
  cost_cut false 1 (by decide)
private def v690687618422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v690687618422 : ¬ MinimalInterpreter v690687618422 :=
  cost_cut false 1 (by decide)
private def v690687773942 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v690687773942 : ¬ MinimalInterpreter v690687773942 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))
private def v690687773558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v690687773558 : ¬ MinimalInterpreter v690687773558 :=
  cost_cut false 1 (by decide)
private def v690687380726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v690687380726 : ¬ MinimalInterpreter v690687380726 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v690687380342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v690687380342 : ¬ MinimalInterpreter v690687380342 :=
  cost_cut false 1 (by decide)
private def v690697063670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v690697063670 : ¬ MinimalInterpreter v690697063670 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690697063286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v690697063286 : ¬ MinimalInterpreter v690697063286 :=
  cost_cut false 1 (by decide)
private def v690697057526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v690697057526 : ¬ MinimalInterpreter v690697057526 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690697057142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v690697057142 : ¬ MinimalInterpreter v690697057142 :=
  cost_cut false 1 (by decide)
private def v690697055606 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v690697055606 : ¬ MinimalInterpreter v690697055606 :=
  cost_cut false 1 (by decide)
private def v690697211126 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v690697211126 : ¬ MinimalInterpreter v690697211126 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v690697210742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v690697210742 : ¬ MinimalInterpreter v690697210742 :=
  cost_cut false 1 (by decide)
private def v690697800950 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v690697800950 : ¬ MinimalInterpreter v690697800950 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v690697800566 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v690697800566 : ¬ MinimalInterpreter v690697800566 :=
  cost_cut false 1 (by decide)
private def v690696228086 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v690696228086 : ¬ MinimalInterpreter v690696228086 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v690696227702 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v690696227702 : ¬ MinimalInterpreter v690696227702 :=
  cost_cut false 1 (by decide)
theorem row275 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [0,0,0,2,1]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [0,0,0,2,1] = [v690685267190,v690685266806,v690685261046,v690685260662,v690685259126,v690685168886,v690685168502,v690685162742,v690685138166,v690685162358,v690685160822,v690685137782,v690685136246,v690685130102,v690687626486,v690687626102,v690687620342,v690687619958,v690687618422,v690687773942,v690687773558,v690687380726,v690687380342,v690697063670,v690697063286,v690697057526,v690697057142,v690697055606,v690697211126,v690697210742,v690697800950,v690697800566,v690696228086,v690696227702] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685267190) (.cons (no_v690685266806) (.cons (no_v690685261046) (.cons (no_v690685260662) (.cons (no_v690685259126) (.cons (no_v690685168886) (.cons (no_v690685168502) (.cons (no_v690685162742) (.cons (no_v690685138166) (.cons (no_v690685162358) (.cons (no_v690685160822) (.cons (no_v690685137782) (.cons (no_v690685136246) (.cons (no_v690685130102) (.cons (no_v690687626486) (.cons (no_v690687626102) (.cons (no_v690687620342) (.cons (no_v690687619958) (.cons (no_v690687618422) (.cons (no_v690687773942) (.cons (no_v690687773558) (.cons (no_v690687380726) (.cons (no_v690687380342) (.cons (no_v690697063670) (.cons (no_v690697063286) (.cons (no_v690697057526) (.cons (no_v690697057142) (.cons (no_v690697055606) (.cons (no_v690697211126) (.cons (no_v690697210742) (.cons (no_v690697800950) (.cons (no_v690697800566) (.cons (no_v690696228086) (.cons (no_v690696227702) .nil))))))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows39
