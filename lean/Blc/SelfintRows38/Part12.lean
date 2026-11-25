import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75700403438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 2)))))))))
private theorem no_v75700403438 : ¬ MinimalInterpreter v75700403438 :=
  chain_cut false 2 (by decide)

private def v75700395886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 2))))))))
private theorem no_v75700395886 : ¬ MinimalInterpreter v75700395886 :=
  chain_cut false 2 (by decide)

private def v75700255982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 2)))))))
private theorem no_v75700255982 : ¬ MinimalInterpreter v75700255982 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75700211566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 2))))))
private theorem no_v75700211566 : ¬ MinimalInterpreter v75700211566 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)

private def v75705122030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 2)))))))))
private theorem no_v75705122030 : ¬ MinimalInterpreter v75705122030 :=
  chain_cut false 2 (by decide)

private def v75705114478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 2))))))))
private theorem no_v75705114478 : ¬ MinimalInterpreter v75705114478 :=
  chain_cut false 2 (by decide)

private def v75723996398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 2)))))))))
private theorem no_v75723996398 : ¬ MinimalInterpreter v75723996398 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75723988846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 2))))))))
private theorem no_v75723988846 : ¬ MinimalInterpreter v75723988846 :=
  chain_cut false 5 (by decide)

theorem row72 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [0,3,1,2]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [0,3,1,2] = [v75700403438,v75700395886,v75700255982,v75700211566,v75705122030,v75705114478,v75723996398,v75723988846] := by decide
  rw [h]
  exact (.cons (no_v75700403438) (.cons (no_v75700395886) (.cons (no_v75700255982) (.cons (no_v75700211566) (.cons (no_v75705122030) (.cons (no_v75705114478) (.cons (no_v75723996398) (.cons (no_v75723988846) .nil))))))))

private def v75700403446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 2) (.var 1)))))))))
private theorem no_v75700403446 : ¬ MinimalInterpreter v75700403446 :=
  chain_cut false 2 (by decide)

private def v75700395894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))))))
private theorem no_v75700395894 : ¬ MinimalInterpreter v75700395894 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (.app (.var 0) (so_dead (by decide) (.app (.app (.var 3) (.var 2)) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700255990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 2) (.var 1)))))))
private theorem no_v75700255990 : ¬ MinimalInterpreter v75700255990 :=
  chain_cut true 3 (by decide)

private def v75700248438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 1))))))
private theorem no_v75700248438 : ¬ MinimalInterpreter v75700248438 :=
  chain_cut false 2 (by decide)

private def v75700211574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 2)) (.var 1))))))
private theorem no_v75700211574 : ¬ MinimalInterpreter v75700211574 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75705122038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 1)))))))))
private theorem no_v75705122038 : ¬ MinimalInterpreter v75705122038 :=
  chain_cut false 2 (by decide)

private def v75705114486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))))))
private theorem no_v75705114486 : ¬ MinimalInterpreter v75705114486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 3) (.var 2)) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75723996406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 1)))))))))
private theorem no_v75723996406 : ¬ MinimalInterpreter v75723996406 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75723988854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 1))))))))
private theorem no_v75723988854 : ¬ MinimalInterpreter v75723988854 :=
  w_cut false 0 (by decide)

theorem row73 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [0,3,2,1]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [0,3,2,1] = [v75700403446,v75700395894,v75700255990,v75700248438,v75700211574,v75705122038,v75705114486,v75723996406,v75723988854] := by decide
  rw [h]
  exact (.cons (no_v75700403446) (.cons (no_v75700395894) (.cons (no_v75700255990) (.cons (no_v75700248438) (.cons (no_v75700211574) (.cons (no_v75705122038) (.cons (no_v75705114486) (.cons (no_v75723996406) (.cons (no_v75723988854) .nil)))))))))

theorem row74 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [0,3,3,0]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [0,3,3,0] = [] := by decide
  rw [h]
  exact .nil

private def v75700646878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v75700646878 : ¬ MinimalInterpreter v75700646878 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (so_dead (by decide) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75700645342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v75700645342 : ¬ MinimalInterpreter v75700645342 :=
  chain_cut false 2 (by decide)

private def v75700683742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v75700683742 : ¬ MinimalInterpreter v75700683742 :=
  chain_cut false 2 (by decide)

private def v75700686622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 3)))))))))
private theorem no_v75700686622 : ¬ MinimalInterpreter v75700686622 :=
  chain_cut true 4 (by decide)

private def v75700680478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 3))))))))
private theorem no_v75700680478 : ¬ MinimalInterpreter v75700680478 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700323294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 2) (.var 3))))))))
private theorem no_v75700323294 : ¬ MinimalInterpreter v75700323294 :=
  chain_cut false 2 (by decide)

private def v75700326174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 3))))))))
private theorem no_v75700326174 : ¬ MinimalInterpreter v75700326174 :=
  chain_cut true 4 (by decide)

private def v75700320030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 3)))))))
private theorem no_v75700320030 : ¬ MinimalInterpreter v75700320030 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700229918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 3)))))))
private theorem no_v75700229918 : ¬ MinimalInterpreter v75700229918 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706151902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v75706151902 : ¬ MinimalInterpreter v75706151902 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (.app (.var 1) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75706150366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v75706150366 : ¬ MinimalInterpreter v75706150366 :=
  chain_cut false 4 (by decide)

private def v75706188766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v75706188766 : ¬ MinimalInterpreter v75706188766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.app (.var 1) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row75 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [1,0,2,3]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [1,0,2,3] = [v75700646878,v75700645342,v75700683742,v75700686622,v75700680478,v75700323294,v75700326174,v75700320030,v75700229918,v75706151902,v75706150366,v75706188766] := by decide
  rw [h]
  exact (.cons (no_v75700646878) (.cons (no_v75700645342) (.cons (no_v75700683742) (.cons (no_v75700686622) (.cons (no_v75700680478) (.cons (no_v75700323294) (.cons (no_v75700326174) (.cons (no_v75700320030) (.cons (no_v75700229918) (.cons (no_v75706151902) (.cons (no_v75706150366) (.cons (no_v75706188766) .nil))))))))))))

private def v75700646894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v75700646894 : ¬ MinimalInterpreter v75700646894 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (so_dead (by decide) (.app (.var 1) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75700645358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v75700645358 : ¬ MinimalInterpreter v75700645358 :=
  chain_cut false 2 (by decide)

private def v75700683758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v75700683758 : ¬ MinimalInterpreter v75700683758 :=
  chain_cut false 2 (by decide)

private def v75700679150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 2)))))))
private theorem no_v75700679150 : ¬ MinimalInterpreter v75700679150 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700323310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.var 2))))))))
private theorem no_v75700323310 : ¬ MinimalInterpreter v75700323310 :=
  chain_cut false 2 (by decide)

private def v75700318702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 2))))))
private theorem no_v75700318702 : ¬ MinimalInterpreter v75700318702 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75700228590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 2))))))
private theorem no_v75700228590 : ¬ MinimalInterpreter v75700228590 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706151918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v75706151918 : ¬ MinimalInterpreter v75706151918 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (.app (.var 1) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v75706150382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v75706150382 : ¬ MinimalInterpreter v75706150382 :=
  chain_cut false 4 (by decide)

private def v75706188782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v75706188782 : ¬ MinimalInterpreter v75706188782 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.app (.var 1) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row76 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [1,0,3,2]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [1,0,3,2] = [v75700646894,v75700645358,v75700683758,v75700679150,v75700323310,v75700318702,v75700228590,v75706151918,v75706150382,v75706188782] := by decide
  rw [h]
  exact (.cons (no_v75700646894) (.cons (no_v75700645358) (.cons (no_v75700683758) (.cons (no_v75700679150) (.cons (no_v75700323310) (.cons (no_v75700318702) (.cons (no_v75700228590) (.cons (no_v75706151918) (.cons (no_v75706150382) (.cons (no_v75706188782) .nil))))))))))

private def v75700648414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 1) (.var 3)))))))))
private theorem no_v75700648414 : ¬ MinimalInterpreter v75700648414 :=
  chain_cut false 2 (by decide)

private def v75700645598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.var 3))))))))
private theorem no_v75700645598 : ¬ MinimalInterpreter v75700645598 :=
  chain_cut false 2 (by decide)

private def v75700691422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v75700691422 : ¬ MinimalInterpreter v75700691422 :=
  chain_cut false 2 (by decide)

private def v75700330974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.var 3))))))))
private theorem no_v75700330974 : ¬ MinimalInterpreter v75700330974 :=
  chain_cut false 2 (by decide)

private def v75706196446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v75706196446 : ¬ MinimalInterpreter v75706196446 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row77 : BadRow (row ⟨0,2,0,3,4,6⟩ [0,0] [1,1,1,3]) := by
  have h : row ⟨0,2,0,3,4,6⟩ [0,0] [1,1,1,3] = [v75700648414,v75700645598,v75700691422,v75700330974,v75706196446] := by decide
  rw [h]
  exact (.cons (no_v75700648414) (.cons (no_v75700645598) (.cons (no_v75700691422) (.cons (no_v75700330974) (.cons (no_v75706196446) .nil)))))

end Blc.SelfintSingleObject.Rows38
