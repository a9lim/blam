import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308868590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 2) (.var 2)))))))))
private theorem no_v1402308868590 : ¬ MinimalInterpreter v1402308868590 :=
  chain_cut false 2 (by decide)

private def v1402308865774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 2)) (.var 2))))))))
private theorem no_v1402308865774 : ¬ MinimalInterpreter v1402308865774 :=
  chain_cut false 2 (by decide)

private def v1402308385262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 2) (.var 2))))))))
private theorem no_v1402308385262 : ¬ MinimalInterpreter v1402308385262 :=
  chain_cut false 2 (by decide)

private def v1402308382446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 2))) (.var 2)))))))
private theorem no_v1402308382446 : ¬ MinimalInterpreter v1402308382446 :=
  chain_cut false 2 (by decide)

private def v1402308261614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 2)) (.var 2)))))))
private theorem no_v1402308261614 : ¬ MinimalInterpreter v1402308261614 :=
  chain_cut false 2 (by decide)

theorem four77 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,1,2,2]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,1,2,2] = [v1402308868590,v1402308865774,v1402308385262,v1402308382446,v1402308261614] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308868590) (.cons (no_v1402308865774) (.cons (no_v1402308385262) (.cons (no_v1402308382446) (.cons (no_v1402308261614) .nil)))))

theorem four78 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,1,3,1]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,1,3,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402308869342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402308869342 : ¬ MinimalInterpreter v1402308869342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308865886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v1402308865886 : ¬ MinimalInterpreter v1402308865886 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308386014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 3))))))))
private theorem no_v1402308386014 : ¬ MinimalInterpreter v1402308386014 :=
  chain_cut false 3 (by decide)

private def v1402308382558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 0))) (.var 3)))))))
private theorem no_v1402308382558 : ¬ MinimalInterpreter v1402308382558 :=
  chain_cut false 3 (by decide)

private def v1402308261726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 3)))))))
private theorem no_v1402308261726 : ¬ MinimalInterpreter v1402308261726 :=
  chain_cut false 3 (by decide)

theorem four79 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,2,0,3]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,2,0,3] = [v1402308869342,v1402308865886,v1402308386014,v1402308382558,v1402308261726] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308869342) (.cons (no_v1402308865886) (.cons (no_v1402308386014) (.cons (no_v1402308382558) (.cons (no_v1402308261726) .nil)))))

private def v1402308869358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402308869358 : ¬ MinimalInterpreter v1402308869358 :=
  chain_cut false 2 (by decide)

private def v1402308865902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.var 1)) (.var 2))))))))
private theorem no_v1402308865902 : ¬ MinimalInterpreter v1402308865902 :=
  chain_cut false 2 (by decide)

private def v1402308386030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 1) (.var 2))))))))
private theorem no_v1402308386030 : ¬ MinimalInterpreter v1402308386030 :=
  chain_cut false 2 (by decide)

private def v1402308382574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 1))) (.var 2)))))))
private theorem no_v1402308382574 : ¬ MinimalInterpreter v1402308382574 :=
  chain_cut false 2 (by decide)

private def v1402308261742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 1)) (.var 2)))))))
private theorem no_v1402308261742 : ¬ MinimalInterpreter v1402308261742 :=
  chain_cut false 2 (by decide)

theorem four80 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,2,1,2]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,2,1,2] = [v1402308869358,v1402308865902,v1402308386030,v1402308382574,v1402308261742] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308869358) (.cons (no_v1402308865902) (.cons (no_v1402308386030) (.cons (no_v1402308382574) (.cons (no_v1402308261742) .nil)))))

private def v1402308869366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402308869366 : ¬ MinimalInterpreter v1402308869366 :=
  chain_cut false 2 (by decide)

private def v1402308865910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.var 2)) (.var 1))))))))
private theorem no_v1402308865910 : ¬ MinimalInterpreter v1402308865910 :=
  chain_cut false 2 (by decide)

private def v1402308386038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 2) (.var 1))))))))
private theorem no_v1402308386038 : ¬ MinimalInterpreter v1402308386038 :=
  chain_cut false 2 (by decide)

private def v1402308382582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 2))) (.var 1)))))))
private theorem no_v1402308382582 : ¬ MinimalInterpreter v1402308382582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 2))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 2))) (.var 1))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.var 3) (.app (.var 2) (.var 2))) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402308261750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 2)) (.var 1)))))))
private theorem no_v1402308261750 : ¬ MinimalInterpreter v1402308261750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.lam (.app (.var 2) (.var 1)))) (so_dead (by decide) (.app (.app (.app (.var 3) (.var 2)) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four81 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,2,2,1]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,2,2,1] = [v1402308869366,v1402308865910,v1402308386038,v1402308382582,v1402308261750] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308869366) (.cons (no_v1402308865910) (.cons (no_v1402308386038) (.cons (no_v1402308382582) (.cons (no_v1402308261750) .nil)))))

private def v1402308869370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402308869370 : ¬ MinimalInterpreter v1402308869370 :=
  chain_cut true 4 (by decide)

private def v1402308865914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v1402308865914 : ¬ MinimalInterpreter v1402308865914 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402308386042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 3) (.var 0))))))))
private theorem no_v1402308386042 : ¬ MinimalInterpreter v1402308386042 :=
  chain_cut false 3 (by decide)

private def v1402308382586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 3))) (.var 0)))))))
private theorem no_v1402308382586 : ¬ MinimalInterpreter v1402308382586 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 3))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.app (.var 1) (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.app (.var 2) (.var 3))) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308261754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 3)) (.var 0)))))))
private theorem no_v1402308261754 : ¬ MinimalInterpreter v1402308261754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 3)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 3)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.app (.var 2) (.var 1)) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 3) (.var 2)) (.var 3)) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four82 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,2,3,0]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,2,3,0] = [v1402308869370,v1402308865914,v1402308386042,v1402308382586,v1402308261754] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308869370) (.cons (no_v1402308865914) (.cons (no_v1402308386042) (.cons (no_v1402308382586) (.cons (no_v1402308261754) .nil)))))

private def v1402308869742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v1402308869742 : ¬ MinimalInterpreter v1402308869742 :=
  chain_cut false 4 (by decide)

private def v1402308865966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v1402308865966 : ¬ MinimalInterpreter v1402308865966 :=
  chain_cut false 4 (by decide)

private def v1402308386414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 3)) (.app (.var 0) (.var 2))))))))
private theorem no_v1402308386414 : ¬ MinimalInterpreter v1402308386414 :=
  w_cut false 0 (by decide)

private def v1402308382638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 3) (.var 0))) (.var 2)))))))
private theorem no_v1402308382638 : ¬ MinimalInterpreter v1402308382638 :=
  chain_cut false 5 (by decide)

private def v1402308261806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.var 2)))))))
private theorem no_v1402308261806 : ¬ MinimalInterpreter v1402308261806 :=
  w_cut false 0 (by decide)

theorem four83 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,3,0,2]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,3,0,2] = [v1402308869742,v1402308865966,v1402308386414,v1402308382638,v1402308261806] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308869742) (.cons (no_v1402308865966) (.cons (no_v1402308386414) (.cons (no_v1402308382638) (.cons (no_v1402308261806) .nil)))))

end Blc.SelfintSingleObject.Rows40
