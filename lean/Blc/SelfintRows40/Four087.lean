import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1382308798010 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1382308798010 : ¬ MinimalInterpreter v1382308798010 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308744826 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 0)))))))
private theorem no_v1382308744826 : ¬ MinimalInterpreter v1382308744826 :=
  chain_cut false 2 (by decide)

private def v1382308748858 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1382308748858 : ¬ MinimalInterpreter v1382308748858 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308736570 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0))))))
private theorem no_v1382308736570 : ¬ MinimalInterpreter v1382308736570 :=
  chain_cut false 2 (by decide)

private def v1382308733882 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 0))))))
private theorem no_v1382308733882 : ¬ MinimalInterpreter v1382308733882 :=
  chain_cut false 2 (by decide)

private def v1382309977658 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1382309977658 : ¬ MinimalInterpreter v1382309977658 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1382314696250 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1382314696250 : ¬ MinimalInterpreter v1382314696250 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four609 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,2,2,0]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,2,2,0] = [v1382308798010,v1382308744826,v1382308748858,v1382308736570,v1382308733882,v1382309977658,v1382314696250] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308798010) (.cons (no_v1382308744826) (.cons (no_v1382308748858) (.cons (no_v1382308736570) (.cons (no_v1382308733882) (.cons (no_v1382309977658) (.cons (no_v1382314696250) .nil)))))))

private def v1382308486966 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1382308486966 : ¬ MinimalInterpreter v1382308486966 :=
  chain_cut false 2 (by decide)

private def v1382308485078 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1382308485078 : ¬ MinimalInterpreter v1382308485078 :=
  chain_cut false 2 (by decide)

private def v1382308474678 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 1))))))))
private theorem no_v1382308474678 : ¬ MinimalInterpreter v1382308474678 :=
  chain_cut false 2 (by decide)

private def v1382308472790 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 1)))))))
private theorem no_v1382308472790 : ¬ MinimalInterpreter v1382308472790 :=
  chain_cut false 2 (by decide)

private def v1382308469718 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 1)))))))
private theorem no_v1382308469718 : ¬ MinimalInterpreter v1382308469718 :=
  chain_cut false 2 (by decide)

private def v1382308781878 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1382308781878 : ¬ MinimalInterpreter v1382308781878 :=
  chain_cut false 2 (by decide)

private def v1382308779990 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1382308779990 : ¬ MinimalInterpreter v1382308779990 :=
  chain_cut false 2 (by decide)

private def v1382308745014 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1)))))))
private theorem no_v1382308745014 : ¬ MinimalInterpreter v1382308745014 :=
  chain_cut false 2 (by decide)

private def v1382308733910 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1))))))
private theorem no_v1382308733910 : ¬ MinimalInterpreter v1382308733910 :=
  chain_cut false 2 (by decide)

private def v1382314680118 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v1382314680118 : ¬ MinimalInterpreter v1382314680118 :=
  chain_cut false 4 (by decide)

private def v1382314678230 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v1382314678230 : ¬ MinimalInterpreter v1382314678230 :=
  chain_cut false 4 (by decide)

theorem four610 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,3,0,1]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,3,0,1] = [v1382308486966,v1382308485078,v1382308474678,v1382308472790,v1382308469718,v1382308781878,v1382308779990,v1382308745014,v1382308733910,v1382314680118,v1382314678230] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308486966) (.cons (no_v1382308485078) (.cons (no_v1382308474678) (.cons (no_v1382308472790) (.cons (no_v1382308469718) (.cons (no_v1382308781878) (.cons (no_v1382308779990) (.cons (no_v1382308745014) (.cons (no_v1382308733910) (.cons (no_v1382314680118) (.cons (no_v1382314678230) .nil)))))))))))

private def v1382308486970 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1382308486970 : ¬ MinimalInterpreter v1382308486970 :=
  chain_cut false 2 (by decide)

private def v1382308485082 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1382308485082 : ¬ MinimalInterpreter v1382308485082 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1382308474682 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0))))))))
private theorem no_v1382308474682 : ¬ MinimalInterpreter v1382308474682 :=
  chain_cut false 2 (by decide)

private def v1382308472794 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))
private theorem no_v1382308472794 : ¬ MinimalInterpreter v1382308472794 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1382308469722 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0)))))))
private theorem no_v1382308469722 : ¬ MinimalInterpreter v1382308469722 :=
  chain_cut false 2 (by decide)

private def v1382308781882 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1382308781882 : ¬ MinimalInterpreter v1382308781882 :=
  chain_cut false 2 (by decide)

private def v1382308779994 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1382308779994 : ¬ MinimalInterpreter v1382308779994 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1382308745018 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))
private theorem no_v1382308745018 : ¬ MinimalInterpreter v1382308745018 :=
  chain_cut false 2 (by decide)

private def v1382308733914 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0))))))
private theorem no_v1382308733914 : ¬ MinimalInterpreter v1382308733914 :=
  chain_cut false 2 (by decide)

private def v1382314680122 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v1382314680122 : ¬ MinimalInterpreter v1382314680122 :=
  chain_cut false 4 (by decide)

private def v1382314678234 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v1382314678234 : ¬ MinimalInterpreter v1382314678234 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

theorem four611 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,3,1,0]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [0,3,1,0] = [v1382308486970,v1382308485082,v1382308474682,v1382308472794,v1382308469722,v1382308781882,v1382308779994,v1382308745018,v1382308733914,v1382314680122,v1382314678234] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308486970) (.cons (no_v1382308485082) (.cons (no_v1382308474682) (.cons (no_v1382308472794) (.cons (no_v1382308469722) (.cons (no_v1382308781882) (.cons (no_v1382308779994) (.cons (no_v1382308745018) (.cons (no_v1382308733914) (.cons (no_v1382314680122) (.cons (no_v1382314678234) .nil)))))))))))

private def v1382308498654 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 3)))))))))
private theorem no_v1382308498654 : ¬ MinimalInterpreter v1382308498654 :=
  chain_cut false 2 (by decide)

private def v1382308498270 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 3))))))))
private theorem no_v1382308498270 : ¬ MinimalInterpreter v1382308498270 :=
  chain_cut false 2 (by decide)

private def v1382308476126 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 3))))))))
private theorem no_v1382308476126 : ¬ MinimalInterpreter v1382308476126 :=
  chain_cut false 2 (by decide)

private def v1382308475742 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 3)))))))
private theorem no_v1382308475742 : ¬ MinimalInterpreter v1382308475742 :=
  chain_cut false 2 (by decide)

private def v1382308470110 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 3)))))))
private theorem no_v1382308470110 : ¬ MinimalInterpreter v1382308470110 :=
  chain_cut false 2 (by decide)

private def v1382308852510 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1382308852510 : ¬ MinimalInterpreter v1382308852510 :=
  chain_cut false 2 (by decide)

private def v1382308850974 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1382308850974 : ¬ MinimalInterpreter v1382308850974 :=
  chain_cut false 2 (by decide)

private def v1382308762398 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1382308762398 : ¬ MinimalInterpreter v1382308762398 :=
  chain_cut false 2 (by decide)

private def v1382308760862 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1382308760862 : ¬ MinimalInterpreter v1382308760862 :=
  chain_cut false 2 (by decide)

private def v1382308738334 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1382308738334 : ¬ MinimalInterpreter v1382308738334 :=
  chain_cut false 2 (by decide)

theorem four612 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,0,0,3]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,0,0,3] = [v1382308498654,v1382308498270,v1382308476126,v1382308475742,v1382308470110,v1382308852510,v1382308850974,v1382308762398,v1382308760862,v1382308738334] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308498654) (.cons (no_v1382308498270) (.cons (no_v1382308476126) (.cons (no_v1382308475742) (.cons (no_v1382308470110) (.cons (no_v1382308852510) (.cons (no_v1382308850974) (.cons (no_v1382308762398) (.cons (no_v1382308760862) (.cons (no_v1382308738334) .nil))))))))))

private def v1382308498670 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1382308498670 : ¬ MinimalInterpreter v1382308498670 :=
  cost_cut false 2 (by decide)

private def v1382308498286 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1382308498286 : ¬ MinimalInterpreter v1382308498286 :=
  cost_cut false 2 (by decide)

private def v1382308476142 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1382308476142 : ¬ MinimalInterpreter v1382308476142 :=
  cost_cut false 2 (by decide)

private def v1382308475758 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1382308475758 : ¬ MinimalInterpreter v1382308475758 :=
  cost_cut false 2 (by decide)

private def v1382308470126 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1382308470126 : ¬ MinimalInterpreter v1382308470126 :=
  cost_cut false 2 (by decide)

private def v1382308842734 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1382308842734 : ¬ MinimalInterpreter v1382308842734 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1382308842350 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1382308842350 : ¬ MinimalInterpreter v1382308842350 :=
  cost_cut false 2 (by decide)

private def v1382308850798 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1382308850798 : ¬ MinimalInterpreter v1382308850798 :=
  chain_cut false 2 (by decide)

private def v1382308760686 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1382308760686 : ¬ MinimalInterpreter v1382308760686 :=
  chain_cut false 2 (by decide)

private def v1382308738158 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 2))))))
private theorem no_v1382308738158 : ¬ MinimalInterpreter v1382308738158 :=
  chain_cut false 2 (by decide)

theorem four613 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,0,1,2]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,0,1,2] = [v1382308498670,v1382308498286,v1382308476142,v1382308475758,v1382308470126,v1382308842734,v1382308842350,v1382308850798,v1382308760686,v1382308738158] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308498670) (.cons (no_v1382308498286) (.cons (no_v1382308476142) (.cons (no_v1382308475758) (.cons (no_v1382308470126) (.cons (no_v1382308842734) (.cons (no_v1382308842350) (.cons (no_v1382308850798) (.cons (no_v1382308760686) (.cons (no_v1382308738158) .nil))))))))))

private def v1382308498678 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1382308498678 : ¬ MinimalInterpreter v1382308498678 :=
  cost_cut false 2 (by decide)

private def v1382308498294 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1382308498294 : ¬ MinimalInterpreter v1382308498294 :=
  cost_cut false 2 (by decide)

private def v1382308476150 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1382308476150 : ¬ MinimalInterpreter v1382308476150 :=
  cost_cut false 2 (by decide)

private def v1382308475766 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1382308475766 : ¬ MinimalInterpreter v1382308475766 :=
  cost_cut false 2 (by decide)

private def v1382308470134 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1382308470134 : ¬ MinimalInterpreter v1382308470134 :=
  cost_cut false 2 (by decide)

private def v1382308842742 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1382308842742 : ¬ MinimalInterpreter v1382308842742 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1382308842358 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1382308842358 : ¬ MinimalInterpreter v1382308842358 :=
  cost_cut false 2 (by decide)

private def v1382308852678 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1382308852678 : ¬ MinimalInterpreter v1382308852678 :=
  chain_cut false 2 (by decide)

private def v1382308851142 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1382308851142 : ¬ MinimalInterpreter v1382308851142 :=
  chain_cut false 2 (by decide)

private def v1382308762566 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1382308762566 : ¬ MinimalInterpreter v1382308762566 :=
  chain_cut false 2 (by decide)

private def v1382308761030 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1382308761030 : ¬ MinimalInterpreter v1382308761030 :=
  chain_cut false 2 (by decide)

private def v1382308738502 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1382308738502 : ¬ MinimalInterpreter v1382308738502 :=
  chain_cut false 2 (by decide)

theorem four614 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,0,2,1]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,0,2,1] = [v1382308498678,v1382308498294,v1382308476150,v1382308475766,v1382308470134,v1382308842742,v1382308842358,v1382308852678,v1382308851142,v1382308762566,v1382308761030,v1382308738502] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308498678) (.cons (no_v1382308498294) (.cons (no_v1382308476150) (.cons (no_v1382308475766) (.cons (no_v1382308470134) (.cons (no_v1382308842742) (.cons (no_v1382308842358) (.cons (no_v1382308852678) (.cons (no_v1382308851142) (.cons (no_v1382308762566) (.cons (no_v1382308761030) (.cons (no_v1382308738502) .nil))))))))))))

private def v1382308498682 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 0)))))))))
private theorem no_v1382308498682 : ¬ MinimalInterpreter v1382308498682 :=
  chain_cut false 2 (by decide)

private def v1382308498298 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 0))))))))
private theorem no_v1382308498298 : ¬ MinimalInterpreter v1382308498298 :=
  chain_cut false 2 (by decide)

private def v1382308476154 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 0))))))))
private theorem no_v1382308476154 : ¬ MinimalInterpreter v1382308476154 :=
  chain_cut false 2 (by decide)

private def v1382308475770 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0)))))))
private theorem no_v1382308475770 : ¬ MinimalInterpreter v1382308475770 :=
  chain_cut false 2 (by decide)

private def v1382308470138 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 0)))))))
private theorem no_v1382308470138 : ¬ MinimalInterpreter v1382308470138 :=
  chain_cut false 2 (by decide)

private def v1382308850810 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1382308850810 : ¬ MinimalInterpreter v1382308850810 :=
  chain_cut false 2 (by decide)

private def v1382308760698 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1382308760698 : ¬ MinimalInterpreter v1382308760698 :=
  chain_cut false 2 (by decide)

private def v1382308738170 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 0))))))
private theorem no_v1382308738170 : ¬ MinimalInterpreter v1382308738170 :=
  chain_cut false 2 (by decide)

theorem four615 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,0,3,0]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [1,0,3,0] = [v1382308498682,v1382308498298,v1382308476154,v1382308475770,v1382308470138,v1382308850810,v1382308760698,v1382308738170] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308498682) (.cons (no_v1382308498298) (.cons (no_v1382308476154) (.cons (no_v1382308475770) (.cons (no_v1382308470138) (.cons (no_v1382308850810) (.cons (no_v1382308760698) (.cons (no_v1382308738170) .nil))))))))

end Blc.SelfintSingleObject.Rows40
