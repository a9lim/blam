import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v34577895034 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v34577895034 : ¬ MinimalInterpreter v34577895034 :=
  cost_cut false 1 (by decide)

private def v34577894330 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v34577894330 : ¬ MinimalInterpreter v34577894330 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v34577888890 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v34577888890 : ¬ MinimalInterpreter v34577888890 :=
  cost_cut false 1 (by decide)

private def v34577888186 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v34577888186 : ¬ MinimalInterpreter v34577888186 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v34577886650 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v34577886650 : ¬ MinimalInterpreter v34577886650 :=
  cost_cut false 1 (by decide)

private def v34578042490 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v34578042490 : ¬ MinimalInterpreter v34578042490 :=
  cost_cut false 1 (by decide)

private def v34578041786 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v34578041786 : ¬ MinimalInterpreter v34578041786 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v34578632314 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v34578632314 : ¬ MinimalInterpreter v34578632314 :=
  cost_cut false 1 (by decide)

private def v34578631610 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v34578631610 : ¬ MinimalInterpreter v34578631610 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem row204 : BadRow (row ⟨2,2,0,2,4,3⟩ [0,0] [0,1,2,0]) := by
  have h : row ⟨2,2,0,2,4,3⟩ [0,0] [0,1,2,0] = [v34577895034,v34577894330,v34577888890,v34577888186,v34577886650,v34578042490,v34578041786,v34578632314,v34578631610] := by decide
  rw [h]
  exact (.cons (no_v34577895034) (.cons (no_v34577894330) (.cons (no_v34577888890) (.cons (no_v34577888186) (.cons (no_v34577886650) (.cons (no_v34578042490) (.cons (no_v34578041786) (.cons (no_v34578632314) (.cons (no_v34578631610) .nil)))))))))

private def v34577895222 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v34577895222 : ¬ MinimalInterpreter v34577895222 :=
  cost_cut false 1 (by decide)

private def v34577894358 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v34577894358 : ¬ MinimalInterpreter v34577894358 :=
  cost_cut false 1 (by decide)

private def v34577889078 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v34577889078 : ¬ MinimalInterpreter v34577889078 :=
  cost_cut false 1 (by decide)

private def v34577888214 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v34577888214 : ¬ MinimalInterpreter v34577888214 :=
  cost_cut false 1 (by decide)

private def v34577886678 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v34577886678 : ¬ MinimalInterpreter v34577886678 :=
  cost_cut false 1 (by decide)

private def v34578042678 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v34578042678 : ¬ MinimalInterpreter v34578042678 :=
  cost_cut false 1 (by decide)

private def v34578041814 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v34578041814 : ¬ MinimalInterpreter v34578041814 :=
  cost_cut false 1 (by decide)

private def v34578632502 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v34578632502 : ¬ MinimalInterpreter v34578632502 :=
  cost_cut false 1 (by decide)

private def v34578631638 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v34578631638 : ¬ MinimalInterpreter v34578631638 :=
  cost_cut false 1 (by decide)

theorem row205 : BadRow (row ⟨2,2,0,2,4,3⟩ [0,0] [0,2,0,1]) := by
  have h : row ⟨2,2,0,2,4,3⟩ [0,0] [0,2,0,1] = [v34577895222,v34577894358,v34577889078,v34577888214,v34577886678,v34578042678,v34578041814,v34578632502,v34578631638] := by decide
  rw [h]
  exact (.cons (no_v34577895222) (.cons (no_v34577894358) (.cons (no_v34577889078) (.cons (no_v34577888214) (.cons (no_v34577886678) (.cons (no_v34578042678) (.cons (no_v34578041814) (.cons (no_v34578632502) (.cons (no_v34578631638) .nil)))))))))

private def v34577895226 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v34577895226 : ¬ MinimalInterpreter v34577895226 :=
  cost_cut false 1 (by decide)

private def v34577894362 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v34577894362 : ¬ MinimalInterpreter v34577894362 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v34577889082 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v34577889082 : ¬ MinimalInterpreter v34577889082 :=
  cost_cut false 1 (by decide)

private def v34577888218 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v34577888218 : ¬ MinimalInterpreter v34577888218 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v34577886682 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v34577886682 : ¬ MinimalInterpreter v34577886682 :=
  cost_cut false 1 (by decide)

private def v34578042682 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v34578042682 : ¬ MinimalInterpreter v34578042682 :=
  cost_cut false 1 (by decide)

private def v34578041818 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v34578041818 : ¬ MinimalInterpreter v34578041818 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v34578632506 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v34578632506 : ¬ MinimalInterpreter v34578632506 :=
  cost_cut false 1 (by decide)

private def v34578631642 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v34578631642 : ¬ MinimalInterpreter v34578631642 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem row206 : BadRow (row ⟨2,2,0,2,4,3⟩ [0,0] [0,2,1,0]) := by
  have h : row ⟨2,2,0,2,4,3⟩ [0,0] [0,2,1,0] = [v34577895226,v34577894362,v34577889082,v34577888218,v34577886682,v34578042682,v34578041818,v34578632506,v34578631642] := by decide
  rw [h]
  exact (.cons (no_v34577895226) (.cons (no_v34577894362) (.cons (no_v34577889082) (.cons (no_v34577888218) (.cons (no_v34577886682) (.cons (no_v34578042682) (.cons (no_v34578041818) (.cons (no_v34578632506) (.cons (no_v34578631642) .nil)))))))))

private def v34577901166 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v34577901166 : ¬ MinimalInterpreter v34577901166 :=
  cost_cut false 1 (by decide)

private def v34577900974 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v34577900974 : ¬ MinimalInterpreter v34577900974 :=
  cost_cut false 1 (by decide)

private def v34577889902 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v34577889902 : ¬ MinimalInterpreter v34577889902 :=
  cost_cut false 1 (by decide)

private def v34577889710 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v34577889710 : ¬ MinimalInterpreter v34577889710 :=
  cost_cut false 1 (by decide)

private def v34577886894 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v34577886894 : ¬ MinimalInterpreter v34577886894 :=
  cost_cut false 1 (by decide)

theorem row207 : BadRow (row ⟨2,2,0,2,4,3⟩ [0,0] [1,0,0,2]) := by
  have h : row ⟨2,2,0,2,4,3⟩ [0,0] [1,0,0,2] = [v34577901166,v34577900974,v34577889902,v34577889710,v34577886894] := by decide
  rw [h]
  exact (.cons (no_v34577901166) (.cons (no_v34577900974) (.cons (no_v34577889902) (.cons (no_v34577889710) (.cons (no_v34577886894) .nil)))))

theorem row208 : BadRow (row ⟨2,2,0,2,4,3⟩ [0,0] [1,0,1,1]) := by
  have h : row ⟨2,2,0,2,4,3⟩ [0,0] [1,0,1,1] = [] := by decide
  rw [h]
  exact .nil

private def v34577901178 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v34577901178 : ¬ MinimalInterpreter v34577901178 :=
  cost_cut false 1 (by decide)

private def v34577900986 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v34577900986 : ¬ MinimalInterpreter v34577900986 :=
  cost_cut false 1 (by decide)

private def v34577889914 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v34577889914 : ¬ MinimalInterpreter v34577889914 :=
  cost_cut false 1 (by decide)

private def v34577889722 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v34577889722 : ¬ MinimalInterpreter v34577889722 :=
  cost_cut false 1 (by decide)

private def v34577886906 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v34577886906 : ¬ MinimalInterpreter v34577886906 :=
  cost_cut false 1 (by decide)

theorem row209 : BadRow (row ⟨2,2,0,2,4,3⟩ [0,0] [1,0,2,0]) := by
  have h : row ⟨2,2,0,2,4,3⟩ [0,0] [1,0,2,0] = [v34577901178,v34577900986,v34577889914,v34577889722,v34577886906] := by decide
  rw [h]
  exact (.cons (no_v34577901178) (.cons (no_v34577900986) (.cons (no_v34577889914) (.cons (no_v34577889722) (.cons (no_v34577886906) .nil)))))

end Blc.SelfintSingleObject.Rows37
