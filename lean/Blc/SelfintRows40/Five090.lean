import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402314362106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402314362106 : ¬ MinimalInterpreter v1402314362106 :=
  chain_cut false 2 (by decide)

private def v1402314361722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 0)))))))))
private theorem no_v1402314361722 : ¬ MinimalInterpreter v1402314361722 :=
  chain_cut false 2 (by decide)

private def v1402314371322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 0))))))))))
private theorem no_v1402314371322 : ¬ MinimalInterpreter v1402314371322 :=
  chain_cut false 2 (by decide)

private def v1402314346746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 0)))))))))
private theorem no_v1402314346746 : ¬ MinimalInterpreter v1402314346746 :=
  chain_cut false 2 (by decide)

private def v1402314343290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 3)))) (.var 0)))))))
private theorem no_v1402314343290 : ¬ MinimalInterpreter v1402314343290 :=
  chain_cut false 2 (by decide)

private def v1402312920314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402312920314 : ¬ MinimalInterpreter v1402312920314 :=
  chain_cut false 2 (by decide)

private def v1402312919930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))))))
private theorem no_v1402312919930 : ¬ MinimalInterpreter v1402312919930 :=
  chain_cut false 2 (by decide)

private def v1402312929530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.app (.var 3) (.var 0)))))))))
private theorem no_v1402312929530 : ¬ MinimalInterpreter v1402312929530 :=
  chain_cut false 2 (by decide)

private def v1402312904954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.app (.var 3) (.var 0))))))))
private theorem no_v1402312904954 : ¬ MinimalInterpreter v1402312904954 :=
  chain_cut false 2 (by decide)

private def v1402312544506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.app (.var 3) (.var 0))))))))
private theorem no_v1402312544506 : ¬ MinimalInterpreter v1402312544506 :=
  chain_cut false 2 (by decide)

private def v1402312864634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 3))))) (.var 0))))))
private theorem no_v1402312864634 : ¬ MinimalInterpreter v1402312864634 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.var 3))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.app (.var 0) (.var 1))))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 2)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2) (by decide) (by decide))) (.var 0)) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402312863098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.var 0))))))
private theorem no_v1402312863098 : ¬ MinimalInterpreter v1402312863098 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 2) (by decide) (by decide))) (.var 0)) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402312901498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 3))))) (.var 0))))))
private theorem no_v1402312901498 : ¬ MinimalInterpreter v1402312901498 :=
  chain_cut false 2 (by decide)

private def v1402312541050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 3)))) (.var 0))))))
private theorem no_v1402312541050 : ¬ MinimalInterpreter v1402312541050 :=
  chain_cut false 2 (by decide)

theorem five720 : BadRow (bucket false 4 3 5 [1,0,0,3,0]) := by
  have h : bucket false 4 3 5 [1,0,0,3,0] = [v1402314362106,v1402314361722,v1402314371322,v1402314346746,v1402314343290,v1402312920314,v1402312919930,v1402312929530,v1402312904954,v1402312544506,v1402312864634,v1402312863098,v1402312901498,v1402312541050] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314362106) (.cons (no_v1402314361722) (.cons (no_v1402314371322) (.cons (no_v1402314346746) (.cons (no_v1402314343290) (.cons (no_v1402312920314) (.cons (no_v1402312919930) (.cons (no_v1402312929530) (.cons (no_v1402312904954) (.cons (no_v1402312544506) (.cons (no_v1402312864634) (.cons (no_v1402312863098) (.cons (no_v1402312901498) (.cons (no_v1402312541050) .nil))))))))))))))

theorem five721 : BadRow (bucket true 4 3 5 [1,0,0,3,0]) := by
  have h : bucket true 4 3 5 [1,0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314370606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))))))
private theorem no_v1402314370606 : ¬ MinimalInterpreter v1402314370606 :=
  chain_cut false 2 (by decide)

private def v1402314343342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))))))
private theorem no_v1402314343342 : ¬ MinimalInterpreter v1402314343342 :=
  chain_cut false 2 (by decide)

private def v1402314346030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)))))))
private theorem no_v1402314346030 : ¬ MinimalInterpreter v1402314346030 :=
  chain_cut false 2 (by decide)

private def v1402314339886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)))))))
private theorem no_v1402314339886 : ¬ MinimalInterpreter v1402314339886 :=
  chain_cut false 2 (by decide)

private def v1402312928814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))))
private theorem no_v1402312928814 : ¬ MinimalInterpreter v1402312928814 :=
  chain_cut false 2 (by decide)

private def v1402312871534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1402312871534 : ¬ MinimalInterpreter v1402312871534 :=
  chain_cut false 2 (by decide)

private def v1402312870830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1402312870830 : ¬ MinimalInterpreter v1402312870830 :=
  chain_cut false 2 (by decide)

private def v1402312865390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312865390 : ¬ MinimalInterpreter v1402312865390 :=
  chain_cut false 2 (by decide)

private def v1402312529518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312529518 : ¬ MinimalInterpreter v1402312529518 :=
  chain_cut false 2 (by decide)

private def v1402312864686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 2))))))
private theorem no_v1402312864686 : ¬ MinimalInterpreter v1402312864686 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312863150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 2))))))
private theorem no_v1402312863150 : ¬ MinimalInterpreter v1402312863150 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402312901550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 2))))))
private theorem no_v1402312901550 : ¬ MinimalInterpreter v1402312901550 :=
  chain_cut false 2 (by decide)

private def v1402312904238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 2))))))
private theorem no_v1402312904238 : ¬ MinimalInterpreter v1402312904238 :=
  chain_cut false 2 (by decide)

private def v1402312898094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 2))))))
private theorem no_v1402312898094 : ¬ MinimalInterpreter v1402312898094 :=
  chain_cut false 2 (by decide)

private def v1402312541102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.var 0)))) (.var 2))))))
private theorem no_v1402312541102 : ¬ MinimalInterpreter v1402312541102 :=
  chain_cut false 2 (by decide)

private def v1402312543790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 2))))))
private theorem no_v1402312543790 : ¬ MinimalInterpreter v1402312543790 :=
  chain_cut false 2 (by decide)

private def v1402312528814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1402312528814 : ¬ MinimalInterpreter v1402312528814 :=
  chain_cut false 2 (by decide)

private def v1402312537646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 2))))))
private theorem no_v1402312537646 : ¬ MinimalInterpreter v1402312537646 :=
  chain_cut false 2 (by decide)

private def v1402312447534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 2))))))
private theorem no_v1402312447534 : ¬ MinimalInterpreter v1402312447534 :=
  chain_cut false 2 (by decide)

private def v1402312527278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 2))))))
private theorem no_v1402312527278 : ¬ MinimalInterpreter v1402312527278 :=
  chain_cut false 2 (by decide)

private def v1402312443310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1402312443310 : ¬ MinimalInterpreter v1402312443310 :=
  chain_cut false 2 (by decide)

private def v1402336235118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402336235118 : ¬ MinimalInterpreter v1402336235118 :=
  chain_cut false 4 (by decide)

private def v1402336234414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1402336234414 : ¬ MinimalInterpreter v1402336234414 :=
  chain_cut false 4 (by decide)

private def v1402336228974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402336228974 : ¬ MinimalInterpreter v1402336228974 :=
  chain_cut false 4 (by decide)

private def v1402336228270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v1402336228270 : ¬ MinimalInterpreter v1402336228270 :=
  chain_cut false 4 (by decide)

private def v1402336226734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v1402336226734 : ¬ MinimalInterpreter v1402336226734 :=
  chain_cut false 4 (by decide)

private def v1402336382574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402336382574 : ¬ MinimalInterpreter v1402336382574 :=
  chain_cut false 10 (by decide)

private def v1402336381870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1402336381870 : ¬ MinimalInterpreter v1402336381870 :=
  w_cut false 0 (by decide)

private def v1402336390702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))))))
private theorem no_v1402336390702 : ¬ MinimalInterpreter v1402336390702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336366126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)))))))
private theorem no_v1402336366126 : ¬ MinimalInterpreter v1402336366126 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336359982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)))))))
private theorem no_v1402336359982 : ¬ MinimalInterpreter v1402336359982 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336972398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1402336972398 : ¬ MinimalInterpreter v1402336972398 :=
  chain_cut false 2 (by decide)

private def v1402336971694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1402336971694 : ¬ MinimalInterpreter v1402336971694 :=
  chain_cut false 2 (by decide)

private def v1402331205230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402331205230 : ¬ MinimalInterpreter v1402331205230 :=
  chain_cut false 2 (by decide)

private def v1402331204526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1402331204526 : ¬ MinimalInterpreter v1402331204526 :=
  chain_cut false 2 (by decide)

private def v1402331008622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1402331008622 : ¬ MinimalInterpreter v1402331008622 :=
  chain_cut false 3 (by decide)

private def v1402331007918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1402331007918 : ¬ MinimalInterpreter v1402331007918 :=
  chain_cut false 3 (by decide)

theorem five722 : BadRow (bucket false 4 3 5 [1,0,1,0,2]) := by
  have h : bucket false 4 3 5 [1,0,1,0,2] = [v1402314370606,v1402314343342,v1402314346030,v1402314339886,v1402312928814,v1402312871534,v1402312870830,v1402312865390,v1402312529518,v1402312864686,v1402312863150,v1402312901550,v1402312904238,v1402312898094,v1402312541102,v1402312543790,v1402312528814,v1402312537646,v1402312447534,v1402312527278,v1402312443310,v1402336235118,v1402336234414,v1402336228974,v1402336228270,v1402336226734,v1402336382574,v1402336381870,v1402336390702,v1402336366126,v1402336359982,v1402336972398,v1402336971694,v1402331205230,v1402331204526,v1402331008622,v1402331007918] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314370606) (.cons (no_v1402314343342) (.cons (no_v1402314346030) (.cons (no_v1402314339886) (.cons (no_v1402312928814) (.cons (no_v1402312871534) (.cons (no_v1402312870830) (.cons (no_v1402312865390) (.cons (no_v1402312529518) (.cons (no_v1402312864686) (.cons (no_v1402312863150) (.cons (no_v1402312901550) (.cons (no_v1402312904238) (.cons (no_v1402312898094) (.cons (no_v1402312541102) (.cons (no_v1402312543790) (.cons (no_v1402312528814) (.cons (no_v1402312537646) (.cons (no_v1402312447534) (.cons (no_v1402312527278) (.cons (no_v1402312443310) (.cons (no_v1402336235118) (.cons (no_v1402336234414) (.cons (no_v1402336228974) (.cons (no_v1402336228270) (.cons (no_v1402336226734) (.cons (no_v1402336382574) (.cons (no_v1402336381870) (.cons (no_v1402336390702) (.cons (no_v1402336366126) (.cons (no_v1402336359982) (.cons (no_v1402336972398) (.cons (no_v1402336971694) (.cons (no_v1402331205230) (.cons (no_v1402331204526) (.cons (no_v1402331008622) (.cons (no_v1402331007918) .nil)))))))))))))))))))))))))))))))))))))

theorem five723 : BadRow (bucket true 4 3 5 [1,0,1,0,2]) := by
  have h : bucket true 4 3 5 [1,0,1,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five724 : BadRow (bucket false 4 3 5 [1,0,1,1,1]) := by
  have h : bucket false 4 3 5 [1,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem five725 : BadRow (bucket true 4 3 5 [1,0,1,1,1]) := by
  have h : bucket true 4 3 5 [1,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402314373602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))))))
private theorem no_v1402314373602 : ¬ MinimalInterpreter v1402314373602 :=
  chain_cut false 2 (by decide)

private def v1402314370786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))))
private theorem no_v1402314370786 : ¬ MinimalInterpreter v1402314370786 :=
  chain_cut false 2 (by decide)

private def v1402314349026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v1402314349026 : ¬ MinimalInterpreter v1402314349026 :=
  chain_cut false 2 (by decide)

private def v1402314346210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))))))))
private theorem no_v1402314346210 : ¬ MinimalInterpreter v1402314346210 :=
  chain_cut false 2 (by decide)

private def v1402314340066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))))))))
private theorem no_v1402314340066 : ¬ MinimalInterpreter v1402314340066 :=
  chain_cut false 2 (by decide)

private def v1402312931810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v1402312931810 : ¬ MinimalInterpreter v1402312931810 :=
  chain_cut false 2 (by decide)

private def v1402312928994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))))
private theorem no_v1402312928994 : ¬ MinimalInterpreter v1402312928994 :=
  chain_cut false 2 (by decide)

private def v1402312871546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1402312871546 : ¬ MinimalInterpreter v1402312871546 :=
  chain_cut false 2 (by decide)

private def v1402312870842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1402312870842 : ¬ MinimalInterpreter v1402312870842 :=
  chain_cut false 2 (by decide)

private def v1402312907234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.var 0))))))))
private theorem no_v1402312907234 : ¬ MinimalInterpreter v1402312907234 :=
  chain_cut false 2 (by decide)

private def v1402312546786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.var 0))))))))
private theorem no_v1402312546786 : ¬ MinimalInterpreter v1402312546786 :=
  chain_cut false 2 (by decide)

private def v1402312865402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312865402 : ¬ MinimalInterpreter v1402312865402 :=
  chain_cut false 2 (by decide)

private def v1402312529530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1402312529530 : ¬ MinimalInterpreter v1402312529530 :=
  chain_cut false 2 (by decide)

private def v1402312904418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 0)))))))
private theorem no_v1402312904418 : ¬ MinimalInterpreter v1402312904418 :=
  chain_cut false 2 (by decide)

private def v1402312898274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.var 0)))))))
private theorem no_v1402312898274 : ¬ MinimalInterpreter v1402312898274 :=
  chain_cut false 2 (by decide)

private def v1402312543970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 0)))))))
private theorem no_v1402312543970 : ¬ MinimalInterpreter v1402312543970 :=
  chain_cut false 2 (by decide)

private def v1402312537826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.var 0)))))))
private theorem no_v1402312537826 : ¬ MinimalInterpreter v1402312537826 :=
  chain_cut false 2 (by decide)

private def v1402312447714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)) (.lam (.var 0)))))))
private theorem no_v1402312447714 : ¬ MinimalInterpreter v1402312447714 :=
  chain_cut false 2 (by decide)

private def v1402312528826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1402312528826 : ¬ MinimalInterpreter v1402312528826 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 2))) (.var 0)) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312527290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 0))))))
private theorem no_v1402312527290 : ¬ MinimalInterpreter v1402312527290 :=
  chain_cut false 2 (by decide)

private def v1402312443322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1402312443322 : ¬ MinimalInterpreter v1402312443322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402336235130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402336235130 : ¬ MinimalInterpreter v1402336235130 :=
  chain_cut false 4 (by decide)

private def v1402336234426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1402336234426 : ¬ MinimalInterpreter v1402336234426 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336228986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402336228986 : ¬ MinimalInterpreter v1402336228986 :=
  chain_cut false 4 (by decide)

private def v1402336228282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v1402336228282 : ¬ MinimalInterpreter v1402336228282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336226746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v1402336226746 : ¬ MinimalInterpreter v1402336226746 :=
  chain_cut false 4 (by decide)

private def v1402336382586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402336382586 : ¬ MinimalInterpreter v1402336382586 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336381882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1402336381882 : ¬ MinimalInterpreter v1402336381882 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336393698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))))))
private theorem no_v1402336393698 : ¬ MinimalInterpreter v1402336393698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0))))) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336390882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))))
private theorem no_v1402336390882 : ¬ MinimalInterpreter v1402336390882 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))) (.app (.var 1) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336369122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v1402336369122 : ¬ MinimalInterpreter v1402336369122 :=
  chain_cut true 8 (by decide)

private def v1402336366306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))))))))
private theorem no_v1402336366306 : ¬ MinimalInterpreter v1402336366306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402336360162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))))))))
private theorem no_v1402336360162 : ¬ MinimalInterpreter v1402336360162 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402336972410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v1402336972410 : ¬ MinimalInterpreter v1402336972410 :=
  chain_cut false 2 (by decide)

private def v1402336971706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v1402336971706 : ¬ MinimalInterpreter v1402336971706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402331205242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402331205242 : ¬ MinimalInterpreter v1402331205242 :=
  chain_cut false 2 (by decide)

private def v1402331204538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1402331204538 : ¬ MinimalInterpreter v1402331204538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402331008634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1402331008634 : ¬ MinimalInterpreter v1402331008634 :=
  chain_cut false 3 (by decide)

private def v1402331007930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1402331007930 : ¬ MinimalInterpreter v1402331007930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402330992354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.var 0))))))
private theorem no_v1402330992354 : ¬ MinimalInterpreter v1402330992354 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.var 0)))) (.app (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (so_closed_lam (by decide) (.var 0))) (.var 0) (by decide) (by decide)))))

private def v1402330986210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.var 0))))))
private theorem no_v1402330986210 : ¬ MinimalInterpreter v1402330986210 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402330952634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0)))))
private theorem no_v1402330952634 : ¬ MinimalInterpreter v1402330952634 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1402330951098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.var 0)))))
private theorem no_v1402330951098 : ¬ MinimalInterpreter v1402330951098 :=
  chain_cut false 2 (by decide)

theorem five726 : BadRow (bucket false 4 3 5 [1,0,1,2,0]) := by
  have h : bucket false 4 3 5 [1,0,1,2,0] = [v1402314373602,v1402314370786,v1402314349026,v1402314346210,v1402314340066,v1402312931810,v1402312928994,v1402312871546,v1402312870842,v1402312907234,v1402312546786,v1402312865402,v1402312529530,v1402312904418,v1402312898274,v1402312543970,v1402312537826,v1402312447714,v1402312528826,v1402312527290,v1402312443322,v1402336235130,v1402336234426,v1402336228986,v1402336228282,v1402336226746,v1402336382586,v1402336381882,v1402336393698,v1402336390882,v1402336369122,v1402336366306,v1402336360162,v1402336972410,v1402336971706,v1402331205242,v1402331204538,v1402331008634,v1402331007930,v1402330992354,v1402330986210,v1402330952634,v1402330951098] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402314373602) (.cons (no_v1402314370786) (.cons (no_v1402314349026) (.cons (no_v1402314346210) (.cons (no_v1402314340066) (.cons (no_v1402312931810) (.cons (no_v1402312928994) (.cons (no_v1402312871546) (.cons (no_v1402312870842) (.cons (no_v1402312907234) (.cons (no_v1402312546786) (.cons (no_v1402312865402) (.cons (no_v1402312529530) (.cons (no_v1402312904418) (.cons (no_v1402312898274) (.cons (no_v1402312543970) (.cons (no_v1402312537826) (.cons (no_v1402312447714) (.cons (no_v1402312528826) (.cons (no_v1402312527290) (.cons (no_v1402312443322) (.cons (no_v1402336235130) (.cons (no_v1402336234426) (.cons (no_v1402336228986) (.cons (no_v1402336228282) (.cons (no_v1402336226746) (.cons (no_v1402336382586) (.cons (no_v1402336381882) (.cons (no_v1402336393698) (.cons (no_v1402336390882) (.cons (no_v1402336369122) (.cons (no_v1402336366306) (.cons (no_v1402336360162) (.cons (no_v1402336972410) (.cons (no_v1402336971706) (.cons (no_v1402331205242) (.cons (no_v1402331204538) (.cons (no_v1402331008634) (.cons (no_v1402331007930) (.cons (no_v1402330992354) (.cons (no_v1402330986210) (.cons (no_v1402330952634) (.cons (no_v1402330951098) .nil)))))))))))))))))))))))))))))))))))))))))))

theorem five727 : BadRow (bucket true 4 3 5 [1,0,1,2,0]) := by
  have h : bucket true 4 3 5 [1,0,1,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
