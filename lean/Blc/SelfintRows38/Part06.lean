import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row36 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [2,0,0,0,2]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [2,0,0,0,2] = [] := by decide
  rw [h]
  exact .nil

private def v75700790902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v75700790902 : ¬ MinimalInterpreter v75700790902 :=
  chain_cut false 2 (by decide)

private def v75700790710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v75700790710 : ¬ MinimalInterpreter v75700790710 :=
  chain_cut false 2 (by decide)

private def v75700787830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v75700787830 : ¬ MinimalInterpreter v75700787830 :=
  chain_cut false 2 (by decide)

private def v75700787638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v75700787638 : ¬ MinimalInterpreter v75700787638 :=
  chain_cut false 2 (by decide)

private def v75700786870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v75700786870 : ¬ MinimalInterpreter v75700786870 :=
  chain_cut false 2 (by decide)

private def v75700348534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v75700348534 : ¬ MinimalInterpreter v75700348534 :=
  chain_cut false 2 (by decide)

private def v75700348342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v75700348342 : ¬ MinimalInterpreter v75700348342 :=
  chain_cut false 2 (by decide)

private def v75700345462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1)))))))
private theorem no_v75700345462 : ¬ MinimalInterpreter v75700345462 :=
  chain_cut false 2 (by decide)

private def v75700234870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v75700234870 : ¬ MinimalInterpreter v75700234870 :=
  chain_cut false 2 (by decide)

private def v75700345270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 1))))))
private theorem no_v75700345270 : ¬ MinimalInterpreter v75700345270 :=
  chain_cut false 2 (by decide)

private def v75700344502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1))))))
private theorem no_v75700344502 : ¬ MinimalInterpreter v75700344502 :=
  chain_cut false 2 (by decide)

private def v75700234678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v75700234678 : ¬ MinimalInterpreter v75700234678 :=
  chain_cut false 2 (by decide)

private def v75700233910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.var 1))))))
private theorem no_v75700233910 : ¬ MinimalInterpreter v75700233910 :=
  chain_cut false 2 (by decide)

private def v75700206262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v75700206262 : ¬ MinimalInterpreter v75700206262 :=
  chain_cut false 2 (by decide)

theorem row37 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [2,0,0,1,1]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [2,0,0,1,1] = [v75700790902,v75700790710,v75700787830,v75700787638,v75700786870,v75700348534,v75700348342,v75700345462,v75700234870,v75700345270,v75700344502,v75700234678,v75700233910,v75700206262] := by decide
  rw [h]
  exact (.cons (no_v75700790902) (.cons (no_v75700790710) (.cons (no_v75700787830) (.cons (no_v75700787638) (.cons (no_v75700786870) (.cons (no_v75700348534) (.cons (no_v75700348342) (.cons (no_v75700345462) (.cons (no_v75700234870) (.cons (no_v75700345270) (.cons (no_v75700344502) (.cons (no_v75700234678) (.cons (no_v75700233910) (.cons (no_v75700206262) .nil))))))))))))))

theorem row38 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [2,0,0,2,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [2,0,0,2,0] = [] := by decide
  rw [h]
  exact .nil

private def v75700791094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v75700791094 : ¬ MinimalInterpreter v75700791094 :=
  chain_cut false 2 (by decide)

private def v75700790742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v75700790742 : ¬ MinimalInterpreter v75700790742 :=
  chain_cut false 2 (by decide)

private def v75700788022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v75700788022 : ¬ MinimalInterpreter v75700788022 :=
  chain_cut false 2 (by decide)

private def v75700787670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v75700787670 : ¬ MinimalInterpreter v75700787670 :=
  chain_cut false 2 (by decide)

private def v75700786902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v75700786902 : ¬ MinimalInterpreter v75700786902 :=
  chain_cut false 2 (by decide)

private def v75700348726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v75700348726 : ¬ MinimalInterpreter v75700348726 :=
  chain_cut false 2 (by decide)

private def v75700348374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v75700348374 : ¬ MinimalInterpreter v75700348374 :=
  chain_cut false 2 (by decide)

private def v75700345654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v75700345654 : ¬ MinimalInterpreter v75700345654 :=
  chain_cut false 2 (by decide)

private def v75700235062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v75700235062 : ¬ MinimalInterpreter v75700235062 :=
  chain_cut false 2 (by decide)

private def v75700345302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 1))))))
private theorem no_v75700345302 : ¬ MinimalInterpreter v75700345302 :=
  chain_cut false 2 (by decide)

private def v75700344534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 1))))))
private theorem no_v75700344534 : ¬ MinimalInterpreter v75700344534 :=
  chain_cut false 2 (by decide)

private def v75700234710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v75700234710 : ¬ MinimalInterpreter v75700234710 :=
  chain_cut false 2 (by decide)

private def v75700233942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v75700233942 : ¬ MinimalInterpreter v75700233942 :=
  chain_cut false 2 (by decide)

private def v75700206294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v75700206294 : ¬ MinimalInterpreter v75700206294 :=
  chain_cut false 2 (by decide)

theorem row39 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [2,0,1,0,1]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [2,0,1,0,1] = [v75700791094,v75700790742,v75700788022,v75700787670,v75700786902,v75700348726,v75700348374,v75700345654,v75700235062,v75700345302,v75700344534,v75700234710,v75700233942,v75700206294] := by decide
  rw [h]
  exact (.cons (no_v75700791094) (.cons (no_v75700790742) (.cons (no_v75700788022) (.cons (no_v75700787670) (.cons (no_v75700786902) (.cons (no_v75700348726) (.cons (no_v75700348374) (.cons (no_v75700345654) (.cons (no_v75700235062) (.cons (no_v75700345302) (.cons (no_v75700344534) (.cons (no_v75700234710) (.cons (no_v75700233942) (.cons (no_v75700206294) .nil))))))))))))))

private def v75700791098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v75700791098 : ¬ MinimalInterpreter v75700791098 :=
  chain_cut false 2 (by decide)

private def v75700790746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v75700790746 : ¬ MinimalInterpreter v75700790746 :=
  chain_cut false 2 (by decide)

private def v75700788026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v75700788026 : ¬ MinimalInterpreter v75700788026 :=
  chain_cut false 2 (by decide)

private def v75700787674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v75700787674 : ¬ MinimalInterpreter v75700787674 :=
  chain_cut false 2 (by decide)

private def v75700786906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v75700786906 : ¬ MinimalInterpreter v75700786906 :=
  chain_cut false 2 (by decide)

private def v75700348730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v75700348730 : ¬ MinimalInterpreter v75700348730 :=
  chain_cut false 2 (by decide)

private def v75700348378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v75700348378 : ¬ MinimalInterpreter v75700348378 :=
  chain_cut false 2 (by decide)

private def v75700345658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v75700345658 : ¬ MinimalInterpreter v75700345658 :=
  chain_cut false 2 (by decide)

private def v75700235066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v75700235066 : ¬ MinimalInterpreter v75700235066 :=
  chain_cut false 2 (by decide)

private def v75700345306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 0))))))
private theorem no_v75700345306 : ¬ MinimalInterpreter v75700345306 :=
  chain_cut false 2 (by decide)

private def v75700344538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 0))))))
private theorem no_v75700344538 : ¬ MinimalInterpreter v75700344538 :=
  chain_cut false 2 (by decide)

private def v75700234714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v75700234714 : ¬ MinimalInterpreter v75700234714 :=
  chain_cut false 2 (by decide)

private def v75700233946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v75700233946 : ¬ MinimalInterpreter v75700233946 :=
  chain_cut false 2 (by decide)

private def v75700206298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v75700206298 : ¬ MinimalInterpreter v75700206298 :=
  chain_cut false 2 (by decide)

theorem row40 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [2,0,1,1,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [2,0,1,1,0] = [v75700791098,v75700790746,v75700788026,v75700787674,v75700786906,v75700348730,v75700348378,v75700345658,v75700235066,v75700345306,v75700344538,v75700234714,v75700233946,v75700206298] := by decide
  rw [h]
  exact (.cons (no_v75700791098) (.cons (no_v75700790746) (.cons (no_v75700788026) (.cons (no_v75700787674) (.cons (no_v75700786906) (.cons (no_v75700348730) (.cons (no_v75700348378) (.cons (no_v75700345658) (.cons (no_v75700235066) (.cons (no_v75700345306) (.cons (no_v75700344538) (.cons (no_v75700234714) (.cons (no_v75700233946) (.cons (no_v75700206298) .nil))))))))))))))

theorem row41 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [2,0,2,0,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [2,0,2,0,0] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows38
