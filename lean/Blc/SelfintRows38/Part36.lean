import Blc.SelfintTwoPending
import Blc.SelfintRare38

namespace Blc.SelfintSingleObject.Rows38
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v70464413498 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v70464413498 : ¬ MinimalInterpreter v70464413498 :=
  cost_cut false 1 (by decide)

private def v70464411610 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v70464411610 : ¬ MinimalInterpreter v70464411610 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v70464401210 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0))))))))
private theorem no_v70464401210 : ¬ MinimalInterpreter v70464401210 :=
  cost_cut false 1 (by decide)

private def v70464399322 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))
private theorem no_v70464399322 : ¬ MinimalInterpreter v70464399322 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v70464396250 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0)))))))
private theorem no_v70464396250 : ¬ MinimalInterpreter v70464396250 :=
  cost_cut false 1 (by decide)

private def v70464708410 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v70464708410 : ¬ MinimalInterpreter v70464708410 :=
  cost_cut false 1 (by decide)

private def v70464706522 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v70464706522 : ¬ MinimalInterpreter v70464706522 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v70464671546 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0)))))))
private theorem no_v70464671546 : ¬ MinimalInterpreter v70464671546 :=
  cost_cut false 1 (by decide)

private def v70464660442 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0))))))
private theorem no_v70464660442 : ¬ MinimalInterpreter v70464660442 :=
  cost_cut false 1 (by decide)

private def v70470606650 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v70470606650 : ¬ MinimalInterpreter v70470606650 :=
  cost_cut false 1 (by decide)

private def v70470604762 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v70470604762 : ¬ MinimalInterpreter v70470604762 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

theorem row216 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [0,3,1,0]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [0,3,1,0] = [v70464413498,v70464411610,v70464401210,v70464399322,v70464396250,v70464708410,v70464706522,v70464671546,v70464660442,v70470606650,v70470604762] := by decide
  rw [h]
  exact (.cons (no_v70464413498) (.cons (no_v70464411610) (.cons (no_v70464401210) (.cons (no_v70464399322) (.cons (no_v70464396250) (.cons (no_v70464708410) (.cons (no_v70464706522) (.cons (no_v70464671546) (.cons (no_v70464660442) (.cons (no_v70470606650) (.cons (no_v70470604762) .nil)))))))))))

private def v70464425182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 3)))))))))
private theorem no_v70464425182 : ¬ MinimalInterpreter v70464425182 :=
  cost_cut false 1 (by decide)

private def v70464424798 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 3))))))))
private theorem no_v70464424798 : ¬ MinimalInterpreter v70464424798 :=
  cost_cut false 1 (by decide)

private def v70464402654 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 3))))))))
private theorem no_v70464402654 : ¬ MinimalInterpreter v70464402654 :=
  cost_cut false 1 (by decide)

private def v70464402270 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 3)))))))
private theorem no_v70464402270 : ¬ MinimalInterpreter v70464402270 :=
  cost_cut false 1 (by decide)

private def v70464396638 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 3)))))))
private theorem no_v70464396638 : ¬ MinimalInterpreter v70464396638 :=
  cost_cut false 1 (by decide)

private def v70464779038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v70464779038 : ¬ MinimalInterpreter v70464779038 :=
  cost_cut false 1 (by decide)

private def v70464777502 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))))
private theorem no_v70464777502 : ¬ MinimalInterpreter v70464777502 :=
  cost_cut false 1 (by decide)

private def v70464688926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v70464688926 : ¬ MinimalInterpreter v70464688926 :=
  cost_cut false 1 (by decide)

private def v70464687390 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 3)))))))
private theorem no_v70464687390 : ¬ MinimalInterpreter v70464687390 :=
  cost_cut false 1 (by decide)

private def v70464664862 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v70464664862 : ¬ MinimalInterpreter v70464664862 :=
  cost_cut false 1 (by decide)

theorem row217 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [1,0,0,3]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [1,0,0,3] = [v70464425182,v70464424798,v70464402654,v70464402270,v70464396638,v70464779038,v70464777502,v70464688926,v70464687390,v70464664862] := by decide
  rw [h]
  exact (.cons (no_v70464425182) (.cons (no_v70464424798) (.cons (no_v70464402654) (.cons (no_v70464402270) (.cons (no_v70464396638) (.cons (no_v70464779038) (.cons (no_v70464777502) (.cons (no_v70464688926) (.cons (no_v70464687390) (.cons (no_v70464664862) .nil))))))))))

private def v70464425198 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v70464425198 : ¬ MinimalInterpreter v70464425198 :=
  cost_cut false 1 (by decide)

private def v70464424814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v70464424814 : ¬ MinimalInterpreter v70464424814 :=
  cost_cut false 1 (by decide)

private def v70464402670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v70464402670 : ¬ MinimalInterpreter v70464402670 :=
  cost_cut false 1 (by decide)

private def v70464402286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v70464402286 : ¬ MinimalInterpreter v70464402286 :=
  cost_cut false 1 (by decide)

private def v70464396654 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v70464396654 : ¬ MinimalInterpreter v70464396654 :=
  cost_cut false 1 (by decide)

private def v70464769262 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v70464769262 : ¬ MinimalInterpreter v70464769262 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v70464768878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v70464768878 : ¬ MinimalInterpreter v70464768878 :=
  cost_cut false 1 (by decide)

private def v70464777326 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 2)))))))
private theorem no_v70464777326 : ¬ MinimalInterpreter v70464777326 :=
  cost_cut false 1 (by decide)

private def v70464687214 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 2))))))
private theorem no_v70464687214 : ¬ MinimalInterpreter v70464687214 :=
  cost_cut false 1 (by decide)

private def v70464664686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 2))))))
private theorem no_v70464664686 : ¬ MinimalInterpreter v70464664686 :=
  cost_cut false 1 (by decide)

theorem row218 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [1,0,1,2]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [1,0,1,2] = [v70464425198,v70464424814,v70464402670,v70464402286,v70464396654,v70464769262,v70464768878,v70464777326,v70464687214,v70464664686] := by decide
  rw [h]
  exact (.cons (no_v70464425198) (.cons (no_v70464424814) (.cons (no_v70464402670) (.cons (no_v70464402286) (.cons (no_v70464396654) (.cons (no_v70464769262) (.cons (no_v70464768878) (.cons (no_v70464777326) (.cons (no_v70464687214) (.cons (no_v70464664686) .nil))))))))))

private def v70464425206 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v70464425206 : ¬ MinimalInterpreter v70464425206 :=
  cost_cut false 1 (by decide)

private def v70464424822 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v70464424822 : ¬ MinimalInterpreter v70464424822 :=
  cost_cut false 1 (by decide)

private def v70464402678 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v70464402678 : ¬ MinimalInterpreter v70464402678 :=
  cost_cut false 1 (by decide)

private def v70464402294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v70464402294 : ¬ MinimalInterpreter v70464402294 :=
  cost_cut false 1 (by decide)

private def v70464396662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v70464396662 : ¬ MinimalInterpreter v70464396662 :=
  cost_cut false 1 (by decide)

private def v70464769270 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v70464769270 : ¬ MinimalInterpreter v70464769270 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v70464768886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v70464768886 : ¬ MinimalInterpreter v70464768886 :=
  cost_cut false 1 (by decide)

private def v70464779206 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v70464779206 : ¬ MinimalInterpreter v70464779206 :=
  cost_cut false 1 (by decide)

private def v70464777670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 1))))))))
private theorem no_v70464777670 : ¬ MinimalInterpreter v70464777670 :=
  cost_cut false 1 (by decide)

private def v70464689094 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v70464689094 : ¬ MinimalInterpreter v70464689094 :=
  cost_cut false 1 (by decide)

private def v70464687558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 1)))))))
private theorem no_v70464687558 : ¬ MinimalInterpreter v70464687558 :=
  cost_cut false 1 (by decide)

private def v70464665030 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v70464665030 : ¬ MinimalInterpreter v70464665030 :=
  cost_cut false 1 (by decide)

theorem row219 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [1,0,2,1]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [1,0,2,1] = [v70464425206,v70464424822,v70464402678,v70464402294,v70464396662,v70464769270,v70464768886,v70464779206,v70464777670,v70464689094,v70464687558,v70464665030] := by decide
  rw [h]
  exact (.cons (no_v70464425206) (.cons (no_v70464424822) (.cons (no_v70464402678) (.cons (no_v70464402294) (.cons (no_v70464396662) (.cons (no_v70464769270) (.cons (no_v70464768886) (.cons (no_v70464779206) (.cons (no_v70464777670) (.cons (no_v70464689094) (.cons (no_v70464687558) (.cons (no_v70464665030) .nil))))))))))))

private def v70464425210 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 0)))))))))
private theorem no_v70464425210 : ¬ MinimalInterpreter v70464425210 :=
  cost_cut false 1 (by decide)

private def v70464424826 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 0))))))))
private theorem no_v70464424826 : ¬ MinimalInterpreter v70464424826 :=
  cost_cut false 1 (by decide)

private def v70464402682 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 0))))))))
private theorem no_v70464402682 : ¬ MinimalInterpreter v70464402682 :=
  cost_cut false 1 (by decide)

private def v70464402298 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0)))))))
private theorem no_v70464402298 : ¬ MinimalInterpreter v70464402298 :=
  cost_cut false 1 (by decide)

private def v70464396666 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 0)))))))
private theorem no_v70464396666 : ¬ MinimalInterpreter v70464396666 :=
  cost_cut false 1 (by decide)

private def v70464777338 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 0)))))))
private theorem no_v70464777338 : ¬ MinimalInterpreter v70464777338 :=
  cost_cut false 1 (by decide)

private def v70464687226 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 0))))))
private theorem no_v70464687226 : ¬ MinimalInterpreter v70464687226 :=
  cost_cut false 1 (by decide)

private def v70464664698 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 0))))))
private theorem no_v70464664698 : ¬ MinimalInterpreter v70464664698 :=
  cost_cut false 1 (by decide)

theorem row220 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [1,0,3,0]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [1,0,3,0] = [v70464425210,v70464424826,v70464402682,v70464402298,v70464396666,v70464777338,v70464687226,v70464664698] := by decide
  rw [h]
  exact (.cons (no_v70464425210) (.cons (no_v70464424826) (.cons (no_v70464402682) (.cons (no_v70464402298) (.cons (no_v70464396666) (.cons (no_v70464777338) (.cons (no_v70464687226) (.cons (no_v70464664698) .nil))))))))

private def v70464425582 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v70464425582 : ¬ MinimalInterpreter v70464425582 :=
  cost_cut false 1 (by decide)

private def v70464424878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v70464424878 : ¬ MinimalInterpreter v70464424878 :=
  cost_cut false 1 (by decide)

private def v70464403054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v70464403054 : ¬ MinimalInterpreter v70464403054 :=
  cost_cut false 1 (by decide)

private def v70464402350 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v70464402350 : ¬ MinimalInterpreter v70464402350 :=
  cost_cut false 1 (by decide)

private def v70464396718 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v70464396718 : ¬ MinimalInterpreter v70464396718 :=
  cost_cut false 1 (by decide)

private def v70464769646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v70464769646 : ¬ MinimalInterpreter v70464769646 :=
  cost_cut false 1 (by decide)

private def v70464768942 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v70464768942 : ¬ MinimalInterpreter v70464768942 :=
  cost_cut false 1 (by decide)

private def v70464685678 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v70464685678 : ¬ MinimalInterpreter v70464685678 :=
  cost_cut false 1 (by decide)

private def v70464663982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v70464663982 : ¬ MinimalInterpreter v70464663982 :=
  cost_cut false 1 (by decide)

theorem row221 : BadRow (row ⟨1,2,0,3,4,4⟩ [0,0] [1,1,0,2]) := by
  have h : row ⟨1,2,0,3,4,4⟩ [0,0] [1,1,0,2] = [v70464425582,v70464424878,v70464403054,v70464402350,v70464396718,v70464769646,v70464768942,v70464685678,v70464663982] := by decide
  rw [h]
  exact (.cons (no_v70464425582) (.cons (no_v70464424878) (.cons (no_v70464403054) (.cons (no_v70464402350) (.cons (no_v70464396718) (.cons (no_v70464769646) (.cons (no_v70464768942) (.cons (no_v70464685678) (.cons (no_v70464663982) .nil)))))))))

end Blc.SelfintSingleObject.Rows38
