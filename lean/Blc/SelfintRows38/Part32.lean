import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v70699306222 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v70699306222 : ¬ MinimalInterpreter v70699306222 :=
  chain_cut false 2 (by decide)

private def v70699305838 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v70699305838 : ¬ MinimalInterpreter v70699305838 :=
  chain_cut false 2 (by decide)

private def v70699283694 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v70699283694 : ¬ MinimalInterpreter v70699283694 :=
  chain_cut false 2 (by decide)

private def v70699283310 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v70699283310 : ¬ MinimalInterpreter v70699283310 :=
  chain_cut false 2 (by decide)

private def v70699277678 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v70699277678 : ¬ MinimalInterpreter v70699277678 :=
  chain_cut false 2 (by decide)

private def v70699650286 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v70699650286 : ¬ MinimalInterpreter v70699650286 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v70699649902 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v70699649902 : ¬ MinimalInterpreter v70699649902 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row192 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [1,0,1,2]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [1,0,1,2] = [v70699306222,v70699305838,v70699283694,v70699283310,v70699277678,v70699650286,v70699649902] := by decide
  rw [h]
  exact (.cons (no_v70699306222) (.cons (no_v70699305838) (.cons (no_v70699283694) (.cons (no_v70699283310) (.cons (no_v70699277678) (.cons (no_v70699650286) (.cons (no_v70699649902) .nil)))))))

private def v70699306230 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v70699306230 : ¬ MinimalInterpreter v70699306230 :=
  chain_cut false 2 (by decide)

private def v70699305846 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v70699305846 : ¬ MinimalInterpreter v70699305846 :=
  chain_cut false 2 (by decide)

private def v70699283702 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v70699283702 : ¬ MinimalInterpreter v70699283702 :=
  chain_cut false 2 (by decide)

private def v70699283318 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v70699283318 : ¬ MinimalInterpreter v70699283318 :=
  chain_cut false 2 (by decide)

private def v70699277686 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v70699277686 : ¬ MinimalInterpreter v70699277686 :=
  chain_cut false 2 (by decide)

private def v70699650294 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v70699650294 : ¬ MinimalInterpreter v70699650294 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v70699649910 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v70699649910 : ¬ MinimalInterpreter v70699649910 :=
  w_cut false 0 (by decide)

theorem row193 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [1,0,2,1]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [1,0,2,1] = [v70699306230,v70699305846,v70699283702,v70699283318,v70699277686,v70699650294,v70699649910] := by decide
  rw [h]
  exact (.cons (no_v70699306230) (.cons (no_v70699305846) (.cons (no_v70699283702) (.cons (no_v70699283318) (.cons (no_v70699277686) (.cons (no_v70699650294) (.cons (no_v70699649910) .nil)))))))

private def v70699306606 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v70699306606 : ¬ MinimalInterpreter v70699306606 :=
  chain_cut false 2 (by decide)

private def v70699305902 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v70699305902 : ¬ MinimalInterpreter v70699305902 :=
  chain_cut false 2 (by decide)

private def v70699284078 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v70699284078 : ¬ MinimalInterpreter v70699284078 :=
  chain_cut false 2 (by decide)

private def v70699283374 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v70699283374 : ¬ MinimalInterpreter v70699283374 :=
  chain_cut false 2 (by decide)

private def v70699277742 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v70699277742 : ¬ MinimalInterpreter v70699277742 :=
  chain_cut false 2 (by decide)

private def v70699650670 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v70699650670 : ¬ MinimalInterpreter v70699650670 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v70699649966 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v70699649966 : ¬ MinimalInterpreter v70699649966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row194 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [1,1,0,2]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [1,1,0,2] = [v70699306606,v70699305902,v70699284078,v70699283374,v70699277742,v70699650670,v70699649966] := by decide
  rw [h]
  exact (.cons (no_v70699306606) (.cons (no_v70699305902) (.cons (no_v70699284078) (.cons (no_v70699283374) (.cons (no_v70699277742) (.cons (no_v70699650670) (.cons (no_v70699649966) .nil)))))))

theorem row195 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [1,1,1,1]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [1,1,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v70699306618 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v70699306618 : ¬ MinimalInterpreter v70699306618 :=
  chain_cut false 2 (by decide)

private def v70699305914 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v70699305914 : ¬ MinimalInterpreter v70699305914 :=
  chain_cut false 2 (by decide)

private def v70699284090 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v70699284090 : ¬ MinimalInterpreter v70699284090 :=
  chain_cut false 2 (by decide)

private def v70699283386 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v70699283386 : ¬ MinimalInterpreter v70699283386 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70699277754 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v70699277754 : ¬ MinimalInterpreter v70699277754 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70699650682 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v70699650682 : ¬ MinimalInterpreter v70699650682 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v70699649978 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v70699649978 : ¬ MinimalInterpreter v70699649978 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row196 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [1,1,2,0]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [1,1,2,0] = [v70699306618,v70699305914,v70699284090,v70699283386,v70699277754,v70699650682,v70699649978] := by decide
  rw [h]
  exact (.cons (no_v70699306618) (.cons (no_v70699305914) (.cons (no_v70699284090) (.cons (no_v70699283386) (.cons (no_v70699277754) (.cons (no_v70699650682) (.cons (no_v70699649978) .nil)))))))

private def v70699306806 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v70699306806 : ¬ MinimalInterpreter v70699306806 :=
  chain_cut false 2 (by decide)

private def v70699305942 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v70699305942 : ¬ MinimalInterpreter v70699305942 :=
  chain_cut false 2 (by decide)

private def v70699284278 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v70699284278 : ¬ MinimalInterpreter v70699284278 :=
  chain_cut false 2 (by decide)

private def v70699283414 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v70699283414 : ¬ MinimalInterpreter v70699283414 :=
  chain_cut false 2 (by decide)

private def v70699277782 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v70699277782 : ¬ MinimalInterpreter v70699277782 :=
  chain_cut false 2 (by decide)

private def v70699650870 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v70699650870 : ¬ MinimalInterpreter v70699650870 :=
  chain_cut false 8 (by decide)

private def v70699650006 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v70699650006 : ¬ MinimalInterpreter v70699650006 :=
  w_cut false 0 (by decide)

theorem row197 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [1,2,0,1]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [1,2,0,1] = [v70699306806,v70699305942,v70699284278,v70699283414,v70699277782,v70699650870,v70699650006] := by decide
  rw [h]
  exact (.cons (no_v70699306806) (.cons (no_v70699305942) (.cons (no_v70699284278) (.cons (no_v70699283414) (.cons (no_v70699277782) (.cons (no_v70699650870) (.cons (no_v70699650006) .nil)))))))

end Blc.SelfintSingleObject.Rows38
