import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690684480758 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v690684480758 : ¬ MinimalInterpreter v690684480758 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v690684480374 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v690684480374 : ¬ MinimalInterpreter v690684480374 :=
  cost_cut false 1 (by decide)
private def v690684474614 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v690684474614 : ¬ MinimalInterpreter v690684474614 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v690684474230 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v690684474230 : ¬ MinimalInterpreter v690684474230 :=
  cost_cut false 1 (by decide)
private def v690684472694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v690684472694 : ¬ MinimalInterpreter v690684472694 :=
  cost_cut false 1 (by decide)
private def v690684628214 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v690684628214 : ¬ MinimalInterpreter v690684628214 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))
private def v690684627830 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v690684627830 : ¬ MinimalInterpreter v690684627830 :=
  cost_cut false 1 (by decide)
private def v690685218038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v690685218038 : ¬ MinimalInterpreter v690685218038 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
private def v690685217654 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v690685217654 : ¬ MinimalInterpreter v690685217654 :=
  cost_cut false 1 (by decide)
theorem row444 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [0,0,2,1]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [0,0,2,1] = [v690684480758,v690684480374,v690684474614,v690684474230,v690684472694,v690684628214,v690684627830,v690685218038,v690685217654] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684480758) (.cons (no_v690684480374) (.cons (no_v690684474614) (.cons (no_v690684474230) (.cons (no_v690684472694) (.cons (no_v690684628214) (.cons (no_v690684627830) (.cons (no_v690685218038) (.cons (no_v690685217654) .nil)))))))))

theorem row445 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [0,0,3,0]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690684481134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v690684481134 : ¬ MinimalInterpreter v690684481134 :=
  cost_cut false 1 (by decide)
private def v690684480430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v690684480430 : ¬ MinimalInterpreter v690684480430 :=
  cost_cut false 1 (by decide)
private def v690684474990 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v690684474990 : ¬ MinimalInterpreter v690684474990 :=
  cost_cut false 1 (by decide)
private def v690684474286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v690684474286 : ¬ MinimalInterpreter v690684474286 :=
  cost_cut false 1 (by decide)
private def v690684472750 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v690684472750 : ¬ MinimalInterpreter v690684472750 :=
  cost_cut false 1 (by decide)
private def v690684628590 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v690684628590 : ¬ MinimalInterpreter v690684628590 :=
  cost_cut false 1 (by decide)
private def v690684627886 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v690684627886 : ¬ MinimalInterpreter v690684627886 :=
  cost_cut false 1 (by decide)
private def v690685218414 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v690685218414 : ¬ MinimalInterpreter v690685218414 :=
  cost_cut false 1 (by decide)
private def v690685217710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v690685217710 : ¬ MinimalInterpreter v690685217710 :=
  cost_cut false 1 (by decide)
theorem row446 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [0,1,0,2]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [0,1,0,2] = [v690684481134,v690684480430,v690684474990,v690684474286,v690684472750,v690684628590,v690684627886,v690685218414,v690685217710] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684481134) (.cons (no_v690684480430) (.cons (no_v690684474990) (.cons (no_v690684474286) (.cons (no_v690684472750) (.cons (no_v690684628590) (.cons (no_v690684627886) (.cons (no_v690685218414) (.cons (no_v690685217710) .nil)))))))))

theorem row447 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [0,1,1,1]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690684481146 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v690684481146 : ¬ MinimalInterpreter v690684481146 :=
  cost_cut false 1 (by decide)
private def v690684480442 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v690684480442 : ¬ MinimalInterpreter v690684480442 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v690684475002 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v690684475002 : ¬ MinimalInterpreter v690684475002 :=
  cost_cut false 1 (by decide)
private def v690684474298 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v690684474298 : ¬ MinimalInterpreter v690684474298 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v690684472762 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v690684472762 : ¬ MinimalInterpreter v690684472762 :=
  cost_cut false 1 (by decide)
private def v690684628602 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v690684628602 : ¬ MinimalInterpreter v690684628602 :=
  cost_cut false 1 (by decide)
private def v690684627898 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v690684627898 : ¬ MinimalInterpreter v690684627898 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))
private def v690685218426 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v690685218426 : ¬ MinimalInterpreter v690685218426 :=
  cost_cut false 1 (by decide)
private def v690685217722 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v690685217722 : ¬ MinimalInterpreter v690685217722 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
theorem row448 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [0,1,2,0]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [0,1,2,0] = [v690684481146,v690684480442,v690684475002,v690684474298,v690684472762,v690684628602,v690684627898,v690685218426,v690685217722] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684481146) (.cons (no_v690684480442) (.cons (no_v690684475002) (.cons (no_v690684474298) (.cons (no_v690684472762) (.cons (no_v690684628602) (.cons (no_v690684627898) (.cons (no_v690685218426) (.cons (no_v690685217722) .nil)))))))))

private def v690684481334 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v690684481334 : ¬ MinimalInterpreter v690684481334 :=
  cost_cut false 1 (by decide)
private def v690684480470 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v690684480470 : ¬ MinimalInterpreter v690684480470 :=
  cost_cut false 1 (by decide)
private def v690684475190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v690684475190 : ¬ MinimalInterpreter v690684475190 :=
  cost_cut false 1 (by decide)
private def v690684474326 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v690684474326 : ¬ MinimalInterpreter v690684474326 :=
  cost_cut false 1 (by decide)
private def v690684472790 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v690684472790 : ¬ MinimalInterpreter v690684472790 :=
  cost_cut false 1 (by decide)
private def v690684628790 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v690684628790 : ¬ MinimalInterpreter v690684628790 :=
  cost_cut false 1 (by decide)
private def v690684627926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v690684627926 : ¬ MinimalInterpreter v690684627926 :=
  cost_cut false 1 (by decide)
private def v690685218614 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v690685218614 : ¬ MinimalInterpreter v690685218614 :=
  cost_cut false 1 (by decide)
private def v690685217750 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v690685217750 : ¬ MinimalInterpreter v690685217750 :=
  cost_cut false 1 (by decide)
theorem row449 : BadRow (row ⟨1,2,0,4,4,3⟩ [0,0] [0,2,0,1]) := by
  have h : row ⟨1,2,0,4,4,3⟩ [0,0] [0,2,0,1] = [v690684481334,v690684480470,v690684475190,v690684474326,v690684472790,v690684628790,v690684627926,v690685218614,v690685217750] := by decide +kernel
  rw [h]
  exact (.cons (no_v690684481334) (.cons (no_v690684480470) (.cons (no_v690684475190) (.cons (no_v690684474326) (.cons (no_v690684472790) (.cons (no_v690684628790) (.cons (no_v690684627926) (.cons (no_v690685218614) (.cons (no_v690685217750) .nil)))))))))

end Blc.SelfintSingleObject.Rows39
