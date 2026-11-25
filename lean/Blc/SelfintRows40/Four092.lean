import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381368962874 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1381368962874 : ¬ MinimalInterpreter v1381368962874 :=
  cost_cut false 1 (by decide)

private def v1381368960986 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1381368960986 : ¬ MinimalInterpreter v1381368960986 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1381368950586 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381368950586 : ¬ MinimalInterpreter v1381368950586 :=
  cost_cut false 1 (by decide)

private def v1381368948698 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))))
private theorem no_v1381368948698 : ¬ MinimalInterpreter v1381368948698 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1381368945626 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 0))))))))
private theorem no_v1381368945626 : ¬ MinimalInterpreter v1381368945626 :=
  cost_cut false 1 (by decide)

private def v1381369257786 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1381369257786 : ¬ MinimalInterpreter v1381369257786 :=
  cost_cut false 1 (by decide)

private def v1381369255898 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1381369255898 : ¬ MinimalInterpreter v1381369255898 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1381369220922 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))
private theorem no_v1381369220922 : ¬ MinimalInterpreter v1381369220922 :=
  cost_cut false 1 (by decide)

private def v1381369209818 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 0)))))))
private theorem no_v1381369209818 : ¬ MinimalInterpreter v1381369209818 :=
  cost_cut false 1 (by decide)

private def v1381375156026 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1381375156026 : ¬ MinimalInterpreter v1381375156026 :=
  cost_cut false 1 (by decide)

private def v1381375154138 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1381375154138 : ¬ MinimalInterpreter v1381375154138 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

theorem four644 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,3,1,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,3,1,0] = [v1381368962874,v1381368960986,v1381368950586,v1381368948698,v1381368945626,v1381369257786,v1381369255898,v1381369220922,v1381369209818,v1381375156026,v1381375154138] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368962874) (.cons (no_v1381368960986) (.cons (no_v1381368950586) (.cons (no_v1381368948698) (.cons (no_v1381368945626) (.cons (no_v1381369257786) (.cons (no_v1381369255898) (.cons (no_v1381369220922) (.cons (no_v1381369209818) (.cons (no_v1381375156026) (.cons (no_v1381375154138) .nil)))))))))))

theorem four645 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,4,0,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [0,4,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381368974558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 3))))))))))
private theorem no_v1381368974558 : ¬ MinimalInterpreter v1381368974558 :=
  cost_cut false 1 (by decide)

private def v1381368974174 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 3)))))))))
private theorem no_v1381368974174 : ¬ MinimalInterpreter v1381368974174 :=
  cost_cut false 1 (by decide)

private def v1381368952030 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 3)))))))))
private theorem no_v1381368952030 : ¬ MinimalInterpreter v1381368952030 :=
  cost_cut false 1 (by decide)

private def v1381368951646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 3))))))))
private theorem no_v1381368951646 : ¬ MinimalInterpreter v1381368951646 :=
  cost_cut false 1 (by decide)

private def v1381368946014 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 3))))))))
private theorem no_v1381368946014 : ¬ MinimalInterpreter v1381368946014 :=
  cost_cut false 1 (by decide)

private def v1381369328414 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1381369328414 : ¬ MinimalInterpreter v1381369328414 :=
  cost_cut false 1 (by decide)

private def v1381369326878 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1381369326878 : ¬ MinimalInterpreter v1381369326878 :=
  cost_cut false 1 (by decide)

private def v1381369238302 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1381369238302 : ¬ MinimalInterpreter v1381369238302 :=
  cost_cut false 1 (by decide)

private def v1381369236766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 3))))))))
private theorem no_v1381369236766 : ¬ MinimalInterpreter v1381369236766 :=
  cost_cut false 1 (by decide)

private def v1381369214238 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1381369214238 : ¬ MinimalInterpreter v1381369214238 :=
  cost_cut false 1 (by decide)

theorem four646 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,0,0,3]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,0,0,3] = [v1381368974558,v1381368974174,v1381368952030,v1381368951646,v1381368946014,v1381369328414,v1381369326878,v1381369238302,v1381369236766,v1381369214238] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368974558) (.cons (no_v1381368974174) (.cons (no_v1381368952030) (.cons (no_v1381368951646) (.cons (no_v1381368946014) (.cons (no_v1381369328414) (.cons (no_v1381369326878) (.cons (no_v1381369238302) (.cons (no_v1381369236766) (.cons (no_v1381369214238) .nil))))))))))

private def v1381368974574 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1381368974574 : ¬ MinimalInterpreter v1381368974574 :=
  cost_cut false 1 (by decide)

private def v1381368974190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1381368974190 : ¬ MinimalInterpreter v1381368974190 :=
  cost_cut false 1 (by decide)

private def v1381368952046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381368952046 : ¬ MinimalInterpreter v1381368952046 :=
  cost_cut false 1 (by decide)

private def v1381368951662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v1381368951662 : ¬ MinimalInterpreter v1381368951662 :=
  cost_cut false 1 (by decide)

private def v1381368946030 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v1381368946030 : ¬ MinimalInterpreter v1381368946030 :=
  cost_cut false 1 (by decide)

private def v1381369318638 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v1381369318638 : ¬ MinimalInterpreter v1381369318638 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1381369318254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v1381369318254 : ¬ MinimalInterpreter v1381369318254 :=
  cost_cut false 1 (by decide)

private def v1381369326702 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1381369326702 : ¬ MinimalInterpreter v1381369326702 :=
  cost_cut false 1 (by decide)

private def v1381369236590 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.var 2)))))))
private theorem no_v1381369236590 : ¬ MinimalInterpreter v1381369236590 :=
  cost_cut false 1 (by decide)

private def v1381369214062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1381369214062 : ¬ MinimalInterpreter v1381369214062 :=
  cost_cut false 1 (by decide)

theorem four647 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,0,1,2]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,0,1,2] = [v1381368974574,v1381368974190,v1381368952046,v1381368951662,v1381368946030,v1381369318638,v1381369318254,v1381369326702,v1381369236590,v1381369214062] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368974574) (.cons (no_v1381368974190) (.cons (no_v1381368952046) (.cons (no_v1381368951662) (.cons (no_v1381368946030) (.cons (no_v1381369318638) (.cons (no_v1381369318254) (.cons (no_v1381369326702) (.cons (no_v1381369236590) (.cons (no_v1381369214062) .nil))))))))))

private def v1381368974582 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1381368974582 : ¬ MinimalInterpreter v1381368974582 :=
  cost_cut false 1 (by decide)

private def v1381368974198 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1381368974198 : ¬ MinimalInterpreter v1381368974198 :=
  cost_cut false 1 (by decide)

private def v1381368952054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381368952054 : ¬ MinimalInterpreter v1381368952054 :=
  cost_cut false 1 (by decide)

private def v1381368951670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v1381368951670 : ¬ MinimalInterpreter v1381368951670 :=
  cost_cut false 1 (by decide)

private def v1381368946038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v1381368946038 : ¬ MinimalInterpreter v1381368946038 :=
  cost_cut false 1 (by decide)

private def v1381369318646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v1381369318646 : ¬ MinimalInterpreter v1381369318646 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))

private def v1381369318262 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v1381369318262 : ¬ MinimalInterpreter v1381369318262 :=
  cost_cut false 1 (by decide)

private def v1381369328582 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1381369328582 : ¬ MinimalInterpreter v1381369328582 :=
  cost_cut false 1 (by decide)

private def v1381369327046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1381369327046 : ¬ MinimalInterpreter v1381369327046 :=
  cost_cut false 1 (by decide)

private def v1381369238470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1381369238470 : ¬ MinimalInterpreter v1381369238470 :=
  cost_cut false 1 (by decide)

private def v1381369236934 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 1))))))))
private theorem no_v1381369236934 : ¬ MinimalInterpreter v1381369236934 :=
  cost_cut false 1 (by decide)

private def v1381369214406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1381369214406 : ¬ MinimalInterpreter v1381369214406 :=
  cost_cut false 1 (by decide)

theorem four648 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,0,2,1]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,0,2,1] = [v1381368974582,v1381368974198,v1381368952054,v1381368951670,v1381368946038,v1381369318646,v1381369318262,v1381369328582,v1381369327046,v1381369238470,v1381369236934,v1381369214406] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368974582) (.cons (no_v1381368974198) (.cons (no_v1381368952054) (.cons (no_v1381368951670) (.cons (no_v1381368946038) (.cons (no_v1381369318646) (.cons (no_v1381369318262) (.cons (no_v1381369328582) (.cons (no_v1381369327046) (.cons (no_v1381369238470) (.cons (no_v1381369236934) (.cons (no_v1381369214406) .nil))))))))))))

private def v1381368974586 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 0))))))))))
private theorem no_v1381368974586 : ¬ MinimalInterpreter v1381368974586 :=
  cost_cut false 1 (by decide)

private def v1381368974202 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 0)))))))))
private theorem no_v1381368974202 : ¬ MinimalInterpreter v1381368974202 :=
  cost_cut false 1 (by decide)

private def v1381368952058 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 0)))))))))
private theorem no_v1381368952058 : ¬ MinimalInterpreter v1381368952058 :=
  cost_cut false 1 (by decide)

private def v1381368951674 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0))))))))
private theorem no_v1381368951674 : ¬ MinimalInterpreter v1381368951674 :=
  cost_cut false 1 (by decide)

private def v1381368946042 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 0))))))))
private theorem no_v1381368946042 : ¬ MinimalInterpreter v1381368946042 :=
  cost_cut false 1 (by decide)

private def v1381369326714 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1381369326714 : ¬ MinimalInterpreter v1381369326714 :=
  cost_cut false 1 (by decide)

private def v1381369236602 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1381369236602 : ¬ MinimalInterpreter v1381369236602 :=
  cost_cut false 1 (by decide)

private def v1381369214074 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1381369214074 : ¬ MinimalInterpreter v1381369214074 :=
  cost_cut false 1 (by decide)

theorem four649 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,0,3,0]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,0,3,0] = [v1381368974586,v1381368974202,v1381368952058,v1381368951674,v1381368946042,v1381369326714,v1381369236602,v1381369214074] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368974586) (.cons (no_v1381368974202) (.cons (no_v1381368952058) (.cons (no_v1381368951674) (.cons (no_v1381368946042) (.cons (no_v1381369326714) (.cons (no_v1381369236602) (.cons (no_v1381369214074) .nil))))))))

private def v1381368974958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1381368974958 : ¬ MinimalInterpreter v1381368974958 :=
  cost_cut false 1 (by decide)

private def v1381368974254 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1381368974254 : ¬ MinimalInterpreter v1381368974254 :=
  cost_cut false 1 (by decide)

private def v1381368952430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381368952430 : ¬ MinimalInterpreter v1381368952430 :=
  cost_cut false 1 (by decide)

private def v1381368951726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v1381368951726 : ¬ MinimalInterpreter v1381368951726 :=
  cost_cut false 1 (by decide)

private def v1381368946094 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v1381368946094 : ¬ MinimalInterpreter v1381368946094 :=
  cost_cut false 1 (by decide)

private def v1381369319022 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v1381369319022 : ¬ MinimalInterpreter v1381369319022 :=
  cost_cut false 1 (by decide)

private def v1381369318318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v1381369318318 : ¬ MinimalInterpreter v1381369318318 :=
  cost_cut false 1 (by decide)

private def v1381369235054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 0) (.var 2))))))))
private theorem no_v1381369235054 : ¬ MinimalInterpreter v1381369235054 :=
  cost_cut false 1 (by decide)

private def v1381369213358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 0)) (.var 2)))))))
private theorem no_v1381369213358 : ¬ MinimalInterpreter v1381369213358 :=
  cost_cut false 1 (by decide)

theorem four650 : BadRow (markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,1,0,2]) := by
  have h : markedRow ⟨1,2,0,4,4,4⟩ [0,0] [1,1,0,2] = [v1381368974958,v1381368974254,v1381368952430,v1381368951726,v1381368946094,v1381369319022,v1381369318318,v1381369235054,v1381369213358] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381368974958) (.cons (no_v1381368974254) (.cons (no_v1381368952430) (.cons (no_v1381368951726) (.cons (no_v1381368946094) (.cons (no_v1381369319022) (.cons (no_v1381369318318) (.cons (no_v1381369235054) (.cons (no_v1381369213358) .nil)))))))))

end Blc.SelfintSingleObject.Rows40
