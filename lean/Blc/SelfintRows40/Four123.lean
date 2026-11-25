import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1376134862394 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1376134862394 : ¬ MinimalInterpreter v1376134862394 :=
  cost_cut false 1 (by decide)

private def v1376134751802 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1376134751802 : ¬ MinimalInterpreter v1376134751802 :=
  cost_cut false 1 (by decide)

private def v1376134724154 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0))))))
private theorem no_v1376134724154 : ¬ MinimalInterpreter v1376134724154 :=
  cost_cut false 1 (by decide)

theorem four861 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [2,0,2,0]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [2,0,2,0] = [v1376134862394,v1376134751802,v1376134724154] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134862394) (.cons (no_v1376134751802) (.cons (no_v1376134724154) .nil)))

private def v1376134489910 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v1376134489910 : ¬ MinimalInterpreter v1376134489910 :=
  cost_cut false 1 (by decide)

private def v1376134489558 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v1376134489558 : ¬ MinimalInterpreter v1376134489558 :=
  cost_cut false 1 (by decide)

private def v1376134462262 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v1376134462262 : ¬ MinimalInterpreter v1376134462262 :=
  cost_cut false 1 (by decide)

private def v1376134461910 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v1376134461910 : ¬ MinimalInterpreter v1376134461910 :=
  cost_cut false 1 (by decide)

private def v1376134454998 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v1376134454998 : ¬ MinimalInterpreter v1376134454998 :=
  cost_cut false 1 (by decide)

private def v1376134864070 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1376134864070 : ¬ MinimalInterpreter v1376134864070 :=
  cost_cut false 1 (by decide)

private def v1376134862662 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1376134862662 : ¬ MinimalInterpreter v1376134862662 :=
  cost_cut false 1 (by decide)

private def v1376134753478 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1376134753478 : ¬ MinimalInterpreter v1376134753478 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134751030 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v1376134751030 : ¬ MinimalInterpreter v1376134751030 :=
  cost_cut false 1 (by decide)

private def v1376134752070 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1376134752070 : ¬ MinimalInterpreter v1376134752070 :=
  cost_cut false 1 (by decide)

private def v1376134724422 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1376134724422 : ¬ MinimalInterpreter v1376134724422 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134723798 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v1376134723798 : ¬ MinimalInterpreter v1376134723798 :=
  cost_cut false 1 (by decide)

theorem four862 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [2,1,0,1]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [2,1,0,1] = [v1376134489910,v1376134489558,v1376134462262,v1376134461910,v1376134454998,v1376134864070,v1376134862662,v1376134753478,v1376134751030,v1376134752070,v1376134724422,v1376134723798] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134489910) (.cons (no_v1376134489558) (.cons (no_v1376134462262) (.cons (no_v1376134461910) (.cons (no_v1376134454998) (.cons (no_v1376134864070) (.cons (no_v1376134862662) (.cons (no_v1376134753478) (.cons (no_v1376134751030) (.cons (no_v1376134752070) (.cons (no_v1376134724422) (.cons (no_v1376134723798) .nil))))))))))))

private def v1376134489914 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v1376134489914 : ¬ MinimalInterpreter v1376134489914 :=
  cost_cut false 1 (by decide)

private def v1376134489562 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v1376134489562 : ¬ MinimalInterpreter v1376134489562 :=
  cost_cut false 1 (by decide)

private def v1376134462266 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v1376134462266 : ¬ MinimalInterpreter v1376134462266 :=
  cost_cut false 1 (by decide)

private def v1376134461914 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v1376134461914 : ¬ MinimalInterpreter v1376134461914 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376134455002 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v1376134455002 : ¬ MinimalInterpreter v1376134455002 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1376134862618 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1376134862618 : ¬ MinimalInterpreter v1376134862618 :=
  cost_cut false 1 (by decide)

private def v1376134751034 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v1376134751034 : ¬ MinimalInterpreter v1376134751034 :=
  cost_cut false 1 (by decide)

private def v1376134752026 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1376134752026 : ¬ MinimalInterpreter v1376134752026 :=
  cost_cut false 1 (by decide)

private def v1376134724378 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1376134724378 : ¬ MinimalInterpreter v1376134724378 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134723802 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v1376134723802 : ¬ MinimalInterpreter v1376134723802 :=
  cost_cut false 1 (by decide)

theorem four863 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [2,1,1,0]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [2,1,1,0] = [v1376134489914,v1376134489562,v1376134462266,v1376134461914,v1376134455002,v1376134862618,v1376134751034,v1376134752026,v1376134724378,v1376134723802] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134489914) (.cons (no_v1376134489562) (.cons (no_v1376134462266) (.cons (no_v1376134461914) (.cons (no_v1376134455002) (.cons (no_v1376134862618) (.cons (no_v1376134751034) (.cons (no_v1376134752026) (.cons (no_v1376134724378) (.cons (no_v1376134723802) .nil))))))))))

private def v1376134751130 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v1376134751130 : ¬ MinimalInterpreter v1376134751130 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376134723818 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v1376134723818 : ¬ MinimalInterpreter v1376134723818 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four864 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [2,2,0,0]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [2,2,0,0] = [v1376134751130,v1376134723818] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134751130) (.cons (no_v1376134723818) .nil))

private def v1376134492982 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1376134492982 : ¬ MinimalInterpreter v1376134492982 :=
  cost_cut false 1 (by decide)

private def v1376134492886 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1376134492886 : ¬ MinimalInterpreter v1376134492886 :=
  cost_cut false 1 (by decide)

private def v1376134462774 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1376134462774 : ¬ MinimalInterpreter v1376134462774 :=
  cost_cut false 1 (by decide)

private def v1376134462678 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1376134462678 : ¬ MinimalInterpreter v1376134462678 :=
  cost_cut false 1 (by decide)

private def v1376134455126 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1376134455126 : ¬ MinimalInterpreter v1376134455126 :=
  cost_cut false 1 (by decide)

theorem four865 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [3,0,0,1]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [3,0,0,1] = [v1376134492982,v1376134492886,v1376134462774,v1376134462678,v1376134455126] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134492982) (.cons (no_v1376134492886) (.cons (no_v1376134462774) (.cons (no_v1376134462678) (.cons (no_v1376134455126) .nil)))))

private def v1376134492986 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1376134492986 : ¬ MinimalInterpreter v1376134492986 :=
  cost_cut false 1 (by decide)

private def v1376134492890 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1376134492890 : ¬ MinimalInterpreter v1376134492890 :=
  cost_cut false 1 (by decide)

private def v1376134462778 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1376134462778 : ¬ MinimalInterpreter v1376134462778 :=
  cost_cut false 1 (by decide)

private def v1376134462682 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1376134462682 : ¬ MinimalInterpreter v1376134462682 :=
  cost_cut false 1 (by decide)

private def v1376134455130 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1376134455130 : ¬ MinimalInterpreter v1376134455130 :=
  cost_cut false 1 (by decide)

theorem four866 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [3,0,1,0]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [3,0,1,0] = [v1376134492986,v1376134492890,v1376134462778,v1376134462682,v1376134455130] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134492986) (.cons (no_v1376134492890) (.cons (no_v1376134462778) (.cons (no_v1376134462682) (.cons (no_v1376134455130) .nil)))))

private def v1376134493082 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1376134493082 : ¬ MinimalInterpreter v1376134493082 :=
  cost_cut false 1 (by decide)

private def v1376134492906 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1376134492906 : ¬ MinimalInterpreter v1376134492906 :=
  cost_cut false 1 (by decide)

private def v1376134462874 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1376134462874 : ¬ MinimalInterpreter v1376134462874 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1376134462698 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1376134462698 : ¬ MinimalInterpreter v1376134462698 :=
  cost_cut false 1 (by decide)

private def v1376134455146 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1376134455146 : ¬ MinimalInterpreter v1376134455146 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

theorem four867 : BadRow (markedRow ⟨2,2,0,3,4,4⟩ [0,0] [3,1,0,0]) := by
  have h : markedRow ⟨2,2,0,3,4,4⟩ [0,0] [3,1,0,0] = [v1376134493082,v1376134492906,v1376134462874,v1376134462698,v1376134455146] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376134493082) (.cons (no_v1376134492906) (.cons (no_v1376134462874) (.cons (no_v1376134462698) (.cons (no_v1376134455146) .nil)))))

end Blc.SelfintSingleObject.Rows40
