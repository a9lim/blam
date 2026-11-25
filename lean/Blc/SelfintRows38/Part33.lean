import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v70699306810 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v70699306810 : ¬ MinimalInterpreter v70699306810 :=
  chain_cut false 2 (by decide)

private def v70699305946 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v70699305946 : ¬ MinimalInterpreter v70699305946 :=
  chain_cut false 2 (by decide)

private def v70699284282 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v70699284282 : ¬ MinimalInterpreter v70699284282 :=
  chain_cut false 2 (by decide)

private def v70699283418 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v70699283418 : ¬ MinimalInterpreter v70699283418 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70699277786 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v70699277786 : ¬ MinimalInterpreter v70699277786 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70699650874 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v70699650874 : ¬ MinimalInterpreter v70699650874 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v70699650010 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v70699650010 : ¬ MinimalInterpreter v70699650010 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row198 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [1,2,1,0]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [1,2,1,0] = [v70699306810,v70699305946,v70699284282,v70699283418,v70699277786,v70699650874,v70699650010] := by decide
  rw [h]
  exact (.cons (no_v70699306810) (.cons (no_v70699305946) (.cons (no_v70699284282) (.cons (no_v70699283418) (.cons (no_v70699277786) (.cons (no_v70699650874) (.cons (no_v70699650010) .nil)))))))

theorem row199 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [2,0,0,2]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [2,0,0,2] = [] := by decide
  rw [h]
  exact .nil

private def v70699312758 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v70699312758 : ¬ MinimalInterpreter v70699312758 :=
  chain_cut false 2 (by decide)

private def v70699312566 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v70699312566 : ¬ MinimalInterpreter v70699312566 :=
  chain_cut false 2 (by decide)

private def v70699285110 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v70699285110 : ¬ MinimalInterpreter v70699285110 :=
  chain_cut false 2 (by decide)

private def v70699284918 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v70699284918 : ¬ MinimalInterpreter v70699284918 :=
  chain_cut false 2 (by decide)

private def v70699278006 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v70699278006 : ¬ MinimalInterpreter v70699278006 :=
  chain_cut false 2 (by decide)

theorem row200 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [2,0,1,1]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [2,0,1,1] = [v70699312758,v70699312566,v70699285110,v70699284918,v70699278006] := by decide
  rw [h]
  exact (.cons (no_v70699312758) (.cons (no_v70699312566) (.cons (no_v70699285110) (.cons (no_v70699284918) (.cons (no_v70699278006) .nil)))))

theorem row201 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [2,0,2,0]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [2,0,2,0] = [] := by decide
  rw [h]
  exact .nil

private def v70699312950 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v70699312950 : ¬ MinimalInterpreter v70699312950 :=
  chain_cut false 2 (by decide)

private def v70699312598 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v70699312598 : ¬ MinimalInterpreter v70699312598 :=
  chain_cut false 2 (by decide)

private def v70699285302 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v70699285302 : ¬ MinimalInterpreter v70699285302 :=
  chain_cut false 2 (by decide)

private def v70699284950 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v70699284950 : ¬ MinimalInterpreter v70699284950 :=
  chain_cut false 2 (by decide)

private def v70699278038 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v70699278038 : ¬ MinimalInterpreter v70699278038 :=
  chain_cut false 2 (by decide)

theorem row202 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [2,1,0,1]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [2,1,0,1] = [v70699312950,v70699312598,v70699285302,v70699284950,v70699278038] := by decide
  rw [h]
  exact (.cons (no_v70699312950) (.cons (no_v70699312598) (.cons (no_v70699285302) (.cons (no_v70699284950) (.cons (no_v70699278038) .nil)))))

private def v70699312954 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v70699312954 : ¬ MinimalInterpreter v70699312954 :=
  chain_cut false 2 (by decide)

private def v70699312602 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v70699312602 : ¬ MinimalInterpreter v70699312602 :=
  chain_cut false 2 (by decide)

private def v70699285306 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v70699285306 : ¬ MinimalInterpreter v70699285306 :=
  chain_cut false 2 (by decide)

private def v70699284954 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v70699284954 : ¬ MinimalInterpreter v70699284954 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70699278042 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v70699278042 : ¬ MinimalInterpreter v70699278042 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row203 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [2,1,1,0]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [2,1,1,0] = [v70699312954,v70699312602,v70699285306,v70699284954,v70699278042] := by decide
  rw [h]
  exact (.cons (no_v70699312954) (.cons (no_v70699312602) (.cons (no_v70699285306) (.cons (no_v70699284954) (.cons (no_v70699278042) .nil)))))

end Blc.SelfintSingleObject.Rows38
