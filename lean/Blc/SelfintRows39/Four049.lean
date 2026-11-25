import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem row294 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [1,0,1,1,0]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [1,0,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690685372314 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v690685372314 : ¬ MinimalInterpreter v690685372314 :=
  cost_cut false 1 (by decide)
private def v690685371882 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v690685371882 : ¬ MinimalInterpreter v690685371882 :=
  cost_cut false 1 (by decide)
private def v690685369242 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v690685369242 : ¬ MinimalInterpreter v690685369242 :=
  cost_cut false 1 (by decide)
private def v690685368810 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v690685368810 : ¬ MinimalInterpreter v690685368810 :=
  cost_cut false 1 (by decide)
private def v690685368042 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v690685368042 : ¬ MinimalInterpreter v690685368042 :=
  cost_cut false 1 (by decide)
private def v690685192090 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v690685192090 : ¬ MinimalInterpreter v690685192090 :=
  cost_cut false 1 (by decide)
private def v690685191658 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v690685191658 : ¬ MinimalInterpreter v690685191658 :=
  cost_cut false 1 (by decide)
private def v690685189018 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v690685189018 : ¬ MinimalInterpreter v690685189018 :=
  cost_cut false 1 (by decide)
private def v690685143962 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v690685143962 : ¬ MinimalInterpreter v690685143962 :=
  cost_cut false 1 (by decide)
private def v690685188586 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 0))))))
private theorem no_v690685188586 : ¬ MinimalInterpreter v690685188586 :=
  cost_cut false 1 (by decide)
private def v690685187818 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 0))))))
private theorem no_v690685187818 : ¬ MinimalInterpreter v690685187818 :=
  cost_cut false 1 (by decide)
private def v690685143530 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v690685143530 : ¬ MinimalInterpreter v690685143530 :=
  cost_cut false 1 (by decide)
private def v690685142762 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v690685142762 : ¬ MinimalInterpreter v690685142762 :=
  cost_cut false 1 (by decide)
private def v690685131498 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v690685131498 : ¬ MinimalInterpreter v690685131498 :=
  cost_cut false 1 (by decide)
theorem row295 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [1,0,2,0,0]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [1,0,2,0,0] = [v690685372314,v690685371882,v690685369242,v690685368810,v690685368042,v690685192090,v690685191658,v690685189018,v690685143962,v690685188586,v690685187818,v690685143530,v690685142762,v690685131498] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685372314) (.cons (no_v690685371882) (.cons (no_v690685369242) (.cons (no_v690685368810) (.cons (no_v690685368042) (.cons (no_v690685192090) (.cons (no_v690685191658) (.cons (no_v690685189018) (.cons (no_v690685143962) (.cons (no_v690685188586) (.cons (no_v690685187818) (.cons (no_v690685143530) (.cons (no_v690685142762) (.cons (no_v690685131498) .nil))))))))))))))

theorem row296 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [1,1,0,0,1]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [1,1,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row297 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [1,1,0,1,0]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [1,1,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem row298 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [1,1,1,0,0]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [1,1,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690685376922 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))))))))
private theorem no_v690685376922 : ¬ MinimalInterpreter v690685376922 :=
  cost_cut false 1 (by decide)
private def v690685376874 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))))))))
private theorem no_v690685376874 : ¬ MinimalInterpreter v690685376874 :=
  cost_cut false 1 (by decide)
private def v690685370010 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))))))))
private theorem no_v690685370010 : ¬ MinimalInterpreter v690685370010 :=
  cost_cut false 1 (by decide)
private def v690685369962 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)))))))
private theorem no_v690685369962 : ¬ MinimalInterpreter v690685369962 :=
  cost_cut false 1 (by decide)
private def v690685368234 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0)))))))
private theorem no_v690685368234 : ¬ MinimalInterpreter v690685368234 :=
  cost_cut false 1 (by decide)
private def v690685196698 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0))))))))
private theorem no_v690685196698 : ¬ MinimalInterpreter v690685196698 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685196650 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0)))))))
private theorem no_v690685196650 : ¬ MinimalInterpreter v690685196650 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685189786 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 0)))))))
private theorem no_v690685189786 : ¬ MinimalInterpreter v690685189786 :=
  cost_cut false 1 (by decide)
private def v690685144730 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0)))))))
private theorem no_v690685144730 : ¬ MinimalInterpreter v690685144730 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685189738 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 0))))))
private theorem no_v690685189738 : ¬ MinimalInterpreter v690685189738 :=
  cost_cut false 1 (by decide)
private def v690685188010 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 0))))))
private theorem no_v690685188010 : ¬ MinimalInterpreter v690685188010 :=
  cost_cut false 1 (by decide)
private def v690685144682 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0))))))
private theorem no_v690685144682 : ¬ MinimalInterpreter v690685144682 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690685142954 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.var 0))))))
private theorem no_v690685142954 : ¬ MinimalInterpreter v690685142954 :=
  cost_cut false 1 (by decide)
private def v690685131690 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0))))))
private theorem no_v690685131690 : ¬ MinimalInterpreter v690685131690 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row299 : BadRow (row ⟨1,2,0,2,5,3⟩ [0,0] [1,2,0,0,0]) := by
  have h : row ⟨1,2,0,2,5,3⟩ [0,0] [1,2,0,0,0] = [v690685376922,v690685376874,v690685370010,v690685369962,v690685368234,v690685196698,v690685196650,v690685189786,v690685144730,v690685189738,v690685188010,v690685144682,v690685142954,v690685131690] := by decide +kernel
  rw [h]
  exact (.cons (no_v690685376922) (.cons (no_v690685376874) (.cons (no_v690685370010) (.cons (no_v690685369962) (.cons (no_v690685368234) (.cons (no_v690685196698) (.cons (no_v690685196650) (.cons (no_v690685189786) (.cons (no_v690685144730) (.cons (no_v690685189738) (.cons (no_v690685188010) (.cons (no_v690685144682) (.cons (no_v690685142954) (.cons (no_v690685131690) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows39
