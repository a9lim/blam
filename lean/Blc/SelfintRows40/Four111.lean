import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1376369364602 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1376369364602 : ¬ MinimalInterpreter v1376369364602 :=
  cost_cut false 1 (by decide)

private def v1376369363898 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1376369363898 : ¬ MinimalInterpreter v1376369363898 :=
  cost_cut false 1 (by decide)

private def v1376369342074 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1376369342074 : ¬ MinimalInterpreter v1376369342074 :=
  cost_cut false 1 (by decide)

private def v1376369341370 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1376369341370 : ¬ MinimalInterpreter v1376369341370 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376369335738 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1376369335738 : ¬ MinimalInterpreter v1376369335738 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376369708666 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1376369708666 : ¬ MinimalInterpreter v1376369708666 :=
  cost_cut false 1 (by decide)

private def v1376369707962 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1376369707962 : ¬ MinimalInterpreter v1376369707962 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four777 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,1,2,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,1,2,0] = [v1376369364602,v1376369363898,v1376369342074,v1376369341370,v1376369335738,v1376369708666,v1376369707962] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376369364602) (.cons (no_v1376369363898) (.cons (no_v1376369342074) (.cons (no_v1376369341370) (.cons (no_v1376369335738) (.cons (no_v1376369708666) (.cons (no_v1376369707962) .nil)))))))

private def v1376369364790 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1376369364790 : ¬ MinimalInterpreter v1376369364790 :=
  cost_cut false 1 (by decide)

private def v1376369363926 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1376369363926 : ¬ MinimalInterpreter v1376369363926 :=
  cost_cut false 1 (by decide)

private def v1376369342262 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1376369342262 : ¬ MinimalInterpreter v1376369342262 :=
  cost_cut false 1 (by decide)

private def v1376369341398 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1376369341398 : ¬ MinimalInterpreter v1376369341398 :=
  cost_cut false 1 (by decide)

private def v1376369335766 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1376369335766 : ¬ MinimalInterpreter v1376369335766 :=
  cost_cut false 1 (by decide)

private def v1376369708854 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1376369708854 : ¬ MinimalInterpreter v1376369708854 :=
  cost_cut false 1 (by decide)

private def v1376369707990 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1376369707990 : ¬ MinimalInterpreter v1376369707990 :=
  cost_cut false 1 (by decide)

theorem four778 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,2,0,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,2,0,1] = [v1376369364790,v1376369363926,v1376369342262,v1376369341398,v1376369335766,v1376369708854,v1376369707990] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376369364790) (.cons (no_v1376369363926) (.cons (no_v1376369342262) (.cons (no_v1376369341398) (.cons (no_v1376369335766) (.cons (no_v1376369708854) (.cons (no_v1376369707990) .nil)))))))

private def v1376369364794 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1376369364794 : ¬ MinimalInterpreter v1376369364794 :=
  cost_cut false 1 (by decide)

private def v1376369363930 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1376369363930 : ¬ MinimalInterpreter v1376369363930 :=
  cost_cut false 1 (by decide)

private def v1376369342266 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1376369342266 : ¬ MinimalInterpreter v1376369342266 :=
  cost_cut false 1 (by decide)

private def v1376369341402 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1376369341402 : ¬ MinimalInterpreter v1376369341402 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376369335770 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1376369335770 : ¬ MinimalInterpreter v1376369335770 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376369708858 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1376369708858 : ¬ MinimalInterpreter v1376369708858 :=
  cost_cut false 1 (by decide)

private def v1376369707994 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1376369707994 : ¬ MinimalInterpreter v1376369707994 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four779 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,2,1,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [1,2,1,0] = [v1376369364794,v1376369363930,v1376369342266,v1376369341402,v1376369335770,v1376369708858,v1376369707994] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376369364794) (.cons (no_v1376369363930) (.cons (no_v1376369342266) (.cons (no_v1376369341402) (.cons (no_v1376369335770) (.cons (no_v1376369708858) (.cons (no_v1376369707994) .nil)))))))

theorem four780 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [2,0,0,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1376369370742 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v1376369370742 : ¬ MinimalInterpreter v1376369370742 :=
  cost_cut false 1 (by decide)

private def v1376369370550 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v1376369370550 : ¬ MinimalInterpreter v1376369370550 :=
  cost_cut false 1 (by decide)

private def v1376369343094 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v1376369343094 : ¬ MinimalInterpreter v1376369343094 :=
  cost_cut false 1 (by decide)

private def v1376369342902 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v1376369342902 : ¬ MinimalInterpreter v1376369342902 :=
  cost_cut false 1 (by decide)

private def v1376369335990 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v1376369335990 : ¬ MinimalInterpreter v1376369335990 :=
  cost_cut false 1 (by decide)

theorem four781 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [2,0,1,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [2,0,1,1] = [v1376369370742,v1376369370550,v1376369343094,v1376369342902,v1376369335990] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376369370742) (.cons (no_v1376369370550) (.cons (no_v1376369343094) (.cons (no_v1376369342902) (.cons (no_v1376369335990) .nil)))))

theorem four782 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [2,0,2,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1376369370934 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v1376369370934 : ¬ MinimalInterpreter v1376369370934 :=
  cost_cut false 1 (by decide)

private def v1376369370582 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v1376369370582 : ¬ MinimalInterpreter v1376369370582 :=
  cost_cut false 1 (by decide)

private def v1376369343286 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v1376369343286 : ¬ MinimalInterpreter v1376369343286 :=
  cost_cut false 1 (by decide)

private def v1376369342934 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v1376369342934 : ¬ MinimalInterpreter v1376369342934 :=
  cost_cut false 1 (by decide)

private def v1376369336022 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v1376369336022 : ¬ MinimalInterpreter v1376369336022 :=
  cost_cut false 1 (by decide)

theorem four783 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [1,1] [2,1,0,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [1,1] [2,1,0,1] = [v1376369370934,v1376369370582,v1376369343286,v1376369342934,v1376369336022] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376369370934) (.cons (no_v1376369370582) (.cons (no_v1376369343286) (.cons (no_v1376369342934) (.cons (no_v1376369336022) .nil)))))

end Blc.SelfintSingleObject.Rows40
