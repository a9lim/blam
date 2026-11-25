import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381268299382 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v1381268299382 : ¬ MinimalInterpreter v1381268299382 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381268297654 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v1381268297654 : ¬ MinimalInterpreter v1381268297654 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381268287094 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v1381268287094 : ¬ MinimalInterpreter v1381268287094 :=
  cost_cut false 1 (by decide)

private def v1381268285366 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v1381268285366 : ¬ MinimalInterpreter v1381268285366 :=
  cost_cut false 1 (by decide)

private def v1381268282294 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v1381268282294 : ¬ MinimalInterpreter v1381268282294 :=
  cost_cut false 1 (by decide)

private def v1380462993014 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v1380462993014 : ¬ MinimalInterpreter v1380462993014 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1380462991286 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v1380462991286 : ¬ MinimalInterpreter v1380462991286 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1380462980726 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v1380462980726 : ¬ MinimalInterpreter v1380462980726 :=
  cost_cut false 1 (by decide)

private def v1380462978998 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v1380462978998 : ¬ MinimalInterpreter v1380462978998 :=
  cost_cut false 1 (by decide)

private def v1380462975926 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v1380462975926 : ¬ MinimalInterpreter v1380462975926 :=
  cost_cut false 1 (by decide)

theorem four413 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [0,2,1,1]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [0,2,1,1] = [v1381268299382,v1381268297654,v1381268287094,v1381268285366,v1381268282294,v1380462993014,v1380462991286,v1380462980726,v1380462978998,v1380462975926] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381268299382) (.cons (no_v1381268297654) (.cons (no_v1381268287094) (.cons (no_v1381268285366) (.cons (no_v1381268282294) (.cons (no_v1380462993014) (.cons (no_v1380462991286) (.cons (no_v1380462980726) (.cons (no_v1380462978998) (.cons (no_v1380462975926) .nil))))))))))

theorem four414 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [0,2,2,0]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381268311278 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1381268311278 : ¬ MinimalInterpreter v1381268311278 :=
  cost_cut false 1 (by decide)

private def v1381268310894 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1381268310894 : ¬ MinimalInterpreter v1381268310894 :=
  cost_cut false 1 (by decide)

private def v1381268288750 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1381268288750 : ¬ MinimalInterpreter v1381268288750 :=
  cost_cut false 1 (by decide)

private def v1381268288366 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1381268288366 : ¬ MinimalInterpreter v1381268288366 :=
  cost_cut false 1 (by decide)

private def v1381268282734 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1381268282734 : ¬ MinimalInterpreter v1381268282734 :=
  cost_cut false 1 (by decide)

private def v1381268655342 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1381268655342 : ¬ MinimalInterpreter v1381268655342 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381268654958 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1381268654958 : ¬ MinimalInterpreter v1381268654958 :=
  cost_cut false 1 (by decide)

private def v1380463004910 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1380463004910 : ¬ MinimalInterpreter v1380463004910 :=
  cost_cut false 1 (by decide)

private def v1380463004526 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1380463004526 : ¬ MinimalInterpreter v1380463004526 :=
  cost_cut false 1 (by decide)

private def v1380462982382 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1380462982382 : ¬ MinimalInterpreter v1380462982382 :=
  cost_cut false 1 (by decide)

private def v1380462981998 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1380462981998 : ¬ MinimalInterpreter v1380462981998 :=
  cost_cut false 1 (by decide)

private def v1380462976366 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1380462976366 : ¬ MinimalInterpreter v1380462976366 :=
  cost_cut false 1 (by decide)

private def v1380463348974 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1380463348974 : ¬ MinimalInterpreter v1380463348974 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1380463348590 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1380463348590 : ¬ MinimalInterpreter v1380463348590 :=
  cost_cut false 1 (by decide)

theorem four415 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,0,1,2]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,0,1,2] = [v1381268311278,v1381268310894,v1381268288750,v1381268288366,v1381268282734,v1381268655342,v1381268654958,v1380463004910,v1380463004526,v1380462982382,v1380462981998,v1380462976366,v1380463348974,v1380463348590] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381268311278) (.cons (no_v1381268310894) (.cons (no_v1381268288750) (.cons (no_v1381268288366) (.cons (no_v1381268282734) (.cons (no_v1381268655342) (.cons (no_v1381268654958) (.cons (no_v1380463004910) (.cons (no_v1380463004526) (.cons (no_v1380462982382) (.cons (no_v1380462981998) (.cons (no_v1380462976366) (.cons (no_v1380463348974) (.cons (no_v1380463348590) .nil))))))))))))))

private def v1381268311286 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1381268311286 : ¬ MinimalInterpreter v1381268311286 :=
  cost_cut false 1 (by decide)

private def v1381268310902 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1381268310902 : ¬ MinimalInterpreter v1381268310902 :=
  cost_cut false 1 (by decide)

private def v1381268288758 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1381268288758 : ¬ MinimalInterpreter v1381268288758 :=
  cost_cut false 1 (by decide)

private def v1381268288374 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1381268288374 : ¬ MinimalInterpreter v1381268288374 :=
  cost_cut false 1 (by decide)

private def v1381268282742 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1381268282742 : ¬ MinimalInterpreter v1381268282742 :=
  cost_cut false 1 (by decide)

private def v1381268655350 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1381268655350 : ¬ MinimalInterpreter v1381268655350 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381268654966 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1381268654966 : ¬ MinimalInterpreter v1381268654966 :=
  cost_cut false 1 (by decide)

private def v1380463004918 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1380463004918 : ¬ MinimalInterpreter v1380463004918 :=
  cost_cut false 1 (by decide)

private def v1380463004534 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1380463004534 : ¬ MinimalInterpreter v1380463004534 :=
  cost_cut false 1 (by decide)

private def v1380462982390 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1380462982390 : ¬ MinimalInterpreter v1380462982390 :=
  cost_cut false 1 (by decide)

private def v1380462982006 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1380462982006 : ¬ MinimalInterpreter v1380462982006 :=
  cost_cut false 1 (by decide)

private def v1380462976374 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1380462976374 : ¬ MinimalInterpreter v1380462976374 :=
  cost_cut false 1 (by decide)

private def v1380463348982 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1380463348982 : ¬ MinimalInterpreter v1380463348982 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1380463348598 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1380463348598 : ¬ MinimalInterpreter v1380463348598 :=
  cost_cut false 1 (by decide)

theorem four416 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,0,2,1]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,0,2,1] = [v1381268311286,v1381268310902,v1381268288758,v1381268288374,v1381268282742,v1381268655350,v1381268654966,v1380463004918,v1380463004534,v1380462982390,v1380462982006,v1380462976374,v1380463348982,v1380463348598] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381268311286) (.cons (no_v1381268310902) (.cons (no_v1381268288758) (.cons (no_v1381268288374) (.cons (no_v1381268282742) (.cons (no_v1381268655350) (.cons (no_v1381268654966) (.cons (no_v1380463004918) (.cons (no_v1380463004534) (.cons (no_v1380462982390) (.cons (no_v1380462982006) (.cons (no_v1380462976374) (.cons (no_v1380463348982) (.cons (no_v1380463348598) .nil))))))))))))))

private def v1381268311662 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1381268311662 : ¬ MinimalInterpreter v1381268311662 :=
  cost_cut false 1 (by decide)

private def v1381268310958 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1381268310958 : ¬ MinimalInterpreter v1381268310958 :=
  cost_cut false 1 (by decide)

private def v1381268289134 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1381268289134 : ¬ MinimalInterpreter v1381268289134 :=
  cost_cut false 1 (by decide)

private def v1381268288430 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1381268288430 : ¬ MinimalInterpreter v1381268288430 :=
  cost_cut false 1 (by decide)

private def v1381268282798 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1381268282798 : ¬ MinimalInterpreter v1381268282798 :=
  cost_cut false 1 (by decide)

private def v1381268655726 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1381268655726 : ¬ MinimalInterpreter v1381268655726 :=
  cost_cut false 1 (by decide)

private def v1381268655022 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1381268655022 : ¬ MinimalInterpreter v1381268655022 :=
  cost_cut false 1 (by decide)

private def v1380463005294 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1380463005294 : ¬ MinimalInterpreter v1380463005294 :=
  cost_cut false 1 (by decide)

private def v1380463004590 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1380463004590 : ¬ MinimalInterpreter v1380463004590 :=
  cost_cut false 1 (by decide)

private def v1380462982766 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1380462982766 : ¬ MinimalInterpreter v1380462982766 :=
  cost_cut false 1 (by decide)

private def v1380462982062 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1380462982062 : ¬ MinimalInterpreter v1380462982062 :=
  cost_cut false 1 (by decide)

private def v1380462976430 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1380462976430 : ¬ MinimalInterpreter v1380462976430 :=
  cost_cut false 1 (by decide)

private def v1380463349358 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1380463349358 : ¬ MinimalInterpreter v1380463349358 :=
  cost_cut false 1 (by decide)

private def v1380463348654 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1380463348654 : ¬ MinimalInterpreter v1380463348654 :=
  cost_cut false 1 (by decide)

theorem four417 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,1,0,2]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,1,0,2] = [v1381268311662,v1381268310958,v1381268289134,v1381268288430,v1381268282798,v1381268655726,v1381268655022,v1380463005294,v1380463004590,v1380462982766,v1380462982062,v1380462976430,v1380463349358,v1380463348654] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381268311662) (.cons (no_v1381268310958) (.cons (no_v1381268289134) (.cons (no_v1381268288430) (.cons (no_v1381268282798) (.cons (no_v1381268655726) (.cons (no_v1381268655022) (.cons (no_v1380463005294) (.cons (no_v1380463004590) (.cons (no_v1380462982766) (.cons (no_v1380462982062) (.cons (no_v1380462976430) (.cons (no_v1380463349358) (.cons (no_v1380463348654) .nil))))))))))))))

theorem four418 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,1,1,1]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381268311674 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1381268311674 : ¬ MinimalInterpreter v1381268311674 :=
  cost_cut false 1 (by decide)

private def v1381268310970 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1381268310970 : ¬ MinimalInterpreter v1381268310970 :=
  cost_cut false 1 (by decide)

private def v1381268289146 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1381268289146 : ¬ MinimalInterpreter v1381268289146 :=
  cost_cut false 1 (by decide)

private def v1381268288442 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1381268288442 : ¬ MinimalInterpreter v1381268288442 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381268282810 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1381268282810 : ¬ MinimalInterpreter v1381268282810 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381268655738 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1381268655738 : ¬ MinimalInterpreter v1381268655738 :=
  cost_cut false 1 (by decide)

private def v1381268655034 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1381268655034 : ¬ MinimalInterpreter v1381268655034 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1380463005306 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1380463005306 : ¬ MinimalInterpreter v1380463005306 :=
  cost_cut false 1 (by decide)

private def v1380463004602 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1380463004602 : ¬ MinimalInterpreter v1380463004602 :=
  cost_cut false 1 (by decide)

private def v1380462982778 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1380462982778 : ¬ MinimalInterpreter v1380462982778 :=
  cost_cut false 1 (by decide)

private def v1380462982074 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1380462982074 : ¬ MinimalInterpreter v1380462982074 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1380462976442 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1380462976442 : ¬ MinimalInterpreter v1380462976442 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1380463349370 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1380463349370 : ¬ MinimalInterpreter v1380463349370 :=
  cost_cut false 1 (by decide)

private def v1380463348666 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1380463348666 : ¬ MinimalInterpreter v1380463348666 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four419 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,1,2,0]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,1,2,0] = [v1381268311674,v1381268310970,v1381268289146,v1381268288442,v1381268282810,v1381268655738,v1381268655034,v1380463005306,v1380463004602,v1380462982778,v1380462982074,v1380462976442,v1380463349370,v1380463348666] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381268311674) (.cons (no_v1381268310970) (.cons (no_v1381268289146) (.cons (no_v1381268288442) (.cons (no_v1381268282810) (.cons (no_v1381268655738) (.cons (no_v1381268655034) (.cons (no_v1380463005306) (.cons (no_v1380463004602) (.cons (no_v1380462982778) (.cons (no_v1380462982074) (.cons (no_v1380462976442) (.cons (no_v1380463349370) (.cons (no_v1380463348666) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows40
