import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v691154401774 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))
private theorem no_v691154401774 : ¬ MinimalInterpreter v691154401774 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v691154398958 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))
private theorem no_v691154398958 : ¬ MinimalInterpreter v691154398958 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v691154377198 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2)))))))
private theorem no_v691154377198 : ¬ MinimalInterpreter v691154377198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154374382 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2))))))
private theorem no_v691154374382 : ¬ MinimalInterpreter v691154374382 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154368238 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2))))))
private theorem no_v691154368238 : ¬ MinimalInterpreter v691154368238 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row258 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [0,1,2,2]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [0,1,2,2] = [v691154401774,v691154398958,v691154377198,v691154374382,v691154368238] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154401774) (.cons (no_v691154398958) (.cons (no_v691154377198) (.cons (no_v691154374382) (.cons (no_v691154368238) .nil)))))

private def v691154402542 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))
private theorem no_v691154402542 : ¬ MinimalInterpreter v691154402542 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v691154399086 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))
private theorem no_v691154399086 : ¬ MinimalInterpreter v691154399086 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v691154377966 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2)))))))
private theorem no_v691154377966 : ¬ MinimalInterpreter v691154377966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154374510 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2))))))
private theorem no_v691154374510 : ¬ MinimalInterpreter v691154374510 :=
  chain_cut true 3 (by decide)
private def v691154368366 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2))))))
private theorem no_v691154368366 : ¬ MinimalInterpreter v691154368366 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row259 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [0,2,1,2]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [0,2,1,2] = [v691154402542,v691154399086,v691154377966,v691154374510,v691154368366] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154402542) (.cons (no_v691154399086) (.cons (no_v691154377966) (.cons (no_v691154374510) (.cons (no_v691154368366) .nil)))))

private def v691154402550 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))
private theorem no_v691154402550 : ¬ MinimalInterpreter v691154402550 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v691154399094 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))
private theorem no_v691154399094 : ¬ MinimalInterpreter v691154399094 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))
private def v691154377974 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1)))))))
private theorem no_v691154377974 : ¬ MinimalInterpreter v691154377974 :=
  chain_cut true 3 (by decide)
private def v691154374518 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1))))))
private theorem no_v691154374518 : ¬ MinimalInterpreter v691154374518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154368374 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1))))))
private theorem no_v691154368374 : ¬ MinimalInterpreter v691154368374 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row260 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [0,2,2,1]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [0,2,2,1] = [v691154402550,v691154399094,v691154377974,v691154374518,v691154368374] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154402550) (.cons (no_v691154399094) (.cons (no_v691154377974) (.cons (no_v691154374518) (.cons (no_v691154368374) .nil)))))

private def v691154426350 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2))))))))
private theorem no_v691154426350 : ¬ MinimalInterpreter v691154426350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154425582 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2)))))))
private theorem no_v691154425582 : ¬ MinimalInterpreter v691154425582 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154381294 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2)))))))
private theorem no_v691154381294 : ¬ MinimalInterpreter v691154381294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154380526 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2))))))
private theorem no_v691154380526 : ¬ MinimalInterpreter v691154380526 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
private def v691154369262 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2))))))
private theorem no_v691154369262 : ¬ MinimalInterpreter v691154369262 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem row261 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [1,0,2,2]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [1,0,2,2] = [v691154426350,v691154425582,v691154381294,v691154380526,v691154369262] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154426350) (.cons (no_v691154425582) (.cons (no_v691154381294) (.cons (no_v691154380526) (.cons (no_v691154369262) .nil)))))

theorem row262 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [1,1,1,2]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [1,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row263 : BadRow (row ⟨1,2,2,2,4,5⟩ [1,1] [1,1,2,1]) := by
  have h : row ⟨1,2,2,2,4,5⟩ [1,1] [1,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
