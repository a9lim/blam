import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75700312558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 2)))))))
private theorem no_v75700312558 : ¬ MinimalInterpreter v75700312558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700309742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 2)))) (.var 2))))))
private theorem no_v75700309742 : ¬ MinimalInterpreter v75700309742 :=
  chain_cut false 2 (by decide)

private def v75700225774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 2))))))
private theorem no_v75700225774 : ¬ MinimalInterpreter v75700225774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row78 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [1,1,2,2]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [1,1,2,2] = [v75700312558,v75700309742,v75700225774] := by decide
  rw [h]
  exact (.cons (no_v75700312558) (.cons (no_v75700309742) (.cons (no_v75700225774) .nil)))

private def v75700648438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 3) (.var 1)))))))))
private theorem no_v75700648438 : ¬ MinimalInterpreter v75700648438 :=
  chain_cut false 2 (by decide)

private def v75700645622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 3)) (.var 1))))))))
private theorem no_v75700645622 : ¬ MinimalInterpreter v75700645622 :=
  chain_cut false 2 (by decide)

private def v75700691446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v75700691446 : ¬ MinimalInterpreter v75700691446 :=
  chain_cut false 2 (by decide)

private def v75700330998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 3) (.var 1))))))))
private theorem no_v75700330998 : ¬ MinimalInterpreter v75700330998 :=
  chain_cut false 2 (by decide)

private def v75700309750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 3)))) (.var 1))))))
private theorem no_v75700309750 : ¬ MinimalInterpreter v75700309750 :=
  chain_cut false 2 (by decide)

private def v75706196470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v75706196470 : ¬ MinimalInterpreter v75706196470 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row79 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [1,1,3,1]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [1,1,3,1] = [v75700648438,v75700645622,v75700691446,v75700330998,v75700309750,v75706196470] := by decide
  rw [h]
  exact (.cons (no_v75700648438) (.cons (no_v75700645622) (.cons (no_v75700691446) (.cons (no_v75700330998) (.cons (no_v75700309750) (.cons (no_v75706196470) .nil))))))

private def v75700649182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v75700649182 : ¬ MinimalInterpreter v75700649182 :=
  chain_cut false 2 (by decide)

private def v75700645726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v75700645726 : ¬ MinimalInterpreter v75700645726 :=
  chain_cut false 2 (by decide)

private def v75700695838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v75700695838 : ¬ MinimalInterpreter v75700695838 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700682014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 3))))))))
private theorem no_v75700682014 : ¬ MinimalInterpreter v75700682014 :=
  chain_cut true 3 (by decide)

private def v75700335390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v75700335390 : ¬ MinimalInterpreter v75700335390 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75700321566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 3)))))))
private theorem no_v75700321566 : ¬ MinimalInterpreter v75700321566 :=
  chain_cut true 3 (by decide)

private def v75700231454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v75700231454 : ¬ MinimalInterpreter v75700231454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706154206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v75706154206 : ¬ MinimalInterpreter v75706154206 :=
  chain_cut false 4 (by decide)

private def v75706150750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v75706150750 : ¬ MinimalInterpreter v75706150750 :=
  chain_cut false 4 (by decide)

theorem row80 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [1,2,0,3]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [1,2,0,3] = [v75700649182,v75700645726,v75700695838,v75700682014,v75700335390,v75700321566,v75700231454,v75706154206,v75706150750] := by decide
  rw [h]
  exact (.cons (no_v75700649182) (.cons (no_v75700645726) (.cons (no_v75700695838) (.cons (no_v75700682014) (.cons (no_v75700335390) (.cons (no_v75700321566) (.cons (no_v75700231454) (.cons (no_v75706154206) (.cons (no_v75706150750) .nil)))))))))

private def v75700695278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v75700695278 : ¬ MinimalInterpreter v75700695278 :=
  chain_cut false 2 (by decide)

private def v75700681838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 2)))))))
private theorem no_v75700681838 : ¬ MinimalInterpreter v75700681838 :=
  chain_cut true 3 (by decide)

private def v75700334830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v75700334830 : ¬ MinimalInterpreter v75700334830 :=
  chain_cut false 2 (by decide)

private def v75700309870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 1)))) (.var 2))))))
private theorem no_v75700309870 : ¬ MinimalInterpreter v75700309870 :=
  chain_cut false 2 (by decide)

private def v75700321390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 2))))))
private theorem no_v75700321390 : ¬ MinimalInterpreter v75700321390 :=
  chain_cut true 3 (by decide)

private def v75700231278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 2))))))
private theorem no_v75700231278 : ¬ MinimalInterpreter v75700231278 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706200302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v75706200302 : ¬ MinimalInterpreter v75706200302 :=
  chain_cut false 6 (by decide)

theorem row81 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [1,2,1,2]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [1,2,1,2] = [v75700695278,v75700681838,v75700334830,v75700309870,v75700321390,v75700231278,v75706200302] := by decide
  rw [h]
  exact (.cons (no_v75700695278) (.cons (no_v75700681838) (.cons (no_v75700334830) (.cons (no_v75700309870) (.cons (no_v75700321390) (.cons (no_v75700231278) (.cons (no_v75706200302) .nil)))))))

private def v75700695286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v75700695286 : ¬ MinimalInterpreter v75700695286 :=
  chain_cut false 2 (by decide)

private def v75700696006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v75700696006 : ¬ MinimalInterpreter v75700696006 :=
  chain_cut true 4 (by decide)

private def v75700682182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.lam (.var 1))))))))
private theorem no_v75700682182 : ¬ MinimalInterpreter v75700682182 :=
  cost_cut true 5 (by decide)

private def v75700334838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v75700334838 : ¬ MinimalInterpreter v75700334838 :=
  chain_cut false 2 (by decide)

private def v75700335558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v75700335558 : ¬ MinimalInterpreter v75700335558 :=
  chain_cut true 3 (by decide)

private def v75700321734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.lam (.var 1)))))))
private theorem no_v75700321734 : ¬ MinimalInterpreter v75700321734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v75700231622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v75700231622 : ¬ MinimalInterpreter v75700231622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75706200310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v75706200310 : ¬ MinimalInterpreter v75706200310 :=
  chain_cut false 6 (by decide)

theorem row82 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [1,2,2,1]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [1,2,2,1] = [v75700695286,v75700696006,v75700682182,v75700334838,v75700335558,v75700321734,v75700231622,v75706200310] := by decide
  rw [h]
  exact (.cons (no_v75700695286) (.cons (no_v75700696006) (.cons (no_v75700682182) (.cons (no_v75700334838) (.cons (no_v75700335558) (.cons (no_v75700321734) (.cons (no_v75700231622) (.cons (no_v75706200310) .nil))))))))

private def v75700649210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v75700649210 : ¬ MinimalInterpreter v75700649210 :=
  chain_cut false 2 (by decide)

private def v75700645754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v75700645754 : ¬ MinimalInterpreter v75700645754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (so_dead (by decide) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75700681850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 3))) (.var 0)))))))
private theorem no_v75700681850 : ¬ MinimalInterpreter v75700681850 :=
  chain_cut true 5 (by decide)

private def v75700309882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 3)))) (.var 0))))))
private theorem no_v75700309882 : ¬ MinimalInterpreter v75700309882 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 3)))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.app (.var 2) (.var 3)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.app (.var 1) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700321402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 3)))) (.var 0))))))
private theorem no_v75700321402 : ¬ MinimalInterpreter v75700321402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 1)))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.app (.var 0) (so_dead (by decide) (.var 1))) (by decide) (by decide)))))

private def v75700231290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 3))) (.var 0))))))
private theorem no_v75700231290 : ¬ MinimalInterpreter v75700231290 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 3))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 3))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75706154234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v75706154234 : ¬ MinimalInterpreter v75706154234 :=
  chain_cut false 4 (by decide)

private def v75706150778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v75706150778 : ¬ MinimalInterpreter v75706150778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (.app (.var 1) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

theorem row83 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [1,2,3,0]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [1,2,3,0] = [v75700649210,v75700645754,v75700681850,v75700309882,v75700321402,v75700231290,v75706154234,v75706150778] := by decide
  rw [h]
  exact (.cons (no_v75700649210) (.cons (no_v75700645754) (.cons (no_v75700681850) (.cons (no_v75700309882) (.cons (no_v75700321402) (.cons (no_v75700231290) (.cons (no_v75706154234) (.cons (no_v75706150778) .nil))))))))

end Blc.SelfintSingleObject.Rows38
