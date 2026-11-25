import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four917 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,1,1,1]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1374825860730 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1374825860730 : ¬ MinimalInterpreter v1374825860730 :=
  cost_cut false 1 (by decide)

private def v1374825860026 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1374825860026 : ¬ MinimalInterpreter v1374825860026 :=
  cost_cut false 1 (by decide)

private def v1374825838202 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1374825838202 : ¬ MinimalInterpreter v1374825838202 :=
  cost_cut false 1 (by decide)

private def v1374825837498 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1374825837498 : ¬ MinimalInterpreter v1374825837498 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1374825831866 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1374825831866 : ¬ MinimalInterpreter v1374825831866 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1374826204794 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1374826204794 : ¬ MinimalInterpreter v1374826204794 :=
  cost_cut false 1 (by decide)

private def v1374826204090 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1374826204090 : ¬ MinimalInterpreter v1374826204090 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four918 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,1,2,0]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,1,2,0] = [v1374825860730,v1374825860026,v1374825838202,v1374825837498,v1374825831866,v1374826204794,v1374826204090] := by decide +kernel
  rw [h]
  exact (.cons (no_v1374825860730) (.cons (no_v1374825860026) (.cons (no_v1374825838202) (.cons (no_v1374825837498) (.cons (no_v1374825831866) (.cons (no_v1374826204794) (.cons (no_v1374826204090) .nil)))))))

private def v1374825860918 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1374825860918 : ¬ MinimalInterpreter v1374825860918 :=
  cost_cut false 1 (by decide)

private def v1374825860054 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1374825860054 : ¬ MinimalInterpreter v1374825860054 :=
  cost_cut false 1 (by decide)

private def v1374825838390 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1374825838390 : ¬ MinimalInterpreter v1374825838390 :=
  cost_cut false 1 (by decide)

private def v1374825837526 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1374825837526 : ¬ MinimalInterpreter v1374825837526 :=
  cost_cut false 1 (by decide)

private def v1374825831894 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1374825831894 : ¬ MinimalInterpreter v1374825831894 :=
  cost_cut false 1 (by decide)

private def v1374826204982 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1374826204982 : ¬ MinimalInterpreter v1374826204982 :=
  cost_cut false 1 (by decide)

private def v1374826204118 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1374826204118 : ¬ MinimalInterpreter v1374826204118 :=
  cost_cut false 1 (by decide)

theorem four919 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,2,0,1]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,2,0,1] = [v1374825860918,v1374825860054,v1374825838390,v1374825837526,v1374825831894,v1374826204982,v1374826204118] := by decide +kernel
  rw [h]
  exact (.cons (no_v1374825860918) (.cons (no_v1374825860054) (.cons (no_v1374825838390) (.cons (no_v1374825837526) (.cons (no_v1374825831894) (.cons (no_v1374826204982) (.cons (no_v1374826204118) .nil)))))))

private def v1374825860922 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1374825860922 : ¬ MinimalInterpreter v1374825860922 :=
  cost_cut false 1 (by decide)

private def v1374825860058 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1374825860058 : ¬ MinimalInterpreter v1374825860058 :=
  cost_cut false 1 (by decide)

private def v1374825838394 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1374825838394 : ¬ MinimalInterpreter v1374825838394 :=
  cost_cut false 1 (by decide)

private def v1374825837530 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1374825837530 : ¬ MinimalInterpreter v1374825837530 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1374825831898 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1374825831898 : ¬ MinimalInterpreter v1374825831898 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1374826204986 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1374826204986 : ¬ MinimalInterpreter v1374826204986 :=
  cost_cut false 1 (by decide)

private def v1374826204122 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1374826204122 : ¬ MinimalInterpreter v1374826204122 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four920 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,2,1,0]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,2,1,0] = [v1374825860922,v1374825860058,v1374825838394,v1374825837530,v1374825831898,v1374826204986,v1374826204122] := by decide +kernel
  rw [h]
  exact (.cons (no_v1374825860922) (.cons (no_v1374825860058) (.cons (no_v1374825838394) (.cons (no_v1374825837530) (.cons (no_v1374825831898) (.cons (no_v1374826204986) (.cons (no_v1374826204122) .nil)))))))

theorem four921 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [2,0,0,2]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1374825866870 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v1374825866870 : ¬ MinimalInterpreter v1374825866870 :=
  cost_cut false 1 (by decide)

private def v1374825866678 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v1374825866678 : ¬ MinimalInterpreter v1374825866678 :=
  cost_cut false 1 (by decide)

private def v1374825839222 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v1374825839222 : ¬ MinimalInterpreter v1374825839222 :=
  cost_cut false 1 (by decide)

private def v1374825839030 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v1374825839030 : ¬ MinimalInterpreter v1374825839030 :=
  cost_cut false 1 (by decide)

private def v1374825832118 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v1374825832118 : ¬ MinimalInterpreter v1374825832118 :=
  cost_cut false 1 (by decide)

theorem four922 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [2,0,1,1]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [2,0,1,1] = [v1374825866870,v1374825866678,v1374825839222,v1374825839030,v1374825832118] := by decide +kernel
  rw [h]
  exact (.cons (no_v1374825866870) (.cons (no_v1374825866678) (.cons (no_v1374825839222) (.cons (no_v1374825839030) (.cons (no_v1374825832118) .nil)))))

theorem four923 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [2,0,2,0]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
