import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four0 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,0,2,2,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,0,2,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313587182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 2)))))))))
private theorem no_v1402313587182 : ¬ MinimalInterpreter v1402313587182 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 2))))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402313584366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 2))))))))
private theorem no_v1402313584366 : ¬ MinimalInterpreter v1402313584366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 2)))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313497070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 2))))))))
private theorem no_v1402313497070 : ¬ MinimalInterpreter v1402313497070 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402313494254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 2)))))))
private theorem no_v1402313494254 : ¬ MinimalInterpreter v1402313494254 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 2))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313471726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 2)))))))
private theorem no_v1402313471726 : ¬ MinimalInterpreter v1402313471726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 2))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312800750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 2) (.var 2))))))))
private theorem no_v1402312800750 : ¬ MinimalInterpreter v1402312800750 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312797934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 2)) (.var 2)))))))
private theorem no_v1402312797934 : ¬ MinimalInterpreter v1402312797934 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312710638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 2) (.var 2)))))))
private theorem no_v1402312710638 : ¬ MinimalInterpreter v1402312710638 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312514030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 2) (.var 2)))))))
private theorem no_v1402312514030 : ¬ MinimalInterpreter v1402312514030 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312707822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.var 2))))))
private theorem no_v1402312707822 : ¬ MinimalInterpreter v1402312707822 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312685294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.var 2))))))
private theorem no_v1402312685294 : ¬ MinimalInterpreter v1402312685294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312511214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))) (.var 2))))))
private theorem no_v1402312511214 : ¬ MinimalInterpreter v1402312511214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312488686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)) (.var 2))))))
private theorem no_v1402312488686 : ¬ MinimalInterpreter v1402312488686 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312439534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)) (.var 2))))))
private theorem no_v1402312439534 : ¬ MinimalInterpreter v1402312439534 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four1 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,1,1,2,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,1,1,2,2] = [v1402313587182,v1402313584366,v1402313497070,v1402313494254,v1402313471726,v1402312800750,v1402312797934,v1402312710638,v1402312514030,v1402312707822,v1402312685294,v1402312511214,v1402312488686,v1402312439534] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313587182) (.cons (no_v1402313584366) (.cons (no_v1402313497070) (.cons (no_v1402313494254) (.cons (no_v1402313471726) (.cons (no_v1402312800750) (.cons (no_v1402312797934) (.cons (no_v1402312710638) (.cons (no_v1402312514030) (.cons (no_v1402312707822) (.cons (no_v1402312685294) (.cons (no_v1402312511214) (.cons (no_v1402312488686) (.cons (no_v1402312439534) .nil))))))))))))))

private def v1402313587950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402313587950 : ¬ MinimalInterpreter v1402313587950 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 2))))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 2))))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313584494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 2))))))))
private theorem no_v1402313584494 : ¬ MinimalInterpreter v1402313584494 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 2)))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313497838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 2))))))))
private theorem no_v1402313497838 : ¬ MinimalInterpreter v1402313497838 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 2)))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313494382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 2)))))))
private theorem no_v1402313494382 : ¬ MinimalInterpreter v1402313494382 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 2))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313471854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 2)))))))
private theorem no_v1402313471854 : ¬ MinimalInterpreter v1402313471854 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 2))) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312801518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 1) (.var 2))))))))
private theorem no_v1402312801518 : ¬ MinimalInterpreter v1402312801518 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312798062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 1)) (.var 2)))))))
private theorem no_v1402312798062 : ¬ MinimalInterpreter v1402312798062 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312711406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312711406 : ¬ MinimalInterpreter v1402312711406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 1))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312514798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312514798 : ¬ MinimalInterpreter v1402312514798 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312707950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.var 2))))))
private theorem no_v1402312707950 : ¬ MinimalInterpreter v1402312707950 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312685422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.var 2))))))
private theorem no_v1402312685422 : ¬ MinimalInterpreter v1402312685422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312511342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))) (.var 2))))))
private theorem no_v1402312511342 : ¬ MinimalInterpreter v1402312511342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312488814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1)) (.var 2))))))
private theorem no_v1402312488814 : ¬ MinimalInterpreter v1402312488814 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312439662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)) (.var 2))))))
private theorem no_v1402312439662 : ¬ MinimalInterpreter v1402312439662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four2 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,1,2,1,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,1,2,1,2] = [v1402313587950,v1402313584494,v1402313497838,v1402313494382,v1402313471854,v1402312801518,v1402312798062,v1402312711406,v1402312514798,v1402312707950,v1402312685422,v1402312511342,v1402312488814,v1402312439662] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313587950) (.cons (no_v1402313584494) (.cons (no_v1402313497838) (.cons (no_v1402313494382) (.cons (no_v1402313471854) (.cons (no_v1402312801518) (.cons (no_v1402312798062) (.cons (no_v1402312711406) (.cons (no_v1402312514798) (.cons (no_v1402312707950) (.cons (no_v1402312685422) (.cons (no_v1402312511342) (.cons (no_v1402312488814) (.cons (no_v1402312439662) .nil))))))))))))))

private def v1402313587958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402313587958 : ¬ MinimalInterpreter v1402313587958 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 1))))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 1))))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313584502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 1))))))))
private theorem no_v1402313584502 : ¬ MinimalInterpreter v1402313584502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 1)))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402313497846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 1))))))))
private theorem no_v1402313497846 : ¬ MinimalInterpreter v1402313497846 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313494390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 1)))))))
private theorem no_v1402313494390 : ¬ MinimalInterpreter v1402313494390 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 1))) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1402313471862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 1)))))))
private theorem no_v1402313471862 : ¬ MinimalInterpreter v1402313471862 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 1))) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312801526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 2) (.var 1))))))))
private theorem no_v1402312801526 : ¬ MinimalInterpreter v1402312801526 :=
  chain_cut true 7 (by decide)

private def v1402312798070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 2)) (.var 1)))))))
private theorem no_v1402312798070 : ¬ MinimalInterpreter v1402312798070 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312711414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312711414 : ¬ MinimalInterpreter v1402312711414 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312514806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312514806 : ¬ MinimalInterpreter v1402312514806 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312707958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.var 1))))))
private theorem no_v1402312707958 : ¬ MinimalInterpreter v1402312707958 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312685430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.var 1))))))
private theorem no_v1402312685430 : ¬ MinimalInterpreter v1402312685430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312511350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2))) (.var 1))))))
private theorem no_v1402312511350 : ¬ MinimalInterpreter v1402312511350 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312488822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2)) (.var 1))))))
private theorem no_v1402312488822 : ¬ MinimalInterpreter v1402312488822 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312439670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2)) (.var 1))))))
private theorem no_v1402312439670 : ¬ MinimalInterpreter v1402312439670 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem four3 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,1,2,2,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,1,2,2,1] = [v1402313587958,v1402313584502,v1402313497846,v1402313494390,v1402313471862,v1402312801526,v1402312798070,v1402312711414,v1402312514806,v1402312707958,v1402312685430,v1402312511350,v1402312488822,v1402312439670] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313587958) (.cons (no_v1402313584502) (.cons (no_v1402313497846) (.cons (no_v1402313494390) (.cons (no_v1402313471862) (.cons (no_v1402312801526) (.cons (no_v1402312798070) (.cons (no_v1402312711414) (.cons (no_v1402312514806) (.cons (no_v1402312707958) (.cons (no_v1402312685430) (.cons (no_v1402312511350) (.cons (no_v1402312488822) (.cons (no_v1402312439670) .nil))))))))))))))

theorem four4 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,2,0,2,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,2,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313612526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402313612526 : ¬ MinimalInterpreter v1402313612526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 2))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 2))))) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313611118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v1402313611118 : ¬ MinimalInterpreter v1402313611118 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 2)))) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313501934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v1402313501934 : ¬ MinimalInterpreter v1402313501934 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 2)))) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313500526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v1402313500526 : ¬ MinimalInterpreter v1402313500526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 2))) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313472878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v1402313472878 : ¬ MinimalInterpreter v1402313472878 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 2))) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312826094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v1402312826094 : ¬ MinimalInterpreter v1402312826094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312824686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v1402312824686 : ¬ MinimalInterpreter v1402312824686 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312715502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312715502 : ¬ MinimalInterpreter v1402312715502 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312518894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312518894 : ¬ MinimalInterpreter v1402312518894 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312714094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.var 2))))))
private theorem no_v1402312714094 : ¬ MinimalInterpreter v1402312714094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312686446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.var 2))))))
private theorem no_v1402312686446 : ¬ MinimalInterpreter v1402312686446 :=
  chain_cut true 4 (by decide)

private def v1402312517486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v1402312517486 : ¬ MinimalInterpreter v1402312517486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312489838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v1402312489838 : ¬ MinimalInterpreter v1402312489838 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312440686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v1402312440686 : ¬ MinimalInterpreter v1402312440686 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four5 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,2,1,1,2]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,2,1,1,2] = [v1402313612526,v1402313611118,v1402313501934,v1402313500526,v1402313472878,v1402312826094,v1402312824686,v1402312715502,v1402312518894,v1402312714094,v1402312686446,v1402312517486,v1402312489838,v1402312440686] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313612526) (.cons (no_v1402313611118) (.cons (no_v1402313501934) (.cons (no_v1402313500526) (.cons (no_v1402313472878) (.cons (no_v1402312826094) (.cons (no_v1402312824686) (.cons (no_v1402312715502) (.cons (no_v1402312518894) (.cons (no_v1402312714094) (.cons (no_v1402312686446) (.cons (no_v1402312517486) (.cons (no_v1402312489838) (.cons (no_v1402312440686) .nil))))))))))))))

private def v1402313612534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402313612534 : ¬ MinimalInterpreter v1402313612534 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 1))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 1))))) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313611126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 1))))))))
private theorem no_v1402313611126 : ¬ MinimalInterpreter v1402313611126 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 1)))) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313501942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 1))))))))
private theorem no_v1402313501942 : ¬ MinimalInterpreter v1402313501942 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 1)))) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313500534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 1)))))))
private theorem no_v1402313500534 : ¬ MinimalInterpreter v1402313500534 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 1))) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313472886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 1)))))))
private theorem no_v1402313472886 : ¬ MinimalInterpreter v1402313472886 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 1))) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312826102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v1402312826102 : ¬ MinimalInterpreter v1402312826102 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312824694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v1402312824694 : ¬ MinimalInterpreter v1402312824694 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312715510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312715510 : ¬ MinimalInterpreter v1402312715510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 1))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312518902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312518902 : ¬ MinimalInterpreter v1402312518902 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312714102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.var 1))))))
private theorem no_v1402312714102 : ¬ MinimalInterpreter v1402312714102 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312686454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.var 1))))))
private theorem no_v1402312686454 : ¬ MinimalInterpreter v1402312686454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312517494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v1402312517494 : ¬ MinimalInterpreter v1402312517494 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312489846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v1402312489846 : ¬ MinimalInterpreter v1402312489846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312440694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v1402312440694 : ¬ MinimalInterpreter v1402312440694 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four6 : BadRow (markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,2,1,2,1]) := by
  have h : markedRow ⟨0,2,0,2,5,6⟩ [0,0] [0,2,1,2,1] = [v1402313612534,v1402313611126,v1402313501942,v1402313500534,v1402313472886,v1402312826102,v1402312824694,v1402312715510,v1402312518902,v1402312714102,v1402312686454,v1402312517494,v1402312489846,v1402312440694] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313612534) (.cons (no_v1402313611126) (.cons (no_v1402313501942) (.cons (no_v1402313500534) (.cons (no_v1402313472886) (.cons (no_v1402312826102) (.cons (no_v1402312824694) (.cons (no_v1402312715510) (.cons (no_v1402312518902) (.cons (no_v1402312714102) (.cons (no_v1402312686454) (.cons (no_v1402312517494) (.cons (no_v1402312489846) (.cons (no_v1402312440694) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows40
