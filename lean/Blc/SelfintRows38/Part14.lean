import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75700649582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v75700649582 : ¬ MinimalInterpreter v75700649582 :=
  chain_cut false 2 (by decide)

private def v75700645806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v75700645806 : ¬ MinimalInterpreter v75700645806 :=
  chain_cut false 2 (by decide)

private def v75700313710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 2)))))))
private theorem no_v75700313710 : ¬ MinimalInterpreter v75700313710 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75700225966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 2))))))
private theorem no_v75700225966 : ¬ MinimalInterpreter v75700225966 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706154606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v75706154606 : ¬ MinimalInterpreter v75706154606 :=
  chain_cut false 4 (by decide)

private def v75706150830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v75706150830 : ¬ MinimalInterpreter v75706150830 :=
  chain_cut false 4 (by decide)

theorem row84 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [1,3,0,2]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [1,3,0,2] = [v75700649582,v75700645806,v75700313710,v75700225966,v75706154606,v75706150830] := by decide
  rw [h]
  exact (.cons (no_v75700649582) (.cons (no_v75700645806) (.cons (no_v75700313710) (.cons (no_v75700225966) (.cons (no_v75706154606) (.cons (no_v75706150830) .nil))))))

private def v75700649590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 1) (.var 1)))))))))
private theorem no_v75700649590 : ¬ MinimalInterpreter v75700649590 :=
  chain_cut false 2 (by decide)

private def v75700645814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 1)) (.var 1))))))))
private theorem no_v75700645814 : ¬ MinimalInterpreter v75700645814 :=
  chain_cut false 2 (by decide)

private def v75700309942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 1)))) (.var 1))))))
private theorem no_v75700309942 : ¬ MinimalInterpreter v75700309942 :=
  chain_cut false 2 (by decide)

theorem row85 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [1,3,1,1]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [1,3,1,1] = [v75700649590,v75700645814,v75700309942] := by decide
  rw [h]
  exact (.cons (no_v75700649590) (.cons (no_v75700645814) (.cons (no_v75700309942) .nil)))

private def v75700649594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v75700649594 : ¬ MinimalInterpreter v75700649594 :=
  chain_cut false 2 (by decide)

private def v75700645818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v75700645818 : ¬ MinimalInterpreter v75700645818 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))) (so_dead (by decide) (.app (.var 1) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75700313722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 2) (.var 0)))))))
private theorem no_v75700313722 : ¬ MinimalInterpreter v75700313722 :=
  chain_cut true 3 (by decide)

private def v75700309946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 2)))) (.var 0))))))
private theorem no_v75700309946 : ¬ MinimalInterpreter v75700309946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.app (.var 3) (.var 2)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700225978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 2)) (.var 0))))))
private theorem no_v75700225978 : ¬ MinimalInterpreter v75700225978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 2)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75706154618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v75706154618 : ¬ MinimalInterpreter v75706154618 :=
  chain_cut false 4 (by decide)

private def v75706150842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v75706150842 : ¬ MinimalInterpreter v75706150842 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))) (.app (.var 1) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

theorem row86 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [1,3,2,0]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [1,3,2,0] = [v75700649594,v75700645818,v75700313722,v75700309946,v75700225978,v75706154618,v75706150842] := by decide
  rw [h]
  exact (.cons (no_v75700649594) (.cons (no_v75700645818) (.cons (no_v75700313722) (.cons (no_v75700309946) (.cons (no_v75700225978) (.cons (no_v75706154618) (.cons (no_v75706150842) .nil)))))))

private def v75700771294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v75700771294 : ¬ MinimalInterpreter v75700771294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 2) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v75700770526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v75700770526 : ¬ MinimalInterpreter v75700770526 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700791070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v75700791070 : ¬ MinimalInterpreter v75700791070 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700787998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v75700787998 : ¬ MinimalInterpreter v75700787998 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700348702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v75700348702 : ¬ MinimalInterpreter v75700348702 :=
  chain_cut false 3 (by decide)

private def v75700345630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 3)))))))
private theorem no_v75700345630 : ¬ MinimalInterpreter v75700345630 :=
  chain_cut false 3 (by decide)

private def v75700235038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v75700235038 : ¬ MinimalInterpreter v75700235038 :=
  chain_cut false 3 (by decide)

theorem row87 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [2,0,1,3]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [2,0,1,3] = [v75700771294,v75700770526,v75700791070,v75700787998,v75700348702,v75700345630,v75700235038] := by decide
  rw [h]
  exact (.cons (no_v75700771294) (.cons (no_v75700770526) (.cons (no_v75700791070) (.cons (no_v75700787998) (.cons (no_v75700348702) (.cons (no_v75700345630) (.cons (no_v75700235038) .nil)))))))

private def v75700789742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))))))
private theorem no_v75700789742 : ¬ MinimalInterpreter v75700789742 :=
  chain_cut false 2 (by decide)

private def v75700791182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v75700791182 : ¬ MinimalInterpreter v75700791182 :=
  chain_cut true 4 (by decide)

private def v75700788110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v75700788110 : ¬ MinimalInterpreter v75700788110 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700787438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v75700787438 : ¬ MinimalInterpreter v75700787438 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700347374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 2) (.var 2))))))))
private theorem no_v75700347374 : ¬ MinimalInterpreter v75700347374 :=
  chain_cut false 2 (by decide)

private def v75700348814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v75700348814 : ¬ MinimalInterpreter v75700348814 :=
  chain_cut false 3 (by decide)

private def v75700345742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 2))) (.lam (.var 2)))))))
private theorem no_v75700345742 : ¬ MinimalInterpreter v75700345742 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700235150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v75700235150 : ¬ MinimalInterpreter v75700235150 :=
  chain_cut false 3 (by decide)

private def v75700345070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))
private theorem no_v75700345070 : ¬ MinimalInterpreter v75700345070 :=
  chain_cut false 3 (by decide)

private def v75700234478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 2))))))
private theorem no_v75700234478 : ¬ MinimalInterpreter v75700234478 :=
  chain_cut false 3 (by decide)

theorem row88 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [2,0,2,2]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [2,0,2,2] = [v75700789742,v75700791182,v75700788110,v75700787438,v75700347374,v75700348814,v75700345742,v75700235150,v75700345070,v75700234478] := by decide
  rw [h]
  exact (.cons (no_v75700789742) (.cons (no_v75700791182) (.cons (no_v75700788110) (.cons (no_v75700787438) (.cons (no_v75700347374) (.cons (no_v75700348814) (.cons (no_v75700345742) (.cons (no_v75700235150) (.cons (no_v75700345070) (.cons (no_v75700234478) .nil))))))))))

private def v75700771318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v75700771318 : ¬ MinimalInterpreter v75700771318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 2) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v75700770550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v75700770550 : ¬ MinimalInterpreter v75700770550 :=
  w_cut false 0 (by decide)

private def v75700787446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v75700787446 : ¬ MinimalInterpreter v75700787446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700345078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))
private theorem no_v75700345078 : ¬ MinimalInterpreter v75700345078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700234486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 3))) (.var 1))))))
private theorem no_v75700234486 : ¬ MinimalInterpreter v75700234486 :=
  chain_cut false 3 (by decide)

theorem row89 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [2,0,3,1]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [2,0,3,1] = [v75700771318,v75700770550,v75700787446,v75700345078,v75700234486] := by decide
  rw [h]
  exact (.cons (no_v75700771318) (.cons (no_v75700770550) (.cons (no_v75700787446) (.cons (no_v75700345078) (.cons (no_v75700234486) .nil)))))

end Blc.SelfintSingleObject.Rows38
