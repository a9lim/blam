import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1376050531962 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1376050531962 : ¬ MinimalInterpreter v1376050531962 :=
  cost_cut false 1 (by decide)

private def v1376050531258 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1376050531258 : ¬ MinimalInterpreter v1376050531258 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376050525818 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1376050525818 : ¬ MinimalInterpreter v1376050525818 :=
  cost_cut false 1 (by decide)

private def v1376050525114 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1376050525114 : ¬ MinimalInterpreter v1376050525114 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376050523578 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1376050523578 : ¬ MinimalInterpreter v1376050523578 :=
  cost_cut false 1 (by decide)

private def v1376050679418 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1376050679418 : ¬ MinimalInterpreter v1376050679418 :=
  cost_cut false 1 (by decide)

private def v1376050678714 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1376050678714 : ¬ MinimalInterpreter v1376050678714 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1376051269242 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1376051269242 : ¬ MinimalInterpreter v1376051269242 :=
  cost_cut false 1 (by decide)

private def v1376051268538 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1376051268538 : ¬ MinimalInterpreter v1376051268538 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four931 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,1,2,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,1,2,0] = [v1376050531962,v1376050531258,v1376050525818,v1376050525114,v1376050523578,v1376050679418,v1376050678714,v1376051269242,v1376051268538] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376050531962) (.cons (no_v1376050531258) (.cons (no_v1376050525818) (.cons (no_v1376050525114) (.cons (no_v1376050523578) (.cons (no_v1376050679418) (.cons (no_v1376050678714) (.cons (no_v1376051269242) (.cons (no_v1376051268538) .nil)))))))))

private def v1376050532150 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1376050532150 : ¬ MinimalInterpreter v1376050532150 :=
  cost_cut false 1 (by decide)

private def v1376050531286 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1376050531286 : ¬ MinimalInterpreter v1376050531286 :=
  cost_cut false 1 (by decide)

private def v1376050526006 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1376050526006 : ¬ MinimalInterpreter v1376050526006 :=
  cost_cut false 1 (by decide)

private def v1376050525142 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1376050525142 : ¬ MinimalInterpreter v1376050525142 :=
  cost_cut false 1 (by decide)

private def v1376050523606 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1376050523606 : ¬ MinimalInterpreter v1376050523606 :=
  cost_cut false 1 (by decide)

private def v1376050679606 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1376050679606 : ¬ MinimalInterpreter v1376050679606 :=
  cost_cut false 1 (by decide)

private def v1376050678742 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1376050678742 : ¬ MinimalInterpreter v1376050678742 :=
  cost_cut false 1 (by decide)

private def v1376051269430 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1376051269430 : ¬ MinimalInterpreter v1376051269430 :=
  cost_cut false 1 (by decide)

private def v1376051268566 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1376051268566 : ¬ MinimalInterpreter v1376051268566 :=
  cost_cut false 1 (by decide)

theorem four932 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,2,0,1]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,2,0,1] = [v1376050532150,v1376050531286,v1376050526006,v1376050525142,v1376050523606,v1376050679606,v1376050678742,v1376051269430,v1376051268566] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376050532150) (.cons (no_v1376050531286) (.cons (no_v1376050526006) (.cons (no_v1376050525142) (.cons (no_v1376050523606) (.cons (no_v1376050679606) (.cons (no_v1376050678742) (.cons (no_v1376051269430) (.cons (no_v1376051268566) .nil)))))))))

private def v1376050532154 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1376050532154 : ¬ MinimalInterpreter v1376050532154 :=
  cost_cut false 1 (by decide)

private def v1376050531290 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1376050531290 : ¬ MinimalInterpreter v1376050531290 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376050526010 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1376050526010 : ¬ MinimalInterpreter v1376050526010 :=
  cost_cut false 1 (by decide)

private def v1376050525146 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1376050525146 : ¬ MinimalInterpreter v1376050525146 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1376050523610 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1376050523610 : ¬ MinimalInterpreter v1376050523610 :=
  cost_cut false 1 (by decide)

private def v1376050679610 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1376050679610 : ¬ MinimalInterpreter v1376050679610 :=
  cost_cut false 1 (by decide)

private def v1376050678746 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1376050678746 : ¬ MinimalInterpreter v1376050678746 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1376051269434 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1376051269434 : ¬ MinimalInterpreter v1376051269434 :=
  cost_cut false 1 (by decide)

private def v1376051268570 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1376051268570 : ¬ MinimalInterpreter v1376051268570 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four933 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,2,1,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [0,2,1,0] = [v1376050532154,v1376050531290,v1376050526010,v1376050525146,v1376050523610,v1376050679610,v1376050678746,v1376051269434,v1376051268570] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376050532154) (.cons (no_v1376050531290) (.cons (no_v1376050526010) (.cons (no_v1376050525146) (.cons (no_v1376050523610) (.cons (no_v1376050679610) (.cons (no_v1376050678746) (.cons (no_v1376051269434) (.cons (no_v1376051268570) .nil)))))))))

private def v1376050538094 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v1376050538094 : ¬ MinimalInterpreter v1376050538094 :=
  cost_cut false 1 (by decide)

private def v1376050537902 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v1376050537902 : ¬ MinimalInterpreter v1376050537902 :=
  cost_cut false 1 (by decide)

private def v1376050526830 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v1376050526830 : ¬ MinimalInterpreter v1376050526830 :=
  cost_cut false 1 (by decide)

private def v1376050526638 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v1376050526638 : ¬ MinimalInterpreter v1376050526638 :=
  cost_cut false 1 (by decide)

private def v1376050523822 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v1376050523822 : ¬ MinimalInterpreter v1376050523822 :=
  cost_cut false 1 (by decide)

theorem four934 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [1,0,0,2]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [1,0,0,2] = [v1376050538094,v1376050537902,v1376050526830,v1376050526638,v1376050523822] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376050538094) (.cons (no_v1376050537902) (.cons (no_v1376050526830) (.cons (no_v1376050526638) (.cons (no_v1376050523822) .nil)))))

theorem four935 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [1,0,1,1]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1376050538106 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private theorem no_v1376050538106 : ¬ MinimalInterpreter v1376050538106 :=
  cost_cut false 1 (by decide)

private def v1376050537914 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private theorem no_v1376050537914 : ¬ MinimalInterpreter v1376050537914 :=
  cost_cut false 1 (by decide)

private def v1376050526842 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private theorem no_v1376050526842 : ¬ MinimalInterpreter v1376050526842 :=
  cost_cut false 1 (by decide)

private def v1376050526650 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private theorem no_v1376050526650 : ¬ MinimalInterpreter v1376050526650 :=
  cost_cut false 1 (by decide)

private def v1376050523834 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private theorem no_v1376050523834 : ¬ MinimalInterpreter v1376050523834 :=
  cost_cut false 1 (by decide)

theorem four936 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [1,0,2,0]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [1,0,2,0] = [v1376050538106,v1376050537914,v1376050526842,v1376050526650,v1376050523834] := by decide +kernel
  rw [h]
  exact (.cons (no_v1376050538106) (.cons (no_v1376050537914) (.cons (no_v1376050526842) (.cons (no_v1376050526650) (.cons (no_v1376050523834) .nil)))))

theorem four937 : BadRow (markedRow ⟨3,2,1,2,4,3⟩ [0,1] [1,1,0,1]) := by
  have h : markedRow ⟨3,2,1,2,4,3⟩ [0,1] [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
