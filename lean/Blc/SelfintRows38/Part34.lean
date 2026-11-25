import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row204 : BadRow (row ⟨1,2,2,2,4,4⟩ [1,1] [2,2,0,0]) := by
  have h : row ⟨1,2,2,2,4,4⟩ [1,1] [2,2,0,0] = [] := by decide
  rw [h]
  exact .nil

private def v70464412126 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v70464412126 : ¬ MinimalInterpreter v70464412126 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v70464411358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v70464411358 : ¬ MinimalInterpreter v70464411358 :=
  cost_cut false 1 (by decide)

private def v70464399838 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))))))))
private theorem no_v70464399838 : ¬ MinimalInterpreter v70464399838 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v70464399070 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 3)))))))
private theorem no_v70464399070 : ¬ MinimalInterpreter v70464399070 :=
  cost_cut false 1 (by decide)

private def v70464395998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3)))))))
private theorem no_v70464395998 : ¬ MinimalInterpreter v70464395998 :=
  cost_cut false 1 (by decide)

private def v70464707038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v70464707038 : ¬ MinimalInterpreter v70464707038 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v70464706270 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v70464706270 : ¬ MinimalInterpreter v70464706270 :=
  cost_cut false 1 (by decide)

private def v70464726814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v70464726814 : ¬ MinimalInterpreter v70464726814 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v70464723742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v70464723742 : ¬ MinimalInterpreter v70464723742 :=
  cost_cut false 1 (by decide)

private def v70464677662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v70464677662 : ¬ MinimalInterpreter v70464677662 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v70464674590 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 3)))))))
private theorem no_v70464674590 : ¬ MinimalInterpreter v70464674590 :=
  cost_cut false 1 (by decide)

private def v70464662302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v70464662302 : ¬ MinimalInterpreter v70464662302 :=
  cost_cut false 1 (by decide)

private def v70465906462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v70465906462 : ¬ MinimalInterpreter v70465906462 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v70465903390 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v70465903390 : ¬ MinimalInterpreter v70465903390 :=
  cost_cut false 1 (by decide)

private def v70470605278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v70470605278 : ¬ MinimalInterpreter v70470605278 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v70470604510 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v70470604510 : ¬ MinimalInterpreter v70470604510 :=
  cost_cut false 1 (by decide)

private def v70470625054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v70470625054 : ¬ MinimalInterpreter v70470625054 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v70470621982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v70470621982 : ¬ MinimalInterpreter v70470621982 :=
  cost_cut false 1 (by decide)

theorem row205 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [0,0,1,3]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [0,0,1,3] = [v70464412126,v70464411358,v70464399838,v70464399070,v70464395998,v70464707038,v70464706270,v70464726814,v70464723742,v70464677662,v70464674590,v70464662302,v70465906462,v70465903390,v70470605278,v70470604510,v70470625054,v70470621982] := by decide
  rw [h]
  exact (.cons (no_v70464412126) (.cons (no_v70464411358) (.cons (no_v70464399838) (.cons (no_v70464399070) (.cons (no_v70464395998) (.cons (no_v70464707038) (.cons (no_v70464706270) (.cons (no_v70464726814) (.cons (no_v70464723742) (.cons (no_v70464677662) (.cons (no_v70464674590) (.cons (no_v70464662302) (.cons (no_v70465906462) (.cons (no_v70465903390) (.cons (no_v70470605278) (.cons (no_v70470604510) (.cons (no_v70470625054) (.cons (no_v70470621982) .nil))))))))))))))))))

private def v70464726926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v70464726926 : ¬ MinimalInterpreter v70464726926 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70464723854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v70464723854 : ¬ MinimalInterpreter v70464723854 :=
  cost_cut false 1 (by decide)

private def v70464723182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v70464723182 : ¬ MinimalInterpreter v70464723182 :=
  cost_cut false 1 (by decide)

private def v70464677774 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v70464677774 : ¬ MinimalInterpreter v70464677774 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70464674702 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 2)))))))
private theorem no_v70464674702 : ¬ MinimalInterpreter v70464674702 :=
  cost_cut false 1 (by decide)

private def v70464662414 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v70464662414 : ¬ MinimalInterpreter v70464662414 :=
  cost_cut false 1 (by decide)

private def v70464674030 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))
private theorem no_v70464674030 : ¬ MinimalInterpreter v70464674030 :=
  cost_cut false 1 (by decide)

private def v70464661742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2))))))
private theorem no_v70464661742 : ¬ MinimalInterpreter v70464661742 :=
  cost_cut false 1 (by decide)

private def v70465906574 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v70465906574 : ¬ MinimalInterpreter v70465906574 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v70465903502 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v70465903502 : ¬ MinimalInterpreter v70465903502 :=
  cost_cut false 1 (by decide)

private def v70465902830 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v70465902830 : ¬ MinimalInterpreter v70465902830 :=
  cost_cut false 1 (by decide)

private def v70470625166 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v70470625166 : ¬ MinimalInterpreter v70470625166 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v70470622094 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v70470622094 : ¬ MinimalInterpreter v70470622094 :=
  cost_cut false 1 (by decide)

private def v70470621422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v70470621422 : ¬ MinimalInterpreter v70470621422 :=
  cost_cut false 1 (by decide)

theorem row206 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [0,0,2,2]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [0,0,2,2] = [v70464726926,v70464723854,v70464723182,v70464677774,v70464674702,v70464662414,v70464674030,v70464661742,v70465906574,v70465903502,v70465902830,v70470625166,v70470622094,v70470621422] := by decide
  rw [h]
  exact (.cons (no_v70464726926) (.cons (no_v70464723854) (.cons (no_v70464723182) (.cons (no_v70464677774) (.cons (no_v70464674702) (.cons (no_v70464662414) (.cons (no_v70464674030) (.cons (no_v70464661742) (.cons (no_v70465906574) (.cons (no_v70465903502) (.cons (no_v70465902830) (.cons (no_v70470625166) (.cons (no_v70470622094) (.cons (no_v70470621422) .nil))))))))))))))

private def v70464412150 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v70464412150 : ¬ MinimalInterpreter v70464412150 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v70464411382 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v70464411382 : ¬ MinimalInterpreter v70464411382 :=
  cost_cut false 1 (by decide)

private def v70464399862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))))
private theorem no_v70464399862 : ¬ MinimalInterpreter v70464399862 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v70464399094 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 1)))))))
private theorem no_v70464399094 : ¬ MinimalInterpreter v70464399094 :=
  cost_cut false 1 (by decide)

private def v70464396022 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1)))))))
private theorem no_v70464396022 : ¬ MinimalInterpreter v70464396022 :=
  cost_cut false 1 (by decide)

private def v70464707062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v70464707062 : ¬ MinimalInterpreter v70464707062 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v70464706294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v70464706294 : ¬ MinimalInterpreter v70464706294 :=
  cost_cut false 1 (by decide)

private def v70464723190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v70464723190 : ¬ MinimalInterpreter v70464723190 :=
  cost_cut false 1 (by decide)

private def v70464674038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))
private theorem no_v70464674038 : ¬ MinimalInterpreter v70464674038 :=
  cost_cut false 1 (by decide)

private def v70464661750 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1))))))
private theorem no_v70464661750 : ¬ MinimalInterpreter v70464661750 :=
  cost_cut false 1 (by decide)

private def v70465902838 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v70465902838 : ¬ MinimalInterpreter v70465902838 :=
  cost_cut false 1 (by decide)

private def v70470605302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v70470605302 : ¬ MinimalInterpreter v70470605302 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v70470604534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v70470604534 : ¬ MinimalInterpreter v70470604534 :=
  cost_cut false 1 (by decide)

private def v70470621430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v70470621430 : ¬ MinimalInterpreter v70470621430 :=
  cost_cut false 1 (by decide)

theorem row207 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [0,0,3,1]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [0,0,3,1] = [v70464412150,v70464411382,v70464399862,v70464399094,v70464396022,v70464707062,v70464706294,v70464723190,v70464674038,v70464661750,v70465902838,v70470605302,v70470604534,v70470621430] := by decide
  rw [h]
  exact (.cons (no_v70464412150) (.cons (no_v70464411382) (.cons (no_v70464399862) (.cons (no_v70464399094) (.cons (no_v70464396022) (.cons (no_v70464707062) (.cons (no_v70464706294) (.cons (no_v70464723190) (.cons (no_v70464674038) (.cons (no_v70464661750) (.cons (no_v70465902838) (.cons (no_v70470605302) (.cons (no_v70470604534) (.cons (no_v70470621430) .nil))))))))))))))

private def v70464412894 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v70464412894 : ¬ MinimalInterpreter v70464412894 :=
  cost_cut false 1 (by decide)

private def v70464411486 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v70464411486 : ¬ MinimalInterpreter v70464411486 :=
  cost_cut false 1 (by decide)

private def v70464400606 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 3))))))))
private theorem no_v70464400606 : ¬ MinimalInterpreter v70464400606 :=
  cost_cut false 1 (by decide)

private def v70464399198 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 3)))))))
private theorem no_v70464399198 : ¬ MinimalInterpreter v70464399198 :=
  cost_cut false 1 (by decide)

private def v70464396126 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 3)))))))
private theorem no_v70464396126 : ¬ MinimalInterpreter v70464396126 :=
  cost_cut false 1 (by decide)

private def v70464707806 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v70464707806 : ¬ MinimalInterpreter v70464707806 :=
  cost_cut false 1 (by decide)

private def v70464706398 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v70464706398 : ¬ MinimalInterpreter v70464706398 :=
  cost_cut false 1 (by decide)

private def v70464729886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v70464729886 : ¬ MinimalInterpreter v70464729886 :=
  cost_cut false 1 (by decide)

private def v70464724254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v70464724254 : ¬ MinimalInterpreter v70464724254 :=
  cost_cut false 1 (by decide)

private def v70464680734 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v70464680734 : ¬ MinimalInterpreter v70464680734 :=
  cost_cut false 1 (by decide)

private def v70464675102 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 3)))))))
private theorem no_v70464675102 : ¬ MinimalInterpreter v70464675102 :=
  cost_cut false 1 (by decide)

private def v70464662814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v70464662814 : ¬ MinimalInterpreter v70464662814 :=
  cost_cut false 1 (by decide)

private def v70465909534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v70465909534 : ¬ MinimalInterpreter v70465909534 :=
  cost_cut false 1 (by decide)

private def v70465903902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v70465903902 : ¬ MinimalInterpreter v70465903902 :=
  cost_cut false 1 (by decide)

private def v70470606046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v70470606046 : ¬ MinimalInterpreter v70470606046 :=
  cost_cut false 1 (by decide)

private def v70470604638 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v70470604638 : ¬ MinimalInterpreter v70470604638 :=
  cost_cut false 1 (by decide)

private def v70470628126 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v70470628126 : ¬ MinimalInterpreter v70470628126 :=
  cost_cut false 1 (by decide)

private def v70470622494 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v70470622494 : ¬ MinimalInterpreter v70470622494 :=
  cost_cut false 1 (by decide)

theorem row208 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [0,1,0,3]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [0,1,0,3] = [v70464412894,v70464411486,v70464400606,v70464399198,v70464396126,v70464707806,v70464706398,v70464729886,v70464724254,v70464680734,v70464675102,v70464662814,v70465909534,v70465903902,v70470606046,v70470604638,v70470628126,v70470622494] := by decide
  rw [h]
  exact (.cons (no_v70464412894) (.cons (no_v70464411486) (.cons (no_v70464400606) (.cons (no_v70464399198) (.cons (no_v70464396126) (.cons (no_v70464707806) (.cons (no_v70464706398) (.cons (no_v70464729886) (.cons (no_v70464724254) (.cons (no_v70464680734) (.cons (no_v70464675102) (.cons (no_v70464662814) (.cons (no_v70465909534) (.cons (no_v70465903902) (.cons (no_v70470606046) (.cons (no_v70470604638) (.cons (no_v70470628126) (.cons (no_v70470622494) .nil))))))))))))))))))

private def v70464412910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v70464412910 : ¬ MinimalInterpreter v70464412910 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v70464411502 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v70464411502 : ¬ MinimalInterpreter v70464411502 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v70464400622 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v70464400622 : ¬ MinimalInterpreter v70464400622 :=
  cost_cut false 1 (by decide)

private def v70464399214 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v70464399214 : ¬ MinimalInterpreter v70464399214 :=
  cost_cut false 1 (by decide)

private def v70464396142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v70464396142 : ¬ MinimalInterpreter v70464396142 :=
  cost_cut false 1 (by decide)

private def v70464724078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v70464724078 : ¬ MinimalInterpreter v70464724078 :=
  cost_cut false 1 (by decide)

private def v70464670958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v70464670958 : ¬ MinimalInterpreter v70464670958 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v70464674926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 2))))))
private theorem no_v70464674926 : ¬ MinimalInterpreter v70464674926 :=
  cost_cut false 1 (by decide)

private def v70464662638 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 2))))))
private theorem no_v70464662638 : ¬ MinimalInterpreter v70464662638 :=
  cost_cut false 1 (by decide)

private def v70464660334 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v70464660334 : ¬ MinimalInterpreter v70464660334 :=
  cost_cut false 1 (by decide)

private def v70465903726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v70465903726 : ¬ MinimalInterpreter v70465903726 :=
  cost_cut false 1 (by decide)

private def v70470622318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v70470622318 : ¬ MinimalInterpreter v70470622318 :=
  cost_cut false 1 (by decide)

theorem row209 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [0,1,1,2]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [0,1,1,2] = [v70464412910,v70464411502,v70464400622,v70464399214,v70464396142,v70464724078,v70464670958,v70464674926,v70464662638,v70464660334,v70465903726,v70470622318] := by decide
  rw [h]
  exact (.cons (no_v70464412910) (.cons (no_v70464411502) (.cons (no_v70464400622) (.cons (no_v70464399214) (.cons (no_v70464396142) (.cons (no_v70464724078) (.cons (no_v70464670958) (.cons (no_v70464674926) (.cons (no_v70464662638) (.cons (no_v70464660334) (.cons (no_v70465903726) (.cons (no_v70470622318) .nil))))))))))))

end Blc.SelfintSingleObject.Rows38
