import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75598259830 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v75598259830 : ¬ MinimalInterpreter v75598259830 :=
  chain_cut false 3 (by decide)

private def v75598259638 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v75598259638 : ¬ MinimalInterpreter v75598259638 :=
  chain_cut false 3 (by decide)

private def v75598232182 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v75598232182 : ¬ MinimalInterpreter v75598232182 :=
  chain_cut false 3 (by decide)

private def v75598231990 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v75598231990 : ¬ MinimalInterpreter v75598231990 :=
  chain_cut false 3 (by decide)

private def v75598225078 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v75598225078 : ¬ MinimalInterpreter v75598225078 :=
  chain_cut false 3 (by decide)

private def v74792953462 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v74792953462 : ¬ MinimalInterpreter v74792953462 :=
  chain_cut true 5 (by decide)

private def v74792953270 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v74792953270 : ¬ MinimalInterpreter v74792953270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v74792925814 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v74792925814 : ¬ MinimalInterpreter v74792925814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v74792925622 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v74792925622 : ¬ MinimalInterpreter v74792925622 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v74792918710 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v74792918710 : ¬ MinimalInterpreter v74792918710 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row60 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [2,0,1,1]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [2,0,1,1] = [v75598259830,v75598259638,v75598232182,v75598231990,v75598225078,v74792953462,v74792953270,v74792925814,v74792925622,v74792918710] := by decide
  rw [h]
  exact (.cons (no_v75598259830) (.cons (no_v75598259638) (.cons (no_v75598232182) (.cons (no_v75598231990) (.cons (no_v75598225078) (.cons (no_v74792953462) (.cons (no_v74792953270) (.cons (no_v74792925814) (.cons (no_v74792925622) (.cons (no_v74792918710) .nil))))))))))

theorem row61 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [2,0,2,0]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [2,0,2,0] = [] := by decide
  rw [h]
  exact .nil

private def v75598260022 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v75598260022 : ¬ MinimalInterpreter v75598260022 :=
  chain_cut false 3 (by decide)

private def v75598259670 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v75598259670 : ¬ MinimalInterpreter v75598259670 :=
  chain_cut false 3 (by decide)

private def v75598232374 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v75598232374 : ¬ MinimalInterpreter v75598232374 :=
  chain_cut false 3 (by decide)

private def v75598232022 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v75598232022 : ¬ MinimalInterpreter v75598232022 :=
  chain_cut false 3 (by decide)

private def v75598225110 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v75598225110 : ¬ MinimalInterpreter v75598225110 :=
  chain_cut false 3 (by decide)

private def v74792953654 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v74792953654 : ¬ MinimalInterpreter v74792953654 :=
  chain_cut false 5 (by decide)

private def v74792953302 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v74792953302 : ¬ MinimalInterpreter v74792953302 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v74792926006 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v74792926006 : ¬ MinimalInterpreter v74792926006 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v74792925654 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v74792925654 : ¬ MinimalInterpreter v74792925654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v74792918742 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v74792918742 : ¬ MinimalInterpreter v74792918742 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row62 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [2,1,0,1]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [2,1,0,1] = [v75598260022,v75598259670,v75598232374,v75598232022,v75598225110,v74792953654,v74792953302,v74792926006,v74792925654,v74792918742] := by decide
  rw [h]
  exact (.cons (no_v75598260022) (.cons (no_v75598259670) (.cons (no_v75598232374) (.cons (no_v75598232022) (.cons (no_v75598225110) (.cons (no_v74792953654) (.cons (no_v74792953302) (.cons (no_v74792926006) (.cons (no_v74792925654) (.cons (no_v74792918742) .nil))))))))))

private def v75598260026 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v75598260026 : ¬ MinimalInterpreter v75598260026 :=
  chain_cut false 3 (by decide)

private def v75598259674 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v75598259674 : ¬ MinimalInterpreter v75598259674 :=
  chain_cut false 3 (by decide)

private def v75598232378 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v75598232378 : ¬ MinimalInterpreter v75598232378 :=
  chain_cut false 3 (by decide)

private def v75598232026 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v75598232026 : ¬ MinimalInterpreter v75598232026 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75598225114 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v75598225114 : ¬ MinimalInterpreter v75598225114 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v74792953658 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v74792953658 : ¬ MinimalInterpreter v74792953658 :=
  chain_cut false 5 (by decide)

private def v74792953306 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v74792953306 : ¬ MinimalInterpreter v74792953306 :=
  chain_cut false 5 (by decide)

private def v74792926010 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v74792926010 : ¬ MinimalInterpreter v74792926010 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v74792925658 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v74792925658 : ¬ MinimalInterpreter v74792925658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v74792918746 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v74792918746 : ¬ MinimalInterpreter v74792918746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row63 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [2,1,1,0]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [2,1,1,0] = [v75598260026,v75598259674,v75598232378,v75598232026,v75598225114,v74792953658,v74792953306,v74792926010,v74792925658,v74792918746] := by decide
  rw [h]
  exact (.cons (no_v75598260026) (.cons (no_v75598259674) (.cons (no_v75598232378) (.cons (no_v75598232026) (.cons (no_v75598225114) (.cons (no_v74792953658) (.cons (no_v74792953306) (.cons (no_v74792926010) (.cons (no_v74792925658) (.cons (no_v74792918746) .nil))))))))))

theorem row64 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [2,2,0,0]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [2,2,0,0] = [] := by decide
  rw [h]
  exact .nil

theorem row65 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [0,0,3,3]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [0,0,3,3] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
