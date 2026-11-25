import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402307241870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))))
private theorem no_v1402307241870 : ¬ MinimalInterpreter v1402307241870 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307238798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))))
private theorem no_v1402307238798 : ¬ MinimalInterpreter v1402307238798 :=
  cost_cut false 2 (by decide)

private def v1402307238126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))))
private theorem no_v1402307238126 : ¬ MinimalInterpreter v1402307238126 :=
  cost_cut false 2 (by decide)

private def v1402307192718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402307192718 : ¬ MinimalInterpreter v1402307192718 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307189646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 2)))))))))
private theorem no_v1402307189646 : ¬ MinimalInterpreter v1402307189646 :=
  cost_cut false 2 (by decide)

private def v1402307177358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v1402307177358 : ¬ MinimalInterpreter v1402307177358 :=
  cost_cut false 2 (by decide)

private def v1402307188974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))))
private theorem no_v1402307188974 : ¬ MinimalInterpreter v1402307188974 :=
  cost_cut false 2 (by decide)

private def v1402307176686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2))))))))
private theorem no_v1402307176686 : ¬ MinimalInterpreter v1402307176686 :=
  cost_cut false 2 (by decide)

private def v1402308421518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))))
private theorem no_v1402308421518 : ¬ MinimalInterpreter v1402308421518 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1402308418446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))))
private theorem no_v1402308418446 : ¬ MinimalInterpreter v1402308418446 :=
  cost_cut false 2 (by decide)

private def v1402308417774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))))
private theorem no_v1402308417774 : ¬ MinimalInterpreter v1402308417774 :=
  cost_cut false 2 (by decide)

private def v1402313140110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))))
private theorem no_v1402313140110 : ¬ MinimalInterpreter v1402313140110 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402313137038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))))
private theorem no_v1402313137038 : ¬ MinimalInterpreter v1402313137038 :=
  cost_cut false 2 (by decide)

private def v1402313136366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))))
private theorem no_v1402313136366 : ¬ MinimalInterpreter v1402313136366 :=
  cost_cut false 2 (by decide)

theorem four252 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,0,2,2]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,0,2,2] = [v1402307241870,v1402307238798,v1402307238126,v1402307192718,v1402307189646,v1402307177358,v1402307188974,v1402307176686,v1402308421518,v1402308418446,v1402308417774,v1402313140110,v1402313137038,v1402313136366] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307241870) (.cons (no_v1402307238798) (.cons (no_v1402307238126) (.cons (no_v1402307192718) (.cons (no_v1402307189646) (.cons (no_v1402307177358) (.cons (no_v1402307188974) (.cons (no_v1402307176686) (.cons (no_v1402308421518) (.cons (no_v1402308418446) (.cons (no_v1402308417774) (.cons (no_v1402313140110) (.cons (no_v1402313137038) (.cons (no_v1402313136366) .nil))))))))))))))

private def v1402306927094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))))))))))
private theorem no_v1402306927094 : ¬ MinimalInterpreter v1402306927094 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402306926326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 1))))))))))
private theorem no_v1402306926326 : ¬ MinimalInterpreter v1402306926326 :=
  cost_cut false 2 (by decide)

private def v1402306914806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402306914806 : ¬ MinimalInterpreter v1402306914806 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402306914038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 1)))))))))
private theorem no_v1402306914038 : ¬ MinimalInterpreter v1402306914038 :=
  cost_cut false 2 (by decide)

private def v1402306910966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1)))))))))
private theorem no_v1402306910966 : ¬ MinimalInterpreter v1402306910966 :=
  cost_cut false 2 (by decide)

private def v1402307222006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))))
private theorem no_v1402307222006 : ¬ MinimalInterpreter v1402307222006 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))))

private def v1402307221238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))))
private theorem no_v1402307221238 : ¬ MinimalInterpreter v1402307221238 :=
  cost_cut false 2 (by decide)

private def v1402307238134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))))
private theorem no_v1402307238134 : ¬ MinimalInterpreter v1402307238134 :=
  cost_cut false 2 (by decide)

private def v1402307188982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))))
private theorem no_v1402307188982 : ¬ MinimalInterpreter v1402307188982 :=
  cost_cut false 2 (by decide)

private def v1402307176694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1))))))))
private theorem no_v1402307176694 : ¬ MinimalInterpreter v1402307176694 :=
  cost_cut false 2 (by decide)

private def v1402308417782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))))
private theorem no_v1402308417782 : ¬ MinimalInterpreter v1402308417782 :=
  cost_cut false 2 (by decide)

private def v1402313120246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))))
private theorem no_v1402313120246 : ¬ MinimalInterpreter v1402313120246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))))

private def v1402313119478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))))
private theorem no_v1402313119478 : ¬ MinimalInterpreter v1402313119478 :=
  cost_cut false 2 (by decide)

private def v1402313136374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))))
private theorem no_v1402313136374 : ¬ MinimalInterpreter v1402313136374 :=
  cost_cut false 2 (by decide)

theorem four253 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,0,3,1]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,0,3,1] = [v1402306927094,v1402306926326,v1402306914806,v1402306914038,v1402306910966,v1402307222006,v1402307221238,v1402307238134,v1402307188982,v1402307176694,v1402308417782,v1402313120246,v1402313119478,v1402313136374] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306927094) (.cons (no_v1402306926326) (.cons (no_v1402306914806) (.cons (no_v1402306914038) (.cons (no_v1402306910966) (.cons (no_v1402307222006) (.cons (no_v1402307221238) (.cons (no_v1402307238134) (.cons (no_v1402307188982) (.cons (no_v1402307176694) (.cons (no_v1402308417782) (.cons (no_v1402313120246) (.cons (no_v1402313119478) (.cons (no_v1402313136374) .nil))))))))))))))

theorem four254 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,0,4,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,0,4,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402306927838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 3)))))))))))
private theorem no_v1402306927838 : ¬ MinimalInterpreter v1402306927838 :=
  cost_cut false 2 (by decide)

private def v1402306926430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 3))))))))))
private theorem no_v1402306926430 : ¬ MinimalInterpreter v1402306926430 :=
  cost_cut false 2 (by decide)

private def v1402306915550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402306915550 : ¬ MinimalInterpreter v1402306915550 :=
  cost_cut false 2 (by decide)

private def v1402306914142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 3)))))))))
private theorem no_v1402306914142 : ¬ MinimalInterpreter v1402306914142 :=
  cost_cut false 2 (by decide)

private def v1402306911070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 3)))))))))
private theorem no_v1402306911070 : ¬ MinimalInterpreter v1402306911070 :=
  cost_cut false 2 (by decide)

private def v1402307222750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))))
private theorem no_v1402307222750 : ¬ MinimalInterpreter v1402307222750 :=
  cost_cut false 2 (by decide)

private def v1402307221342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))))
private theorem no_v1402307221342 : ¬ MinimalInterpreter v1402307221342 :=
  cost_cut false 2 (by decide)

private def v1402307244830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))))
private theorem no_v1402307244830 : ¬ MinimalInterpreter v1402307244830 :=
  cost_cut false 2 (by decide)

private def v1402307239198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))))
private theorem no_v1402307239198 : ¬ MinimalInterpreter v1402307239198 :=
  cost_cut false 2 (by decide)

private def v1402307195678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402307195678 : ¬ MinimalInterpreter v1402307195678 :=
  cost_cut false 2 (by decide)

private def v1402307190046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 3)))))))))
private theorem no_v1402307190046 : ¬ MinimalInterpreter v1402307190046 :=
  cost_cut false 2 (by decide)

private def v1402307177758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402307177758 : ¬ MinimalInterpreter v1402307177758 :=
  cost_cut false 2 (by decide)

private def v1402308424478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))))
private theorem no_v1402308424478 : ¬ MinimalInterpreter v1402308424478 :=
  cost_cut false 2 (by decide)

private def v1402308418846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))))
private theorem no_v1402308418846 : ¬ MinimalInterpreter v1402308418846 :=
  cost_cut false 2 (by decide)

private def v1402313120990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))))
private theorem no_v1402313120990 : ¬ MinimalInterpreter v1402313120990 :=
  cost_cut false 2 (by decide)

private def v1402313119582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))))
private theorem no_v1402313119582 : ¬ MinimalInterpreter v1402313119582 :=
  cost_cut false 2 (by decide)

private def v1402313143070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))))
private theorem no_v1402313143070 : ¬ MinimalInterpreter v1402313143070 :=
  cost_cut false 2 (by decide)

private def v1402313137438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))))
private theorem no_v1402313137438 : ¬ MinimalInterpreter v1402313137438 :=
  cost_cut false 2 (by decide)

theorem four255 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,1,0,3]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,1,0,3] = [v1402306927838,v1402306926430,v1402306915550,v1402306914142,v1402306911070,v1402307222750,v1402307221342,v1402307244830,v1402307239198,v1402307195678,v1402307190046,v1402307177758,v1402308424478,v1402308418846,v1402313120990,v1402313119582,v1402313143070,v1402313137438] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306927838) (.cons (no_v1402306926430) (.cons (no_v1402306915550) (.cons (no_v1402306914142) (.cons (no_v1402306911070) (.cons (no_v1402307222750) (.cons (no_v1402307221342) (.cons (no_v1402307244830) (.cons (no_v1402307239198) (.cons (no_v1402307195678) (.cons (no_v1402307190046) (.cons (no_v1402307177758) (.cons (no_v1402308424478) (.cons (no_v1402308418846) (.cons (no_v1402313120990) (.cons (no_v1402313119582) (.cons (no_v1402313143070) (.cons (no_v1402313137438) .nil))))))))))))))))))

private def v1402306927854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))))
private theorem no_v1402306927854 : ¬ MinimalInterpreter v1402306927854 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402306926446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))))
private theorem no_v1402306926446 : ¬ MinimalInterpreter v1402306926446 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402306915566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402306915566 : ¬ MinimalInterpreter v1402306915566 :=
  cost_cut false 2 (by decide)

private def v1402306914158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))))))))
private theorem no_v1402306914158 : ¬ MinimalInterpreter v1402306914158 :=
  cost_cut false 2 (by decide)

private def v1402306911086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))))))))
private theorem no_v1402306911086 : ¬ MinimalInterpreter v1402306911086 :=
  cost_cut false 2 (by decide)

private def v1402307239022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))))
private theorem no_v1402307239022 : ¬ MinimalInterpreter v1402307239022 :=
  cost_cut false 2 (by decide)

private def v1402307185902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402307185902 : ¬ MinimalInterpreter v1402307185902 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307189870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 2))))))))
private theorem no_v1402307189870 : ¬ MinimalInterpreter v1402307189870 :=
  cost_cut false 2 (by decide)

private def v1402307177582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402307177582 : ¬ MinimalInterpreter v1402307177582 :=
  cost_cut false 2 (by decide)

private def v1402307175278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 2))))))))
private theorem no_v1402307175278 : ¬ MinimalInterpreter v1402307175278 :=
  cost_cut false 2 (by decide)

private def v1402308418670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))))
private theorem no_v1402308418670 : ¬ MinimalInterpreter v1402308418670 :=
  cost_cut false 2 (by decide)

private def v1402313137262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))))
private theorem no_v1402313137262 : ¬ MinimalInterpreter v1402313137262 :=
  cost_cut false 2 (by decide)

theorem four256 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,1,1,2]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,1,1,2] = [v1402306927854,v1402306926446,v1402306915566,v1402306914158,v1402306911086,v1402307239022,v1402307185902,v1402307189870,v1402307177582,v1402307175278,v1402308418670,v1402313137262] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306927854) (.cons (no_v1402306926446) (.cons (no_v1402306915566) (.cons (no_v1402306914158) (.cons (no_v1402306911086) (.cons (no_v1402307239022) (.cons (no_v1402307185902) (.cons (no_v1402307189870) (.cons (no_v1402307177582) (.cons (no_v1402307175278) (.cons (no_v1402308418670) (.cons (no_v1402313137262) .nil))))))))))))

private def v1402306927862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))))
private theorem no_v1402306927862 : ¬ MinimalInterpreter v1402306927862 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402306926454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))))
private theorem no_v1402306926454 : ¬ MinimalInterpreter v1402306926454 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

private def v1402306915574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402306915574 : ¬ MinimalInterpreter v1402306915574 :=
  cost_cut false 2 (by decide)

private def v1402306914166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)))))))))
private theorem no_v1402306914166 : ¬ MinimalInterpreter v1402306914166 :=
  cost_cut false 2 (by decide)

private def v1402306911094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)))))))))
private theorem no_v1402306911094 : ¬ MinimalInterpreter v1402306911094 :=
  cost_cut false 2 (by decide)

private def v1402307244998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))))
private theorem no_v1402307244998 : ¬ MinimalInterpreter v1402307244998 :=
  cost_cut false 2 (by decide)

private def v1402307239366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))))
private theorem no_v1402307239366 : ¬ MinimalInterpreter v1402307239366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307195846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402307195846 : ¬ MinimalInterpreter v1402307195846 :=
  cost_cut false 2 (by decide)

private def v1402307185910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402307185910 : ¬ MinimalInterpreter v1402307185910 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307190214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))))
private theorem no_v1402307190214 : ¬ MinimalInterpreter v1402307190214 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402307177926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402307177926 : ¬ MinimalInterpreter v1402307177926 :=
  cost_cut false 2 (by decide)

private def v1402307175286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 1))))))))
private theorem no_v1402307175286 : ¬ MinimalInterpreter v1402307175286 :=
  cost_cut false 2 (by decide)

private def v1402308424646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))))
private theorem no_v1402308424646 : ¬ MinimalInterpreter v1402308424646 :=
  cost_cut false 2 (by decide)

private def v1402308419014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))))
private theorem no_v1402308419014 : ¬ MinimalInterpreter v1402308419014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1402313143238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))))
private theorem no_v1402313143238 : ¬ MinimalInterpreter v1402313143238 :=
  cost_cut false 2 (by decide)

private def v1402313137606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))))
private theorem no_v1402313137606 : ¬ MinimalInterpreter v1402313137606 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))

theorem four257 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,1,2,1]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,1,2,1] = [v1402306927862,v1402306926454,v1402306915574,v1402306914166,v1402306911094,v1402307244998,v1402307239366,v1402307195846,v1402307185910,v1402307190214,v1402307177926,v1402307175286,v1402308424646,v1402308419014,v1402313143238,v1402313137606] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306927862) (.cons (no_v1402306926454) (.cons (no_v1402306915574) (.cons (no_v1402306914166) (.cons (no_v1402306911094) (.cons (no_v1402307244998) (.cons (no_v1402307239366) (.cons (no_v1402307195846) (.cons (no_v1402307185910) (.cons (no_v1402307190214) (.cons (no_v1402307177926) (.cons (no_v1402307175286) (.cons (no_v1402308424646) (.cons (no_v1402308419014) (.cons (no_v1402313143238) (.cons (no_v1402313137606) .nil))))))))))))))))

private def v1402306927866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 0)))))))))))
private theorem no_v1402306927866 : ¬ MinimalInterpreter v1402306927866 :=
  cost_cut false 2 (by decide)

private def v1402306926458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))))))))))
private theorem no_v1402306926458 : ¬ MinimalInterpreter v1402306926458 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402306915578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402306915578 : ¬ MinimalInterpreter v1402306915578 :=
  cost_cut false 2 (by decide)

private def v1402306914170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)))))))))
private theorem no_v1402306914170 : ¬ MinimalInterpreter v1402306914170 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402306911098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 0)))))))))
private theorem no_v1402306911098 : ¬ MinimalInterpreter v1402306911098 :=
  cost_cut false 2 (by decide)

private def v1402307222778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))))
private theorem no_v1402307222778 : ¬ MinimalInterpreter v1402307222778 :=
  cost_cut false 2 (by decide)

private def v1402307221370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))))
private theorem no_v1402307221370 : ¬ MinimalInterpreter v1402307221370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))))

private def v1402307239034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))))
private theorem no_v1402307239034 : ¬ MinimalInterpreter v1402307239034 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))))

private def v1402307189882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))))
private theorem no_v1402307189882 : ¬ MinimalInterpreter v1402307189882 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))))

private def v1402307177594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402307177594 : ¬ MinimalInterpreter v1402307177594 :=
  cost_cut false 2 (by decide)

private def v1402308418682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))))
private theorem no_v1402308418682 : ¬ MinimalInterpreter v1402308418682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))))

private def v1402313121018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))))
private theorem no_v1402313121018 : ¬ MinimalInterpreter v1402313121018 :=
  cost_cut false 2 (by decide)

private def v1402313119610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))))
private theorem no_v1402313119610 : ¬ MinimalInterpreter v1402313119610 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))))

private def v1402313137274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))))
private theorem no_v1402313137274 : ¬ MinimalInterpreter v1402313137274 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))))

theorem four258 : BadRow (markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,1,3,0]) := by
  have h : markedRow ⟨0,2,0,5,4,4⟩ [0,0] [0,1,3,0] = [v1402306927866,v1402306926458,v1402306915578,v1402306914170,v1402306911098,v1402307222778,v1402307221370,v1402307239034,v1402307189882,v1402307177594,v1402308418682,v1402313121018,v1402313119610,v1402313137274] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402306927866) (.cons (no_v1402306926458) (.cons (no_v1402306915578) (.cons (no_v1402306914170) (.cons (no_v1402306911098) (.cons (no_v1402307222778) (.cons (no_v1402307221370) (.cons (no_v1402307239034) (.cons (no_v1402307189882) (.cons (no_v1402307177594) (.cons (no_v1402308418682) (.cons (no_v1402313121018) (.cons (no_v1402313119610) (.cons (no_v1402313137274) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows40
