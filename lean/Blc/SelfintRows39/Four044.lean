import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v691154427502 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2))))))))
private theorem no_v691154427502 : ¬ MinimalInterpreter v691154427502 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154425774 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2)))))))
private theorem no_v691154425774 : ¬ MinimalInterpreter v691154425774 :=
  chain_cut true 3 (by decide)
private def v691154382446 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2)))))))
private theorem no_v691154382446 : ¬ MinimalInterpreter v691154382446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154380718 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2))))))
private theorem no_v691154380718 : ¬ MinimalInterpreter v691154380718 :=
  chain_cut true 3 (by decide)
private def v691154369454 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2))))))
private theorem no_v691154369454 : ¬ MinimalInterpreter v691154369454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row264 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [1,2,0,2]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [1,2,0,2] = [v691154427502,v691154425774,v691154382446,v691154380718,v691154369454] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154427502) (.cons (no_v691154425774) (.cons (no_v691154382446) (.cons (no_v691154380718) (.cons (no_v691154369454) .nil)))))

theorem row265 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [1,2,1,1]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [1,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v691154427514 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0))))))))
private theorem no_v691154427514 : ¬ MinimalInterpreter v691154427514 :=
  chain_cut true 4 (by decide)
private def v691154425786 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0)))))))
private theorem no_v691154425786 : ¬ MinimalInterpreter v691154425786 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154382458 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0)))))))
private theorem no_v691154382458 : ¬ MinimalInterpreter v691154382458 :=
  chain_cut true 3 (by decide)
private def v691154380730 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))))
private theorem no_v691154380730 : ¬ MinimalInterpreter v691154380730 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v691154369466 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))))
private theorem no_v691154369466 : ¬ MinimalInterpreter v691154369466 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row266 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [1,2,2,0]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [1,2,2,0] = [v691154427514,v691154425786,v691154382458,v691154380730,v691154369466] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154427514) (.cons (no_v691154425786) (.cons (no_v691154382458) (.cons (no_v691154380730) (.cons (no_v691154369466) .nil)))))

private def v691154439406 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v691154439406 : ¬ MinimalInterpreter v691154439406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154439022 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v691154439022 : ¬ MinimalInterpreter v691154439022 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154384110 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v691154384110 : ¬ MinimalInterpreter v691154384110 :=
  chain_cut false 3 (by decide)
private def v691154383726 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v691154383726 : ¬ MinimalInterpreter v691154383726 :=
  chain_cut false 3 (by decide)
private def v691154369902 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v691154369902 : ¬ MinimalInterpreter v691154369902 :=
  chain_cut false 3 (by decide)
theorem row267 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [2,0,1,2]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [2,0,1,2] = [v691154439406,v691154439022,v691154384110,v691154383726,v691154369902] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154439406) (.cons (no_v691154439022) (.cons (no_v691154384110) (.cons (no_v691154383726) (.cons (no_v691154369902) .nil)))))

private def v691154439414 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v691154439414 : ¬ MinimalInterpreter v691154439414 :=
  chain_cut true 4 (by decide)
private def v691154439030 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v691154439030 : ¬ MinimalInterpreter v691154439030 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154384118 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v691154384118 : ¬ MinimalInterpreter v691154384118 :=
  chain_cut false 3 (by decide)
private def v691154383734 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v691154383734 : ¬ MinimalInterpreter v691154383734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154369910 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v691154369910 : ¬ MinimalInterpreter v691154369910 :=
  chain_cut false 3 (by decide)
theorem row268 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [2,0,2,1]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [2,0,2,1] = [v691154439414,v691154439030,v691154384118,v691154383734,v691154369910] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154439414) (.cons (no_v691154439030) (.cons (no_v691154384118) (.cons (no_v691154383734) (.cons (no_v691154369910) .nil)))))

private def v691154439790 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v691154439790 : ¬ MinimalInterpreter v691154439790 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154439086 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v691154439086 : ¬ MinimalInterpreter v691154439086 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154384494 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v691154384494 : ¬ MinimalInterpreter v691154384494 :=
  chain_cut false 3 (by decide)
private def v691154383790 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v691154383790 : ¬ MinimalInterpreter v691154383790 :=
  chain_cut false 3 (by decide)
private def v691154369966 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v691154369966 : ¬ MinimalInterpreter v691154369966 :=
  chain_cut false 3 (by decide)
theorem row269 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [2,1,0,2]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [2,1,0,2] = [v691154439790,v691154439086,v691154384494,v691154383790,v691154369966] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154439790) (.cons (no_v691154439086) (.cons (no_v691154384494) (.cons (no_v691154383790) (.cons (no_v691154369966) .nil)))))

end Blc.SelfintSingleObject.Rows39
