import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1374825848054 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v1374825848054 : ¬ MinimalInterpreter v1374825848054 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1374825846646 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v1374825846646 : ¬ MinimalInterpreter v1374825846646 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1374825835766 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v1374825835766 : ¬ MinimalInterpreter v1374825835766 :=
  cost_cut false 1 (by decide)

private def v1374825834358 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v1374825834358 : ¬ MinimalInterpreter v1374825834358 :=
  cost_cut false 1 (by decide)

private def v1374825831286 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v1374825831286 : ¬ MinimalInterpreter v1374825831286 :=
  cost_cut false 1 (by decide)

theorem four910 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [0,1,2,1]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [0,1,2,1] = [v1374825848054,v1374825846646,v1374825835766,v1374825834358,v1374825831286] := by decide +kernel
  rw [h]
  exact (.cons (no_v1374825848054) (.cons (no_v1374825846646) (.cons (no_v1374825835766) (.cons (no_v1374825834358) (.cons (no_v1374825831286) .nil)))))

theorem four911 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [0,2,0,2]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1374825848438 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v1374825848438 : ¬ MinimalInterpreter v1374825848438 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1374825846710 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v1374825846710 : ¬ MinimalInterpreter v1374825846710 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1374825836150 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v1374825836150 : ¬ MinimalInterpreter v1374825836150 :=
  cost_cut false 1 (by decide)

private def v1374825834422 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v1374825834422 : ¬ MinimalInterpreter v1374825834422 :=
  cost_cut false 1 (by decide)

private def v1374825831350 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v1374825831350 : ¬ MinimalInterpreter v1374825831350 :=
  cost_cut false 1 (by decide)

theorem four912 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [0,2,1,1]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [0,2,1,1] = [v1374825848438,v1374825846710,v1374825836150,v1374825834422,v1374825831350] := by decide +kernel
  rw [h]
  exact (.cons (no_v1374825848438) (.cons (no_v1374825846710) (.cons (no_v1374825836150) (.cons (no_v1374825834422) (.cons (no_v1374825831350) .nil)))))

theorem four913 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [0,2,2,0]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1374825860334 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1374825860334 : ¬ MinimalInterpreter v1374825860334 :=
  cost_cut false 1 (by decide)

private def v1374825859950 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1374825859950 : ¬ MinimalInterpreter v1374825859950 :=
  cost_cut false 1 (by decide)

private def v1374825837806 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1374825837806 : ¬ MinimalInterpreter v1374825837806 :=
  cost_cut false 1 (by decide)

private def v1374825837422 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1374825837422 : ¬ MinimalInterpreter v1374825837422 :=
  cost_cut false 1 (by decide)

private def v1374825831790 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1374825831790 : ¬ MinimalInterpreter v1374825831790 :=
  cost_cut false 1 (by decide)

private def v1374826204398 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1374826204398 : ¬ MinimalInterpreter v1374826204398 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1374826204014 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1374826204014 : ¬ MinimalInterpreter v1374826204014 :=
  cost_cut false 1 (by decide)

theorem four914 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,0,1,2]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,0,1,2] = [v1374825860334,v1374825859950,v1374825837806,v1374825837422,v1374825831790,v1374826204398,v1374826204014] := by decide +kernel
  rw [h]
  exact (.cons (no_v1374825860334) (.cons (no_v1374825859950) (.cons (no_v1374825837806) (.cons (no_v1374825837422) (.cons (no_v1374825831790) (.cons (no_v1374826204398) (.cons (no_v1374826204014) .nil)))))))

private def v1374825860342 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1374825860342 : ¬ MinimalInterpreter v1374825860342 :=
  cost_cut false 1 (by decide)

private def v1374825859958 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1374825859958 : ¬ MinimalInterpreter v1374825859958 :=
  cost_cut false 1 (by decide)

private def v1374825837814 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1374825837814 : ¬ MinimalInterpreter v1374825837814 :=
  cost_cut false 1 (by decide)

private def v1374825837430 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1374825837430 : ¬ MinimalInterpreter v1374825837430 :=
  cost_cut false 1 (by decide)

private def v1374825831798 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1374825831798 : ¬ MinimalInterpreter v1374825831798 :=
  cost_cut false 1 (by decide)

private def v1374826204406 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1374826204406 : ¬ MinimalInterpreter v1374826204406 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1374826204022 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1374826204022 : ¬ MinimalInterpreter v1374826204022 :=
  cost_cut false 1 (by decide)

theorem four915 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,0,2,1]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,0,2,1] = [v1374825860342,v1374825859958,v1374825837814,v1374825837430,v1374825831798,v1374826204406,v1374826204022] := by decide +kernel
  rw [h]
  exact (.cons (no_v1374825860342) (.cons (no_v1374825859958) (.cons (no_v1374825837814) (.cons (no_v1374825837430) (.cons (no_v1374825831798) (.cons (no_v1374826204406) (.cons (no_v1374826204022) .nil)))))))

private def v1374825860718 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1374825860718 : ¬ MinimalInterpreter v1374825860718 :=
  cost_cut false 1 (by decide)

private def v1374825860014 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1374825860014 : ¬ MinimalInterpreter v1374825860014 :=
  cost_cut false 1 (by decide)

private def v1374825838190 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1374825838190 : ¬ MinimalInterpreter v1374825838190 :=
  cost_cut false 1 (by decide)

private def v1374825837486 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1374825837486 : ¬ MinimalInterpreter v1374825837486 :=
  cost_cut false 1 (by decide)

private def v1374825831854 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1374825831854 : ¬ MinimalInterpreter v1374825831854 :=
  cost_cut false 1 (by decide)

private def v1374826204782 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1374826204782 : ¬ MinimalInterpreter v1374826204782 :=
  cost_cut false 1 (by decide)

private def v1374826204078 : Term := (.app (.lam (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1374826204078 : ¬ MinimalInterpreter v1374826204078 :=
  cost_cut false 1 (by decide)

theorem four916 : BadRow (markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,1,0,2]) := by
  have h : markedRow ⟨3,2,0,2,4,4⟩ [0,0] [1,1,0,2] = [v1374825860718,v1374825860014,v1374825838190,v1374825837486,v1374825831854,v1374826204782,v1374826204078] := by decide +kernel
  rw [h]
  exact (.cons (no_v1374825860718) (.cons (no_v1374825860014) (.cons (no_v1374825838190) (.cons (no_v1374825837486) (.cons (no_v1374825831854) (.cons (no_v1374826204782) (.cons (no_v1374826204078) .nil)))))))

end Blc.SelfintSingleObject.Rows40
