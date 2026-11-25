import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row30 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,1,1,0,1]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,1,1,0,1] = [] := by decide
  rw [h]
  exact .nil

theorem row31 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,1,1,1,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,1,1,1,0] = [] := by decide
  rw [h]
  exact .nil

private def v75700692890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v75700692890 : ¬ MinimalInterpreter v75700692890 :=
  chain_cut false 2 (by decide)

private def v75700692458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v75700692458 : ¬ MinimalInterpreter v75700692458 :=
  chain_cut false 2 (by decide)

private def v75700681626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v75700681626 : ¬ MinimalInterpreter v75700681626 :=
  chain_cut false 2 (by decide)

private def v75700681194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v75700681194 : ¬ MinimalInterpreter v75700681194 :=
  chain_cut false 2 (by decide)

private def v75700678378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v75700678378 : ¬ MinimalInterpreter v75700678378 :=
  chain_cut false 2 (by decide)

private def v75700332442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v75700332442 : ¬ MinimalInterpreter v75700332442 :=
  chain_cut false 2 (by decide)

private def v75700332010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v75700332010 : ¬ MinimalInterpreter v75700332010 :=
  chain_cut false 2 (by decide)

private def v75700321178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v75700321178 : ¬ MinimalInterpreter v75700321178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700231066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v75700231066 : ¬ MinimalInterpreter v75700231066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700320746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))))))
private theorem no_v75700320746 : ¬ MinimalInterpreter v75700320746 :=
  chain_cut false 2 (by decide)

private def v75700317930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))))))
private theorem no_v75700317930 : ¬ MinimalInterpreter v75700317930 :=
  chain_cut false 2 (by decide)

private def v75700230634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v75700230634 : ¬ MinimalInterpreter v75700230634 :=
  chain_cut false 2 (by decide)

private def v75700227818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v75700227818 : ¬ MinimalInterpreter v75700227818 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700205290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v75700205290 : ¬ MinimalInterpreter v75700205290 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75706197914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v75706197914 : ¬ MinimalInterpreter v75706197914 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706197482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v75706197482 : ¬ MinimalInterpreter v75706197482 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706186650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v75706186650 : ¬ MinimalInterpreter v75706186650 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75706186218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v75706186218 : ¬ MinimalInterpreter v75706186218 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706183402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v75706183402 : ¬ MinimalInterpreter v75706183402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75704842730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0)))))
private theorem no_v75704842730 : ¬ MinimalInterpreter v75704842730 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75704839914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0)))))
private theorem no_v75704839914 : ¬ MinimalInterpreter v75704839914 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

theorem row32 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,1,2,0,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,1,2,0,0] = [v75700692890,v75700692458,v75700681626,v75700681194,v75700678378,v75700332442,v75700332010,v75700321178,v75700231066,v75700320746,v75700317930,v75700230634,v75700227818,v75700205290,v75706197914,v75706197482,v75706186650,v75706186218,v75706183402,v75704842730,v75704839914] := by decide
  rw [h]
  exact (.cons (no_v75700692890) (.cons (no_v75700692458) (.cons (no_v75700681626) (.cons (no_v75700681194) (.cons (no_v75700678378) (.cons (no_v75700332442) (.cons (no_v75700332010) (.cons (no_v75700321178) (.cons (no_v75700231066) (.cons (no_v75700320746) (.cons (no_v75700317930) (.cons (no_v75700230634) (.cons (no_v75700227818) (.cons (no_v75700205290) (.cons (no_v75706197914) (.cons (no_v75706197482) (.cons (no_v75706186650) (.cons (no_v75706186218) (.cons (no_v75706183402) (.cons (no_v75704842730) (.cons (no_v75704839914) .nil)))))))))))))))))))))

private def v75700695862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v75700695862 : ¬ MinimalInterpreter v75700695862 :=
  chain_cut false 2 (by decide)

private def v75700695766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v75700695766 : ¬ MinimalInterpreter v75700695766 :=
  chain_cut false 2 (by decide)

private def v75700682038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v75700682038 : ¬ MinimalInterpreter v75700682038 :=
  chain_cut false 2 (by decide)

private def v75700681942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v75700681942 : ¬ MinimalInterpreter v75700681942 :=
  chain_cut false 2 (by decide)

private def v75700678486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v75700678486 : ¬ MinimalInterpreter v75700678486 :=
  chain_cut false 2 (by decide)

private def v75700335414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v75700335414 : ¬ MinimalInterpreter v75700335414 :=
  chain_cut false 2 (by decide)

private def v75700335318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v75700335318 : ¬ MinimalInterpreter v75700335318 :=
  chain_cut false 2 (by decide)

private def v75700321590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v75700321590 : ¬ MinimalInterpreter v75700321590 :=
  chain_cut false 2 (by decide)

private def v75700231478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v75700231478 : ¬ MinimalInterpreter v75700231478 :=
  chain_cut false 2 (by decide)

private def v75700321494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v75700321494 : ¬ MinimalInterpreter v75700321494 :=
  chain_cut false 2 (by decide)

private def v75700318038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1))))))
private theorem no_v75700318038 : ¬ MinimalInterpreter v75700318038 :=
  chain_cut false 2 (by decide)

private def v75700231382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v75700231382 : ¬ MinimalInterpreter v75700231382 :=
  chain_cut false 2 (by decide)

private def v75700227926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v75700227926 : ¬ MinimalInterpreter v75700227926 :=
  chain_cut false 2 (by decide)

private def v75700205398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v75700205398 : ¬ MinimalInterpreter v75700205398 :=
  chain_cut false 2 (by decide)

private def v75706200886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v75706200886 : ¬ MinimalInterpreter v75706200886 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706200790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v75706200790 : ¬ MinimalInterpreter v75706200790 :=
  w_cut false 0 (by decide)

private def v75706187062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v75706187062 : ¬ MinimalInterpreter v75706187062 :=
  w_cut false 0 (by decide)

private def v75706186966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v75706186966 : ¬ MinimalInterpreter v75706186966 :=
  w_cut false 0 (by decide)

private def v75706183510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v75706183510 : ¬ MinimalInterpreter v75706183510 :=
  w_cut false 0 (by decide)

theorem row33 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,2,0,0,1]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,2,0,0,1] = [v75700695862,v75700695766,v75700682038,v75700681942,v75700678486,v75700335414,v75700335318,v75700321590,v75700231478,v75700321494,v75700318038,v75700231382,v75700227926,v75700205398,v75706200886,v75706200790,v75706187062,v75706186966,v75706183510] := by decide
  rw [h]
  exact (.cons (no_v75700695862) (.cons (no_v75700695766) (.cons (no_v75700682038) (.cons (no_v75700681942) (.cons (no_v75700678486) (.cons (no_v75700335414) (.cons (no_v75700335318) (.cons (no_v75700321590) (.cons (no_v75700231478) (.cons (no_v75700321494) (.cons (no_v75700318038) (.cons (no_v75700231382) (.cons (no_v75700227926) (.cons (no_v75700205398) (.cons (no_v75706200886) (.cons (no_v75706200790) (.cons (no_v75706187062) (.cons (no_v75706186966) (.cons (no_v75706183510) .nil)))))))))))))))))))

private def v75700695866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v75700695866 : ¬ MinimalInterpreter v75700695866 :=
  chain_cut false 2 (by decide)

private def v75700695770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v75700695770 : ¬ MinimalInterpreter v75700695770 :=
  chain_cut false 2 (by decide)

private def v75700682042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v75700682042 : ¬ MinimalInterpreter v75700682042 :=
  chain_cut false 2 (by decide)

private def v75700681946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v75700681946 : ¬ MinimalInterpreter v75700681946 :=
  chain_cut false 2 (by decide)

private def v75700678490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v75700678490 : ¬ MinimalInterpreter v75700678490 :=
  chain_cut false 2 (by decide)

private def v75700335418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v75700335418 : ¬ MinimalInterpreter v75700335418 :=
  chain_cut false 2 (by decide)

private def v75700335322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v75700335322 : ¬ MinimalInterpreter v75700335322 :=
  chain_cut false 2 (by decide)

private def v75700321594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v75700321594 : ¬ MinimalInterpreter v75700321594 :=
  chain_cut false 2 (by decide)

private def v75700231482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v75700231482 : ¬ MinimalInterpreter v75700231482 :=
  chain_cut false 2 (by decide)

private def v75700321498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0))))))
private theorem no_v75700321498 : ¬ MinimalInterpreter v75700321498 :=
  chain_cut false 2 (by decide)

private def v75700318042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))))))
private theorem no_v75700318042 : ¬ MinimalInterpreter v75700318042 :=
  chain_cut false 2 (by decide)

private def v75700231386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v75700231386 : ¬ MinimalInterpreter v75700231386 :=
  chain_cut false 2 (by decide)

private def v75700227930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v75700227930 : ¬ MinimalInterpreter v75700227930 :=
  chain_cut false 2 (by decide)

private def v75700205402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v75700205402 : ¬ MinimalInterpreter v75700205402 :=
  chain_cut false 2 (by decide)

private def v75706200890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v75706200890 : ¬ MinimalInterpreter v75706200890 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706200794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v75706200794 : ¬ MinimalInterpreter v75706200794 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706187066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v75706187066 : ¬ MinimalInterpreter v75706187066 :=
  w_cut false 0 (by decide)

private def v75706186970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v75706186970 : ¬ MinimalInterpreter v75706186970 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706183514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v75706183514 : ¬ MinimalInterpreter v75706183514 :=
  w_cut false 0 (by decide)

private def v75704843482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0)))))
private theorem no_v75704843482 : ¬ MinimalInterpreter v75704843482 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75704840026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.var 0)))))
private theorem no_v75704840026 : ¬ MinimalInterpreter v75704840026 :=
  w_cut false 0 (by decide)

theorem row34 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,2,0,1,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,2,0,1,0] = [v75700695866,v75700695770,v75700682042,v75700681946,v75700678490,v75700335418,v75700335322,v75700321594,v75700231482,v75700321498,v75700318042,v75700231386,v75700227930,v75700205402,v75706200890,v75706200794,v75706187066,v75706186970,v75706183514,v75704843482,v75704840026] := by decide
  rw [h]
  exact (.cons (no_v75700695866) (.cons (no_v75700695770) (.cons (no_v75700682042) (.cons (no_v75700681946) (.cons (no_v75700678490) (.cons (no_v75700335418) (.cons (no_v75700335322) (.cons (no_v75700321594) (.cons (no_v75700231482) (.cons (no_v75700321498) (.cons (no_v75700318042) (.cons (no_v75700231386) (.cons (no_v75700227930) (.cons (no_v75700205402) (.cons (no_v75706200890) (.cons (no_v75706200794) (.cons (no_v75706187066) (.cons (no_v75706186970) (.cons (no_v75706183514) (.cons (no_v75704843482) (.cons (no_v75704840026) .nil)))))))))))))))))))))

private def v75700695962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v75700695962 : ¬ MinimalInterpreter v75700695962 :=
  chain_cut false 2 (by decide)

private def v75700695786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v75700695786 : ¬ MinimalInterpreter v75700695786 :=
  chain_cut false 2 (by decide)

private def v75700682138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v75700682138 : ¬ MinimalInterpreter v75700682138 :=
  chain_cut false 2 (by decide)

private def v75700681962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v75700681962 : ¬ MinimalInterpreter v75700681962 :=
  chain_cut false 2 (by decide)

private def v75700678506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v75700678506 : ¬ MinimalInterpreter v75700678506 :=
  chain_cut false 2 (by decide)

private def v75700335514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v75700335514 : ¬ MinimalInterpreter v75700335514 :=
  chain_cut false 2 (by decide)

private def v75700335338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v75700335338 : ¬ MinimalInterpreter v75700335338 :=
  chain_cut false 2 (by decide)

private def v75700321690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))))))
private theorem no_v75700321690 : ¬ MinimalInterpreter v75700321690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700231578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v75700231578 : ¬ MinimalInterpreter v75700231578 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700321514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0))))))
private theorem no_v75700321514 : ¬ MinimalInterpreter v75700321514 :=
  chain_cut false 2 (by decide)

private def v75700318058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))))))
private theorem no_v75700318058 : ¬ MinimalInterpreter v75700318058 :=
  chain_cut false 2 (by decide)

private def v75700231402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v75700231402 : ¬ MinimalInterpreter v75700231402 :=
  chain_cut false 2 (by decide)

private def v75700227946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))))))
private theorem no_v75700227946 : ¬ MinimalInterpreter v75700227946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700205418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v75700205418 : ¬ MinimalInterpreter v75700205418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75706200986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v75706200986 : ¬ MinimalInterpreter v75706200986 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706200810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v75706200810 : ¬ MinimalInterpreter v75706200810 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v75706187162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v75706187162 : ¬ MinimalInterpreter v75706187162 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75706186986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v75706186986 : ¬ MinimalInterpreter v75706186986 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75706183530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v75706183530 : ¬ MinimalInterpreter v75706183530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v75704843498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 0)))))
private theorem no_v75704843498 : ¬ MinimalInterpreter v75704843498 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v75704840042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0)))))
private theorem no_v75704840042 : ¬ MinimalInterpreter v75704840042 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

theorem row35 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [1,2,1,0,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [1,2,1,0,0] = [v75700695962,v75700695786,v75700682138,v75700681962,v75700678506,v75700335514,v75700335338,v75700321690,v75700231578,v75700321514,v75700318058,v75700231402,v75700227946,v75700205418,v75706200986,v75706200810,v75706187162,v75706186986,v75706183530,v75704843498,v75704840042] := by decide
  rw [h]
  exact (.cons (no_v75700695962) (.cons (no_v75700695786) (.cons (no_v75700682138) (.cons (no_v75700681962) (.cons (no_v75700678506) (.cons (no_v75700335514) (.cons (no_v75700335338) (.cons (no_v75700321690) (.cons (no_v75700231578) (.cons (no_v75700321514) (.cons (no_v75700318058) (.cons (no_v75700231402) (.cons (no_v75700227946) (.cons (no_v75700205418) (.cons (no_v75706200986) (.cons (no_v75706200810) (.cons (no_v75706187162) (.cons (no_v75706186986) (.cons (no_v75706183530) (.cons (no_v75704843498) (.cons (no_v75704840042) .nil)))))))))))))))))))))

end Blc.SelfintSingleObject.Rows38
