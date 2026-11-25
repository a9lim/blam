import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v75700794166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v75700794166 : ¬ MinimalInterpreter v75700794166 :=
  chain_cut false 2 (by decide)

private def v75700794070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v75700794070 : ¬ MinimalInterpreter v75700794070 :=
  chain_cut false 2 (by decide)

private def v75700788534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v75700788534 : ¬ MinimalInterpreter v75700788534 :=
  chain_cut false 2 (by decide)

private def v75700788438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v75700788438 : ¬ MinimalInterpreter v75700788438 :=
  chain_cut false 2 (by decide)

private def v75700787030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v75700787030 : ¬ MinimalInterpreter v75700787030 :=
  chain_cut false 2 (by decide)

private def v75700351798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v75700351798 : ¬ MinimalInterpreter v75700351798 :=
  chain_cut false 2 (by decide)

private def v75700351702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v75700351702 : ¬ MinimalInterpreter v75700351702 :=
  chain_cut false 2 (by decide)

private def v75700346166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v75700346166 : ¬ MinimalInterpreter v75700346166 :=
  chain_cut false 2 (by decide)

private def v75700235574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v75700235574 : ¬ MinimalInterpreter v75700235574 :=
  chain_cut false 2 (by decide)

private def v75700346070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v75700346070 : ¬ MinimalInterpreter v75700346070 :=
  chain_cut false 2 (by decide)

private def v75700344662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 1))))))
private theorem no_v75700344662 : ¬ MinimalInterpreter v75700344662 :=
  chain_cut false 2 (by decide)

private def v75700235478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v75700235478 : ¬ MinimalInterpreter v75700235478 :=
  chain_cut false 2 (by decide)

private def v75700234070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v75700234070 : ¬ MinimalInterpreter v75700234070 :=
  chain_cut false 2 (by decide)

private def v75700206422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v75700206422 : ¬ MinimalInterpreter v75700206422 :=
  chain_cut false 2 (by decide)

theorem row42 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [2,1,0,0,1]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [2,1,0,0,1] = [v75700794166,v75700794070,v75700788534,v75700788438,v75700787030,v75700351798,v75700351702,v75700346166,v75700235574,v75700346070,v75700344662,v75700235478,v75700234070,v75700206422] := by decide
  rw [h]
  exact (.cons (no_v75700794166) (.cons (no_v75700794070) (.cons (no_v75700788534) (.cons (no_v75700788438) (.cons (no_v75700787030) (.cons (no_v75700351798) (.cons (no_v75700351702) (.cons (no_v75700346166) (.cons (no_v75700235574) (.cons (no_v75700346070) (.cons (no_v75700344662) (.cons (no_v75700235478) (.cons (no_v75700234070) (.cons (no_v75700206422) .nil))))))))))))))

private def v75700794170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v75700794170 : ¬ MinimalInterpreter v75700794170 :=
  chain_cut false 2 (by decide)

private def v75700794074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v75700794074 : ¬ MinimalInterpreter v75700794074 :=
  chain_cut false 2 (by decide)

private def v75700788538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v75700788538 : ¬ MinimalInterpreter v75700788538 :=
  chain_cut false 2 (by decide)

private def v75700788442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v75700788442 : ¬ MinimalInterpreter v75700788442 :=
  chain_cut false 2 (by decide)

private def v75700787034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v75700787034 : ¬ MinimalInterpreter v75700787034 :=
  chain_cut false 2 (by decide)

private def v75700351802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v75700351802 : ¬ MinimalInterpreter v75700351802 :=
  chain_cut false 2 (by decide)

private def v75700351706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v75700351706 : ¬ MinimalInterpreter v75700351706 :=
  chain_cut false 2 (by decide)

private def v75700346170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v75700346170 : ¬ MinimalInterpreter v75700346170 :=
  chain_cut false 2 (by decide)

private def v75700235578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v75700235578 : ¬ MinimalInterpreter v75700235578 :=
  chain_cut false 2 (by decide)

private def v75700346074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 0))))))
private theorem no_v75700346074 : ¬ MinimalInterpreter v75700346074 :=
  chain_cut false 2 (by decide)

private def v75700344666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 0))))))
private theorem no_v75700344666 : ¬ MinimalInterpreter v75700344666 :=
  chain_cut false 2 (by decide)

private def v75700235482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v75700235482 : ¬ MinimalInterpreter v75700235482 :=
  chain_cut false 2 (by decide)

private def v75700234074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v75700234074 : ¬ MinimalInterpreter v75700234074 :=
  chain_cut false 2 (by decide)

private def v75700206426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v75700206426 : ¬ MinimalInterpreter v75700206426 :=
  chain_cut false 2 (by decide)

theorem row43 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [2,1,0,1,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [2,1,0,1,0] = [v75700794170,v75700794074,v75700788538,v75700788442,v75700787034,v75700351802,v75700351706,v75700346170,v75700235578,v75700346074,v75700344666,v75700235482,v75700234074,v75700206426] := by decide
  rw [h]
  exact (.cons (no_v75700794170) (.cons (no_v75700794074) (.cons (no_v75700788538) (.cons (no_v75700788442) (.cons (no_v75700787034) (.cons (no_v75700351802) (.cons (no_v75700351706) (.cons (no_v75700346170) (.cons (no_v75700235578) (.cons (no_v75700346074) (.cons (no_v75700344666) (.cons (no_v75700235482) (.cons (no_v75700234074) (.cons (no_v75700206426) .nil))))))))))))))

private def v75700794266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v75700794266 : ¬ MinimalInterpreter v75700794266 :=
  chain_cut false 2 (by decide)

private def v75700794090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v75700794090 : ¬ MinimalInterpreter v75700794090 :=
  chain_cut false 2 (by decide)

private def v75700788634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v75700788634 : ¬ MinimalInterpreter v75700788634 :=
  chain_cut false 2 (by decide)

private def v75700788458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v75700788458 : ¬ MinimalInterpreter v75700788458 :=
  chain_cut false 2 (by decide)

private def v75700787050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v75700787050 : ¬ MinimalInterpreter v75700787050 :=
  chain_cut false 2 (by decide)

private def v75700351898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v75700351898 : ¬ MinimalInterpreter v75700351898 :=
  chain_cut false 2 (by decide)

private def v75700351722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v75700351722 : ¬ MinimalInterpreter v75700351722 :=
  chain_cut false 2 (by decide)

private def v75700346266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0)))))))
private theorem no_v75700346266 : ¬ MinimalInterpreter v75700346266 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700235674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v75700235674 : ¬ MinimalInterpreter v75700235674 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700346090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 0))))))
private theorem no_v75700346090 : ¬ MinimalInterpreter v75700346090 :=
  chain_cut false 2 (by decide)

private def v75700344682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 0))))))
private theorem no_v75700344682 : ¬ MinimalInterpreter v75700344682 :=
  chain_cut false 2 (by decide)

private def v75700235498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v75700235498 : ¬ MinimalInterpreter v75700235498 :=
  chain_cut false 2 (by decide)

private def v75700234090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 0))))))
private theorem no_v75700234090 : ¬ MinimalInterpreter v75700234090 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75700206442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v75700206442 : ¬ MinimalInterpreter v75700206442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row44 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [2,1,1,0,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [2,1,1,0,0] = [v75700794266,v75700794090,v75700788634,v75700788458,v75700787050,v75700351898,v75700351722,v75700346266,v75700235674,v75700346090,v75700344682,v75700235498,v75700234090,v75700206442] := by decide
  rw [h]
  exact (.cons (no_v75700794266) (.cons (no_v75700794090) (.cons (no_v75700788634) (.cons (no_v75700788458) (.cons (no_v75700787050) (.cons (no_v75700351898) (.cons (no_v75700351722) (.cons (no_v75700346266) (.cons (no_v75700235674) (.cons (no_v75700346090) (.cons (no_v75700344682) (.cons (no_v75700235498) (.cons (no_v75700234090) (.cons (no_v75700206442) .nil))))))))))))))

theorem row45 : BadRow (row ⟨0,2,0,2,5,4⟩ [0,0] [2,2,0,0,0]) := by
  have h : row ⟨0,2,0,2,5,4⟩ [0,0] [2,2,0,0,0] = [] := by decide
  rw [h]
  exact .nil

theorem row46 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [0,0,2,2]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [0,0,2,2] = [] := by decide
  rw [h]
  exact .nil

private def v75598241006 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v75598241006 : ¬ MinimalInterpreter v75598241006 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75598239598 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v75598239598 : ¬ MinimalInterpreter v75598239598 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v75598228718 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v75598228718 : ¬ MinimalInterpreter v75598228718 :=
  chain_cut true 3 (by decide)

private def v75598227310 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v75598227310 : ¬ MinimalInterpreter v75598227310 :=
  chain_cut true 3 (by decide)

private def v75598224238 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v75598224238 : ¬ MinimalInterpreter v75598224238 :=
  chain_cut true 3 (by decide)

private def v74792934638 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v74792934638 : ¬ MinimalInterpreter v74792934638 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v74792933230 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v74792933230 : ¬ MinimalInterpreter v74792933230 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v74792922350 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v74792922350 : ¬ MinimalInterpreter v74792922350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v74792920942 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v74792920942 : ¬ MinimalInterpreter v74792920942 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v74792917870 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v74792917870 : ¬ MinimalInterpreter v74792917870 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row47 : BadRow (row ⟨0,3,0,2,4,4⟩ [0,0,0] [0,1,1,2]) := by
  have h : row ⟨0,3,0,2,4,4⟩ [0,0,0] [0,1,1,2] = [v75598241006,v75598239598,v75598228718,v75598227310,v75598224238,v74792934638,v74792933230,v74792922350,v74792920942,v74792917870] := by decide
  rw [h]
  exact (.cons (no_v75598241006) (.cons (no_v75598239598) (.cons (no_v75598228718) (.cons (no_v75598227310) (.cons (no_v75598224238) (.cons (no_v74792934638) (.cons (no_v74792933230) (.cons (no_v74792922350) (.cons (no_v74792920942) (.cons (no_v74792917870) .nil))))))))))

end Blc.SelfintSingleObject.Rows38
