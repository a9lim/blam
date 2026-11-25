import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem five736 : BadRow (bucket false 4 3 5 [1,1,0,1,1]) := by
  have h : bucket false 4 3 5 [1,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five737 : BadRow (bucket true 4 3 5 [1,1,0,1,1]) := by
  have h : bucket true 4 3 5 [1,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314398178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))))))
private theorem no_v1402314398178 : ¬ MinimalInterpreter v1402314398178 :=
  chain_cut false 2 (by decide)

private def v1402314397410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))))))
private theorem no_v1402314397410 : ¬ MinimalInterpreter v1402314397410 :=
  chain_cut false 2 (by decide)

private def v1402314353122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v1402314353122 : ¬ MinimalInterpreter v1402314353122 :=
  chain_cut false 2 (by decide)

private def v1402314351226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))))))))
private theorem no_v1402314351226 : ¬ MinimalInterpreter v1402314351226 :=
  chain_cut false 2 (by decide)

private def v1402314352354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))))))))
private theorem no_v1402314352354 : ¬ MinimalInterpreter v1402314352354 :=
  chain_cut false 2 (by decide)

private def v1402314341090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))))))))
private theorem no_v1402314341090 : ¬ MinimalInterpreter v1402314341090 :=
  chain_cut false 2 (by decide)

private def v1402314340538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)))))))
private theorem no_v1402314340538 : ¬ MinimalInterpreter v1402314340538 :=
  chain_cut false 2 (by decide)

private def v1402312956386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v1402312956386 : ¬ MinimalInterpreter v1402312956386 :=
  chain_cut false 2 (by decide)

private def v1402312955618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))))))
private theorem no_v1402312955618 : ¬ MinimalInterpreter v1402312955618 :=
  chain_cut false 2 (by decide)

private def v1402312911330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.var 0))))))))
private theorem no_v1402312911330 : ¬ MinimalInterpreter v1402312911330 :=
  chain_cut false 2 (by decide)

private def v1402312550882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.var 0))))))))
private theorem no_v1402312550882 : ¬ MinimalInterpreter v1402312550882 :=
  chain_cut false 2 (by decide)

private def v1402312866426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312866426 : ¬ MinimalInterpreter v1402312866426 :=
  chain_cut false 2 (by decide)

private def v1402312909434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312909434 : ¬ MinimalInterpreter v1402312909434 :=
  chain_cut false 2 (by decide)

private def v1402312548986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312548986 : ¬ MinimalInterpreter v1402312548986 :=
  chain_cut false 2 (by decide)

private def v1402312910562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.var 0)))))))
private theorem no_v1402312910562 : ¬ MinimalInterpreter v1402312910562 :=
  chain_cut false 2 (by decide)

private def v1402312899298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.var 0)))))))
private theorem no_v1402312899298 : ¬ MinimalInterpreter v1402312899298 :=
  chain_cut false 2 (by decide)

private def v1402312550114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.var 0)))))))
private theorem no_v1402312550114 : ¬ MinimalInterpreter v1402312550114 :=
  chain_cut false 2 (by decide)

private def v1402312538850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.var 0)))))))
private theorem no_v1402312538850 : ¬ MinimalInterpreter v1402312538850 :=
  chain_cut false 2 (by decide)

private def v1402312448738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)) (.lam (.var 0)))))))
private theorem no_v1402312448738 : ¬ MinimalInterpreter v1402312448738 :=
  chain_cut false 2 (by decide)

private def v1402312898746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0))))))
private theorem no_v1402312898746 : ¬ MinimalInterpreter v1402312898746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2))) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312527546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 0))))))
private theorem no_v1402312527546 : ¬ MinimalInterpreter v1402312527546 :=
  chain_cut false 2 (by decide)

private def v1402312538298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.var 0))))))
private theorem no_v1402312538298 : ¬ MinimalInterpreter v1402312538298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 2)) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312448186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 0))))))
private theorem no_v1402312448186 : ¬ MinimalInterpreter v1402312448186 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.var 2)) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402336241274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402336241274 : ¬ MinimalInterpreter v1402336241274 :=
  chain_cut false 4 (by decide)

private def v1402336241082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v1402336241082 : ¬ MinimalInterpreter v1402336241082 :=
  chain_cut false 4 (by decide)

private def v1402336230010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402336230010 : ¬ MinimalInterpreter v1402336230010 :=
  chain_cut false 4 (by decide)

private def v1402336229818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v1402336229818 : ¬ MinimalInterpreter v1402336229818 :=
  chain_cut false 4 (by decide)

private def v1402336227002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v1402336227002 : ¬ MinimalInterpreter v1402336227002 :=
  chain_cut false 4 (by decide)

private def v1402336418274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))))))
private theorem no_v1402336418274 : ¬ MinimalInterpreter v1402336418274 :=
  chain_cut true 6 (by decide)

private def v1402336417506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))))))
private theorem no_v1402336417506 : ¬ MinimalInterpreter v1402336417506 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336373218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v1402336373218 : ¬ MinimalInterpreter v1402336373218 :=
  chain_cut true 6 (by decide)

private def v1402336371322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))))))))
private theorem no_v1402336371322 : ¬ MinimalInterpreter v1402336371322 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336372450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))))))))
private theorem no_v1402336372450 : ¬ MinimalInterpreter v1402336372450 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336361186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))))))))
private theorem no_v1402336361186 : ¬ MinimalInterpreter v1402336361186 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402336360634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)))))))
private theorem no_v1402336360634 : ¬ MinimalInterpreter v1402336360634 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2)) (.var 0)) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402330998498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.var 0))))))
private theorem no_v1402330998498 : ¬ MinimalInterpreter v1402330998498 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402330987234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.var 0))))))
private theorem no_v1402330987234 : ¬ MinimalInterpreter v1402330987234 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402330954170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0)))))
private theorem no_v1402330954170 : ¬ MinimalInterpreter v1402330954170 :=
  chain_cut false 2 (by decide)

private def v1402330951354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 0)))))
private theorem no_v1402330951354 : ¬ MinimalInterpreter v1402330951354 :=
  chain_cut false 2 (by decide)

theorem five738 : BadRow (bucket false 4 3 5 [1,1,0,2,0]) := by
  have h : bucket false 4 3 5 [1,1,0,2,0] = [v1402314398178,v1402314397410,v1402314353122,v1402314351226,v1402314352354,v1402314341090,v1402314340538,v1402312956386,v1402312955618,v1402312911330,v1402312550882,v1402312866426,v1402312909434,v1402312548986,v1402312910562,v1402312899298,v1402312550114,v1402312538850,v1402312448738,v1402312898746,v1402312527546,v1402312538298,v1402312448186,v1402336241274,v1402336241082,v1402336230010,v1402336229818,v1402336227002,v1402336418274,v1402336417506,v1402336373218,v1402336371322,v1402336372450,v1402336361186,v1402336360634,v1402330998498,v1402330987234,v1402330954170,v1402330951354] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314398178) (.cons (no_v1402314397410) (.cons (no_v1402314353122) (.cons (no_v1402314351226) (.cons (no_v1402314352354) (.cons (no_v1402314341090) (.cons (no_v1402314340538) (.cons (no_v1402312956386) (.cons (no_v1402312955618) (.cons (no_v1402312911330) (.cons (no_v1402312550882) (.cons (no_v1402312866426) (.cons (no_v1402312909434) (.cons (no_v1402312548986) (.cons (no_v1402312910562) (.cons (no_v1402312899298) (.cons (no_v1402312550114) (.cons (no_v1402312538850) (.cons (no_v1402312448738) (.cons (no_v1402312898746) (.cons (no_v1402312527546) (.cons (no_v1402312538298) (.cons (no_v1402312448186) (.cons (no_v1402336241274) (.cons (no_v1402336241082) (.cons (no_v1402336230010) (.cons (no_v1402336229818) (.cons (no_v1402336227002) (.cons (no_v1402336418274) (.cons (no_v1402336417506) (.cons (no_v1402336373218) (.cons (no_v1402336371322) (.cons (no_v1402336372450) (.cons (no_v1402336361186) (.cons (no_v1402336360634) (.cons (no_v1402330998498) (.cons (no_v1402330987234) (.cons (no_v1402330954170) (.cons (no_v1402330951354) .nil)))))))))))))))))))))))))))))))))))))))

theorem five739 : BadRow (bucket true 4 3 5 [1,1,0,2,0]) := by
  have h : bucket true 4 3 5 [1,1,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five740 : BadRow (bucket false 4 3 5 [1,1,1,0,1]) := by
  have h : bucket false 4 3 5 [1,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five741 : BadRow (bucket true 4 3 5 [1,1,1,0,1]) := by
  have h : bucket true 4 3 5 [1,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five742 : BadRow (bucket false 4 3 5 [1,1,1,1,0]) := by
  have h : bucket false 4 3 5 [1,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five743 : BadRow (bucket true 4 3 5 [1,1,1,1,0]) := by
  have h : bucket true 4 3 5 [1,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
